----------------------------------------------------------------------------------
-- Company: Brigham Young University
-- Engineer: Andrew Wilson
-- 
-- Create Date: 02/10/2017 11:07:04 AM
-- Design Name: Pass-through filter
-- Module Name: Video_Box - Behavioral
-- Project Name: 
-- Tool Versions: Vivado 2016.3 
-- Description: This design is for a partial bitstream to be programmed
-- on Brigham Young Univeristy's Video Base Design.
-- This filter passes the video signals from input to output.
-- 
-- Revision:
-- Revision 1.0
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Video_Box is
generic (
    -- Width of S_AXI data bus
    C_S_AXI_DATA_WIDTH    : integer    := 32;
    -- Width of S_AXI address bus
    C_S_AXI_ADDR_WIDTH    : integer    := 11
);
port (
    S_AXI_ARESETN : in std_logic;
    slv_reg_wren : in std_logic;
    slv_reg_rden : in std_logic;
    S_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    axi_awaddr    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    axi_araddr    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    reg_data_out    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    
    --Bus Clock
    S_AXI_ACLK : in std_logic;
    --Video
    RGB_IN : in std_logic_vector(23 downto 0); -- Parallel video data (required)
    VDE_IN : in std_logic; -- Active video Flag (optional)

    HS_IN : in std_logic; -- Horizontal sync signal (optional)
    VS_IN : in std_logic; -- Veritcal sync signal (optional)

    --  additional ports here
    RGB_OUT : out std_logic_vector(23 downto 0); -- Parallel video data (required)
    VDE_OUT : out std_logic; -- Active video Flag (optional)

    HS_OUT : out std_logic; -- Horizontal sync signal (optional)
    VS_OUT : out std_logic; -- Veritcal sync signal (optional)

    
    PIXEL_CLK : in std_logic;
    
    X_Coord : in std_logic_vector(15 downto 0);
    Y_Coord : in std_logic_vector(15 downto 0)

);
end Video_Box;
--Begin Pass-through architecture
architecture Behavioral of Video_Box is

 	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := C_S_AXI_ADDR_WIDTH-ADDR_LSB-1;
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg6	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg7	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg8	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg9	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg10	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg11	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	
	signal RGB_IN_reg, RGB_IN_reg1, RGB_OUT_reg: std_logic_vector(23 downto 0):= (others=>'0');
	signal X_Coord_reg,Y_Coord_reg : std_logic_vector(15 downto 0):= (others=>'0');
	signal VDE_IN_reg,VDE_OUT_reg,HS_IN_reg,HS_OUT_reg,VS_IN_reg,VS_OUT_reg : std_logic := '0';
	signal USER_LOGIC : std_logic_vector(23 downto 0);
	
	signal rgb_next, rgb_out_next : std_logic_vector(23 downto 0);
	signal use_image, use_image_last, show_image : std_logic;
	signal color_index, color_index_next : unsigned(7 downto 0);
	signal pixel : std_logic_vector(23 downto 0);

	signal int_X_Coord_reg0, int_X_Coord_reg1 : unsigned(15 downto 0);
	signal int_Y_Coord_reg0, int_Y_Coord_reg1 : unsigned(15 downto 0);
	signal int_X_Orig_reg0, int_X_Orig_reg1 : unsigned(15 downto 0);
	signal int_Y_Orig_reg0, int_Y_Orig_reg1 : unsigned(15 downto 0);

	signal int_X_Coord : unsigned(15 downto 0);
	signal int_Y_Coord : unsigned(15 downto 0);
	signal int_X_Orig : unsigned(15 downto 0);
	signal int_Y_Orig : unsigned(15 downto 0);
	signal img_width : unsigned(15 downto 0);
	signal img_height : unsigned(15 downto 0);
	signal x : unsigned(15 downto 0);
    signal y : unsigned(15 downto 0);
	--signal din, dout : std_logic_vector(23 downto 0);
	signal we : std_logic;
	signal dout0, dout1, char_value : std_logic_vector(7 downto 0);
	signal font_addr : std_logic_vector(10 downto 0);
	
	signal pixel_y, pixel_x : std_logic_vector(15 downto 0);
	
	signal fontColor : std_logic_vector(23 downto 0);
	
	signal vde_delay_next, vde_delay, vs_delay_next, vs_delay, hs_delay_next, hs_delay : std_logic;
	
	signal font_value : std_logic_vector (7 downto 0);
	
	signal eight,string_width : unsigned (15 downto 0);
	signal sixteen : unsigned (15 downto 0);
	signal textString : std_logic_vector (263 downto 0);
	
	signal counterChar, counterChar_max, counterChar_next, counterBit, counterBit_next, counterBit_last,startScrollLocation,scroll_length, scrollRate, string_char_length, string_length_unsigned : unsigned(15 downto 0);
	signal scroll, scroll_next,scroll_max, frame_counter, frame_counter_next, xPosition, pushback, pushback_next : unsigned(31 downto 0);
	signal mask, result : unsigned(31 downto 0);
	signal stringAddress, counterBit_max,string_length, string_start : natural;
	signal scale : natural;
	

