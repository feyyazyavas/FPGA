library IEEE;
use IEEE.std_logic_1164.all;

entity binary_multiplier is
	port(
		input_A : in std_logic_vector(1 downto 0);
		input_B : in std_logic_vector(1 downto 0);
		output_P : out std_logic_vector(3 downto 0));
end binary_multiplier;


architecture binary_multiplier_arch of binary_multiplier is

	signal and_gate : std_logic_vector(3 downto 0);
	signal carry1 : std_logic;
	
component half_adder
	port(
		A : in std_logic;
		B : in std_logic;
		C : out std_logic;
		S : out std_logic);
end component;

begin
	and_gate(0) <= input_A(0) and input_B(0);
	and_gate(1) <= input_A(0) and input_B(1);
	and_gate(2) <= input_A(1) and input_B(0);
	and_gate(3) <= input_A(1) and input_B(1);
	
	output_P(0) <= and_gate(0);
	
	HA1 : half_adder
		port map(
			A => and_gate(1),
			B => and_gate(2),
			C => carry1,
			S => output_P(1));
			
	HA2 : half_adder
		port map(
			A => carry1,
			B => and_gate(3),
			C => output_P(3),
			S => output_P(2));
			
end binary_multiplier_arch;