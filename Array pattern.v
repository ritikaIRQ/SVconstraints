// Constraint that should follow the below Rules 
// I. The dynamic array should contain 20 items. 
// II. Out of 20 items, the values of 3 items should be equal to 5 at random positions. 
// III. The values of 5 items must be 10 at random positions 
// IV. The values of 8 items must be 15 and 
// V. the remaining 4 items must be 20. 

class array;

rand int arr[];

constraint c1 { arr.size() == 20;}
constraint c2 { foreach (arr[i])
                    arr[i] inside {5,10,15,20};
                    arr.sum() with (item == 5) == 3;
                    arr.sum() with (item == 10) == 5;
                    arr.sum() with (item == 15) == 8;
                    arr.sum() with (item == 20) == 4;   
                }

endclass

module tb;

array a;

initial begin

a = new();
a.randomize();
$display("Array = %p", a.arr);
end

endmodule 