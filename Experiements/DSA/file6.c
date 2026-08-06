#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct Student {
    char name[20];
    char register_no[20];
    char email_id[50];
    float cgpa;
    char status[15];
    char native_place[50];
};

struct Node {
    struct Student data;
    struct Node* next;
};

struct Node* createNode() {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    if(!newNode){
        printf("Memorry allocation failed!\n");
        exit(1);
    }
    printf("\nEnter the student name: ");
    scanf("%[\n]s", newNode.data.name);
    printf("\nEnter Register Number: ");
    scanf("%[\n]s", newNode.data.register_no);
    printf("Enter Email ID: ");
    scanf("%[\n]s", newNode.data.email_id);
    printf("Enter the CGPA: ");
    scanf("%.f", &newNode.data.cgpa);
    printf("Enter Dayschollar/Hosteller");
    scanf("%[\n]s", newNode.data.status);
    printf("Enter the Native Place");
    scanf("%[\n]s", newNode.data.native_place);

    newNode.next = NULL;
    return newNode;
};

void printList(struct Node* head){
    if(head == NULL){
        printf("\nThe list is empty");
        return;
    }

}
int main(){

}
