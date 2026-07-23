#include<stdio.h>

int prev_val = 0;
int current_val = 1;
int next_val = 0;

int main(){
    for(int i = 0; i<10; i++){
        printf("%d\t", prev_val);
        next_val = prev_val+current_val;
        prev_val = current_val;
        current_val = next_val;
    }
    return 0;
}
