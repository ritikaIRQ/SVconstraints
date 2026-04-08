// generate constraint for 16-bit variable such that no two consecutive ones shoule be generated

class consecutive;
    randc bit[15:0] val;

    constraint c1 { foreach(val[i])
                        if(val[i] == 1 && i<15)
                        val[i+1] == 0;
                    }

endclass

module test;
    consecutive cs;

    initial begin
        cs = new();

        repeat(10) begin
            cs.randomize();
            $display("Value = %0b",cs.val);
        end
    end

endmodule