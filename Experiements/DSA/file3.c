#include<stdio.h>

float price[10];
float average = 0;
float total = 0;

int main(){
    printf("Enter the price of all the 10 items and press enter to enter the new price\n");

    for(int i = 0; i < 10; i++){
        scanf("%f", &price[i]);
        total = total+price[i];
    }
    average = total/10;
    printf("Average of the all 10 items is: %.2f", average);
}
