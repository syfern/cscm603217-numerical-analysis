addpath(pwd)
pkg load symbolic

funcs = {
    "x^3+2*x^2+10*x-20";
    "x^x - 2";
    "10*e^(-x)*sin(2*pi*x) - 2";
    "x^4 - 6*x^3 + 12*x^2 - 10*x + 3";
    "x^2 - cos(pi*x)"
};

tols = { 10e-4; 10e-6; 10e-8; 10e-10; 10e-12};

xss = {
    { {1; 100}; {24; 24}; {20; 12}; {5; 20}; {1; 23} };
    { {4; 56}; {12; 21}; {20; 45}; {5; 20}; {1; 23} };
    { {1; 2}; {29; 92}; {20; 4}; {5; 20}; {1; 23} };
    { {2; 4}; {92; 29}; {20; 9999}; {5; 20}; {1; 23} };
    { {1; 1}; {12; 54}; {20; 9999}; {5; 20}; {1; 23} };
};

fprintf("\n\\documentclass{article}\n\\usepackage[utf8]{inputenc}\n\n\\title{Tugas 2 Anum}\n\\author{author}\n\\date{March 2020}\n\n\\usepackage{natbib}\n\\usepackage{graphicx}\n\n\\usepackage{geometry}\n\\geometry{a4paper, margin=1cm}\n\n\\begin{document}\n\n\\maketitle\n\n\\section{Secant Method Experiment}")

experiment_no = 1;
for i=1:size(funcs)(1)
    xs = xss{i};
    fprintf("\\begin{displaymath}\n%s = 0 \n\\end{displaymath}\n\n\\begin{center}\n", funcs{i})
    for j=1:size(tols)(1)
        for k=1:size(xs)(1)
            func = funcs{i};
            [x, n] = secant(xs{k}{1}, xs{k}{2}, tols{j}, func);
            if (mod(experiment_no, 3) == 0)
                fprintf("\\begin{tabular}{|c|c|} \n\\hline \n& Value \\\\ \\hline \nGuesses & [%.2f, %.2f] \\\\ \nError Tolerance & $%9.2e$ \\\\ \nRoot & %.10g \\\\ \nIteration & %d \\\\ \\hline \n\\end{tabular}\n\n", xs{k}{1}, xs{k}{2}, tols{j}, x, n)
            else
                fprintf("\\begin{tabular}{|c|c|} \n\\hline \n& Value \\\\ \\hline \nGuesses & [%.2f, %.2f] \\\\ \nError Tolerance & $%9.2e$ \\\\ \nRoot & %.10g \\\\ \nIteration & %d \\\\ \\hline \n\\end{tabular}", xs{k}{1}, xs{k}{2}, tols{j}, x, n)
            endif
            experiment_no = experiment_no + 1;
        end
    end
    fprintf("\n\\end{center}\n\n")
end
fprintf("\n\\end{document}")