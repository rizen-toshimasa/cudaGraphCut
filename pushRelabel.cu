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
void enqueue(struct data *data){
    struct node *node = new struct node;
    node->data = data;
    node->prev = NULL;
    if (top == NULL) btm = node;
    else top-> prev = node;
    node->next = top;
    top = node;
}
struct data  dequeue(void){
        struct node *node = btm;
        struct data *data = node->data;
        btm = node->prev;
        if(btm ==NULL) top = NULL;
        else btm->next = NULL;
        delete node;
        return *data;
}
int main(int argc, char** argv){
    FILE *fp;
    const char fname[] = "sample.inp";
    if((fp = fopen(fname,"r")) == NULL){
        printf("ファイル読み込みエラー\n");
        exit(EXIT_FAILURE);
    }
    char str[256];
    while(fgets(str, 256, fp) != NULL){
        printf("%s",str);
    }
    fclose(fp);
    return 0;
}
