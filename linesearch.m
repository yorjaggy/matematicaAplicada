function [alfa] = linesearch(x,deltax,f)

global func

for t=0:1:4
    alfa=(1/2)^t;
    x_         = x;
    x          = x + alfa*deltax;
    [f_update] = eval(func);

    value1     = abs(f_update);
    %value2     = ((1 - alfa*2*(10^-4) )^(0.5) * abs(f));
    value2     = abs(f) + alfa*(10^-4)*deltax;          %Creo que falta multiplicar por el gradiente transpuesto
                                                        % check algoritmo 1 Backtracking linesearch
    if value1 <=  value2
        break;
    end 

    x = x_;
end   
end