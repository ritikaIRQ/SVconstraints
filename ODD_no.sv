// Odd nos between 10 to 30

class odd_no;
    randc int odno;

    constraint c1_odno { odno inside {[10:30]};}
    constraint c2_odno { odno % 2 == 1;}

endclass

module odd_val;

    odd_no odv;

    initial begin
        odv = new();

        repeat(10) begin
            odv.randomize();
            $display("Odd nos. between 10 to 30 are : %0d",odv.odno);
        end
    end

endmodule

