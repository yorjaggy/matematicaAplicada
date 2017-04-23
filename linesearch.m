%% Algoritmo de backtraking linesearch:
% Halla un alfa para una direcci�n dada
% y es el vector de valores esperados de la funcion M(x,t)
% t es el vector de valores t
% xk es el valor de x en la iteracion k
% pk es el vector de maximo descenso hallado con los algoritmos
function alfa = linesearch(t, y, xk, pk)

    %Cargar las funciones f, r y J
    f = @fx;
    r = @Ri;
    j = @Ji;
    
    iteraciones = 100;
    for i=0:iteraciones
        a = 0.5^i;
        valor1 = feval(f,xk+a*pk,y,t);
        
        vector_r = feval(r, xk, t, y); 
        matriz_j = feval(j, xk, t);
        gxk = matriz_j'*vector_r;
        
        valor2 = feval(f,xk,y,t)+1e-4*a*gxk'*pk;
        if valor1<valor2
            alfa = a;
            disp(['Tom� ' num2str(i) ' iteraciones hallar la escala alfa'])
            return;
        end 
    end
    disp(['Tom� ' num2str(iteraciones) ' iteraciones hallar la escala alfa'])
    alfa = a;    
end

