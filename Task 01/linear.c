#include <stdio.h>
#define SIZE 5

int main()
{
    double x[SIZE] = {0, 1, 2, 3, 4}, y[SIZE] = {2, 3, 5, 4, 6}, sum_x = 0, sum_y = 0, sum_xy = 0, sum_x2 = 0;
    for (int i = 0; i < SIZE; i++)
        sum_x += x[i], sum_y += y[i], sum_xy += x[i] * y[i], sum_x2 += x[i] * x[i];
    double slope = (SIZE * sum_xy - sum_x * sum_y) / (SIZE * sum_x2 - sum_x * sum_x),
           intercept = (sum_y - slope * sum_x) / SIZE;
    printf("Linear regression predictions:\n");
    for (int i = 0; i < SIZE; i++)
        printf("%.2f\n", slope * x[i] + intercept);
    return 0;
}