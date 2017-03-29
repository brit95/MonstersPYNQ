----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2017 11:07:04 AM
-- Design Name: 
-- Module Name: Video_Box - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Video_Box is
port (
    --reg in
     slv_reg0 : in std_logic_vector(31 downto 0);  -- x
     slv_reg1 : in std_logic_vector(31 downto 0);  -- y
     slv_reg2 : in std_logic_vector(31 downto 0);  -- width
     slv_reg3 : in std_logic_vector(31 downto 0);  -- height
     slv_reg4 : in std_logic_vector(31 downto 0);
     slv_reg5 : in std_logic_vector(31 downto 0);  
     slv_reg6 : in std_logic_vector(31 downto 0);  
     slv_reg7 : in std_logic_vector(31 downto 0);    
     
    --reg out
    slv_reg0out : out std_logic_vector(31 downto 0);  
    slv_reg1out : out std_logic_vector(31 downto 0);  
    slv_reg2out : out std_logic_vector(31 downto 0);  
    slv_reg3out : out std_logic_vector(31 downto 0);  
    slv_reg4out : out std_logic_vector(31 downto 0);
    slv_reg5out : out std_logic_vector(31 downto 0);  
    slv_reg6out : out std_logic_vector(31 downto 0);  
    slv_reg7out : out std_logic_vector(31 downto 0);
    
    --Bus Clock
    CLK : in std_logic;
    --Video
    RGB_IN_I : in std_logic_vector(23 downto 0); -- Parallel video data (required)
    VDE_IN_I : in std_logic; -- Active video Flag (optional)
    HB_IN_I : in std_logic; -- Horizontal blanking signal (optional)
    VB_IN_I : in std_logic; -- Vertical blanking signal (optional)
    HS_IN_I : in std_logic; -- Horizontal sync signal (optional)
    VS_IN_I : in std_logic; -- Veritcal sync signal (optional)
    ID_IN_I : in std_logic; -- Field ID (optional)
    --  additional ports here
    RGB_IN_O : out std_logic_vector(23 downto 0); -- Parallel video data (required)
    VDE_IN_O : out std_logic; -- Active video Flag (optional)
    HB_IN_O : out std_logic; -- Horizontal blanking signal (optional)
    VB_IN_O : out std_logic; -- Vertical blanking signal (optional)
    HS_IN_O : out std_logic; -- Horizontal sync signal (optional)
    VS_IN_O : out std_logic; -- Veritcal sync signal (optional)
    ID_IN_O : out std_logic; -- Field ID (optional)
    
    PIXEL_CLK_IN : in std_logic;
    
    X_Cord : in std_logic_vector(15 downto 0);
    Y_Cord : in std_logic_vector(15 downto 0)

);
end Video_Box;

architecture Behavioral of Video_Box is

constant N : integer := 16;

component blk_mem_gen_0 IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component blk_mem_gen_0;

--component blk_mem_gen_1 IS
--  PORT (
--    clka : IN STD_LOGIC;
--    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    addra : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
--    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
--  );
--END component blk_mem_gen_1;

