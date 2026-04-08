// Write a constrain where a 4-bit variable should never take the values between 4 to 9

class test;
    rand bit[3:0] var;

    constraint c1 {!(var inside {[4:9]});}

endclass

module tb;
    test t;

    initial begin
        t = new();
        t.randomize();
        $display("Variable value is %0d",t.var);
    end

endmodule