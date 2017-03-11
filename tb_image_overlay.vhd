-------------------------------------------------------------------------------
-- Filename:        tb_image_overlay.vhd
--
-- Description:     Simple testbench for image_overlay.vhd
-- 
-- Author:          Brittany Wilson
--
-- Revision:        1.1
--
-- Description:
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.TextIO.all;
use ieee.std_logic_textio.all;

entity img_overlay_tb is
end img_overlay_tb;

architecture behavioral of img_overlay_tb is
  
    signal t_slv_reg0 : std_logic_vector(31 downto 0);  
    signal t_slv_reg1 : std_logic_vector(31 downto 0);  
    signal t_slv_reg2 : std_logic_vector(31 downto 0);  
    signal t_slv_reg3 : std_logic_vector(31 downto 0);  
    signal t_slv_reg4 : std_logic_vector(31 downto 0);
    signal t_slv_reg5 : std_logic_vector(31 downto 0);  
    signal t_slv_reg6 : std_logic_vector(31 downto 0);  
    signal t_slv_reg7 : std_logic_vector(31 downto 0);    
    
    --reg out
    signal t_slv_reg0out : std_logic_vector(31 downto 0);  
    signal t_slv_reg1out : std_logic_vector(31 downto 0);  
    signal t_slv_reg2out : std_logic_vector(31 downto 0);  
    signal t_slv_reg3out : std_logic_vector(31 downto 0);  
    signal t_slv_reg4out : std_logic_vector(31 downto 0);
    signal t_slv_reg5out : std_logic_vector(31 downto 0);  
    signal t_slv_reg6out : std_logic_vector(31 downto 0);  
    signal t_slv_reg7out : std_logic_vector(31 downto 0);
    
    --Bus Clock
    signal t_BUSCLK : std_logic;
    --Video
    signal t_RGB_IN_I : std_logic_vector(23 downto 0); -- Parallel video data (required)
    signal t_VDE_IN_I : std_logic; -- Active video Flag (optional)
    signal t_HB_IN_I : std_logic; -- Horizontal blanking signal (optional)
    signal t_VB_IN_I : std_logic; -- Vertical blanking signal (optional)
    signal t_HS_IN_I : std_logic; -- Horizontal sync signal (optional)
    signal t_VS_IN_I : std_logic; -- Veritcal sync signal (optional)
    signal t_ID_IN_I : std_logic; -- Field ID (optional)
    --  additional ports here
    signal t_RGB_IN_O : std_logic_vector(23 downto 0); -- Parallel video data (required)
    signal t_VDE_IN_O : std_logic; -- Active video Flag (optional)
    signal t_HB_IN_O : std_logic; -- Horizontal blanking signal (optional)
    signal t_VB_IN_O : std_logic; -- Vertical blanking signal (optional)
    signal t_HS_IN_O : std_logic; -- Horizontal sync signal (optional)
    signal t_VS_IN_O : std_logic; -- Veritcal sync signal (optional)
    signal t_ID_IN_O : std_logic; -- Field ID (optional)
    
    signal t_clk : std_logic;
    
    signal t_X_Cord : std_logic_vector(15 downto 0);
    signal t_Y_Cord :  std_logic_vector(15 downto 0) := (others=>'0');

    signal t_HS_IN_I_next : std_logic;
    signal t_VDE_IN_I_next : std_logic;
    
    signal clk_count : unsigned(9 downto 0) := (others=>'0');
    signal done_sending_data : boolean := false;
    
    -- constants
    constant CLOCK_PERIOD : time := 20 ns;
    constant HALF_CLOCK_PERIOD : time := CLOCK_PERIOD / 2;
    constant PIXEL_CLKS : integer := 1;
    constant PIXELS_PER_ROW : integer := 16;
    constant PIXELS_PER_COL : integer := 16;
    constant VDE_LENGTH : unsigned(9 downto 0) := to_unsigned(PIXEL_CLKS * PIXELS_PER_ROW, 10);
    constant HS_START : unsigned(9 downto 0) := VDE_LENGTH + 1;
    constant HS_LENGTH : unsigned(9 downto 0) := to_unsigned(1, 10);
    constant VDE_START : unsigned(9 downto 0) := to_unsigned(PIXEL_CLKS, 10);
    constant SYNC_PULSE : unsigned(9 downto 0) := VDE_LENGTH + HS_LENGTH + 2;
    constant PIXEL_TIME : time := PIXEL_CLKS*CLOCK_PERIOD;
    constant VDE_LOW_TIME : time := 3*CLOCK_PERIOD;
    constant OUTPUT_ARRAY_LENGTH : integer := 2 * (PIXELS_PER_ROW*(PIXELS_PER_COL));  -- 2 test cases, ignoring last row
    
    
    signal X_Cord_next : unsigned(15 downto 0) := (others=>'0');
    signal Y_Cord_next : unsigned(15 downto 0) := (others=>'0');
    
    -- internal signal states to manage state of clock
    signal clk_undefined : boolean := false;
    signal clock_startup : boolean := false;
    signal data_startup : boolean := false;
    signal start_transfer : std_logic := '0';
    signal data_to_transfer : std_logic_vector(23 downto 0);
    signal start_flag : boolean := false;
  
  -- Helper procedure for writing a string to stdout 
  procedure write_string(str : in String) is
    variable L : line;
  begin
    write(L, str);
    write(L, string'(" at "));
    write(L, NOW);
    writeline(output, L);
  end;

begin  -- behavioral
  
  --entity Video_Box is
  vbox: entity work.image_overlay
	port map(
		--reg in
		 slv_reg0 => t_slv_reg0,
		 slv_reg1 => t_slv_reg1, 
		 slv_reg2 => t_slv_reg2, 
		 slv_reg3 => t_slv_reg3, 
		 slv_reg4 => t_slv_reg4,
		 slv_reg5 => t_slv_reg5, 
		 slv_reg6 => t_slv_reg6, 
		 slv_reg7 => t_slv_reg7,    
	 
		--reg out
		slv_reg0out => t_slv_reg0out,  
		slv_reg1out => t_slv_reg1out,  
		slv_reg2out => t_slv_reg2out,  
		slv_reg3out => t_slv_reg3out,  
		slv_reg4out => t_slv_reg4out,
		slv_reg5out => t_slv_reg5out,  
		slv_reg6out => t_slv_reg6out,  
		slv_reg7out => t_slv_reg7out,
	
		--Bus Clock
		CLK => t_BUSCLK,
		--Video
		RGB_IN_I => t_RGB_IN_I, -- Parallel video data (required)
		VDE_IN_I => t_VDE_IN_I, -- Active video Flag (optional)
		HB_IN_I => t_HB_IN_I, -- Horizontal blanking signal (optional)
		VB_IN_I => t_VB_IN_I, -- Vertical blanking signal (optional)
		HS_IN_I => t_HS_IN_I, -- Horizontal sync signal (optional)
		VS_IN_I => t_VS_IN_I, -- Veritcal sync signal (optional)
		ID_IN_I => t_ID_IN_I,  -- Field ID (optional)
		--  additional ports here
		RGB_IN_O => t_RGB_IN_O, -- Parallel video data (required)
		VDE_IN_O => t_VDE_IN_O, -- Active video Flag (optional)
		HB_IN_O => t_HB_IN_O, -- HorizINtal blanking signal (optional)
		VB_IN_O => t_VB_IN_O, -- Vertical blanking signal (optional)
		HS_IN_O => t_HS_IN_O, -- HorizINtal sync signal (optional)
		VS_IN_O => t_VS_IN_O, -- Veritcal sync signal (optional)
		ID_IN_O => t_ID_IN_O,  -- Field ID (optional)
	
		--PIXEL_CLK_IN => t_PIXEL_CLK_IN,
		PIXEL_CLK_IN => t_CLK,
		
		X_Cord => t_X_Cord,
		Y_Cord => t_Y_Cord

	);
	--end Video_Box;
  
	
  --------------------------------------------------
  -- Main testbench process:
  --------------------------------------------------

  process
    variable L : line;
    variable time_stamp : time;
    variable time_measure : time;
    type data_array_type is array ((PIXELS_PER_ROW*PIXELS_PER_COL)-1 downto 0) of std_logic_vector(23 downto 0);
    variable test_array_1 : data_array_type := (
    x"000001", x"000002", x"000003", x"000004", x"000005", x"000006", x"000007", x"000008", x"000009", x"00000A", x"00000B", x"00000C", x"00000D", x"00000E", x"00000F", x"000010",
	x"000011", x"000012", x"000013", x"000014", x"000015", x"000016", x"000017", x"000018", x"000019", x"00001A", x"00001B", x"00001C", x"00001D", x"00001E", x"00001F", x"000020",
	x"000021", x"000022", x"000023", x"000024", x"000025", x"000026", x"000027", x"000028", x"000029", x"00002A", x"00002B", x"00002C", x"00002D", x"00002E", x"00002F", x"000030",
	x"000031", x"000032", x"000033", x"000034", x"000035", x"000036", x"000037", x"000038", x"000039", x"00003A", x"00003B", x"00003C", x"00003D", x"00003E", x"00003F", x"000040",
	x"000041", x"000042", x"000043", x"000044", x"000045", x"000046", x"000047", x"000048", x"000049", x"00004A", x"00004B", x"00004C", x"00004D", x"00004E", x"00004F", x"000050",
	x"000051", x"000052", x"000053", x"000054", x"000055", x"000056", x"000057", x"000058", x"000059", x"00005A", x"00005B", x"00005C", x"00005D", x"00005E", x"00005F", x"000060",
	x"000061", x"000062", x"000063", x"000064", x"000065", x"000066", x"000067", x"000068", x"000069", x"00006A", x"00006B", x"00006C", x"00006D", x"00006E", x"00006F", x"000070",
	x"000071", x"000072", x"000073", x"000074", x"000075", x"000076", x"000077", x"000078", x"000079", x"00007A", x"00007B", x"00007C", x"00007D", x"00007E", x"00007F", x"000080",
	x"000081", x"000082", x"000083", x"000084", x"000085", x"000086", x"000087", x"000088", x"000089", x"00008A", x"00008B", x"00008C", x"00008D", x"00008E", x"00008F", x"000090",
	x"000091", x"000092", x"000093", x"000094", x"000095", x"000096", x"000097", x"000098", x"000099", x"00009A", x"00009B", x"00009C", x"00009D", x"00009E", x"00009F", x"0000A0",
	x"0000A1", x"0000A2", x"0000A3", x"0000A4", x"0000A5", x"0000A6", x"0000A7", x"0000A8", x"0000A9", x"0000AA", x"0000AB", x"0000AC", x"0000AD", x"0000AE", x"0000AF", x"0000B0",
	x"0000B1", x"0000B2", x"0000B3", x"0000B4", x"0000B5", x"0000B6", x"0000B7", x"0000B8", x"0000B9", x"0000BA", x"0000BB", x"0000BC", x"0000BD", x"0000BE", x"0000BF", x"0000C0",
	x"0000C1", x"0000C2", x"0000C3", x"0000C4", x"0000C5", x"0000C6", x"0000C7", x"0000C8", x"0000C9", x"0000CA", x"0000CB", x"0000CC", x"0000CD", x"0000CE", x"0000CF", x"0000D0",
	x"0000D1", x"0000D2", x"0000D3", x"0000D4", x"0000D5", x"0000D6", x"0000D7", x"0000D8", x"0000D9", x"0000DA", x"0000DB", x"0000DC", x"0000DD", x"0000DE", x"0000DF", x"0000E0",
	x"0000E1", x"0000E2", x"0000E3", x"0000E4", x"0000E5", x"0000E6", x"0000E7", x"0000E8", x"0000E9", x"0000EA", x"0000EB", x"0000EC", x"0000ED", x"0000EE", x"0000EF", x"0000F0",
	x"0000F1", x"0000F2", x"0000F3", x"0000F4", x"0000F5", x"0000F6", x"0000F7", x"0000F8", x"0000F9", x"0000FA", x"0000FB", x"0000FC", x"0000FD", x"0000FE", x"0000FF", x"000100"
);
	
	variable test_array_2 : data_array_type := (
	x"000001", x"000002", x"000003", x"000004", x"000005", x"000006", x"000007", x"000008", x"000009", x"00000A", x"00000B", x"00000C", x"00000D", x"00000E", x"00000F", x"000010",
	x"000011", x"000012", x"000013", x"000014", x"000015", x"000016", x"000017", x"000018", x"000019", x"00001A", x"00001B", x"00001C", x"00001D", x"00001E", x"00001F", x"000020",
	x"000021", x"000022", x"000023", x"000024", x"000025", x"000026", x"000027", x"000028", x"000029", x"00002A", x"00002B", x"00002C", x"00002D", x"00002E", x"00002F", x"000030",
	x"000031", x"000032", x"000033", x"000034", x"000035", x"000036", x"000037", x"000038", x"000039", x"00003A", x"00003B", x"00003C", x"00003D", x"00003E", x"00003F", x"000040",
	x"000041", x"000042", x"000043", x"000044", x"000045", x"000046", x"000047", x"000048", x"000049", x"00004A", x"00004B", x"00004C", x"00004D", x"00004E", x"00004F", x"000050",
	x"000051", x"000052", x"000053", x"000054", x"000055", x"000056", x"000057", x"000058", x"000059", x"00005A", x"00005B", x"00005C", x"00005D", x"00005E", x"00005F", x"000060",
	x"000061", x"000062", x"000063", x"000064", x"000065", x"000066", x"000067", x"000068", x"000069", x"00006A", x"00006B", x"00006C", x"00006D", x"00006E", x"00006F", x"000070",
	x"000071", x"000072", x"000073", x"000074", x"000075", x"000076", x"000077", x"000078", x"000079", x"00007A", x"00007B", x"00007C", x"00007D", x"00007E", x"00007F", x"000080",
	x"000081", x"000082", x"000083", x"000084", x"000085", x"000086", x"000087", x"000088", x"000089", x"00008A", x"00008B", x"00008C", x"00008D", x"00008E", x"00008F", x"000090",
	x"000091", x"000092", x"000093", x"000094", x"000095", x"000096", x"000097", x"000098", x"000099", x"00009A", x"00009B", x"00009C", x"00009D", x"00009E", x"00009F", x"0000A0",
	x"0000A1", x"0000A2", x"0000A3", x"0000A4", x"0000A5", x"0000A6", x"0000A7", x"0000A8", x"0000A9", x"0000AA", x"0000AB", x"0000AC", x"0000AD", x"0000AE", x"0000AF", x"0000B0",
	x"0000B1", x"0000B2", x"0000B3", x"0000B4", x"0000B5", x"0000B6", x"0000B7", x"0000B8", x"0000B9", x"0000BA", x"0000BB", x"0000BC", x"0000BD", x"0000BE", x"0000BF", x"0000C0",
	x"0000C1", x"0000C2", x"0000C3", x"0000C4", x"0000C5", x"0000C6", x"0000C7", x"0000C8", x"0000C9", x"0000CA", x"0000CB", x"0000CC", x"0000CD", x"0000CE", x"0000CF", x"0000D0",
	x"0000D1", x"0000D2", x"0000D3", x"0000D4", x"0000D5", x"0000D6", x"0000D7", x"0000D8", x"0000D9", x"0000DA", x"0000DB", x"0000DC", x"0000DD", x"0000DE", x"0000DF", x"0000E0",
	x"0000E1", x"0000E2", x"0000E3", x"0000E4", x"0000E5", x"0000E6", x"0000E7", x"0000E8", x"0000E9", x"0000EA", x"0000EB", x"0000EC", x"0000ED", x"0000EE", x"0000EF", x"0000F0",
	x"0000F1", x"0000F2", x"0000F3", x"0000F4", x"0000F5", x"0000F6", x"0000F7", x"0000F8", x"0000F9", x"0000FA", x"0000FB", x"0000FC", x"0000FD", x"0000FE", x"0000FF", x"000100"
	);
  begin

    --------------------------------------------------
    -- This first set of stimulus should really mess
    -- up the circuit: uninitialized inputs, clocking,
    -- etc. This is done to see if the reset will properly
    -- restore the circuit to a good and working state.
    --------------------------------------------------

    write_string("--- Begin with all signals uninitialized ---");

    write_string("--- Start the clock, other signals uninitialized ---");
    clk_undefined <= false;
    clock_startup <= true;
	t_HB_IN_I <= '0';
	t_VB_IN_I <= '0';
	t_ID_IN_I <= '0';
    t_VS_IN_I <= '0';
    
    t_slv_reg0 <= x"00000000";
    t_slv_reg1 <= x"00000000";
    t_slv_reg2 <= x"00000004";
    t_slv_reg3 <= x"00000004";
    
    wait for PIXEL_TIME;
    write_String("--- Test #1 ---");
    for j in test_array_1'range loop
 
      t_RGB_IN_I <= test_array_1(j);
      data_startup <= true;
      wait for PIXEL_TIME;
      if( (start_flag)and(j/=0)and ((j) mod PIXELS_PER_ROW = 0)) then
        wait for VDE_LOW_TIME;
      end if;
      start_flag <= true;
    end loop;
   
    data_startup <= false;
    wait for PIXEL_TIME;
    write_string("--- Test Done ---");
    
    t_slv_reg0 <= x"0000000A";
    t_slv_reg1 <= x"00000005";
    t_slv_reg2 <= x"00000004";
    t_slv_reg3 <= x"00000005";
    
    t_VS_IN_I <= '1';
    wait for PIXEL_TIME;
    t_VS_IN_I <= '0';
    wait for PIXEL_TIME;
    start_flag <= false;
    write_String("--- Test #2 ---");
    for j in test_array_2'range loop
 
        t_RGB_IN_I <= test_array_2(j);
         data_startup <= true;
         wait for PIXEL_TIME;
         if( (start_flag)and(j/=0)and ((j) mod PIXELS_PER_ROW = 0)) then
           wait for VDE_LOW_TIME;
         end if;
         start_flag <= true;
      
    end loop;
    data_startup <= false;

    write_string("--- Test Done ---");
    done_sending_data <= true;

    wait;

    
  end process;
  
  process(t_VDE_IN_O, t_clk)
    variable L : line;
    variable time_stamp : time;
    variable time_measure : time;
    type data_array_type is array (0 to OUTPUT_ARRAY_LENGTH-1) of std_logic_vector(23 downto 0);
    variable failed : boolean := false;
    variable expected_output_1 : data_array_type := (

    x"000000", x"000000", x"000000", x"000000", x"000005", x"000006", x"000007", x"000008", x"000009", x"00000A", x"00000B", x"00000C", x"00000D", x"00000E", x"00000F", x"000010",
	x"000000", x"000000", x"000000", x"000000", x"000015", x"000016", x"000017", x"000018", x"000019", x"00001A", x"00001B", x"00001C", x"00001D", x"00001E", x"00001F", x"000020",
	x"000000", x"000000", x"000000", x"000000", x"000025", x"000026", x"000027", x"000028", x"000029", x"00002A", x"00002B", x"00002C", x"00002D", x"00002E", x"00002F", x"000030",
	x"000000", x"000000", x"000000", x"000000", x"000035", x"000036", x"000037", x"000038", x"000039", x"00003A", x"00003B", x"00003C", x"00003D", x"00003E", x"00003F", x"000040",
	x"000041", x"000042", x"000043", x"000044", x"000045", x"000046", x"000047", x"000048", x"000049", x"00004A", x"00004B", x"00004C", x"00004D", x"00004E", x"00004F", x"000050",
	x"000051", x"000052", x"000053", x"000054", x"000055", x"000056", x"000057", x"000058", x"000059", x"00005A", x"00005B", x"00005C", x"00005D", x"00005E", x"00005F", x"000060",
	x"000061", x"000062", x"000063", x"000064", x"000065", x"000066", x"000067", x"000068", x"000069", x"00006A", x"00006B", x"00006C", x"00006D", x"00006E", x"00006F", x"000070",
	x"000071", x"000072", x"000073", x"000074", x"000075", x"000076", x"000077", x"000078", x"000079", x"00007A", x"00007B", x"00007C", x"00007D", x"00007E", x"00007F", x"000080",
	x"000081", x"000082", x"000083", x"000084", x"000085", x"000086", x"000087", x"000088", x"000089", x"00008A", x"00008B", x"00008C", x"00008D", x"00008E", x"00008F", x"000090",
	x"000091", x"000092", x"000093", x"000094", x"000095", x"000096", x"000097", x"000098", x"000099", x"00009A", x"00009B", x"00009C", x"00009D", x"00009E", x"00009F", x"0000A0",
	x"0000A1", x"0000A2", x"0000A3", x"0000A4", x"0000A5", x"0000A6", x"0000A7", x"0000A8", x"0000A9", x"0000AA", x"0000AB", x"0000AC", x"0000AD", x"0000AE", x"0000AF", x"0000B0",
	x"0000B1", x"0000B2", x"0000B3", x"0000B4", x"0000B5", x"0000B6", x"0000B7", x"0000B8", x"0000B9", x"0000BA", x"0000BB", x"0000BC", x"0000BD", x"0000BE", x"0000BF", x"0000C0",
	x"0000C1", x"0000C2", x"0000C3", x"0000C4", x"0000C5", x"0000C6", x"0000C7", x"0000C8", x"0000C9", x"0000CA", x"0000CB", x"0000CC", x"0000CD", x"0000CE", x"0000CF", x"0000D0",
	x"0000D1", x"0000D2", x"0000D3", x"0000D4", x"0000D5", x"0000D6", x"0000D7", x"0000D8", x"0000D9", x"0000DA", x"0000DB", x"0000DC", x"0000DD", x"0000DE", x"0000DF", x"0000E0",
	x"0000E1", x"0000E2", x"0000E3", x"0000E4", x"0000E5", x"0000E6", x"0000E7", x"0000E8", x"0000E9", x"0000EA", x"0000EB", x"0000EC", x"0000ED", x"0000EE", x"0000EF", x"0000F0",
	x"0000F1", x"0000F2", x"0000F3", x"0000F4", x"0000F5", x"0000F6", x"0000F7", x"0000F8", x"0000F9", x"0000FA", x"0000FB", x"0000FC", x"0000FD", x"0000FE", x"0000FF", x"000100",

    x"000001", x"000002", x"000003", x"000004", x"000005", x"000006", x"000007", x"000008", x"000009", x"00000A", x"00000B", x"00000C", x"00000D", x"00000E", x"00000F", x"000010",
	x"000011", x"000012", x"000013", x"000014", x"000015", x"000016", x"000017", x"000018", x"000019", x"00001A", x"00001B", x"00001C", x"00001D", x"00001E", x"00001F", x"000020",
	x"000021", x"000022", x"000023", x"000024", x"000025", x"000026", x"000027", x"000028", x"000029", x"00002A", x"00002B", x"00002C", x"00002D", x"00002E", x"00002F", x"000030",
	x"000031", x"000032", x"000033", x"000034", x"000035", x"000036", x"000037", x"000038", x"000039", x"00003A", x"00003B", x"00003C", x"00003D", x"00003E", x"00003F", x"000040",
	x"000041", x"000042", x"000043", x"000044", x"000045", x"000046", x"000047", x"000048", x"000049", x"00004A", x"00004B", x"00004C", x"00004D", x"00004E", x"00004F", x"000050",
	x"000051", x"000052", x"000053", x"000054", x"000055", x"000056", x"000057", x"000058", x"000059", x"00005A", x"000000", x"000000", x"000000", x"000000", x"00005F", x"000060",
	x"000061", x"000062", x"000063", x"000064", x"000065", x"000066", x"000067", x"000068", x"000069", x"00006A", x"000000", x"000000", x"000000", x"000000", x"00006F", x"000070",
	x"000071", x"000072", x"000073", x"000074", x"000075", x"000076", x"000077", x"000078", x"000079", x"00007A", x"000000", x"000000", x"000000", x"000000", x"00007F", x"000080",
	x"000081", x"000082", x"000083", x"000084", x"000085", x"000086", x"000087", x"000088", x"000089", x"00008A", x"000000", x"000000", x"000000", x"000000", x"00008F", x"000090",
	x"000091", x"000092", x"000093", x"000094", x"000095", x"000096", x"000097", x"000098", x"000099", x"00009A", x"000000", x"000000", x"000000", x"000000", x"00009F", x"0000A0",
	x"0000A1", x"0000A2", x"0000A3", x"0000A4", x"0000A5", x"0000A6", x"0000A7", x"0000A8", x"0000A9", x"0000AA", x"0000AB", x"0000AC", x"0000AD", x"0000AE", x"0000AF", x"0000B0",
	x"0000B1", x"0000B2", x"0000B3", x"0000B4", x"0000B5", x"0000B6", x"0000B7", x"0000B8", x"0000B9", x"0000BA", x"0000BB", x"0000BC", x"0000BD", x"0000BE", x"0000BF", x"0000C0",
	x"0000C1", x"0000C2", x"0000C3", x"0000C4", x"0000C5", x"0000C6", x"0000C7", x"0000C8", x"0000C9", x"0000CA", x"0000CB", x"0000CC", x"0000CD", x"0000CE", x"0000CF", x"0000D0",
	x"0000D1", x"0000D2", x"0000D3", x"0000D4", x"0000D5", x"0000D6", x"0000D7", x"0000D8", x"0000D9", x"0000DA", x"0000DB", x"0000DC", x"0000DD", x"0000DE", x"0000DF", x"0000E0",
	x"0000E1", x"0000E2", x"0000E3", x"0000E4", x"0000E5", x"0000E6", x"0000E7", x"0000E8", x"0000E9", x"0000EA", x"0000EB", x"0000EC", x"0000ED", x"0000EE", x"0000EF", x"0000F0",
	x"0000F1", x"0000F2", x"0000F3", x"0000F4", x"0000F5", x"0000F6", x"0000F7", x"0000F8", x"0000F9", x"0000FA", x"0000FB", x"0000FC", x"0000FD", x"0000FE", x"0000FF", x"000100"
	);
	variable index : integer := 0;
	variable exp_output : std_logic_vector(23 downto 0);
	variable r_data : std_logic_vector(23 downto 0);
	variable hasOutData : boolean := false;
	
	variable pixel_clk_counter : integer := 0;
	
  begin
  
    if(t_clk'event and t_clk='1') then
    
        if(index = OUTPUT_ARRAY_LENGTH) then
            if(failed) then
                write(L, string'("TESTBENCH FAILED!! See errors above."));
            else
                write(L, string'("TESTBENCH PASSED!!"));
            end if;
            writeline(output, L);
            index := index+1;
        end if;
       if(t_VDE_IN_O = '1') then
         exp_output := expected_output_1(index); --index;
         r_data := t_RGB_IN_O;
         if (r_data = exp_output) then
--            write(L, string'("Index is "));
--            write(L, integer'image(index));
--            writeline(output, L);
--            write(L, string'(" Successfully received: 0x"));
--            hwrite(L, r_data);
--            writeline(output, L);
--           write(L, string'(" "));
         else
           write(L, string'("Index is "));
           write(L, integer'image(index));
           writeline(output, L);
           write(L, string'(" Failed filter. Expecting:0x"));
           hwrite(L, exp_output);
           write(L, string'(" but received:0x"));
           hwrite(L, r_data);
           writeline(output, L);
           failed := true;
         end if;
         index := index + 1;
       end if;
    end if;
  	
  end process;
  
  process(t_clk)
  begin
    if (t_clk'event and t_clk = '1') then
      t_HS_IN_I <= t_HS_IN_I_next;
      t_VDE_IN_I <= t_VDE_IN_I_next;
      t_X_Cord <= (others => '0');
      --t_Y_Cord <= (others => '0');
      if(t_VDE_IN_I = '1') then
          t_X_Cord <= std_logic_vector(X_Cord_next);    
      end if;
      if(t_HS_IN_I = '1') then
        t_Y_Cord <= std_logic_vector(Y_Cord_next);       
      end if;
    end if;
  end process;
  
  process(t_clk)
  begin
  	if(t_clk'event and t_clk = '1') then
  	    if(clk_count = SYNC_PULSE - 1) then
  	         clk_count <= (others=>'0');
  	    else
  		    clk_count <= clk_count + 1;		
  		end if;
  	end if;
  end process;
 
 t_HS_IN_I_next <= '1' when clk_count = VDE_LENGTH + 2 else '0';
 t_VDE_IN_I_next <= '1' when clk_count > 0 and clk_count <= VDE_LENGTH and done_sending_data = false else '0';
 
 X_Cord_next <= unsigned(t_X_Cord) + 1 when unsigned(t_X_Cord) < PIXELS_PER_ROW-1 else (others=>'0');
 Y_Cord_next <= unsigned(t_Y_Cord) + 1 when unsigned(t_Y_Cord) < PIXELS_PER_COL-1 else (others=>'0');
  
  -- Clock generation process
  t_clk <= not t_clk after HALF_CLOCK_PERIOD when clock_startup else
           'U' when clk_undefined else
           '1';

end behavioral;
