//
//  main.m
//  Linked list
//
//  Created by 张皓 on 16/4/11.
//  Copyright © 2016年 张皓. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef struct _Node{
    int value;
    struct _Node *next;
    struct _Node *pre;
} Node;

Node *creatNode(int value, Node *pre, Node *next){
    Node *node = malloc(sizeof(Node));
    node->value = value;
    
    if (next != NULL) {
        next -> pre = node;
    }
    node->next = next;
    
    if (pre != NULL) {
        pre -> next = node;
    }
    node->pre = pre;

    return node;
    
}

void printList(Node *first){
    for (Node *node = first; node != NULL; node = node -> next ) {
        printf("Current node is %d\n", node -> value);
    }
}

void rprintList(Node *end){
    for (Node *node = end; node != NULL; node = node -> pre) {
        printf("Current node is %d\n",node -> value);
    }
}

void destoryList(Node *first){
    Node *node = first;
    Node *temp;
    while (node != NULL) {
        temp = node ;
        node = node -> next;
        free(temp);
    }
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Node *first = creatNode(0, NULL, NULL);
        Node *end = first;
        end = creatNode(1, end, NULL);
        end = creatNode(2, end, NULL);
        first = creatNode(-1, NULL, first);
//        printList(first);
        rprintList(end);
        destoryList(first);
        
    }
    return 0;
}
