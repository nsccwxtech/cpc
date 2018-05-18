#include <stdio.h>
#include <sys/time.h>


#define	M	65536
#define	N	32



long a[M][N];
long b[M][N];
long c[M][N];
long d[M][N];

void init()
{
   int i,j;

   for(i=0;i<M;i++)
      for(j=0;j<N;j++)
      {
         a[i][j]=i*N+j;
         b[i][j]=i*N-j;
      }
}
int
verify(long x[M][N],long y[M][N])
{
   int retv=1;
   int i,j;
   
   for(i=0;i<M;i++)
      for(j=0;j<N;j++)
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
   int i,j;
   long retv;

   struct timeval t1_start;
   struct timeval t2_start;
   double t1; 
   double t2; 
   extern void timer_start(struct timeval *); 
   extern void timer_end(double *,struct timeval *); 

  // printf("Initializing ...\n");
   init();


//   printf("To find the result c ...\n");
   timer_start(&t1_start);
   for(i=0;i<M;i++)
      for(j=0;j<N;j++)
         c[i][j]=a[i][j]+b[i][j];
   timer_end(&t1,&t1_start);


   //printf("To find the result d ...\n");
   timer_start(&t2_start);
   #pragma acc parallel loop copyin(a,b) copyout(d) tile(8)
//   copyin(a,b) copyout(d) 
//   tile(8)
   for(i=0;i<M;i++)//65536
      for(j=0;j<N;j++)//32
         d[i][j]=a[i][j]+b[i][j];
   timer_end(&t2,&t2_start);


   retv=verify(c,d);

   if(retv)
      printf("Verify OK!\n");
   else
      printf("Verify FAILED!\n");

   //printf("To find the result c: %lf seconds\n", t1);
//   printf("To find the result d: %lf seconds\n", t2);
   printf("speedup: %lf\n", t1/t2);

   return 0;
}
