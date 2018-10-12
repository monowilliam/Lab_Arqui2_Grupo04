library verilog;
use verilog.vl_types.all;
entity flip_flop_D is
    port(
        D               : in     vl_logic;
        clock           : in     vl_logic;
        Q               : out    vl_logic;
        reset           : in     vl_logic;
        set             : in     vl_logic
    );
end flip_flop_D;
