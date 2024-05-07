#include "../complex_operations/complex_operations.h"
#include "gpu_operations.h"

__global__ void set_all ( double* arr, int rows, int cols, double a, double b ) {
    // threadIdx.x = row
    // threadIdx.y = col
    int ind = (threadIdx.x * cols + threadIdx.y) * 2;
    arr[ ind     ] = a;
    arr[ ind + 1 ] = b;
}
__global__ void add_2d_complex ( double* target, double* source, int rows, int cols ) {
    // threadIdx.x = row
    // threadIdx.y = col
    int ind = (threadIdx.x * cols + threadIdx.y) * 2;

    add_complex(
        &target[ind], &target[ind + 1],
         source[ind],  source[ind + 1]
    );
}