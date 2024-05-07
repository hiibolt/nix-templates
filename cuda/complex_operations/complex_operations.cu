#include "complex_operations.h"

__device__ void add_complex ( 
    double* target_a, double* target_b,
    double source_a, double source_b
) {
    *target_a += source_a;
    *target_b += source_b;
}