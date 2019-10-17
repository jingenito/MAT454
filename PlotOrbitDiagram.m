function PlotOrbitDiagram()

r = 0:1e-3:1; %initialize a vector of r values
x = []; %initialize matrix of x values

for i=1:length(r)
    x(i,1) = rand(1,1); %initialize initial condition to a random value
    x(i,2) = 0;

    for j=1:300
        x(i,2) = r(i)*sin(pi*x(i,1)); %only going to plot the last 500 iterates after the transients settle 
        x(i,1) = x(i,2); %set x1 to the previous term
    end
    
    for j=301:6000
        k = j-300;
        x(i,k+1) = r(i)*sin(pi*x(i,k));
    end
end

figure; 
plot(r,x,'o','MarkerSize',0.1)
xlim([0 1])
ylim([0 1])



    