#include <stdio.h>
#include <stdlib.h>
#include <time.h>
typedef struct _node node_t{
    unsigned int id;//頂点ID
    unsigned int o;//overflow
    unsigned int h;//height
    char flg;//Normal=0,Source=1,Sync=2
    struct _node *next;
};
typedef struct _list list_t{
    node_t head;
    node_t tail;
};

int main(int argc, char* argv){
    printf("the cake is a lie");
    return 0;
}
void fopenDIMACS(FILE *fp,int fSize){

}
