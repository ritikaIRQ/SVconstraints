// META question

class meta;
    randc logic[15:0] num[];
    int i;

    constraint c1 { num.size() inside [5:10];}
    constraint c2 { foreach(num[i]) {
                    unique{num[i]};

                    if(i%2 == 0)
                    val[i]%2 == 0;    }
                }

    constraint c3 { num.sum() with (int' (item)) < 1000;}

    function void display();
        $display("Array elememnts are :");
        foreach(num[i]) begin
        $display("%0d",num[i])
        end
        $display("SUM = %0d",num.sum());
    endfunction

endclass

module test;
    meta m;

    initial begin
        m = new();

        $display("Array elements are = ");
        repeat(10) begin
        m.randomize();
        m.display();
        end
    end
endmodule


