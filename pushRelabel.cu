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

int main(int argc, char** argv){
    printf("the cake is a lie");
    return 0;
}
void fopenDIMACS(FILE *fp,int fSize){

}
