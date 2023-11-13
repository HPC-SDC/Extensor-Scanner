# Extensor-Scanner
The implementation of scanner in verilog

MatrixTree文件自定义了ExTensor文章中“用树形式存储的稀疏矩阵”，但是无法使用指针结构，就用了最简单的行和列存储，没有压缩。

Scanner文件定义了scanner的具体实现，row_col_select表示行选择还是列选择，row_col_number表示要选择哪一行/列。
