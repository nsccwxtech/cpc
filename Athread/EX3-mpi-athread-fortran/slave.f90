        subroutine func1     
	implicit none
        include 'para.for'
        integer :: reply
        integer :: get_reply
        integer :: put_reply
    	integer :: my_id

         !!!!!!!!!!!!!!!!!!!!!!!!!!!!                         
        real  :: a(N,N),b(N,N),c(N,N)
        common /abc/ a,b,c

        !local
        real,dimension(N):: a_slave,b_slave,c_slave
        integer i,j,const1,const2
        integer cc
        common /local_fcta/ cc 
!$omp threadprivate (/local_fcta/)
        const1=1
        const2=2

        call GET_MYID(my_id)

        do j=my_id,N,64

        get_reply =0
        call athread_get(0,a(1,j),a_slave(1),N*4,get_reply,0,0,0)
        call athread_get(0,b(1,j),b_slave(1),N*4,get_reply,0,0,0)
        call reply_wait(get_reply,const2)
        !do while(get_reply.ne.2)
        !enddo
            

        do i=1,N
         c_slave(i)=a_slave(i)/b_slave(i)
        enddo

        
        put_reply =0
        call athread_put(0,c_slave(1),c(1,j),N*4,put_reply,0,0)
        call reply_wait(put_reply,const1)
        !do while(put_reply.ne.1)
        !enddo

        enddo

        return
        end
