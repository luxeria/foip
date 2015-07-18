% clear up the environment
clear 'all';	% clears all variables
close 'all';	% closes all windows

% define some variables
a = 5;		% define a real variable
b = 2 + 3i;	% define a complex variable
C = [		% degfne a 3x3 matrix
    1 2 3
    4 5 6
    7 8 9];
D = [2 2 2];	% define a 1x3 matrix


% do some math operations with scalars
x1 = a + 2;	% add scalars
x2 = a - 2;	% subtract scalars
x3 = a*2;	% multiply scalars
x4 = a/2;	% divide scalars

% do some math operations with matrices
y1 = a*D;

% print some results on the command line
printf('Math operations:\n');
printf('\t%i + 2 = %2i\n', a, x1);
printf('\t%i - 2 = %2i\n', a, x2);
printf('\t%i * 2 = %2i\n', a, x3);
printf('\t%i / 2 = %.1f\n', a, x4);

% print some results into a file

