// Write a constraint to generate random values which are divisible by 5

class div_by_5;
    randc bit [7:0] num;

    constraint c_num { num % 5 == 0;}
endclass

module div_5;
    div_by_5 div;

    initial begin
        div = new();

        for (int i=0;i<10;i++) begin
            if(div.randomize()) 
            $display("Random values : %0d",div.num);
            else 
            $display("Randomization Failed");
        end
    end

endmodule
