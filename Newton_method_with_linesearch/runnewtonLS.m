% This Matlab script runs the Newton's Method to find the root of each 
% function depending on one variable.

function runnewtonLS(problem, x0,option)

global func x_init 

% string func        string with the function to evaluate in term of x
% string deri        string with the derivative of the function to evaluate
%                    in term of x
% float  x0          the initial point
% int    max_i       maximum number of iterations
% float  tol         tolerance of the Newton's method

tol     =    5.e-8;      % tolerance.
max_i   =    30;         % number of iterations you want to allow

x_init  = x0;            % save initial point


switch(problem)
case 1          % Problem No. 1
fprintf('Problem 1 :  f(x) = sin(5x) - x\n\n');
t = -pi:.1:pi;
u = sin(5*t)-t;

plot(t,u)
ylim([-2 2])
grid on

func='sin(5*x)-x';
deri='5*cos(5*x)-1';

case 2          % Problem No. 2
fprintf('Problem 2 :  f(x) = x^2 -1  \n\n');

t = -3:.1:3;
u = t.^2 - 1;

plot(t,u)
ylim([-2 3])
grid on

func='x^2-1';
deri='2*x';

case 3          % Problem No. 3
fprintf('Problem 3 :  f(x) = x^2 -2x +1\n\n');

t = -3:.1:3;
u = t.^2 -2.*t + 1;

plot(t,u)
ylim([-2 3])
grid on

func='x^2-2*x+1'; 
deri='2*x-2';

case 4          % Problem No. 4
fprintf('Problem 4: f(x) = arctan(x) \n\n');

t = -15:.1:15;
u = atan(t);
plot(t,u)
ylim([-2 2])
grid on

func='atan(x)'; 
deri='1/(1+(x^2))';

case 5           % Problem No. 5
fprintf('Problem 5 :  f(x) = .5*(sin(5x) - x)^2\n\n');
t = -pi:.1:pi;
u = sin(5*t)-t;

plot(t,u)
ylim([-2 2])
grid on

func='.5*(sin(5*x)-x)^2';
%deri='5*cos(5*x)-1';

deri='(sin(5*x) - x)*(5*cos(5*x)-1)';

otherwise
        disp('Unknown problem\n')
        return  
        
end 
    if option == 1
        [f,x] = newton(func,deri,x0,max_i,tol);     % solve problem with pure Newton method
    elseif option == 2
        [f,x] = newtonLS(func,deri,x0,max_i,tol);   % solve using Newton method with linesearch
    else 
        fprintf('Option unknown\n\n');
    end
        

end