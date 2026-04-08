// Constraint to ensure a palindrome bit pattern for 4-bit number

class pal;

    rand bit[3:0] num;

    constraint c { num[3] == num[0];
                   num[2] == num[1];
                }

endclass

module tb;

    pal p;

    initial begin
        p = new();
        p.randomize();
        $display("%0d",p.num);
    end

endmodule