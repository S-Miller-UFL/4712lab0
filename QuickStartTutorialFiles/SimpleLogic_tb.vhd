-- David Tietz
-- University of Florida

--TestBench Template
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY SimpleLogic_tb is
END SimpleLogic_tb;

--Component Declaration
ARCHITECTURE behavior of SimpleLogic_tb is

  SIGNAL A,B,C,D : std_logic;
  SIGNAL Z : std_logic;

BEGIN  -- TB

--Component Instatiation
  UUT : ENTITY work.SimpleLogic
    PORT MAP (
      A  => A,
      B  => B,
      C  => C,
      D  => D,
      Z=> Z    
      );

  
  -- Test Bench Statements

  --Stimulus process
  stim_proc: process
  begin
    --Set initial values
    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    
    wait for 100ns; 
    --do something

    A <= '1';
    B <= '0';
    C <= '0';
    D <= '0';    
    
    wait for 200ns;
    --do something
    
    A <= '1';
    B <= '1';
    C <= '0';
    D <= '0';
    
    wait for 300ns;
    --do something
    
    A <= '0';
    B <= '0';
    C <= '1';
    D <= '1';
    
    wait for 400ns;
    --do something
    
    A <= '1';
    B <= '1';
    C <= '1';
    D <= '0';
    
    wait for 500ns;
    
    REPORT "SIMULATION FINISHED!";
    
    wait;

  END PROCESS;
--End Test Bench

END;
