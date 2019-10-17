function PlotTimeSeries(r, N, x0)

x(1) = x0;
for n=1:N
    x(n+1) = r*cos(x(n));
end

figure; plot(x,'o','MarkerFaceColor','b')