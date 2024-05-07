#include <iostream>

#include "complex_matrix/complex_matrix.h"

using namespace std;

int main ( ) {
    ComplexMatrix v1( 3, 4 );

    v1.set_element(0, 1, 2.0f, 3.0f);

    ComplexMatrix v2( 3, 4 );

    v2.set_element(0, 1, 2.0f, 3.0f);
    
    v1.add(v2);

    v1.print();
}