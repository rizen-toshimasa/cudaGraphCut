#include <stdio.h>
#include <stdlib.h>
#include <time.h>
struct data{
    unsigned int o;//overflow value
    unsigned int h;//height value
    unsigned char f;//first flg
};
struct node{
    struct node *next;
    struct node *prev;
    struct data *data;
};
struct node *top;
struct node *btm;
void enqueue(unsigned int id){
    struct node *node = new struct node;
    node->id = id;
    node->prev = NULL;
    if (top == NULL) btm = node;
    else top-> prev = node;
    node->next = top;
    top = node;
}
unsgined int dequeue(void){
        struct node *node = btm;
        unsgined int id = node->id;
        btm = node->prev;
        if(btm ==NULL) top = NULL;
        else btm->next = NULL;
        delete node;
        return id;
}
int main(int argc, char** argv){
    FILE *fp;
    char *fname
    if(){
    }else{
        fname = "sample.inp";
    }
    printf("the cake is a lie");
    fclose(fp);
    return 0;
}
void fopenDIMACS(FILE *fp,int fSize){

}
