function plotTwoFunctions(xi, xf)
    
    %xi -> inicial point of the interval.
    %xf -> final point of the interval.
    
    %horizontal axis.
    %you can change the 0.1 value.
    x = xi:0.1:xf;

    func1 = x; %function 1.
    
    func2 = exp(x); %function 2.
    
    plot(x,func1,'g') %plots function 1.
    
    grid on
    hold on
 
    plot(x,func2,'r'); %plots function 2.
    
    legend('x', 'arrcos(x)'); %creates a simple legend.
    
end