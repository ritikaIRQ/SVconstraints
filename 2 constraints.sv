// 2 constraints - value should be in the range [25:50] & should be greater than 40

class cons;
    randc int val;

    constraint c1 { val inside {[25:50]};}
    constraint c2 { val > 40;}

endclass

module test;
    cons c;

    initial begin
        c = new();

        repeat(10) begin
            c.randomize();
            $display("Random Values are = %0d",c.val);
        end
    end
endmodule 