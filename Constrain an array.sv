// Constrain an array of 5 integers such that sum should be 50 and each element should be unique.

class array_constrain;
    rand int arr[];

    constraint c0 { arr.size() == 5;}
    constraint c1 { arr.sum() == 50;}
    constraint c2 { unique(arr);}

endclass

module tb;

    array_constrain ac;

    initial begin
        ac = new();
        ac.randomize();
        $display("Array elements are : %0d", ac.arr);
    end

endmodule