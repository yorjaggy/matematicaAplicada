function myfun(x0,tol,max_i)

global func x_init 

% string func        string with the function to evaluate in term of x
% string deri        string with the derivative of the function to evaluate
%                    in term of x
% float  x0          the initial point
% int    max_i       maximum number of iterations
% float  tol         tolerance of the Newton's method

x_init  = x0;            % save initial point

t = 0.05:.05:1;
x1=x0(1);
x2=x0(2);
x3=x0(3);
x4=x0(4);
u = x3*exp(x1*t) + x4*exp(x2*t);

plot(t,u)
ylim([-2 2])
grid on

func='x3*exp(x1*t) + x4*exp(x2*t)';
deri='exp(x1*t) + x3*t*exp(x1*t) + exp(x2*t) + x4*t*exp(x2*t)';
hes='';  % <- 332 definir matriz hessiana