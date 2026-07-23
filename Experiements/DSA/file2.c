#include<stdio.h>

int main(){
    float length;
    float width;
    float area;

    printf("Enter the value for length: ");
    scanf("%f", &length);
    printf("Enter the value for width: ");
    scanf("%f", &width);

    area = length*width;

    printf("Area of the rectangle is : %.2f", area);

    return 0;
}
