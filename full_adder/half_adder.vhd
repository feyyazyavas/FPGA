library IEEE;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		ha_input1 : in std_logic;
		ha_input2 : in std_logic;
		ha_sum : out std_logic;
		ha_carry : out std_logic);
end half_adder;

architecture half_adder_arch of half_adder is
begin
	ha_sum <= ha_input1 xor ha_input2;
	ha_carry <= ha_input1 and ha_input2;
end half_adder_arch;

	