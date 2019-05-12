library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	port(
		A : in std_logic;
		B : in std_logic;
		C : out std_logic;
		S : out std_logic);
end half_adder;

architecture half_adder_arch of half_adder is
begin
	S <= A xor B;
	c <= A and B;
end half_adder_arch;