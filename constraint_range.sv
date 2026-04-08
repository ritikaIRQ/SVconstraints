// Write a constraint for the range [0:100] should be present 70% and [101:255] should be present 30%

class constr;
rand int num;

constraint c1_num { num dist { [0:100] := 70, [101:255] := 30};}

endclass

module percentage_constraint;
constr cnum;

initial begin
cnum=new();
repeat(10) begin
cnum.randomize();
if(cnum.num < 100)
$display("Random numbers are : %0d",cnum.num);
else
$display("Random numbers are : %0d",cnum.num);
end
end

endmodule