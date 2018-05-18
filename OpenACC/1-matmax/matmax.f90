function find_max(a,b)
   implicit none
!$ACC routine
   integer(8)::a,b
   integer(8)::find_max
   if(a .gt. b) then
      find_max=a
   else
       find_max=b
   endif
   return
end function find_max

subroutine init(a)
   implicit none
   include "head.h"
   integer(8)::a(N5,N4,N3,N2,N1)
   integer::i,j,k,l,m
   integer,external::rand
   external::init_rand
   integer(8),external::get_rand

   call init_rand(2)

   do i=1,N1
   do j=1,N2
   do k=1,N3
   do l=1,N4
   do m=1,N5
      a(m,l,k,j,i)=get_rand()
   enddo 
   enddo 
   enddo 
   enddo 
   enddo 

end subroutine init

program main
   implicit none
   include "head.h"
   integer(8)::a(N5,N4,N3,N2,N1)
   integer::i,j,k,l,m
   external::init
   integer(8),external::find_max
   integer(8)::maxvalue1,maxvalue2

   real(8)::t1,t2
   integer(8)::t1_start(2),t2_start(2)
   external::timer_start,timer_end

   call init(a)
   maxvalue1=0

   call timer_start(t1_start)
   do i=1,N1
   do j=1,N2
   do k=1,N3
   do l=1,N4
   do m=1,N5
      maxvalue1=find_max(maxvalue1,a(m,l,k,j,i))
   enddo 
   enddo 
   enddo 
   enddo 
   enddo 
   call timer_end(t1,t1_start)


   maxvalue2=0

   call timer_start(t2_start)
   !$ACC PARALLEL loop collapse(2) reduction(max:maxvalue2) copyin(a)
   do i=1,N1!64
   do j=1,N2!8
   do k=1,N3!8
   do l=1,N4!3
   do m=1,N5!10
      maxvalue2=find_max(maxvalue2,a(m,l,k,j,i))
   enddo 
   enddo 
   enddo 
   enddo 
   enddo 
!$ACC END PARALLEL loop
   call timer_end(t2,t2_start)

   if(maxvalue1.eq.maxvalue2) then
   print *,"Check resurt is OK!"
   endif
   print *,"speedup: ", t1/t2

end program

