addpath(pwd);
pkg load optim

% dixonpr(try1);

fun = @dixonpr

options = optimset('HessUpdate','steepdesc','Display','iter', 'Algorithm','quasi-newton');
% options = optimoptions(@fminunc,'Display','iter','Algorithm','quasi-newton');

printf("Steepest Descent ")
printf("2 dimension\n")
x0 = [-10, 10];
tic
[x, fval, info, output] = fminunc(fun, x0, options)
toc

printf("Steepest Descent ")
printf("10 dimension\n")
x0 = [4, -8, -5, 10, -6, 7, 1, 9, -10, 6];
tic
[x, fval, info, output] = fminunc(fun, x0)
toc

printf("Steepest Descent ")
printf("50 dimension\n")
x0 = [4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6;];
tic
[x, fval, info, output] = fminunc(fun, x0)
toc

options = optimset('Hessupdate','bfgs');
printf("BFGS ")
printf("2 dimension\n")
x0 = [-10, 10];
tic
[x, fval, info, output] = fminunc(fun, x0, options)
toc

printf("BFGS ")
printf("10 dimension\n")
x0 = [4, -8, -5, 10, -6, 7, 1, 9, -10, 6];
tic
[x, fval, info, output] = fminunc(fun, x0)
toc

printf("BFGS ")
printf("50 dimension\n")
x0 = [4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6, 4, -8, -5, 10, -6, 7, 1, 9, -10, 6;];
tic
[x, fval, info, output] = fminunc(fun, x0)
toc

