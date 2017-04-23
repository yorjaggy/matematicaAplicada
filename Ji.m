function y = Ji(x,t)
    % Para un t dado, se calcula el jacobiano
    contenedor = zeros(length(t), 4);    
    for i = 1:length(t)
        contenedor(i,:) = [-x(3)*t(i)*exp(x(1)*t(i)) -x(4)*t(i)*exp(x(2)*t(i)) -exp(x(1)*t(i)) -exp(x(2)*t(i))];
    end    
    y=contenedor;
end

