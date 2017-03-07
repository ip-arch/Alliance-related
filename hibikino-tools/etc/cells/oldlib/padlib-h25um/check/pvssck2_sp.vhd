--  
--  Avertec Release v3.4p5 (64 bits on Linux 3.16.0-4-amd64)
--  [AVT_only] host: i7-2
--  [AVT_only] arch: x86_64
--  [AVT_only] path: /opt/yagle/bin/avt_shell
--  argv: /opt/yagle/etc/tcl/extractCell.tcl ../../../../etc/h24um.hsp pvssck2_sp 
--  
--  User: 1bjk1126
--  Generation date Sun Dec 11 17:45:24 2016
--  
--  VHDL data flow description generated from `pvssck2_sp`
--  

library IEEE;
use IEEE.std_logic_1164.all;

-- Entity Declaration

ENTITY pvssck2_sp IS
  PORT (
          ck : in    STD_LOGIC;
         cko : out   STD_LOGIC;
         vdd : in STD_LOGIC;
         vss : in STD_LOGIC
  );
END pvssck2_sp;

-- Architecture Declaration

ARCHITECTURE RTL OF pvssck2_sp IS
  SIGNAL v_2 : STD_LOGIC;

BEGIN


  v_2 <= not (ck);

  cko <= not (v_2);

END;
