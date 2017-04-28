clear all;
% Cargamos los datos
load_data;
% punto inicial
x0 = [-1;-2;1;-1];
% Épsilon 1: Umbral del valor de la funcion objetivo
epsilon1 = 1e-6;
% Épsilon 2: Umbral de proximidad entre magnitudes del gradiente
epsilon2 = 1e-6;
% vector de todos los xk calculados
xk(:,1) = x0;

iteraciones = 5000;
for k=1:iteraciones
    % Llamamos a myfun que calcula gxk y hxk que son el gradiente y la matriz
    % hessiana respectivamente
    [gxk,hxk] = myfun(xk(:,k), t, y, 'newton');     
    
    pk = -gxk;

    % Cálculo de alfa
    ak = linesearch(t, y, xk(:,k), pk);
    
    % Actualizar X
    xk(:,k+1) = xk(:,k) + ak*pk;
    
    % Hacer grafica del cálculo
%     figure(1)   
%         scatter(t,y, 'filled');
%         hold on
%         Mx = feval(@Mxt, xk(:,end-1), t);
%         plot(t, Mx);
%         xlabel('t');
%         ylabel('y');
%         title(['M(x,t) en la iteración ' num2str(k)]);
%         hold off
    
    % CONDICION 1 DE FIN DEL ALGORITMO:
    % la norma del gradiente es menor al epsilon
    normaGk(k,1) = norm(gxk)
    if(normaGk(k,1) < epsilon1)
        disp(['>>Función objetivo cercana a cero: Valor minimo de la función encontrada en ' num2str(k) ' iteraciones!']);
        disp(['El punto x encontrado es: ' mat2str(xk(:,k))]);
        break;
    end 
    
    % CONDICION 2 DE FIN DEL ALGORITMO:
    % El gradiente anterior está muy cercano al actual 
    if(k>=2)
        proximidad = norm(xk(:,k+1)-xk(:,k))/norm(xk(:,k));
        if( proximidad < epsilon2)
            disp(['Iterandos consecutivos muy proximos: Valor minimo de la función encontrada en ' num2str(k) ' iteraciones!']);
            disp(['El punto x encontrado es: ' mat2str(xk(:,k))]);
            break;
        end 
    end    
end

pause(2)

figure(1)   
        scatter(t,y, 'filled');
        hold on
        %Mx = feval(@Mxt, xk, t);
        plot(t, Mx);
        xlabel('t');
        ylabel('y');
        title(['M(x,t) en la iteración ' num2str(k)]);
        hold off

figure(2)
    plot(normaGk);
    xlabel('Iteraciones');
    ylabel('Magnitud del gradiente');
    title('Evolución del gradiente');
