// Constraint to generate a pattern 001002003004005

class pattern2;

    randc int arr[];
    int i;

    constraint c1_arr { arr.size() == 15; }
    constraint c2_arr { foreach (arr[i])
                        if ( i%3 == 2 )
                            arr[i] == i/3 + 1;
                        else
                            arr[i] == 0;
                       }

endclass

module pattern_gen;

    pattern2 pt;

    initial begin
        pt = new();
        pt.randomize();

        $display("/n/n");
        $display("The randomized pattern is : ");

        foreach(arr[i])
        $write ("%0d",pt.arr[i]);

        $display("/n/n");
    end

endmodule