begin

	--get stuff from registers
	int_Y_Orig <= unsigned(slv_reg0(15 downto 0)); -- y axis of text
	scroll_length <= unsigned(slv_reg2(15 downto 0)) - unsigned(slv_reg1(15 downto 0)); --how far the text will scroll
	fontColor <= slv_reg5(7 downto 0) & slv_reg6(7 downto 0) & slv_reg7(7 downto 0); --fount color
	scale <= to_integer(unsigned(slv_reg4(7 downto 0)));--scale how big the text will apear
	textString <= (x"427265616b696e67204e6577733a20416d6d6f6e20776f6e20627261636b657400");--(x"444541646546665A5958575655000000"); --TODO get this from registers
	string_char_length <= unsigned(slv_reg3(15 downto 0));--x"001f";
	startScrollLocation <= unsigned(slv_reg2(15 downto 0)); --<= x"0384"; --<= unsigned(slv_reg2(15 downto 0)); -- where the text will first appear on the right
	
	eight <= "0000000000001000"; -- contant 8
	counterBit_max <= to_integer((eight sll scale)-1); -- get how many bit are in each row of the character
	string_length <= to_integer((string_char_length+1 sll 3) - 1); --get length of string in bits
	string_length_unsigned <= to_unsigned(string_length,16); --turn string length to unsigned
	string_start <= string_length when scroll < scroll_length else string_length - to_integer(((scroll- scroll_length)srl (scale+ 3)) sll 3); --get starting address to display string
	stringAddress <= string_start - to_integer(counterChar * 8); --get current address of char to be displayed
	
	--counterChar_max <= scroll(15 downto 0) srl (3 + scale) when to_int(scroll srl (3+ scale)) < 15 else 15;
	--counterChar_max <= scroll(15 downto 0) srl (3 + scale) when (scroll(15 downto 0) srl (3 + scale)) < string_char_length else 
	--					(((string_length_unsigned+1) sll scale)- (scroll(15 downto 0) - scroll_length)) srl (3 + scale) when scroll > scroll_length	else
	--					string_char_length;
	
	counterChar_max <= (((string_length_unsigned+1) sll scale)- (scroll(15 downto 0) - scroll_length)) srl (3 + scale) when scroll > scroll_length	else --get the number of character to be displayed, this gets small as the text leaves the screen
						string_char_length;
	
	counterBit_next <= (others => '0') when use_image = '0' or counterBit = counterBit_max else counterBit +1; --counter to know which bit in the charact row to display
	
	--counter to know which character in the string to display
	counterChar_next <= (others => '0') when use_image = '0' else 
						(others => '0') when counterChar = counterChar_max  and counterBit = counterBit_max else
						counterChar +1 when counterBit = counterBit_max else
						counterChar;						

	--the user can edit the rgb values here
	
	--get char from string
	char_value <= textString(stringAddress downto stringAddress-7);
	
	--*****************
	--     Font ROM
	--*****************
	--logic for read address
	font_addr <= char_value(6 downto 0) & pixel_y(3 downto 0);
	--init
	font_rom_init: entity work.font_rom(arch)
		port map(
			clk => PIXEL_CLK,
		  addr => font_addr,
		  data => font_value
		);

	--width of text to be displayed
    string_width <= counterChar_max sll 3;
    sixteen <= "0000000000001111"; --constant 16
	-- Add user logic here
	--int_X_Orig <= unsigned(slv_reg0(15 downto 0));
	--startScrollLocation <= x"0384";
	int_X_Orig <= xPosition(15 downto 0); --((startScrollLocation)-scroll(15 downto 0)) when scroll > scroll_length(15 downto 0) else (startScrollLocation- scroll(15 downto 0));
	--int_X_Orig <= (startScrollLocation- scroll(15 downto 0)) when (startScrollLocation- scroll(15 downto 0)) > 0 else (others => '0');
	int_X_Coord <= unsigned(X_Coord_reg);
	int_Y_Coord <= unsigned(Y_Coord_reg);
	
	img_width <= unsigned(string_width sll scale);
	img_height <= unsigned(sixteen sll scale);
	
	use_image <= '1' when int_X_Coord >= int_X_Orig and 
				int_X_Coord < int_X_Orig + img_width and
				int_Y_Coord >= int_Y_Orig and 
				int_Y_Coord < int_Y_Orig + img_height
				else '0';
				
	show_image <= '1' when use_image = '1' and 
				int_X_Coord < startScrollLocation +1 and
				int_X_Coord > (startScrollLocation - scroll_length)
				else '0';
				
				
				  
	x <= int_X_Coord - int_X_Orig; 	
	y <= (int_Y_Coord - int_Y_Orig) srl scale;
	pixel_y <= std_logic_vector(y) when use_image='1' else (others => '0');
	
	pixel_x <= std_logic_vector(x) when use_image='1' else (others => '0');
	
				    
    
    --color_index <= unsigned(dout0) when image_index < 40960 else unsigned(dout1);
    --color_index <= unsigned(dout0);
    --pixel <= color_array(to_integer(color_index));
	
	rgb_out_next <= fontColor when use_image_last = '1' and font_value(to_integer((counterBit_max-counterBit_last) srl scale)) = '1' else RGB_IN_reg1;



	-- Just pass through all of the video signals
	RGB_OUT 	<= RGB_OUT_reg;
	VDE_OUT		<= VDE_OUT_reg;

	HS_OUT		<= HS_OUT_reg;
	VS_OUT		<= VS_OUT_reg;
	
	--scroll_length <= x"0300";
	--scroll_max <= scroll_length + string_length;
	mask <= x"00000007";
	--result <=  mask sla scale;
	
	-- process (PIXEL_CLK)
	-- begin
		-- result <= mask;
		-- for i in 0 to 10 loop
		    -- exit when i = scale;
			-- result <= result(30 downto 0) & '1';
		-- end loop;
	-- end process;
	
	-- process(PIXEL_CLK)
     -- variable temp : unsigned(31 downto 0) := x"00000007";
     -- begin 
        -- temp := shift_left(temp,scale);
        -- result <= temp;
     -- end process;
	
	scrollRate <= scroll_length + ((string_length_unsigned+1) sll scale);
	--xPosition <= startScrollLocation-scroll when scroll < scroll_length(15 downto 0) else ((startScrollLocation - scroll_length) - ((scroll - scroll_length) AND unsigned(result) ));-- - ((scroll(15 downto 0) - scroll_length) and (mask sla scale));
	xPosition <= startScrollLocation-scroll when scroll < scroll_length(15 downto 0) else pushback;
	
	process(VS_IN_reg) is
		begin
			if (rising_edge (VS_IN_reg)) then
				scroll <= scroll_next;
				frame_counter <= frame_counter_next;
				pushback <= pushback_next;
				
			 end if;
		end process;

	scroll_next <= frame_counter;
					
	frame_counter_next <= 	(others => '0') when frame_counter = scrollRate else
							frame_counter + 1;
							
	pushback_next <= x"0000" & (startScrollLocation - scroll_length) when scroll < scroll_length(15 downto 0) else 
					 x"0000" & (startScrollLocation - scroll_length) when pushback-1 = (startScrollLocation - scroll_length - (eight sll scale)) else
					 pushback - 1;
	-- scrollRate <= x"0030";

	-- scroll_next <= (others => '0') when scroll = scroll_max and frame_counter = scrollRate and VS_IN_reg = '1' else
					-- scroll + 1 when frame_counter = scrollRate and VS_IN_reg = '1' else
					-- scroll;
					
	-- frame_counter_next <= 	(others => '0') when VS_IN_reg = '1' and frame_counter = scrollRate else
							-- frame_counter + 1 when VS_IN_reg = '1' else
							-- frame_counter;
	
	process(PIXEL_CLK) is
		begin
			if (rising_edge (PIXEL_CLK)) then
				-- Video Input Signals
				RGB_IN_reg <= RGB_IN;
				X_Coord_reg <= X_Coord;
				Y_Coord_reg  <= Y_Coord;
				VDE_IN_reg  <= VDE_IN;
				HS_IN_reg  <= HS_IN;
				VS_IN_reg  <= VS_IN;
				-- Video Output Signals
				RGB_OUT_reg  <= rgb_out_next;
				VDE_OUT_reg  <= vde_delay;
				HS_OUT_reg  <= hs_delay;
				VS_OUT_reg  <= vs_delay;
				
				--dely one cycle
				vde_delay <= vde_delay_next;
				vs_delay <= vs_delay_next;
				hs_delay <= hs_delay_next;
				RGB_IN_reg1 <= RGB_IN_reg;
				
				use_image_last <= show_image;
				counterChar <= counterChar_next;
				counterBit <= counterBit_next;
				counterBit_last <= counterBit;
				
			 end if;
		end process;
		
	vde_delay_next <= VDE_IN_reg;
	hs_delay_next <= HS_IN_reg;
	vs_delay_next <= VS_IN_reg;
	
		
		
		
	process (S_AXI_ACLK)
		variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
		if S_AXI_ARESETN = '0' then
		  slv_reg0 <= (others => '0');
		  slv_reg1 <= (others => '0');
		  slv_reg2 <= (others => '0');
		  slv_reg3 <= (others => '0');
		  slv_reg4 <= (others => '0');
		  slv_reg5 <= (others => '0');
		  slv_reg6 <= (others => '0');
		  slv_reg7 <= (others => '0');
		  slv_reg8 <= (others => '0');
		  slv_reg9 <= (others => '0');
		  slv_reg10 <= (others => '0');
		  slv_reg11 <= (others => '0');
		else
		  loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		  if (slv_reg_wren = '1') then
			case loc_addr is
			  when b"000000000" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 0
					slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000001" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 1
					slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000010" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 2
					slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000011" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 3
					slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000100" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 4
					slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000101" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 5
					slv_reg5(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000110" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 6
					slv_reg6(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000000111" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 7
					slv_reg7(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000001000" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 8
					slv_reg8(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000001001" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 9
					slv_reg9(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000001010" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 10
					slv_reg10(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			  when b"000001011" =>
				for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
				  if ( S_AXI_WSTRB(byte_index) = '1' ) then
					-- Respective byte enables are asserted as per write strobes                   
					-- slave registor 11
					slv_reg11(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
				  end if;
				end loop;
			
			  when others =>
				slv_reg0 <= slv_reg0;
				slv_reg1 <= slv_reg1;
				slv_reg2 <= slv_reg2;
				slv_reg3 <= slv_reg3;
				slv_reg4 <= slv_reg4;
				slv_reg5 <= slv_reg5;
				slv_reg6 <= slv_reg6;
				slv_reg7 <= slv_reg7;
				slv_reg8 <= slv_reg8;
				slv_reg9 <= slv_reg9;
				slv_reg10 <= slv_reg10;
				slv_reg11 <= slv_reg11;
			end case;
		  end if;
		end if;
	  end if;                   
	end process; 
		
	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
		variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
		-- Address decoding for reading registers
		loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		case loc_addr is
		  when b"000000000" =>
			reg_data_out <= slv_reg0;
		  when b"000000001" =>
			reg_data_out <= slv_reg1;
		  when b"000000010" =>
			reg_data_out <= slv_reg2;
		  when b"000000011" =>
			reg_data_out <= slv_reg3;
		  when b"000000100" =>
			reg_data_out <= slv_reg4;
		  when b"000000101" =>
			reg_data_out <= slv_reg5;
		  when b"000000110" =>
			reg_data_out <= slv_reg6;
		  when b"000000111" =>
			reg_data_out <= slv_reg7;
		  when b"000001000" =>
			reg_data_out <= slv_reg8;
		  when b"000001001" =>
			reg_data_out <= slv_reg9;
		  when b"000001010" =>
			reg_data_out <= slv_reg10;
		  when b"000001011" =>
			reg_data_out <= slv_reg11;
		  when others =>
			reg_data_out  <= (others => '0');
		end case;
	end process;

end Behavioral;
--End Pass-through architecture