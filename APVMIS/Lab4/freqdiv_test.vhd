--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:08:56 10/14/2014
-- Design Name:   
-- Module Name:   C:/Users/Frostjaw/bsuir-14-15-labs/APVMIS/Lab4/freqdiv_test.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: freqdiv
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY freqdiv_test IS
END freqdiv_test;
 
ARCHITECTURE behavior OF freqdiv_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT freqdiv
    PORT(
         CIN : IN  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CIN : std_logic := '0';

 	--Outputs
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CIN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: freqdiv PORT MAP (
          CIN => CIN,
          COUT => COUT
        );

   -- Clock process definitions
   CIN_process :process
   begin
		CIN <= '0';
		wait for CIN_period/2;
		CIN <= '1';
		wait for CIN_period/2;
   end process;

END;
