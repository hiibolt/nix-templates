#ifndef GPU_OPERATIONS
#define GPU_OPERATIONS

__global__ void set_all ( double*, int, int, double, double );
__global__ void add_2d_complex ( double*, double*, int, int );

#endif