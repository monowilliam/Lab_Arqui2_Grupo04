library verilog;
use verilog.vl_types.all;
entity flip_flop_D_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        D               : in     vl_logic;
        reset           : in     vl_logic;
        set             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flip_flop_D_vlg_sample_tst;
