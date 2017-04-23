function [gxk,hxk] = myfun(xk, t, y, metodo)
    r = feval(@Ri, xk, t, y);
    J = feval(@Ji, xk, t);
    %Gradiente
    gxk = J'*r;

    %Hessiana: Aproximacion Gauss
    switch metodo
        case 'newton'
            hxk = J'*J;
        case 'levenberg'
            hng = J'*J;
            hxk = hng + 1e-3*max(diag(hng))*eye(length(hng));
    end

end