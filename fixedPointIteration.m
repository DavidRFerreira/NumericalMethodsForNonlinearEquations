function fixedPointIteration(xi, numMaxIterations)

    %xi -> initial aproximation.
    %numMaxIterations -> the maximum number of iterations 
    %that we allow the computer to perfom.

    format long;
    
    i = 0; %counter.
    
    function [y] = functionExpression(x)
        y = (1 / 100) * (x.^2 + 1); %the function that will be evaluated.
    end 
    
    for j = i : numMaxIterations
        
        xn = functionExpression(xi);
        
        fprintf("x[%d] = %.12f\n", i, xn);
        
        xi = xn;
 
        i = i + 1;
    end    
end