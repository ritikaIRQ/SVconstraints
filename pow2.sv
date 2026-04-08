// To generate multiples of power 2.

class pow;
    randc logic[7:0] value;

    constraint c1 { value != 0; 
                    (value & (value-1)) == 0;}

endclass

module power;
    pow pw;

    initial begin
        pw = new();

        $display("Multiples of power of 2 are :");
        repeat(10) begin 
        if(pw.randomize())
        $display("%0d",pw.value);
        else 
        $display("Randomization Failed");
        end
    end

endmodule


        
