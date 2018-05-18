      program main
      IMPLICIT NONE
      include 'para.for'
      include 'mpif.h'
      real a(N,N),b(N,N),C(N,N),C_host(N,N),C_host2(N,N)
      common /abc/ a,b,c
      real check,check2
      integer i,j
      integer*8 s1,s2

      integer,external :: slave_func1

      integer ierr,myrank,nps,mpicom

      call mpi_init(ierr)
      call MPI_COMM_SIZE(MPI_COMM_WORLD,nps,ierr)
      call MPI_COMM_RANK(MPI_COMM_WORLD,myrank,ierr)

      if(myrank==0) then
        write(*,*) "!!!!! Fortran-EXAMPLE TOTAL NPS is",nps," !!!!!"
        write(*,*) "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      endif
      !init common share date

      c=0
      DO j=1,N
        DO i=1,N
               a(i,j)=i*0.21245+j*0.6855445    !fdv(i,j,k,iv,jv,kv)
               b(i,j)=i*875451+j*0.5641876    !fdv(i,j,k,iv,jv,kv)
               c_host(i,j)=a(i,j)/b(i,j)
        END DO
      END DO

      call rpcc(s1)

      DO j=1,N
      DO i=1,N
        c_host(i,j)=a(i,j)/b(i,j)
      END DO
      END DO

      call rpcc(s2)
      if(myrank==0)then
        write(*,*) "the master counter=",s2-s1
        write(*,*) "!!!!!!!!!!BEGIN INIT!!!!!!!!!!"
      endif

      call athread_init()
      call rpcc(s1)

      call athread_spawn(slave_func1, 1)
      call athread_join()

      call rpcc(s2)
      if(myrank==0)then
        write(*,*) "the manycore counter=",s2-s1
      endif

      check=0.0
      check2=0.0
      DO j=1,N
        DO i=1,N
               check=C(i,j)+check
               check2=C_host(i,j)+check2
        END DO
      END DO

      if(myrank==0)then
        write(*,*) "the master cpu result is",check2
        write(*,*) "the many-core result is",check
      endif

      call athread_halt()

      call mpi_finalize(ierr)

      END 
