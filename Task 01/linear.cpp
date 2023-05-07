#include <iostream>
#include <vector>

int main()
{
    const int SIZE = 5;
    std::vector<double> x = {0, 1, 2, 3, 4};
    std::vector<double> y = {2, 3, 5, 4, 6};
    double sum_x = 0, sum_y = 0, sum_xy = 0, sum_x2 = 0;
    for (int i = 0; i < SIZE; i++)
    {
        sum_x += x[i];
        sum_y += y[i];
        sum_xy += x[i] * y[i];
        sum_x2 += x[i] * x[i];
    }
    double slope = (SIZE * sum_xy - sum_x * sum_y) / (SIZE * sum_x2 - sum_x * sum_x);
    double intercept = (sum_y - slope * sum_x) / SIZE;
    std::cout << "Linear regression predictions:" << std::endl;
    for (int i = 0; i < SIZE; i++)
    {
        std::cout << slope * x[i] + intercept << std::endl;
    }
    return 0;
}