function newtonMethod(xi, tol)

    %xi -> initial aproximation.
    %tol -> tolerance. We want an error smaller than the tolerance.
    format long

    error = 1;
    i = 0;
    
    function [y] = functionExpression(x)
        y = (1./x) - 7; %the function that will be evaluated.
    end


    function [dy] = derivativeFunctionExpression(x)
       dy = -(1./x.^2); %derivative of the evaluated function.
    end
    

    while(error >= tol)

        xn = xi - (functionExpression(xi)) / (derivativeFunctionExpression(xi));
        
        error = abs(xn - xi);
        
        xi = xn;
        
        fprintf("x[%d] = %.12f\n", i, xi)
        
        i = i + 1;
    end
end
