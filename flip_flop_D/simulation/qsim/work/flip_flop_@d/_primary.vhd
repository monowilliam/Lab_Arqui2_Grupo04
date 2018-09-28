library verilog;
use verilog.vl_types.all;
entity flip_flop_D is
    port(
        D               : inout  vl_logic;
        clock           : in     vl_logic;
        Q               : out    vl_logic
    );
end flip_flop_D;
