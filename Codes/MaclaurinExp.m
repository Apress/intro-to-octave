% Maclaurin Series for exp(0.1)

n = 5; % Number of terms
a = 0.1; % Functional value of x for e^(x)
expVal = 1.0;
currentTerm = 1.0;
for i =1:n
  currentTerm = currentTerm*a/i;
  expVal = expVal+currentTerm
endfor

trueVal = exp(0.1);
error = abs(trueVal-expVal)


