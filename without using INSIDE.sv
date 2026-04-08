// To generate random numbers between 34 to 43 without using inside operator

class gen;
    randc bit [7:0] val;

    //constraint c1_val { val dist {[34:43] := 100};}
constraint c1_val { (val >34) && (val<43);}

endclass

module test;
    gen g;

    initial begin
        g = new();
        repeat(10) begin
            g.randomize();
            $display("Numbers are = %0d"g.val);
        end
    end

endmodule

