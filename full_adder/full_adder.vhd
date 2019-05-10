library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
	port(
		input1, input2, carryIn : in std_logic;
		sum, carryOut : out std_logic);
end full_adder;

architecture full_adder_arch of full_adder is
	signal sum1, carry1, carry2 : std_logic;
component half_adder
	port(
		ha_input1 : in std_logic;
		ha_input2 : in std_logic;
		ha_sum : out std_logic;
		ha_carry : out std_logic);
end component;
begin
HA1 : half_adder
	port map(
		ha_input1 => input1,
		ha_input2 => input2,
		ha_sum => sum1,
		ha_carry => carry1);
		
HA2 : half_adder
	port map(
		ha_input1 => carryIn,
		ha_input2 => sum1,
		ha_sum => sum,
		ha_carry => carry2);
		
carryOut <= carry1 or carry2;
end full_adder_arch;