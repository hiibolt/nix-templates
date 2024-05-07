#ifndef COMPLEX_MATRIX
#define COMPLEX_MATRIX

class ComplexMatrix {
    private:
        int rows;
        int cols;
        double* state;
    public:
        // Constructors
        ComplexMatrix ( int, int );

        // Get Operations
        double  get_element ( int, int );
        int     get_rows    ( );
        int     get_cols    ( );
        double* get_state   ( );

        // Set Operations
        void set_element ( int, int, double, double );
        void add         ( ComplexMatrix );

        // Convenience Operations
        void print ( );
};

#endif