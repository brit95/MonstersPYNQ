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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Video_Box is
port (
    --reg in
     slv_reg0 : in std_logic_vector(31 downto 0);  
     slv_reg1 : in std_logic_vector(31 downto 0);  
     slv_reg2 : in std_logic_vector(31 downto 0);  
     slv_reg3 : in std_logic_vector(31 downto 0);  
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

	--state machine
	type state_type is (row0,beginRow, sentHS, sentVS ,pass);  --type of state machine.
	signal current_s,next_s: state_type := row0;  --current and next state declaration.

	--HDMI signals
	signal VDE      			: STD_LOGIC; --video enable
	signal VDE_next 			: STD_LOGIC;
	signal VDE_Last_clk 		: STD_LOGIC;
	signal VDE_Last_clk_next 	: STD_LOGIC;
	signal HS       			: STD_LOGIC; --H sync
	signal HS_next  			: STD_LOGIC;
	signal VS       			: STD_LOGIC; --V sync
	signal VS_next  			: STD_LOGIC;
	signal black_const 			: std_logic_vector(23 downto 0):= (others => '0');
	signal color 				: std_logic_vector(23 downto 0);
	signal color_next 			: std_logic_vector(23 downto 0);

	signal red_padded, blue_padded, green_padded		: unsigned(11 downto 0):= (others => '0');
	signal red, blue, green								: unsigned(7 downto 0):= (others => '0');

	--3x3 box signals
	signal top_left 		: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal top_middle 		: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal top_right 		: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_left 		: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_middle 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_right 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_left 		: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_middle 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_right 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');

	signal top_left_next 		: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal top_middle_next 		: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal top_right_next		: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_left_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_middle_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal middle_right_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_left_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_middle_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');
	signal bottom_right_next 	: STD_LOGIC_VECTOR(23 downto 0)	:= (others => '0');

	--*****************
	--  FIFO signals
	--*****************
	--TOP ROW FIFO
	signal reset_top        : STD_LOGIC :='0';
	signal reset_top_next   : STD_LOGIC :='0';
	signal wr_en_top        : STD_LOGIC :='0';
	signal wr_en_top_next   : STD_LOGIC :='0';
	signal rd_en_top        : STD_LOGIC :='0';
	signal rd_en_top_next   : STD_LOGIC :='0';
	signal din_top          : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal din_top_next     : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal dout_top         :STD_LOGIC_VECTOR(23 downto 0);
	signal dout_top_next    :STD_LOGIC_VECTOR(23 downto 0);
	signal full_top         : STD_LOGIC;
	signal empty_top        : STD_LOGIC;

	--MIDDLE ROW FIF0
	signal reset_middle        : STD_LOGIC :='0';
	signal reset_middle_next   : STD_LOGIC :='0';
	signal wr_en_middle        : STD_LOGIC :='0';
	signal wr_en_middle_next   : STD_LOGIC :='0';
	signal rd_en_middle        : STD_LOGIC :='0';
	signal rd_en_middle_next   : STD_LOGIC :='0';
	signal din_middle          : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal din_middle_next     : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	signal dout_middle         :STD_LOGIC_VECTOR(23 downto 0);
	signal dout_middle_next    :STD_LOGIC_VECTOR(23 downto 0);
	signal full_middle         : STD_LOGIC;
	signal empty_middle        : STD_LOGIC;

	--***********************
	--  Compoment declaration
	--***********************
	--The FIFO
	COMPONENT fifo_generator_0 IS
	  PORT(
			CLK        :  IN  STD_LOGIC;
			SRST       :  IN  STD_LOGIC;
			WR_EN      :  IN STD_LOGIC;
			RD_EN      :  IN STD_LOGIC;
			DIN        : in STD_LOGIC_VECTOR(23 downto 0);
			DOUT       : out STD_LOGIC_VECTOR(23 downto 0);
			FULL       : out STD_LOGIC;
			EMPTY      : out STD_LOGIC);
	 END COMPONENT;

	begin



	process (PIXEL_CLK_IN)
	begin
	if (rising_edge(PIXEL_CLK_IN)) then
	   --state change.
	  current_s <= next_s;
	  
	  --HDMI signals
	  VDE 				<= VDE_next;
	  HS 				<= HS_next;
	  VS 				<= VS_next;
	  color 			<= color_next;
	  VDE_Last_clk		<= VDE_Last_clk_next;
	  
	  --top fifo signals
	  --wr_en_top 		<= wr_en_top_next;
	  --din_top 			<= din_top_next;
	  --rd_en_top 		<= rd_en_top_next;
	  --reset_top			<= reset_top_next;
	  
	  --middle fifo signals
	  --wr_en_middle 		<= wr_en_middle_next;
	  --din_middle 		<= din_middle_next;
	  --rd_en_middle 		<= rd_en_middle_next;
	  --reset_middle		<= reset_middle_next; 
	  
	  --3x3 box
	  top_left 			<= top_left_next;
	  top_middle 		<= top_middle_next;
	  --top_right 		<= top_right_next;
	  middle_left 		<= middle_left_next;
	  middle_middle 	<= middle_middle_next;
	 -- middle_right 		<= middle_right_next;
	  bottom_left 		<= bottom_left_next;
	  bottom_middle 	<= bottom_middle_next;
	  bottom_right 		<= bottom_right_next;
	end if;
	end process;

	--state machine process.
	process (current_s,VDE_IN_I, HS_IN_I, VS_IN_I, RGB_IN_I, VDE_Last_clk, dout_top, dout_middle,top_middle, middle_middle, bottom_right, bottom_middle)
	begin

	  --default values for top fifo
	  wr_en_top_next 	<= '0';
	  din_top_next 		<= (others => '0');
	  rd_en_top_next 	<= '0';
	  reset_top_next	<= '0';
	  
	  --defulat values for the middle fifo
	  wr_en_middle_next <= '0';
	  din_middle_next 	<= (others => '0');
	  rd_en_middle_next <= '0'; 
	  reset_middle_next <= '0';
	  
	  --defult HDMI signals
	  color_next 		<= black_const;
	  VDE_next 			<= '0';
	  HS_next 			<= '0';
	  VS_next 			<= '0';
	  VDE_Last_clk_next <= VDE_IN_I;
	  
	  --3x3 box
	  top_left_next 		<=(others =>'0');
	  --top_middle_next		<=(others =>'0');
	  top_right_next		<=(others =>'0');
	  middle_left_next		<=(others =>'0');
	  --middle_middle_next	<=(others =>'0');
	  middle_right_next		<=(others =>'0');
	  bottom_left_next		<=(others =>'0');
	  bottom_middle_next	<=(others =>'0');
	  --bottom_right_next		<=(others =>'0');
	  
	  case current_s is
		 when row0 =>        --when current state is "row0"
		 
			 if(VDE_IN_I = '1') then --when screen starts being displays
				--write to the middle fifo
				wr_en_middle_next 	<= '1';
				din_middle_next 	<= RGB_IN_I;
				--write to the top fifo
				wr_en_top_next 	<= '1';
				din_top_next 	<= (others => '0');
				next_s 				<= row0;
			
			 elsif(HS_IN_I ='1') then -- then HS goes high changing rows
				next_s 				<= beginRow; -- go to beginrow
				
			 end if; 

		 when beginRow =>
		 
			if(VDE_IN_I = '1') then --when screen starts being displays
				--write to the middle fifo
				wr_en_middle_next 	<= '1';
				din_middle_next 	<= RGB_IN_I;
				--write to top FIFO from middle FIFO
				rd_en_middle_next 	<= '1';
				wr_en_top_next 		<= '1';
				din_top_next 		<= dout_middle;
				--write to 3x3 from FIFOs
				rd_en_top_next 		<= '1';
				top_right_next		<= dout_top;
				middle_right_next	<= dout_middle;
				--bottom_right_next	<= RGB_IN_I;
				next_s <= pass; -- go to pass
			elsif(VS_IN_I ='1') then
				next_s <= sentVS;
			else
				next_s <= beginRow; -- go to beginrow
				
			end if;
		 

		 when pass =>        --when current state is "pass"
		 
			 if(VDE_IN_I = '1') then
				--turn on VDE
				VDE_next 			<= '1';
				--write to the middle fifo
				wr_en_middle_next 	<= '1';
				din_middle_next <= RGB_IN_I;
				--write to top FIFO from middle FIFO
				rd_en_middle_next 	<= '1';
				wr_en_top_next 		<= '1';
				din_top_next 		<= dout_middle;
				--write to 3x3 from FIFOs
				rd_en_top_next 		<= '1';
				top_right_next		<= dout_top;
				middle_right_next	<= dout_middle;
				--bottom_right_next	<= RGB_IN_I;
				--shift the 3x3 registers left
				--top_middle_next 	<=top_right;
				top_left_next		<=top_middle;
				--middle_middle_next	<=middle_right;
				middle_left_next	<=middle_middle;
				bottom_middle_next	<=bottom_right;
				bottom_left_next	<=bottom_middle;
				--output color
				next_s <= pass; -- go to pass		 
			 
			elsif(VS_IN_I ='1') then
				next_s <= sentVS;
				
			elsif(HS_IN_I ='1') then -- then HS goes high changing rows
				next_s <= sentHS;
				
			elsif(VDE_IN_I = '0' and VDE_Last_clk = '1') then
				--turn on VDE
				VDE_next 			<= '1';
				--write 0 to right column of 3x3 this is done automatically
				--shift the 3x3 registers left
				--top_middle_next 	<=top_right;
				top_left_next		<=top_middle;
				--middle_middle_next	<=middle_right;
				middle_left_next	<=middle_middle;
				bottom_middle_next	<=bottom_right;
				bottom_left_next	<=bottom_middle;
				--output color
				next_s 				<= pass; -- go to pass
							
			 end if;
			 
		 when sentHS =>
			--set HS high to do to new row
			HS_next 	<= '1';
			--blank out 3x3 this is dont automatically
			next_s 		<= beginRow; -- go to pass
			if(VS_IN_I ='1') then
				next_s <= sentVS;
			end if;
			
		 when sentVS =>
			--set VS high to do to frame
			VS_next 			<= '1';
			--blank out 3x3 this is dont automatically
			--reset fifos
			reset_top_next 		<= '1';
			reset_middle_next	<= '1';
			next_s <= row0; -- go to pass	

	  end case;
	end process;
	
	din_top    <= dout_middle when ((VDE_IN_I = '1') and( next_s = beginRow or next_s = pass )) or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
	               (others => '0');
	               
	               
	rd_en_middle    <= '1' when (VDE_IN_I = '1') and( next_s = beginRow or next_s = pass ) else
                                      '0';
                                      
    rd_en_top    <= '1' when (VDE_IN_I = '1') and( next_s = beginRow or next_s = pass ) else
                           '0';
	           
	din_middle <= RGB_IN_I when (VDE_IN_I = '1') else
                    (others => '0');
                    
    wr_en_top <= '1' when (VDE_IN_I = '1'and VDE_Last_clk = '1') or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
                                        '0';
                    
    wr_en_middle <= '1' when (VDE_IN_I = '1') else
                    '0';
	
	top_right		<= dout_top when ((VDE_IN_I = '1') and( next_s = beginRow or next_s = pass )) or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
                          (others => '0');
                          
    top_middle_next		<= dout_top when ((VDE_IN_I = '1' and VDE_Last_clk = '1') and( next_s = beginRow or next_s = pass )) or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
                                                    (others => '0');
	
	
    middle_right    <= dout_middle when ((VDE_IN_I = '1' and VDE_Last_clk = '1') and( next_s = beginRow or next_s = pass )) or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
                            (others => '0');
                            
    middle_middle_next    <= dout_middle when ((VDE_IN_I = '1' and VDE_Last_clk = '1') and( next_s = beginRow or next_s = pass )) or (VDE_IN_I = '0' and VDE_Last_clk = '1') else
                                                                  (others => '0');
                            
    bottom_right_next    <= RGB_IN_I when (VDE_IN_I = '1') and( next_s = beginRow or next_s = pass ) else
                            (others => '0');

	red_padded <= 		((unsigned( "0000"& top_left(23 downto 16)) 
					  + unsigned("0000"&top_middle(23 downto 16))
					  + unsigned("0000"&top_right(23 downto 16)) 
					  + unsigned("0000"&middle_left(23 downto 16)) 
					  + unsigned("0000"&middle_middle(23 downto 16))
					  + unsigned("0000"&middle_right(23 downto 16)) 
					  + unsigned("0000"&bottom_left(23 downto 16)) 
					  + unsigned("0000"&bottom_middle(23 downto 16))
					  + unsigned("0000"&bottom_right(23 downto 16))) SRL 3);
					  
	green_padded <= 	((unsigned("0000"&top_left(15 downto 8)) 
					  + unsigned("0000"&top_middle(15 downto 8))
					  + unsigned("0000"&top_right(15 downto 8)) 
					  + unsigned("0000"&middle_left(15 downto 8)) 
					  + unsigned("0000"&middle_middle(15 downto 8))
					  + unsigned("0000"&middle_right(15 downto 8)) 
					  + unsigned("0000"&bottom_left(15 downto 8)) 
					  + unsigned("0000"&bottom_middle(15 downto 8))
					  + unsigned("0000"&bottom_right(15 downto 8))) SRL 3);

	blue_padded <= 		((unsigned("0000"&top_left(7 downto 0)) 
					  + unsigned("0000"&top_middle(7 downto 0))
					  + unsigned("0000"&top_right(7 downto 0)) 
					  + unsigned("0000"&middle_left(7 downto 0)) 
					  + unsigned("0000"&middle_middle(7 downto 0))
					  + unsigned("0000"&middle_right(7 downto 0)) 
					  + unsigned("0000"&bottom_left(7 downto 0)) 
					  + unsigned("0000"&bottom_middle(7 downto 0))
					  + unsigned("0000"&bottom_right(7 downto 0))) SRL 3);
					  
	red <=			"00000000" when VDE = '0' else
					"11111111" when red_padded > 255 else
					red_padded(7 downto 0);
					
	green <=			"00000000" when VDE = '0' else
					"11111111" when green_padded > 255 else
					green_padded(7 downto 0);
					
	blue <=			"00000000" when VDE = '0' else
					"11111111" when blue_padded > 255 else
					blue_padded(7 downto 0);
					
	reset_top <= '1' when VS_IN_I = '1' else '0';
	reset_middle <= '1' when VS_IN_I = '1' else '0';
					

	RGB_IN_O 	<= STD_LOGIC_VECTOR(red(7 downto 0)) & STD_LOGIC_VECTOR(green(7 downto 0)) & STD_LOGIC_VECTOR(blue(7 downto 0));
	VDE_IN_O	<= VDE;
	HB_IN_O		<= HB_IN_I;
	VB_IN_O		<= VB_IN_I;
	HS_IN_O		<= HS;
	VS_IN_O		<= VS;
	ID_IN_O		<= ID_IN_I;
				 
	
	slv_reg0out <= slv_reg0;
	slv_reg1out <= slv_reg1;
	slv_reg2out <= slv_reg2;
	slv_reg3out <= slv_reg3;
	slv_reg4out <= slv_reg4;
	slv_reg5out <= slv_reg5;
	slv_reg6out <= slv_reg6;
	slv_reg7out <= slv_reg7;
	


	--**************************
	--  FIFOs
	--**************************
	--FIFO for the top row in the 3x3 blur array
	top_row_fifo : fifo_generator_0 
		PORT MAP (
			   CLK                       => PIXEL_CLK_IN,
			   SRST                      => reset_top,
			   WR_EN 		             => wr_en_top,
			   RD_EN                     => rd_en_top,
			   DIN                       => din_top,
			   DOUT                      => dout_top,
			   FULL                      => full_top,
			   EMPTY                     => empty_top);
			   
	--FIFO for the top row in the 3x3 blur array
	middle_row_fifo : fifo_generator_0 
	   PORT MAP (
			  CLK                       => PIXEL_CLK_IN,
			  SRST                      => reset_middle,
			  WR_EN                     => wr_en_middle,
			  RD_EN                     => rd_en_middle,
			  DIN                       => din_middle,
			  DOUT                      => dout_middle,
			  FULL                      => full_middle,
			  EMPTY                     => empty_middle);

end Behavioral;
