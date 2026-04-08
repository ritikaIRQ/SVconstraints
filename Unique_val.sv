// To generaATE unique nos i.e. 99.0, 99.1, 99.2, ...., 100.0 between 99 to 100

module unique_val;

    class unique_nos;
        randc int val;
        real real_val;

        constraint c1_val { val inside { [990:1000]};}

        function void post_randomization();
            real_val = val/10;
            $display("Unique nos are : %2f",real_val);

        endfunction
    endclass

    initial begin
        unique_nos un = new();

        repeat(5)
        un.randomize();
    end

endmodule