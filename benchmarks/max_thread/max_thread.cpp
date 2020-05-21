#include<iostream>
#include<thread>
#include<vector>

const int NUM_THREAD = 4;
const int SIZE_PER_THREAD = 10;

void max_thread(unsigned int tid, const int* data, int *result)
{
    int *data_sp = (int*)(data + tid*SIZE_PER_THREAD);
    int m = 0;
    for (int i=0; i<SIZE_PER_THREAD; i++) {
        if ( *(data_sp + i) > m)
            m = *(data_sp + i);
    }

    *(result + tid) = m;
}

int main()
{
    int matrix[NUM_THREAD*SIZE_PER_THREAD];
    int result[NUM_THREAD];

    std::cout << "Matrix size: " << NUM_THREAD*SIZE_PER_THREAD << std::endl;

    // Fill the matrix with the number that can be easily told which thread it belongs
    for (int t=0; t<NUM_THREAD; ++t) {
        std::cout << "Thread " << t << ": ";
        for (int i=0; i<SIZE_PER_THREAD; ++i) {
            matrix[t*SIZE_PER_THREAD + i] = (t+1)*100 + i;
            std::cout << (t+1)*100 + i << " ";
        }
        std::cout << std::endl;
    }

    // Create threads
    std::vector<std::thread> threads;
    for (int t=0; t<NUM_THREAD; ++t){
        threads.push_back(
            std::thread(max_thread, t, matrix, result)
        );
    }

    // Wait for all threads finished
    for (int t=0; t<NUM_THREAD; ++t){
        threads[t].join();
    }

    int m = 0;
    for (int t=0; t<NUM_THREAD; ++t){
        if (m < result[t])
            m = result[t];
    }

    std::cout << "The maximum number is: " << m << std::endl;
}
