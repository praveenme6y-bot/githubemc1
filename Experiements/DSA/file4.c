#include<stdio.h>

float fareh;
float celcius;

int farehTocelcius(float farenheit);

int main(){
    printf("Enter the farenheit value: ");
    scanf("%f", &fareh);

    celcius = farehTocelcius(fareh);

    printf("%f degree farenheit is %f degree celcius", fareh, celcius);
}

int farehTocelcius(float farenheit){
    celcius = (farenheit - 32)*5/9;

    return celcius;
}
