A = 1;
T = 2*pi;
t = linspace(0,2*T,5000);

N_values = [5 15 50 200];

for k=1:length(N_values)
    N = N_values(k);
    f = zeros(size(t));

    for n=1:2:N
        f = f + (4*A/(n*pi))*sin(n*t);
    end

    overshoot = max(f)-A;
    fprintf("N=%d -> Overshoot = %.5f\n",N,overshoot);
end