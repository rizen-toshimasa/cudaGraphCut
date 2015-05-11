#include <stdio'/home/toshimasa/android-studio/bin/studio.sh' .h>
#include <stdlib.h>
#include <time.h>
typedef struct Node{
    struct Edge *in_edge = NULL;
    struct Edge *out_edge = NULL;
    unsigned int flow = 0;
    unsigned int height = 0;
} node_t;
typedef struct Edge{
    struct Edge *in_next = NULL;
    struct Edge *out_next = NULL;
    struct Node *push = NULL;
    struct Node *pull = NULL;
    struct Edge *rev = NULL;
    unsigned int flow = 0;
} edge_t;
void Push(struct Node *node_push, struct Node *node_pull, int flow){
    struct Edge *edge = new struct Edge;
    edge->in_next = node_pull->in_edge;
    edge->out_next = node_push->out_edge;
    node_pull->in_edge = edge;
    node_push->out_edge = edge;
    edge->pull = node_pull;
    edge->push = node_push;
    edge->flow = flow;
}
struct Edge FindEdge(struct Node *node_push, struct Node *node_pull){
    //エッジすでにあるかなハート
    struct Edge edge = node_push->out_edge;
    while(edge != NULL){
        if(edge->pull == node_pull) return edge;
    }
    return NULL;//なかったわ
    
}

int main(int argc, char** argv){
    FILE *fp;
    const char fname[] = "sample.inp";
    if((fp = fopen(fname,"r")) == NULL){
        printf("ファイル読み込みエラー\n");
        exit(EXIT_FAILURE);
    }
    int size_nodes, num_edge;
    fscanf(fp, "p max %d %d", &size_nodes, &num_edge);
    printf("Node:%d Edge:%d\n", size_nodes, num_edge);
    int num_src;
    int num_sink;
    fscanf(fp, "n %d s", &num_src);
    fscanf(fp, "n %d t", &num_sink);
    struct Node *nodes;
    nodes = (struct Node *)malloc(sizeof (struct Node) * node_max_num);
    int push, pull, flow;
    while(fscanf(fp, "a %d %d %d",&node_push, &node_pull, &flow) == NULL){
        //NodeHoge(nodes, num_max_node, push, pull, flow);
        if(struct Edge edge = FindEdge(node_push, node_pull)){
            edge->pull = pull;
            edge->push = push;
            edge->flow = flow;
        }else{
            Push(node_push, node_pull, flow);
        }
    }
    free(edgeArray)
    fclose(fp);
    return 0;
}
