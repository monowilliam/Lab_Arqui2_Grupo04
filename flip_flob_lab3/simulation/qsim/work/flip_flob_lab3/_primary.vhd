library verilog;
use verilog.vl_types.all;
entity flip_flob_lab3 is
    port(
        entrada         : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        av              : in     vl_logic;
        Qsalida         : out    vl_logic_vector(3 downto 0)
    );
end flip_flob_lab3;
