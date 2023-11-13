module scanner (
    input wire clk,  // ????
    input wire rst,  // ????
    input wire row_col_select,  // ???/?????????? 0 ??????1 ?????
    input wire row_col_number,  // ?????????
    input wire [15:0] tree_row[0:14],  // ??????
    input wire [15:0] tree_col[0:14],  // ??????
    input wire [15:0] tree_data[0:14],  // ??????

    output reg [7:0] value,  // ??????
    output reg [3:0] row,    // ??????
    output reg [3:0] col     // ??????
);

reg [3:0] current_ptr;  // ???????


initial begin  //不可综合，给一个rst
        current_ptr <= 4'b0000;
        row <= 4'b0001;

end

// ?????
always @ (posedge clk) begin//异步复位，同步释放，把rst写入always
    if (!rst) begin
        // ?????????
        value <= 8'b0;
        row <= 4'b0000;
        col <= 4'b0000;
current_ptr <= 4'b0000;
        row <= 4'b0001;
    end 


    
    if (row_col_select == 0) begin
        // 
        if (current_ptr < 15) begin
            if (tree_row[current_ptr] == row_col_number) begin
                value <= tree_data[current_ptr];
                col <= tree_col[current_ptr];
                row <= tree_row[current_ptr];
        
            end

            current_ptr <= current_ptr + 1;

/*
            if (tree[current_ptr][3:0] == row_col_number) begin
                value <= tree[current_ptr][15:8];
                col <= tree[current_ptr][7:4];
                row <= tree[current_ptr][3:0];
                current_ptr <= current_ptr + 1;
            end
*/
        end 
    end 
end

endmodule
