function [f,x] = newtonLS(func,deri,x,max_i,tol) 

% Here we use Newton's Method for a one dimensional problem. Our 
% goal is to find a x* such that |f(x*)|=0. A Line Search Method 
% is used, which allows an initial point far to the convergence region. 
% Line search allows to find an alpha that is useful to update the x value 
% each iteration until convergence is reached.
%
% Inputs:
%
% string func        string with the function to evaluate in term of x
% string deri        string with the derivative of the function to evaluate
%                    in term of x
% float  x0          the initial point
% int    max_i       maximum number of iterations
% float  tol         tolerance of the Newton's method

% Outputs:
% matrix history     a matrix with the result of the execution
%                    format:
%
%                     i   |       xi      |  abs(f(xi)  |    alpha    | x_i - x_(i-1)   |
%                   ----------------------------------------------------------------------
%                         |               |             |             |
%

global x_init

fprintf('Iter  |           x             |        |f(x)|            |     alpha        |      |x_k - x_(k-1)| \n'); 
                        % Header of the output matrix
fprintf('--------------------------------------------------------------------------------------------------------\n');
alpha  = 1;
x_     = x_init;
for i=0:max_i           % Beginning of main loop
    
    
    f =eval(func);      % Function evaluation    "eval" evaluates the string func at x
    df=eval(deri);      % Derivative evaluation
      
    
    x_    = x;
    
    if(abs(f)<tol)                               % stopping criteria
       fprintf('Solution found!!!\n');
       fprintf('The solution found: x = %e\n', x); 
       break;
    end;
        
    deltax  =  -f/df;       % Find the Newton step. 

    alpha   = linesearch(x,deltax,f);    % Find the value of alpha for linesearch strategy

    x = x + alpha*deltax;   % Update with found alpha in Linesearch
    
    error = abs(x - x_ );
    
    fprintf('  %2i  |  % 1.12e   |  % 1.12e    |  % 1.3e     |    % 1.12e    \n',i,x,abs(f),alpha,error); 
    
    
    
    
end                         % end of the main loop


if i==max_i, 
    fprintf('The solution was not found after %d iterations.\n', max_i); 
end

end 

    
    