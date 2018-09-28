library verilog;
use verilog.vl_types.all;
entity flip_flop_D_vlg_check_tst is
    port(
        D               : in     vl_logic;
        Q               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end flip_flop_D_vlg_check_tst;
