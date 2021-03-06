%file name:  func.m
%This routine evaluates the Rosenbrock function.

function y = func(x)
y = 2*x(1)^2 - 1.05*x(1)^4 + (x(1)^6 / 6) + x(1)*x(2) + x(2)^2;