function [f,x] = Newton(func,deri,x,max_i,tol,type)
% 3312
% Variable type agregada para definir el metodo a usar Gauss-Newton o de
% Levenberg-Marquardt

alfa  = 1;
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