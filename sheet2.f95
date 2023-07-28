!*1. Which of the following expressions are legal in Fortran? If an expression is legal, evaluate it.
!a) 5.5 >= 5                Legal(.True.)
!b) 20 > 20                 Legal(.False.)
!c) .NOT. 6 > 5             Legal(.False.)
!d) 35/17. > 35/17          Legal(.True.)
!e) 17.5 .AND. (3.3 > 2.)   Inlegal

!---------------------------------------------

!2. Given that:
!INTEGER :: age=34, old=92, young=16
!what is the value of the following expressions?
!a) age /= old                                    .True.
!b) age >= young                                  .True.
!c) age = 62                                      You set a new value in age that is=62
!d) (age==56 .and. old/=92)                       .False.
!e) (age==56 .or. old/=92)                        .false.
!f) (age==56 .or. (.not.(old/=92)))               .True.
!g) .not. (age==56 .or. old/=92)                  .True.

!---------------------------------------------

program q3
real::x,y
read(*,*)x,y
if(x>y)then
write(*,'(a)')"The first number is greeter"
else
write(*,'(a)')"The first number is smaller"
end if
pause
end program

!----------------------------------------------

program q4
real::x,y
read(*,*)x,y
if(x==y)then
write(*,'(a)')"it is square"
else
write(*,'(a)')"it is not square"
end if
pause
end program

!-----------------------------------------------

program q5
real::x
read(*,*)x
if(mod(x,2.)==0)then
write(*,'(a)')"it is even"
else
write(*,'(a)')"it is odd"
end if
pause
end program

!-------------------------------------------------

program q6
real::x
read(*,*)x
if(x>=0)then
x=-3*x**2+5
else
x=3*x**2+5
end if
write(*,*)x
pause
end program

!-------------------------------------------------

program q7
implicit none
real::x,y,z,big
read(*,*)x,y,z
big=max(max(x,y),z)
write(*,*)big
pause
end program

program q7
implicit none
real::x,y,z,big
read(*,*)x,y,z
if(x>=y.and.x>=z)then
big=x
else if(y>=x.and.y>=z)then
big=y
else
big=z
end if
write(*,*)big
pause
end program

!-----------------------------------------------------

program q8
implicit none
real x,y,z
integer a
write(*,*)"1-circle   "//"2-rectangle   "//"3-triangle"
read(*,*)a
if(a==1)then
write(*,*)"write the radius"
read(*,*)x
write(*,*)"The area of the circle = ",3.14*x**2
else if(a==2)then
write(*,*)"write the length and width"
read(*,*)x,y
write(*,*)"The area of the rectangle = ",x*y
else
write(*,*)"write the dimension of the triangle"
read(*,*)x,y,z
a=(x+y+z)/2
a=sqrt(a*(a-x)*(a-y)*(a-z))
write(*,*)"The area of the triangle = ",a
end if
pause
end program

!------------------------------------------------------------

program q9
implicit none
integer x
read(*,*)x
if(mod(x,10)==x/100) then
write(*,*)"it is palindrom"
else
write(*,*)"it is not palindrom"
end if
pause
end program

!------------------------------------------------------------

program q10
implicit none
real x,y,a,b
write(*,*)"the first package"
read(*,*)x,y
write(*,*)"the seconde package"
read(*,*)a,b
if(x/y<a/b)then
write(*,*)"the first package is better"
else if(a/b<x/y)then
write(*,*)"the seconde package is better"
else
write(*,*)"no one is better they are same"
end if
pause
end program

!--------------------------------------------------------

program q11
implicit none
real x,y
read(*,*)x,y
if(x>=0.and.y>=0)then
x=x+y
write(*,*)x
else if(x>=0.and.y<0)then
x=x+y**2
write(*,*)x
else if(x<0.and.y>=0)then
x=x**2+y
write(*,*)x
else if(x<0.and.y<0)then
x=x**2+y**2
write(*,*)x
end if
pause
end program

!--------------------------------------------------

program q12
implicit none
real x,y,x1,y1,a
write(*,*)"write the first point"
read(*,*)x,y
write(*,*)"write the second point"
read(*,*)x1,y1
write(*,*)"select the opperatin"
write(*,*)"1-add     2-substract     3-multiply"
read(*,*)a   
if(a==1)then
x=x+x1
y=y+y1
write(*,*)"(",x,",",y,")" 
else if(a==2)then
x=x-x1
y=y-y1
write(*,*)"(",x,",",y,")"
else if(a==3)then
x=x*x1+y*y1
write(*,*)x
else 
write(*,*)"please select the correct"
end if
pause
end program

!-------------------------------------------

program q13
implicit none
integer x
read(*,*)x
if(x>0.and.x<8)then
if(x==1)then
write(*,*)"Saturday"
else if(x==2)then
write(*,*)"Sunday"
else if(x==3)then
write(*,*)"Monday"
else if(x==4)then
write(*,*)"Tuesday"
else if(x==5)then
write(*,*)"Wednesday"
else if(x==6)then
write(*,*)"Thursday"
else
write(*,*)"Friday"
end if
else
write(*,*)"wrong number"
end if
pause
end program

!---------------------------------------------

program q15
implicit none
real a,b,c,under,x,x1
read(*,*)a,b,c
under=(b**2-4*a*c)
if(under>0)then
x=(-1*b-sqrt(under))/2/a
x1=(-1*b+sqrt(under))/2/a
write(*,*)x,x1
else if(under==0)then
x=-1*b/2/a
write(*,*)x
else
x=-1*b/2/a
x1=(sqrt(-1*under))/2/a
write(*,*)x,"+",x1,"i"
x1=(sqrt(-1*under))/2/a
write(*,*)x,"-",x1,"i"
end if
pause
end program

!-----------------------------------------------

