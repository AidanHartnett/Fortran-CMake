program hello
implicit none
integer i :: 10
do i=1,10
    print *,i
    if (mod(i,3)==0) then
        print*,'Fizz!'
    end if
    if (mod(i,5)==0) then
        print*,'Buzz!'
    end if
       
    print*,'Hello World!'

    end program hello