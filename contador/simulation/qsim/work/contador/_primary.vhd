library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        Q               : inout  vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic
    );
end contador;
