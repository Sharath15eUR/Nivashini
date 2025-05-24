#include <stdio.h>
#include <stdbool.h>

#define N 4

bool searchInSortedMatrix(int matrix[N][N], int key) {
    int row = 0;
    int col = N - 1;

    while (row < N && col >= 0) {
        if (matrix[row][col] == key) {
            return true;
        } else if (matrix[row][col] > key) {
            col--;
        } else {
            row++;
        }
    }

    return false;
}

int main() {
    int matrix[N][N] = {
        { 5,  8, 15, 20},
        {10, 12, 18, 25},
        {16, 19, 22, 30},
        {21, 24, 28, 35}
    };

    int key;
    printf("Enter the key to search: ");
    scanf("%d", &key);

    if (searchInSortedMatrix(matrix, key)) {
        printf("Key %d found in the matrix.\n", key);
    } else {
        printf("Key %d not found in the matrix.\n", key);
    }

    return 0;
}

