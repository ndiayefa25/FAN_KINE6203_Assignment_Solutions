function [out1] = primeOrNah(in1)
% Checks to see if the input is prime.
% One input is needed and there is one output.

%   The built in MATLAB isprime function is used to determine if the output
%   is prime. If the number is prime, the function returns 1 for true. If it
%   is not prime, it returns 0 for false.

out1 = isprime(in1);
end