#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>
#include <time.h>
#include <signal.h>

int N;
unsigned long long primeSum = 0;

void handle_signal(int sig) {
    printf("\nSignal %d received but termination prevented. Press Ctrl+\\ to quit.\n", sig);
}

bool isPrime(int num) {
    if (num < 2) return false;
    for (int i = 2; i*i <= num; i++) {
        if (num % i == 0)
            return false;
    }
    return true;
}

void* threadA_func(void* arg) {
    printf("[Thread A] Started calculation.\n");
    clock_t start = clock();

    int count = 0, num = 2;
    unsigned long long sum = 0;

    while (count < N) {
        if (isPrime(num)) {
            sum += num;
            count++;
        }
        num++;
    }

    primeSum = sum;

    clock_t end = clock();
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("[Thread A] Finished calculation. Time taken: %.2f seconds\n", time_taken);

    pthread_exit(NULL);
}

void* threadB_func(void* arg) {
    printf("[Thread B] Started printing.\n");
    clock_t start = clock();

    time_t tstart = time(NULL);
    while (difftime(time(NULL), tstart) < 100) {
        printf("Thread 1 running\n");
        sleep(2);
    }

    clock_t end = clock();
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("[Thread B] Finished printing. Time taken: %.2f seconds\n", time_taken);

    pthread_exit(NULL);
}

void* threadC_func(void* arg) {
    printf("[Thread C] Started printing.\n");
    clock_t start = clock();

    time_t tstart = time(NULL);
    while (difftime(time(NULL), tstart) < 100) {
        printf("Thread 2 running\n");
        sleep(3);
    }

    clock_t end = clock();
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("[Thread C] Finished printing. Time taken: %.2f seconds\n", time_taken);

    pthread_exit(NULL);
}

int main() {
    signal(SIGINT, handle_signal);

    pthread_t threadA, threadB, threadC;

    printf("Enter the value of N (number of primes to sum): ");
    scanf("%d", &N);

    clock_t main_start = clock();

    pthread_create(&threadA, NULL, threadA_func, NULL);
    pthread_create(&threadB, NULL, threadB_func, NULL);
    pthread_create(&threadC, NULL, threadC_func, NULL);

    pthread_join(threadA, NULL);
    printf("Sum of first %d prime numbers is: %llu\n", N, primeSum);

    pthread_join(threadB, NULL);
    pthread_join(threadC, NULL);

    clock_t main_end = clock();
    double main_time = ((double)(main_end - main_start)) / CLOCKS_PER_SEC;
    printf("Total program execution time: %.2f seconds\n", main_time);

    return 0;
}
