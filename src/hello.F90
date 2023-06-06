!> @file
!> This is a Fortran file.
!>
!> @author Aidan Hartnett, @date 6/2/23

!> This is a Fortran program.
!>
!> @author Aidan Hartnett, @date 6/2/23
!> @return 0 for success
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