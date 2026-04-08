// for a 4-bit dynamic array such that even nos. on odd locations & vice versa

class even_and_odd;
  rand bit [3:0] arr[];
  int i;

  // Size between 15-20
  constraint c1_arr { arr.size() inside {[15:20]}; }

  // Explicit allowed values for parity at each index
  constraint c2_arr {
    foreach(arr[i]) {
      if (i % 2 == 0)       // even index → odd numbers
        arr[i] inside {1,3,5,7,9,11,13,15,17,19};
      else                  // odd index → even numbers
        arr[i] inside {0,2,4,6,8,10,12,14,16,18,20};
    }
  }

  function void display();
    $display("\n--- SIZE = %0d ---", arr.size());
    foreach(arr[i]) begin
      if (i % 2 == 0)
        $write("Even Index %0d : ", i);
      else
        $write("Odd  Index %0d : ", i);
      $display("Value = %0d", arr[i]);
    end
  endfunction
endclass

module tb;
  even_and_odd evod;

  initial begin
    evod = new();
    if(evod.randomize())
      evod.display();
    else
      $display("Randomization failed!");
  end
endmodule


