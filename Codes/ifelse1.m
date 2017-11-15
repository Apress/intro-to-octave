% Program to check if a
% number is even or odd

x = 33;

if (rem (x, 2) == 0)
  printf ("x is even\n");
elseif (rem (x, 5) == 0)
  printf ("x is odd and divisible by 5\n");
else
  printf ("x is odd\n");
endif