type rgb_array is array(0 to 255) of std_logic_vector(23 downto 0);
 signal color_array : rgb_array := (
x"000000", x"800000", x"008000", x"808000", x"000080", x"800080", x"008080", x"C0C0C0", x"808080", x"FF0000", x"00FF00", x"FFFF00", x"0000FF", x"FF00FF", x"00FFFF", x"FFFFFF", 
x"000000", x"00005F", x"000087", x"0000AF", x"0000D7", x"0000FF", x"005F00", x"005F5F", x"005F87", x"005FAF", x"005FD7", x"005FFF", x"008700", x"00875F", x"008787", x"0087AF", 
x"0087D7", x"0087FF", x"00AF00", x"00AF5F", x"00AF87", x"00AFAF", x"00AFD7", x"00AFFF", x"00D700", x"00D75F", x"00D787", x"00D7AF", x"00D7D7", x"00D7FF", x"00FF00", x"00FF5F", 
x"00FF87", x"00FFAF", x"00FFD7", x"00FFFF", x"5F0000", x"5F005F", x"5F0087", x"5F00AF", x"5F00D7", x"5F00FF", x"5F5F00", x"5F5F5F", x"5F5F87", x"5F5FAF", x"5F5FD7", x"5F5FFF", 
x"5F8700", x"5F875F", x"5F8787", x"5F87AF", x"5F87D7", x"5F87FF", x"5FAF00", x"5FAF5F", x"5FAF87", x"5FAFAF", x"5FAFD7", x"5FAFFF", x"5FD700", x"5FD75F", x"5FD787", x"5FD7AF", 
x"5FD7D7", x"5FD7FF", x"5FFF00", x"5FFF5F", x"5FFF87", x"5FFFAF", x"5FFFD7", x"5FFFFF", x"870000", x"87005F", x"870087", x"8700AF", x"8700D7", x"8700FF", x"875F00", x"875F5F", 
x"875F87", x"875FAF", x"875FD7", x"875FFF", x"878700", x"87875F", x"878787", x"8787AF", x"8787D7", x"8787FF", x"87AF00", x"87AF5F", x"87AF87", x"87AFAF", x"87AFD7", x"87AFFF", 
x"87D700", x"87D75F", x"87D787", x"87D7AF", x"87D7D7", x"87D7FF", x"87FF00", x"87FF5F", x"87FF87", x"87FFAF", x"87FFD7", x"87FFFF", x"AF0000", x"AF005F", x"AF0087", x"AF00AF", 
x"AF00D7", x"AF00FF", x"AF5F00", x"AF5F5F", x"AF5F87", x"AF5FAF", x"AF5FD7", x"AF5FFF", x"AF8700", x"AF875F", x"AF8787", x"AF87AF", x"AF87D7", x"AF87FF", x"AFAF00", x"AFAF5F", 
x"AFAF87", x"AFAFAF", x"AFAFD7", x"AFAFFF", x"AFD700", x"AFD75F", x"AFD787", x"AFD7AF", x"AFD7D7", x"AFD7FF", x"AFFF00", x"AFFF5F", x"AFFF87", x"AFFFAF", x"AFFFD7", x"AFFFFF", 
x"D70000", x"D7005F", x"D70087", x"D700AF", x"D700D7", x"D700FF", x"D75F00", x"D75F5F", x"D75F87", x"D75FAF", x"D75FD7", x"D75FFF", x"D78700", x"D7875F", x"D78787", x"D787AF", 
x"D787D7", x"D787FF", x"D7AF00", x"D7AF5F", x"D7AF87", x"D7AFAF", x"D7AFD7", x"D7AFFF", x"D7D700", x"D7D75F", x"D7D787", x"D7D7AF", x"D7D7D7", x"D7D7FF", x"D7FF00", x"D7FF5F", 
x"D7FF87", x"D7FFAF", x"D7FFD7", x"D7FFFF", x"FF0000", x"FF005F", x"FF0087", x"FF00AF", x"FF00D7", x"FF00FF", x"FF5F00", x"FF5F5F", x"FF5F87", x"FF5FAF", x"FF5FD7", x"FF5FFF", 
x"FF8700", x"FF875F", x"FF8787", x"FF87AF", x"FF87D7", x"FF87FF", x"FFAF00", x"FFAF5F", x"FFAF87", x"FFAFAF", x"FFAFD7", x"FFAFFF", x"FFD700", x"FFD75F", x"FFD787", x"FFD7AF", 
x"FFD7D7", x"FFD7FF", x"FFFF00", x"FFFF5F", x"FFFF87", x"FFFFAF", x"FFFFD7", x"FFFFFF", x"080808", x"121212", x"1C1C1C", x"262626", x"303030", x"3A3A3A", x"444444", x"4E4E4E", 
x"585858", x"606060", x"666666", x"767676", x"808080", x"8A8A8A", x"949494", x"9E9E9E", x"A8A8A8", x"B2B2B2", x"BCBCBC", x"C6C6C6", x"D0D0D0", x"DADADA", x"E4E4E4", x"EEEEEE"
);

signal RGB_IN_reg0, RGB_IN_reg1 : std_logic_vector(23 downto 0);
signal VDE_IN_reg0, VDE_IN_reg1 : std_logic;
signal HB_IN_reg0, HB_IN_reg1 : std_logic;
signal VB_IN_reg0, VB_IN_reg1 : std_logic;
signal HS_IN_reg0, HS_IN_reg1 : std_logic;
signal VS_IN_reg0, VS_IN_reg1 : std_logic;
signal ID_IN_reg0, ID_IN_reg1 : std_logic;

signal slv_reg0_reg0, slv_reg0_reg1 : std_logic_vector(31 downto 0);
signal slv_reg1_reg0, slv_reg1_reg1 : std_logic_vector(31 downto 0);
signal slv_reg2_reg0, slv_reg2_reg1 : std_logic_vector(31 downto 0);
signal slv_reg3_reg0, slv_reg3_reg1 : std_logic_vector(31 downto 0);
signal slv_reg4_reg0, slv_reg4_reg1 : std_logic_vector(31 downto 0);
signal slv_reg5_reg0, slv_reg5_reg1 : std_logic_vector(31 downto 0);
signal slv_reg6_reg0, slv_reg6_reg1 : std_logic_vector(31 downto 0);
signal slv_reg7_reg0, slv_reg7_reg1 : std_logic_vector(31 downto 0);
 
signal rgb_next : std_logic_vector(23 downto 0);
signal use_image : std_logic;
signal color_index, color_index_next : unsigned(7 downto 0);
signal image_index, image_index_next : unsigned(N-1 downto 0);
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

--signal din, dout : std_logic_vector(23 downto 0);
signal we : std_logic;
signal dout0, dout1 : std_logic_vector(7 downto 0);
signal addr : std_logic_vector(N-1 downto 0);
	
