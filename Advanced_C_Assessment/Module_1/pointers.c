#include <stdio.h>
#include <stdlib.h>


void rearrangeEvenOdd(int *arr, int size) {
    int *temp = (int *)malloc(size * sizeof(int));
    if (temp == NULL) {
        printf("Memory allocation failed.\n");
        return;
    }

    int *tempPtr = temp;

    int *ptr = arr;
    for (int i = 0; i < size; i++, ptr++) {
        if (*ptr % 2 == 0) {
            *tempPtr = *ptr;
            tempPtr++;
        }
    }

    ptr = arr;
    for (int i = 0; i < size; i++, ptr++) {
        if (*ptr % 2 != 0) {
            *tempPtr = *ptr;
            tempPtr++;
        }
    }

    ptr = arr;
    tempPtr = temp;
    for (int i = 0; i < size; i++, ptr++, tempPtr++) {
        *ptr = *tempPtr;
    }

    free(temp);
}

void printArray(int *arr, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", *(arr + i));
    }
    printf("\n");
}

int main() {
    int arr[] = {1, 2, 3, 4, 5, 6};
    int size = sizeof(arr) / sizeof(arr[0]);

    printf("Original array: ");
    printArray(arr, size);

    rearrangeEvenOdd(arr, size);

    printf("Rearranged array: ");
    printArray(arr, size);

    return 0;
}
