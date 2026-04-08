// contraint to generate a pattern 0102030405

class pattern;
    randc int arr [];                                       // dynamic array
    int i;

    constraint c_arr { arr.size() = 10;}
    constraint c1_arr { foreach(arr[i])
                            if(i%2 == 0)
                            arr[i] == 0;
                            else 
                        arr[i] == (i+1)/2;
                      }

endclass

module pattern_gen;
    pattern pt;
    
    initial begin
        pt = new();
    pt.randomize();
    $display("\n\n");
    
    $display("The randomized pattern :");

    foreach(pt.arr[i])
    $write("%0d",pt.arr[i]);
    $display("/n/n");
    end

endmodule
