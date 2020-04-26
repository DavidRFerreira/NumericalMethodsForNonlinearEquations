function plotFunction(xi, xf)

    %xi -> inicial point of the interval.
    %xf -> final point of the interval.
    
    %horizontal axis.
    %you can change the 0.1 value (if you want more or less points).
    x = xi:0.1:xf;

    y = exp(x); %function.
    
    plot(x,y,'g') %plots function.
    %'g' gives you the color of the graph line.
    
    grid on
end