library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test is
end test;

ARCHITECTURE Behavioral of counterDown is
  SIGNAL rst_tb : in STD_LOGIC;
  SIGNAL clk_tb : in STD_LOGIC;
  SIGNAL o_tb : out std_logic_vector(3 downto 0);
  
  begin
    
    Component CounterDown
    PORT MAP(
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;
        o : out std_logic_vector(3 downto 0)
    ) 
    end component;
    
    component CounterDown
      Port( rst, clk : in std_logic;
            o : out std_logic_vector(3 downto 0) )
    
    clk_tb<= not clk_tb after 10ns;
    
    process
      begin
        rst_tb <= '1';
        wait for 20 ns;
        rst_tb <= '0';
        wait for 405 ns;
        rst_tb <= '1';
        wait for 20 ns;
        rst_tb <= '0';
        wait;
      end process;
  end architecture Behavioral;
      
  

