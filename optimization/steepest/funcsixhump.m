%file name:  func.m
%This routine evaluates the Rosenbrock function.

function y = func(x)
y = 100*(x(1)^2 - x(2))^2 + (x(1)-1)^2;
