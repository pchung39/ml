# assorted useful functions and examples 

## MOVING DATA AROUND 
## ==================
# use single quotes for strings 
load('ex1data1.txt');

# shows variables 
who;
# detail view for "who"
whos;

# delete variable
# clear "variable name";

# clear all variables
# clear;

# retrieve a subset of your data
subset = ex1data1(1:10);

# save variable to a file (human readable)
#save 'file name' variable -ascii; 

A = [ 1 2; 3 4; 5 6]

# ":" every element along that row/column  
A(2, :)
A(:, 2)

# assign new values to a column 
A(:,2) = [10; 11; 12]

# append another column vector (to the right)
A = [A, [100; 101; 102]]

# get dimensions of matrix/vector 
size(A)

# concatenating two matrices 
A = [1 2; 3 4; 5 6]
B = [7 8; 9 10; 11 12]

# concatenate at rows 
C = [A B]

# concatenate at columns 
C = [A; B]


## COMPUTING ON DATA 
## ==================
A = [1 2; 3 4; 5 6]
B = [7 8; 9 10; 11 12]
C = [1 1; 2 2]

# multiply matrices 
A * C 

# multiply element-wise matrices 
A.* B

# element-wise squaring of matrix 
A .^2

v = [1; 2; 3]

# reciprocal of vector or matrix 
1 ./ v
1 ./ A

# logarithm of vector 
log(v)

# absolute values of vector 
abs(v)

# transpose of vector/matrix 
# transpose(A)

# get the max value of a vector 
max(A)

# invert matrix 
pinv(A)


# PLOTTING DATA 

## CONTROL STATEMENTS 
## ==================

v = zeros(10,1);

for i=1:10,
    v(i) = 2^i;
end;

# while statement
i = 1;
while i <= 5,
    v(i) = 100;
    i = i+1;
end; 

v

# break statement 
i =1;
while true,
    v(i) = 999;
    i = i + 1;
    if i == 6,
        break;
    end;
end;

# if-else statement 

v(1) = 2;
if v(1) == 1,
    disp('the value is one');
elseif v(1) == 2,
    disp('the value is two');
else 
    disp('The value is not one or two');
end;

v


# cost function 

X = [1 1; 1 2; 1 3]
y = [1; 2; 3]

# VECTORIZATION 
# ==============

# recall that the hypothesis for linear regression can be expressed as 
# two vectors "theta" and "x", with a generalized formula
# h = transpose(theta) * x

prediction = theta.transpose() * x;


# gradient descent 
# watch video on vectorization 