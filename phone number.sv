// To generate 100 10 digit phone number where first three digits are '852'.

class phone_number;
    randc bit[7:0] arr[];
    int i;

    constraint c2 { arr.size() == 10;}
    constraint c1 { foreach(arr[i]) {
        (arr[i]>0 && arr[i]<10);            //if we're not writing this line, the output will be having
                                            //more than 10 numbers. index value will be >10.
        if(i==0)
        arr[i] == 8;
        else if (i==1)
        arr[i] == 5;
        else if (i==2)
        arr[i] == 2;
     }
}

function void display();
    $display("Random phone number is : \"");
    foreach(arr[i]) begin
    $write("%0p",arr[i]);
    end
    $write("\"");
    $write("\n");
endfunction

endclass

module test;
    phone_number ph;

    initial begin
        ph = new();
         repeat(100) begin
            ph.randomize();
            ph.display();
         end
        end

endmodule

