program main
   implicit none
   integer,parameter::nx=16,nz=65536
   integer          ::i, iloc, k, m
   integer          ::loc1, end1
   integer(8)       ::u(5,0:nx-1,0:nz-1)
   integer(8)       ::v(5,0:nx-1,0:nz-1)
   integer(8)       ::qbc(nx*nz*5)
   integer          ::result_flg
   common /xx/ u,v,qbc

   real(8)::t1,t2
   integer(8)::t1_start(2),t2_start(2)
   external::timer_start,timer_end

   external::init_rand
   integer(8),external::get_rand
  
   ! initializing
   call init_rand(2)
   do i=1,nx*nz*5
      qbc(i)=get_rand()
   enddo

   ! run on host
   call timer_start(t1_start)
   do k = 1, nz-2
      iloc=1+(k-1)*(nx-2)*5

      do i = 1, nx-2
         do m = 1, 5
            v(m,i,k) = qbc(iloc) 
            iloc = iloc + 1 
         end do
      end do
   end do
   call timer_end(t1,t1_start)



   ! run on ...
   call timer_start(t2_start)
!!$ACC PARALLEL loop  
!copyout(u)
   do k = 1, nz-2! 65536
      iloc=1+(k-1)*(nx-2)*5
      loc1=iloc
      end1=iloc+(nx-2)*5

!!$ACC data copyin(qbc(loc1:end1:100))

      do i = 1, nx-2
         do m = 1, 5
            u(m,i,k) = qbc(iloc) 
            iloc = iloc + 1 
         end do
      end do

!!$ACC end data

   end do

!!$ACC END PARALLEL LOOP

   call timer_end(t2,t2_start)

   result_flg=0
   do k = 1, nz-2
      do i = 1, nx-2
         do m = 1, 5
            if(u(m,i,k) .ne. v(m,i,k)) then
                result_flg=1
            endif
         enddo
      enddo
   enddo
   
   if(result_flg .eq. 1) then
      print *,"verify FAILED!"
   else
      print *,"verify OK!"
   endif

   print *,"speedup: ", t1/t2

end program
