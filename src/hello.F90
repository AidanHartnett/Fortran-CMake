program hello
    implicit none
    integer :: i

    do i=1,15
        print *,i
        if (mod(i,3)==0) then
            print *, 'Fizz'
        end if
        if (mod(i,5)==0) then
            print *, 'Buzz'
        end if
    end do

    print*,'Hello World!'
    end program hello