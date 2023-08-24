#include<stdio.h>
#include<stdlib.h>
struct company {
    char cn[3]; //公司名称
    char hn[9]; //总裁姓名
    int pm;     //排名
    int sr;     //收入
    char cp[3]; //著名产品
};
int main(){
    struct company dec ={
        "DEC",
        "Ken Olsen",
        137,
        40,
        "PDP"
    };
    int i;
    dec.pm = 38;
    dec.sr =dec.sr + 70;
    i = 0;
    dec.cp[i] = 'V';
    i++;
    dec.cp[i] = 'A';
    i++;
    dec.cp[i] = 'X';
    printf("%s\n%s\n%d\n%d\n%s\n", dec.cn, dec.hn, dec.pm, dec.sr, dec.cp);
    system("pause");
    return 0;
}