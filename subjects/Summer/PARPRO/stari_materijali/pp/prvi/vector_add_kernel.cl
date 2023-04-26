__kernel void vector_add(__global const int *A, __global int *C, __global int* cnt) {
    int i = get_global_id(0);
    int j = 0;

    C[i] = 1;
    for (j = 2; j * j <= A[i]; ++j)
        if (A[i] % j == 0)
        {
            C[i] = 0;
            break;
        }


    atomic_add(cnt, 1);
    // *cnt += 1;
}