// Write a constraint that ensures a 16-bit data field is always even and between 1000–5000.

class pkt;
    rand bit [15:0] val;

    constraint c1 { val inside {[1000:5000]};}
    constraint c2 { val[0] == 0;}                       //ensures even
endclass

module tb;

    pkt p;

    initial begin
        p = new();
        p.randomize();
        $display("Values are : %0d",p.val);
    end

endmodule