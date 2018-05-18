#include <stdio.h>
#include <sys/time.h>


#define	SIZE	1024


long a[SIZE][SIZE];
long b[SIZE][SIZE];
long c[SIZE][SIZE];
long d[SIZE][SIZE];

void init()
{
	int i,j;

	for(i=0;i<SIZE;i++)
		for(j=0;j<SIZE;j++)
		{
			a[i][j]=i*SIZE+j;
			b[i][j]=i*SIZE-j;
		}
}

int
verify(long x[SIZE][SIZE],long y[SIZE][SIZE])
{
   int retv=1;
   int i,j;
   
   for(i=0;i<SIZE;i++)
      for(j=0;j<SIZE;j++)
         if(x[i][j] != y[i][j])
         {
            retv=0;
            return retv;
         }
   
   return retv;
}

int
main()
{
   int i,j,k;
   long retv;

   struct timeval t1_start;
   struct timeval t2_start;
   double t1; 
   double t2; 
   extern void timer_start(struct timeval *); 
   extern void timer_end(double *,struct timeval *); 

   printf("Initializing ...\n");
   init();

  // printf("Calculating matrix c ...\n");
   timer_start(&t1_start);
   for(i=0;i<SIZE;i++)
      for(j=0;j<SIZE;j++)
      {
         c[i][j]=0;
         for(k=0;k<SIZE;k++)
            c[i][j]+=a[i][k]*b[k][j];
      }
   timer_end(&t1,&t1_start);

//   printf("Calculating matrix d ...\n");
   timer_start(&t2_start);
#pragma acc parallel loop copyin(a) copyout(d) swapin(b(dimension order:1,2))
   for(i=0;i<SIZE;i++)//1024
#pragma acc loop tile(2) annotate(tilemask(d))
      for(j=0;j<SIZE;j++)//1024
      {
         d[i][j]=0;

         for(k=0;k<SIZE;k++)
            d[i][j]+=a[i][k]*b[k][j];
      }
   timer_end(&t2,&t2_start);

//   printf("Checking result ...\n");
   retv=verify(c,d);

   if(retv)
      printf("Verify OK!\n");
   else
      printf("Verify FAILED!\n");

//   printf("Calculating matrix c: %lf seconds\n", t1);
 //  printf("Calculating matrix d: %lf seconds\n", t2);
   printf("speedup: %lf\n", t1/t2);

   return 0;
}

