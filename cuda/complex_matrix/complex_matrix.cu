#include "../gpu_operations/gpu_operations.h"
#include "complex_matrix.h"
#include <iostream>

ComplexMatrix::ComplexMatrix( int _rows, int _cols ) {
    cudaMallocManaged( &state, _rows * _cols * 2 * sizeof(double));

    rows = _rows;
    cols = _cols;

    dim3 threadsPerBlock( rows, cols );
    set_all<<<1, threadsPerBlock>>>( state, rows, cols, 0.0f, 0.0f );

    cudaDeviceSynchronize();
}
int ComplexMatrix::get_rows ( ) {
    return rows;
}
int ComplexMatrix::get_cols ( ) {
    return cols;
}
double* ComplexMatrix::get_state ( ) {
    return state;
}
void ComplexMatrix::add ( ComplexMatrix source ) {
    dim3 threadsPerBlock( rows, cols );

    add_2d_complex<<<1, threadsPerBlock>>>( 
        state, source.get_state(), 
        rows, cols
    );

    cudaDeviceSynchronize();
}
void ComplexMatrix::print ( ) {
    for ( int i = 0; i < rows; i++ ) {
        for ( int g = 0; g < cols; g++ ) {
            int ind = (i * cols + g) * 2;
            std::cout << '(' << state[ind] << (state[ind + 1] >= 0 ? " + " : " - ") << state[ind + 1] << "i) ";
        }
        std::cout << std::endl;
    }
}
void ComplexMatrix::set_element ( int row, int col, double a, double b ) {
    int ind = (row * cols + col) * 2;
    state[ ind     ] = a;
    state[ ind + 1 ] = b;
}