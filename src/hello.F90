!> @file
!>@brief Code for the hello program
!>
!> @author Ed Hartnett, @date 6/11/23

!> Say hello and do a fizzbuzz
!>
!> @author Aidan Hartnett @date 6/2/23
!> @return 0 for success

program hello
  implicit none
  integer :: MAX_COUNT
  parameter(MAX_COUNT = 15)

  print *, 'Hello world!'
  call fizzbuzz(MAX_COUNT)
end program hello

!> Do the fizzbuzz
!>
!> @param max_count The number to count to.
!>
!> @author Aidan Hartnett @date 6/11/23
subroutine fizzbuzz(max_count)
  implicit none
  integer, intent(in) :: max_count
  logical :: fizzy, buzzy
  integer :: i
  
  do i = 1, MAX_COUNT
     print *, i
     if (fizzy(i) .eqv. .true.) print *, 'Fizz'
     if (buzzy(i) .eqv. .true.) print *, 'Buzz'
  end do
end subroutine fizzbuzz
!> Is a number evenly divisble by 3?
!>
!> @param number The number to check.
!>
!> @return .true. if number is divisble by 3, .false. otherwise.
!>
!> @author Aidan Hartnett @date 6/11/23

function fizzy(number)
  implicit none
  integer, intent(in) :: number
  logical fizzy

  if (mod(number, 3) .eq. 0) then
     fizzy = .true.
  else
     fizzy = .false.
  endif
end function fizzy

!> Is a number evenly divisble by 5?
!>
!> @param number The number to check.
!>
!> @return .true. if number is divisble by 5, .false. otherwise.
!>
!> @author Aidan Hartnett @date 6/11/23

function buzzy(number)
  implicit none
  integer, intent(in) :: number
  logical buzzy

  if (mod(number, 5) .eq. 0) then
     buzzy = .true.
  else
     buzzy = .false.
  endif
end function buzzy
