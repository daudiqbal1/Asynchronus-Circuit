library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counterDown is
  Port(rst,clk : in std_logic;
       o : out std_logic_vector(3 downto 0));
end counterDown;

ARCHITECTURE AofCD of counterDown is
  
    SIGNAL Stem : out std_logic_vector(3 downto 0);

begin
Process(clk,rst)    
  Begin
   if(rst='1') then
      Stem<="1111";
  elsif('clk' event and clk='1') then
      Stem<=o-'1';
  end if;
end Process;
end AofCD;
