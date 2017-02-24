-------------------------------------------------------------------------------
-- Filename:        tb_blur3x3.vhd
--
-- Description:     Simple testbench for blur3x3.vhd
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

entity rx_testbench is
end rx_testbench;

architecture behavioral of rx_testbench is
  
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
    signal t_Y_Cord :  std_logic_vector(15 downto 0);

    signal data_strobe_time : time;
    signal t_HS_IN_I_next : std_logic;
    signal t_VDE_IN_I_next : std_logic;
    signal clk_count : unsigned(9 downto 0) := (others=>'0');
    
    -- constants
    constant CLK_PERIOD : time := 20 ns;
    constant CLK_HALF_PERIOD : time := CLK_PERIOD / 2;
    --constant UNINIT_STARTUP_TIME : time := 200 ns;
    
    --constant CLOCK_INIT_TIME : time := 500 ns;
    --constant UNINITIALIZED_TIME : time := 500 ns;
    
    constant CLOCK_PERIOD : time := 20 ns;
    constant HALF_CLOCK_PERIOD : time := CLOCK_PERIOD / 2;
    --constant RESET_RELEASE_TIME : time := CLOCK_INIT_TIME + 500 ns;
    
    --constant VDE_HALF_PERIOD : time := 260 ns;    -- was 60ns
    
     constant PIXEL_CLKS : integer := 1;
     constant PIXELS_PER_ROW : integer := 16;
    
    --constant PW_START : unsigned(9 downto 0) := to_unsigned(0, 10);
    --constant BP_START : unsigned(9 downto 0) := to_unsigned(2, 10);
    --constant DISP_START : unsigned(9 downto 0) := to_unsigned(6, 10);
    --constant FP_START : unsigned(9 downto 0) := to_unsigned(22, 10);
    
    constant VDE_LENGTH : unsigned(9 downto 0) := to_unsigned(PIXEL_CLKS * PIXELS_PER_ROW, 10);
    constant HS_START : unsigned(9 downto 0) := VDE_LENGTH + 1;
    constant HS_LENGTH : unsigned(9 downto 0) := to_unsigned(1, 10);
    constant VDE_START : unsigned(9 downto 0) := to_unsigned(PIXEL_CLKS, 10);
    constant SYNC_PULSE : unsigned(9 downto 0) := VDE_LENGTH + HS_LENGTH + 2;
    
    --constant BEFORE_DISPLAY_TIME : time := 6*CLOCK_PERIOD;
    --constant AFTER_DISPLAY_TIME : time := 20*CLOCK_PERIOD;
    
    constant PIXEL_TIME : time := PIXEL_CLKS*CLOCK_PERIOD;
    constant VDE_LOW_TIME : time := 3*CLOCK_PERIOD;
    
    -- internal signal states to manage state of clock
    signal clk_undefined : boolean := false;
    signal clock_startup : boolean := false;
    signal data_startup : boolean := false;
    signal start_transfer : std_logic := '0';
    signal data_to_transfer : std_logic_vector(23 downto 0);
    
    signal data_strobe_d : std_logic;
  
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
  vbox: entity work.Video_Box
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
    --type data_array_type is array (3 downto 0) of std_logic_vector(7 downto 0);
    --variable data_to_transfer_list : data_array_type :=
    --  ("01010101", "10101010", "11111111", "00000000");
    type data_array_type is array (255 downto 0) of std_logic_vector(23 downto 0);
    variable data_to_transfer_list : data_array_type := (
--    x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000",
--	x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000", x"800000"
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"080000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000"
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
    --wait for CLOCK_INIT_TIME;
	t_HB_IN_I <= '0';
	t_VB_IN_I <= '0';
	t_ID_IN_I <= '0';


    write_String("--- Test #1 ---");
    for j in data_to_transfer_list'range loop
      data_to_transfer <= data_to_transfer_list(j);
      t_RGB_IN_I <= data_to_transfer;
         t_RGB_IN_I <= data_to_transfer;
      data_startup <= true;
      wait for PIXEL_TIME;
            
      if(j mod PIXELS_PER_ROW = 0) then
        wait for VDE_LOW_TIME;
      end if;
      
    end loop;
    data_startup <= false;

    write_string("--- Test Done ---");

    wait;

    
  end process;
  
  process(t_VDE_IN_O, t_clk)  --t_HS_IN_O,
    variable L : line;
    variable time_stamp : time;
    variable time_measure : time;
    type data_array_type is array (0 to 255) of std_logic_vector(23 downto 0);
    variable expected_output_list : data_array_type := (
--    x"400000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"400000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"600000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"900000", x"600000",
--	x"400000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"600000", x"400000"

--    x"004000", x"00C000", x"018000", x"024000", x"030000", x"03C000", x"048000", x"054000", x"060000", x"06C000", x"078000", x"084000", x"090000", x"09C000", x"0A8000", x"074000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"006000", x"012000", x"024000", x"036000", x"048000", x"05A000", x"06C000", x"07E000", x"090000", x"0A2000", x"0B4000", x"0C6000", x"0D8000", x"0EA000", x"0FC000", x"0AE000",
--    x"004000", x"00C000", x"018000", x"024000", x"030000", x"03C000", x"048000", x"054000", x"060000", x"06C000", x"078000", x"084000", x"090000", x"09C000", x"0A8000", x"074000"

    x"000000", x"000000", x"010000", x"020000", x"030000", x"030000", x"040000", x"050000", x"060000", x"060000", x"070000", x"080000", x"090000", x"090000", x"0A0000", x"070000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"010000", x"020000", x"030000", x"040000", x"050000", x"060000", x"070000", x"090000", x"0A0000", x"0B0000", x"0C0000", x"0D0000", x"0E0000", x"0F0000", x"0A0000",
    x"000000", x"000000", x"010000", x"020000", x"030000", x"030000", x"040000", x"050000", x"060000", x"060000", x"070000", x"080000", x"090000", x"090000", x"0A0000", x"070000"
    );
	variable index : integer := 0; --(7 downto 0) := to_unsigned(0, 8);
	variable exp_output : std_logic_vector(23 downto 0);
	variable r_data : std_logic_vector(23 downto 0);
	variable hasOutData : boolean := false;
	
	variable pixel_clk_counter : integer := 0;
	
  begin
    if(t_VDE_IN_O'event and t_VDE_IN_O = '1') then
      pixel_clk_counter := 0;
    end if;
  
    if(t_clk'event and t_clk='1') then
    
       if(pixel_clk_counter = 0 and t_VDE_IN_O = '1') then --t_HS_IN_O = '1') then   --DISP_START + 3 
         exp_output := expected_output_list(index); --index;
         r_data := t_RGB_IN_O;
         -- Print character out
         --write(L, string'("Index:"));
         --write(L, std_logic_vector(to_unsigned(index,8)));
         write(L, string'("Index is "));
         write(L, integer'image(index));
         writeline(output, L);
         if (r_data = exp_output) then
           --write(L, string'(" Successfully received the following pixel:"));
           --write(L, r_data);
           --writeline(output, L);
         else
           write(L, string'(" Failed filter. Expecting:0x"));
           --write(L, exp_output);
           hwrite(L, exp_output);
           write(L, string'(" but received:0x"));
           --write(L, r_data);
           hwrite(L, r_data);
           writeline(output, L);
         end if;
         index := index + 1;
       end if;
       if(t_VDE_IN_O = '1') then
        if(pixel_clk_counter = PIXEL_CLKS-1) then
            pixel_clk_counter := 0;
        else
            pixel_clk_counter := pixel_clk_counter + 1;
        end if;
       end if;
    end if;
  	
  end process;
  
  process(t_clk)
  begin
    if (t_clk'event and t_clk = '1') then
      --data_strobe_d <= t_data_strobe;
      t_HS_IN_I <= t_HS_IN_I_next;
      t_VDE_IN_I <= t_VDE_IN_I_next;
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
  
 -- t_HS_IN_I_next <= '1' when clk_count >= HS_START and clk_count < HS_START+HS_LENGTH else '0';
 -- t_VDE_IN_I_next <= '1' when clk_count < VDE_LENGTH and clock_startup = true else '0';
 t_HS_IN_I_next <= '1' when clk_count = VDE_LENGTH + 2 else '0';
 t_VDE_IN_I_next <= '1' when clk_count > 0 and clk_count <= VDE_LENGTH else '0';
  
  -- Clock generation process
  t_clk <= not t_clk after HALF_CLOCK_PERIOD when clock_startup else
           'U' when clk_undefined else
           '1';

end behavioral;