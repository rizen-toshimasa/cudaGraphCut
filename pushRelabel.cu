#include <stdio.h>
#include <stdlib.h>
#include <time.h>
struct Edge{
    Edge(){
        in_next = NULL; out_next = NULL; rev = NULL;
        push = NULL; pull = NULL;
        flow = 0;
    }
    struct Edge *in_next, *out_next, *rev;
    struct Node *push, *pull;
    unsigned int flow;
};
struct Node{
    Node(){
        in_edge = NULL; out_edge = NULL;
        flow = 0; height = 0;
    }
    struct Edge *in_edge, *out_edge;
    unsigned int flow ,height;
};
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
struct Edge* FindEdge(struct Node *node_push, struct Node *node_pull){
    //エッジすでにあるかなハート
    puts("ie");
    printf("%p",node_push);
    struct Edge *edge = node_push->out_edge;
    printf("node_push->out",node_push->out_edge);
puts("hoge");
int i=0;
//    while(edge != NULL){
        printf("%d\n",i);
        if(edge->pull == node_pull){
            return edge;
        }
        edge = edge->out_next;
        i++;
//    }
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
    nodes = (struct Node *)malloc(sizeof (struct Node) * size_nodes);
    int id_push, id_pull, flow;
    struct Node *node_push, *node_pull;
    struct Edge *find_edge;
    while(fscanf(fp, "a %d %d %d",&id_push, &id_pull, &flow) != EOF){
        puts("a");
        //NodeHoge(nodes, num_max_node, push, pull, flow);
        printf("id_push:%d pull:%d",id_push,id_pull);
        node_push = &nodes[id_push-1];
        node_pull = &nodes[id_pull-1];
        puts("hoge");
        find_edge = FindEdge(node_push, node_pull);
        puts("aho");
        if(find_edge == NULL){
            find_edge->pull = node_pull;
            find_edge->push = node_push;
            find_edge->flow = flow;
        }else{
            Push(node_push, node_pull, flow);
        }
    }
    free(nodes);
    fclose(fp);
    return 0;
}
