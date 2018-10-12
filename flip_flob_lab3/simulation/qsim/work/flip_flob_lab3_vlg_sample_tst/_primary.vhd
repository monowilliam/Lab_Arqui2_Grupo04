library verilog;
use verilog.vl_types.all;
entity flip_flob_lab3_vlg_sample_tst is
    port(
        av              : in     vl_logic;
        entrada         : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flip_flob_lab3_vlg_sample_tst;
