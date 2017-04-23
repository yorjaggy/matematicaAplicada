% Esta funcion es f(x) que es la norma al cuadrado multiplicado por 1/2
function out = fx(x, y, t)
    %% Funciones M y Matriz Jacobiana
    funcionMx = @Mxt;
    Mx = feval(funcionMx, x, t);    
    out = 0.5*(norm(y-Mx)^2);
end