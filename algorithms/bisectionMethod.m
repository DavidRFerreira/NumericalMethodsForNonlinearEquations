function bisectionMethod(xi, xf, tol)

    %xi - first point of the interval.
    %xf - last point of the interval.
    %tol - tolerance of error.

    format long;

    
    function [y] = functionExpression(x)
        y = 10-x.^2; %function that will be evaluated.
    end    
    

    i = 0; %counter.
    
    c = (xi + xf) / 2; %interval's midpoint.
    
    error = ((xf - xi) / 2.^i); 
    
    while(error > tol)
        
        fprintf('x[%d] = %.12f | error = %.12f \n', i, c, error)
        
        if (functionExpression(xi) * functionExpression(c) < 0)
            xf = c;
        else %(functionExpression(xf) * functionExpression(c) >= 0)
            xi = c;
        end
        
        error = error / 2;
        c = (xi + xf) / 2;
        
        i = i + 1;
    end
end