begin

    process(PIXEL_CLK_IN)
    begin
        if(PIXEL_CLK_IN'event and PIXEL_CLK_IN='1') then
            RGB_IN_reg0 <= RGB_IN_I;
            VDE_IN_reg0 <= VDE_IN_I;
            HB_IN_reg0 <= HB_IN_I;
            VB_IN_reg0 <= VB_IN_I;
            HS_IN_reg0 <= HS_IN_I;
            VS_IN_reg0 <= VS_IN_I;
            ID_IN_reg0 <= ID_IN_I;
            
            slv_reg0_reg0 <= slv_reg0;
            slv_reg1_reg0 <= slv_reg1;
            slv_reg2_reg0 <= slv_reg2;
            slv_reg3_reg0 <= slv_reg3;
            slv_reg4_reg0 <= slv_reg4;
            slv_reg5_reg0 <= slv_reg5;
            slv_reg6_reg0 <= slv_reg6;
            slv_reg7_reg0 <= slv_reg7;
            
            int_X_Coord_reg0 <= unsigned(X_Cord);
            int_Y_Coord_reg0 <= unsigned(Y_Cord);
            
            int_X_Orig_reg0 <= unsigned(slv_reg0(15 downto 0));
            int_Y_Orig_reg0 <= unsigned(slv_reg1(15 downto 0));
            
            RGB_IN_reg1 <= RGB_IN_reg0;
            VDE_IN_reg1 <= VDE_IN_reg0;
            HB_IN_reg1 <= HB_IN_reg0;
            VB_IN_reg1 <= VB_IN_reg0;
            HS_IN_reg1 <= HS_IN_reg0;
            VS_IN_reg1 <= VS_IN_reg0;
            ID_IN_reg1 <= ID_IN_reg0;
            
            slv_reg0_reg1 <= slv_reg0_reg0;
            slv_reg1_reg1 <= slv_reg1_reg0;
            slv_reg2_reg1 <= slv_reg2_reg0; --x"000000" & dout;
            slv_reg3_reg1 <= slv_reg3_reg0;
            slv_reg4_reg1 <= slv_reg4_reg0;
            slv_reg5_reg1 <= slv_reg5_reg0;
            slv_reg6_reg1 <= slv_reg6_reg0;
            slv_reg7_reg1 <= slv_reg7_reg0;
            
            int_X_Coord_reg1 <= int_X_Coord_reg0;
            int_Y_Coord_reg1 <= int_Y_Coord_reg0;
            
            int_X_Orig_reg1 <= int_X_Coord_reg0;
            int_Y_Orig_reg1 <= int_Y_Coord_reg0;
            
            image_index <= image_index_next;
                
        end if;
    end process;

	bram0: blk_mem_gen_0
    port map(
        clka => PIXEL_CLK_IN,
        wea(0) => we,
        addra  => addr,
        dina => slv_reg4(7 downto 0),
        douta => dout0
    );
    
--    bram1: blk_mem_gen_1
--    port map(
--        clka => PIXEL_CLK_IN,
--        wea(0) => we,
--        addra  => addr,
--        dina => slv_reg4(7 downto 0),
--        douta => dout1
--    );
    
    we <= '0';
    addr <= std_logic_vector(image_index);
    
	-- Add user logic here
	int_X_Coord <= int_X_Coord_reg1;
	int_Y_Coord <= int_Y_Coord_reg1;
	int_X_Orig <= unsigned(slv_reg0(15 downto 0));
	int_Y_Orig <= unsigned(slv_reg1(15 downto 0));
	img_width <= unsigned(slv_reg2(15 downto 0));
	img_height <= unsigned(slv_reg3(15 downto 0));
	
	use_image <= '1' when int_X_Coord >= int_X_Orig and 
				int_X_Coord < int_X_Orig + img_width and
				int_Y_Coord >= int_Y_Orig and 
				int_Y_Coord < int_Y_Orig + img_height
				  else '0';
				  
	image_index_next <= (others => '0') when unsigned(X_Cord) = int_X_Orig and unsigned(Y_Cord) = int_Y_Orig else
	                   image_index + 1 when use_image = '1' else
	                   image_index;    
    
    --color_index <= unsigned(dout0) when image_index < 40960 else unsigned(dout1);
    color_index <= unsigned(dout0);
    pixel <= color_array(to_integer(color_index));
	
	rgb_next <= pixel when use_image = '1' and std_logic_vector(color_index) /= slv_reg4(7 downto 0) else RGB_IN_reg1;
	--rgb_next <= RGB_IN_reg1;
	RGB_IN_O 	<= rgb_next;
	
	VDE_IN_O	<= VDE_IN_reg1;
	HB_IN_O		<= HB_IN_reg1;
	VB_IN_O		<= VB_IN_reg1;
	HS_IN_O		<= HS_IN_reg1;
	VS_IN_O		<= VS_IN_reg1;
	ID_IN_O		<= ID_IN_reg1;
	
	slv_reg0out <= slv_reg0_reg1;
	slv_reg1out <= slv_reg1_reg1;
	slv_reg2out <= slv_reg2_reg1;
	slv_reg3out <= slv_reg3_reg1;
	slv_reg4out <= slv_reg4_reg1;
	slv_reg5out <= x"0000" & addr;
	slv_reg6out <= x"000000" & std_logic_vector(color_index);
	slv_reg7out <= x"00" & pixel;

end Behavioral;
