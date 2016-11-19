// 这是一个递归与尾递归的例子
#include <stdio.h>
#include <stdlib.h>
int fact(int n);
int factsecond(int n,int rst);
int main()
{
	int tmp=8;
	printf("%d\n",fact(tmp));
	printf("%d\n",factsecond(tmp,1));
	return 0;
}
// 递归
int fact(int n)
{
	int reasult=0;
	if(n<0)
		reasult=0;
	else if(n==0||n==1)
		reasult=1;
	else
		reasult=n*fact(n-1);
	return reasult;
}
// 尾递归
int factsecond(int n,int rst)
{
	int reasult=0;
	if(n<0)
		reasult=0;
	else if(n==0||n==1)
		reasult=rst;
	else
		reasult=factsecond(n-1,n*rst);
	return reasult;
}