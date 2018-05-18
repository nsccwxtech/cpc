        subroutine reply_wait(reply,num)
        implicit none
        integer ::reply,num
        do while (reply.ne.num)
        end do
        end
