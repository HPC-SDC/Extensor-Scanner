	`timescale 1ns/1ns
 
module test_tb();
 
reg clk;
reg rst;
reg [15:0] tree_row[0:14];
reg [15:0] tree_col[0:14]; 
reg [15:0] tree_data[0:14];  


initial begin
   clk=1;
   rst=1;
   #2000000
   rst=0;
end

always #20 clk = ~clk;


SparseMatrixTree A1
      (
      .clk(clk),
      .rst(rst),
      .tree_row(tree_row),   // ??????
      .tree_col(tree_col),   // ??????
      .tree_data(tree_data)  // ??????
      );



wire row_col_select=0;
wire row_col_number=1;
reg value;
reg row;
reg col;


scanner S1(
      .clk(clk),
      .rst(rst),
      .tree_row(tree_row),   // ??????
      .tree_col(tree_col),   // ??????
      .tree_data(tree_data),  // ??????
      .row_col_select(row_col_select),
      .row_col_number(row_col_number),
      .row(row),
      .col(col),
      .value(value)
);
 

      
endmodule
