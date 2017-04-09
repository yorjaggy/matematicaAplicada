fprintf('The following is the list of problems available to test\n\n');

fprintf('      Problem                   Suggested starting points (pure Newton case) \n\n');
fprintf('1 :  f(x) = sin(5x) - x               x0 =  1, -0.7, 0.7 \n\n');
fprintf('2 :  f(x) = x^2 -1                    x0 =  3 , -3       \n\n');
fprintf('3 :  f(x) = x^2 -2x +1                x0 =  3 , 1.5      \n\n');
fprintf('4 :  f(x) = arctan(x)                 x0 =  1 , 0.3      \n\n');
fprintf('4 :  f(x) = .5*(sin(5x) - x)^2        x0 =  1 , 0.3      \n\n');

fprintf('Solve the problem with Newton method : runnewtonLS(problem,x0,option) \n\n');
fprintf('Option 1: pure Newton method,          Option 2: Newton method with line-search\n');
