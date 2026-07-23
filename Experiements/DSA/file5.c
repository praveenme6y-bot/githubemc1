#include<stdio.h>
#include<string.h>

struct Car{
    char model_name[50];
    float price;
    char fuel_type[20];
};

int main(){
    struct Car honda_cars[] = {
    {"Honda Amaze", 7.20, "Petrol"},
    {"Honda Elevate", 11.70, "Petrol"},
    {"Honda City", 11.80, "Petrol"},
    {"Honda Jazz(used)", 6.50, "Petrol"},
    {"Honda We-V(used)", 8.20, "Diesel"},
    };

    int total_cars = sizeof(honda_cars)/sizeof(honda_cars[0]);
    int found_count = 0;

    for(int i = 0; i<total_cars; i++){
        if(honda_cars[i].price <= 10.0){
            printf("Model: %s\tPrice%.2f lakhs\tFuel type: %s\n", honda_cars[i].model_name, honda_cars[i].price, honda_cars[i].fuel_type);
            found_count++;
        }
    }
    if(found_count == 0){
        printf("No models found under 10 lakhs\n");
    }
    return 0;
}
