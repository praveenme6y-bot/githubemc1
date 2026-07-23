#include<stdio.h>
#include<stdlib.h>

int main(){
    int *ptr;
    printf("Dynamically allocation, printing and freeing numbers 1 to 10: \n");
    for(int i = 1; i<=10; i++){
        ptr = (int*)malloc(sizeof(int));

        if(ptr == NULL){
            printf("Memory allocation failed\n");
            return 1;
        }
        *ptr = i;
        printf("%d\t", *ptr);
        free(ptr);
        ptr = NULL;
    }
    printf("\nMemory successfully allocated and freed for all 10 numbers\n");
    return 0;
}
