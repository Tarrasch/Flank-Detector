-- flank.vhd
Library IEEE;
use IEEE.std_logic_1164.all;

Entity flank is
  port( x,y : in std_logic;
        reset : in std_logic;
        u : out std_logic
      );
End entity;

Architecture flank_bhv of flank is
signal q1, q2 : std_logic; 
begin

    u <= ((not q1) and (q2 xor y)) or (q1 and (q2 xor x)) or ((not x) and (not y) and q2);
    
    q1 <= '0' when reset = '1' 
          else ((not x) and (q1 or y)) or (q2 and y);
    q2 <= '0' when reset = '1'
          else ((y or x) and (q1 xor q2)) or (x and y);
    
End Architecture;
