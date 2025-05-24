#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_TASKS 3
#define MAX_TASK_LEN 100

struct Day {
    char dayName[10];
    char tasks[MAX_TASKS][MAX_TASK_LEN];
    int taskCount;
};

int getDayIndex(char *dayName, struct Day week[]) {
    for (int i = 0; i < 7; i++) {
        if (strcasecmp(week[i].dayName, dayName) == 0)
            return i;
    }
    return -1;
}

void displayTasks(struct Day week[]) {
    printf("\n--- Weekly Task Calendar ---\n");
    for (int i = 0; i < 7; i++) {
        printf("%s:\n", week[i].dayName);
        if (week[i].taskCount == 0) {
            printf("  No tasks.\n");
        } else {
            for (int j = 0; j < week[i].taskCount; j++) {
                printf("  Task %d: %s\n", j + 1, week[i].tasks[j]);
            }
        }
    }
}

int main() {
    struct Day week[7] = {
        {"Monday", {}, 0},
        {"Tuesday", {}, 0},
        {"Wednesday", {}, 0},
        {"Thursday", {}, 0},
        {"Friday", {}, 0},
        {"Saturday", {}, 0},
        {"Sunday", {}, 0}
    };

    int choice;
    char inputDay[10];
    char taskInput[MAX_TASK_LEN];

    do {
        printf("\nMenu:\n");
        printf("1. Add Task\n");
        printf("2. Show All Tasks\n");
        printf("3. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        getchar(); 

        switch (choice) {
            case 1:
                printf("Enter the day name (e.g., Monday): ");
                fgets(inputDay, sizeof(inputDay), stdin);
                inputDay[strcspn(inputDay, "\n")] = '\0';

                int index = getDayIndex(inputDay, week);
                if (index == -1) {
                    printf("Invalid day name.\n");
                    break;
                }

                if (week[index].taskCount >= MAX_TASKS) {
                    printf("Task limit reached for %s.\n", week[index].dayName);
                    break;
                }

                printf("Enter the task: ");
                fgets(taskInput, sizeof(taskInput), stdin);
                taskInput[strcspn(taskInput, "\n")] = '\0';

                strcpy(week[index].tasks[week[index].taskCount], taskInput);
                week[index].taskCount++;

                printf("Task added to %s.\n", week[index].dayName);
                break;

            case 2:
                displayTasks(week);
                break;

            case 3:
                printf("Exiting...\n");
                break;

            default:
                printf("Invalid choice.\n");
        }

    } while (choice != 3);

    return 0;
}
