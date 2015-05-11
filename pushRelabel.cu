#include <stdio.h>
#include <stdlib.h>
#include <time.h>
typedef struct Node{
    struct Edge *in_edge;
    struct Edge *out_edge;
    unsigned int flow;
    unsigned int height;
} node_t;
typedef struct Edge{
    struct Edge *in_next;
    struct Edge *out_next;
    struct Node *push;
    struct Node *pull;
    struct Edge *rev;
    struct int flow;
} edge_t;
void Push(struct Node *node_push, struct Node *node_pull, int flow){
    struct Edge edge = new edge;
    struct Edge temp_edge = node_push->out_edge;
    edge.in_next = 1;
}
bool IsExistEdge(struct Node node_push, struct Node node_pull){
    
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
        if(!IsExistEdge(node_push, node_pull)) continue;
        Push(node_push, node_pull, flow);
    }
    free(edgeArray)
    fclose(fp);
    return 0;
}
