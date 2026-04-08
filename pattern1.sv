// Write the constraint to gen. this seq. 0 1 0 2 0 3 0 4 0 5 0  6  0  7  0  8  0  9  0 1 0 2 0 3 0 4 0 5 .. in array.

class pattern;

rand int arr[];

constraint c1 { arr.size() inside {[20:30]};}

constraint c2 { foreach(arr[i])
                if (i % 2 == 0)
                    arr[i] = 0;
                else if(i == 1)
                    arr[i] = 1;
                else if (i % 19 == 0)
                    arr[i] == 1;
                else 
                    arr[i] = arr[i-2] + 1;
            }

endclass

module tb;

pattern pt;

initial begin
pt = new();
pt.randomize();
$display("The randomized pattern is :");

foreach(pt.arr[i]);
$write("%0d", pt.arr[i]);
$display("/n/n");
end

endmodule 

