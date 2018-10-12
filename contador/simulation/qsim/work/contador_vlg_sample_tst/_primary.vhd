library verilog;
use verilog.vl_types.all;
entity contador_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        Q               : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vlg_sample_tst;
