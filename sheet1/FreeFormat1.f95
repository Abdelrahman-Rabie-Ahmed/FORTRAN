program q6
implicit none
character(len=15)::x
read(*,*)x
write(*,*)"Hello "//x
pause
end program q6

!------------------------------------

program q7
implicit none
real x,y,sum,multiply,substract,divide
integer::remainder
read(*,*)x,y
sum=x+y
multiply=x*y
substract=x-y
divide=x/y
remainder=mod(x,y)
write(*,*)sum,"  ",multiply,"  ",substract,"  ",divide,"  ",remainder
pause
end program q7

!-------------------------------------

program q8
implicit none
real x,y
read(*,*)x,y
write(*,*)180-x-y
pause
end program q8

!---------------------------------------

program q9
implicit none
real x,y,z
read(*,*)x,y,z
write(*,*)(x+y+z)/3
pause
end program q9

!---------------------------------------

program q10
implicit none
real x
read(*,*)x
write(*,*)x*0.621371
pause
end program q10

!---------------------------------------

program q11
implicit none
real radius,area,length
read(*,*)radius,length
area=3.14*radius*radius
write(*,*)"Area = ",area
write(*,*)"volume =" , area*length
pause
end program q11

!----------------------------------------

program q12
implicit none
real r1,r2,r3,r4
read(*,*)r1,r2,r3,r4
write(*,*)(1/r1+1/r2+1/r3+1/r4)**(-1)
pause
end program q12

!-----------------------------------------

program q13
implicit none
real minute,hours
write(*,*)"hours"
read(*,*)hours
write(*,*)"minutes"
read(*,*)minute
minute=minute+hours*60
write(*,*)minute
pause
end program q13

!-----------------------------------------

program q14
implicit none
integer minute,hours,secondes
read(*,*)secondes
hours=secondes/3600
minute=(mod(secondes,3600))/60
secondes=secondes-hours*3600-minute*60
write(*,*)hours,minute,secondes
pause
end program q14

!-----------------------------------------

program q15
integer::a,b,c,v,d,x,answer
read(*,*)a,b
c=mod(a,10)
v=mod(b,10)
x=(c+v)/2
d=mod(c+v,2) 
first=d
a=a/10
b=b/10
c=mod(a,10)
v=mod(b,10)
d=mod(c+v+x,2)
second=d
x=(c+v+x)/2
a=a/10
b=b/10
c=mod(a,10)
v=mod(b,10)
d=mod(c+v+x,2)
third=d
x=(c+v+x)/2
a=a/10
b=b/10
c=mod(a,10)
v=mod(b,10)
d=mod(c+v+x,2)
fourth=d
x=(c+v+x)/2
fifth=x
answer=fifth*10000+fourth*1000+third*100+second*10+first
Write(*,*)answer
pause
end program q15

!--------------------------------------

program q16
implicit none
real x,y,z
read(*,*)x,y
z=x
x=y
y=z
write(*,*)x,y
pause
end program q16

!------------------------------------------

program q17
implicit none
real x,y,z
read(*,*)x,y
write(*,*)y,x
pause
end program q17


program q17
real::a,b
read(*,*)a,b
a=a+b
b=a-b
a=a-b
Write(*,*)a,b
pause
end program q17

!-------------------------------

program q18
character(14)::id
integer salary,mid
real x,y,salary1,finalsalary,mid1
read(*,*)id
read(*,*)x,y
salary=x*y
salary1=x*y
write(*,*)id
mid1=(salary1-salary)*100
mid=mid1
finalsalary=salary+(mid/100.)
write(*,*)finalsalary
pause
end program

program q18
character(14)::id
real x,y
read(*,*)id
read(*,*)x,y
write(*,*)id
write(*,'(f15.2)')x*y
pause
end program

!-----------------------------------

program q19
implicit none
real x,y,x1,y1
read(*,*)x,y,x1,y1
write(*,*)((x-x1)**2+(y-y1)**2)**0.5
pause
end program q19

!----------------------------------

program q20
implicit none
real a,b,c
real x,x1
read(*,*)a,b,c
x=((-b+sqrt((b**2)-4*a*c))/2/a)
x1=((-b-sqrt((b**2)-4*a*c))/2/a)
write(*,*)x,x1
pause
end program q20
