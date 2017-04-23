%Esta función permite hallar el vector de residuos Ri(x)
function output_vector = Ri(x, t, y)
    funcionM = @Mxt;
    m = feval(funcionM, x, t);
    output_vector = y-m;
end

