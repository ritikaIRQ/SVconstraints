// Write a constraint for an array of numbers such that the size of array ranges from 6 to 15 elements, and even index locations should 
// have odd numbers and odd index locations should have even numbers, numbers rage is between 16 to 127.

class array;

rand int arr[];

constraint c1{ arr.size() inside {[6:15]};}   

constraint c2{ foreach(arr[i])                                          // constraint c1{ foreach(arr[i]) 
                    arr[i] inside {[16:127]};                           //                    arr[i] inside {[16:127]}; 
                                                                        //                  
                if( i % 2 == 0)                                         //                  if (i[0] == 0)  
                arr[i] % 2 == 1;                                        //                   arr[i][0] == 1; // Set MSB to 1 for even-indexed elements 
                else if( i % 2 == 1)                                    //                  else  
                arr[i] % 2 == 0;                                        //                   arr[i][0] == 0; // Set MSB to 0 for odd-indexed elements 
            }                                                           //                } 

endclass

module tb;

array pt;

initial begin

pt = new();

repeat(10) begin
pt.randomize();
$display("The values of array are %p",pt.arr);
end
end

endmodule 
