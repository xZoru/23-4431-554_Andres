@echo off

:shapes
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral 
echo 4. Leave
choice /c 1234 /m "Enter Choice:"

if errorlevel 4 goto Leave
if errorlevel 3 goto Quadrilateral  
if errorlevel 2 goto Triangle
if errorlevel 1 goto Circle
:Circle
echo Area of Circle

set /p radius= Enter radius of a circle:

set /a pi=3.14159
set /a area=%pi%*%radius%*%radius% / 10000
echo Area of circle is %area%

goto shapes

:Triangle
echo Area of Triangle

set /p height= Enter height:
set /p base= Enter base:

set /a triArea= %height%*%base% / 2
echo Area of Triangle is %triArea%

if %base% equ %height% (
    echo This Triangle is Equilateral
) else if %base% equ 0 (
    echo This is not a Triangle
) else (
    echo This Triangle is Scalene
)


goto shapes

:Quadrilateral
echo Area of Quadrilateral

set /p length= Enter length:
set /p width= Enter width:

set /a qArea= %length%*%width%
echo Area of Quadrilateral is %qArea%

if %length% equ %width% (
    echo This is a Square
) else (
    echo This is a Rectangle
)

goto shapes

