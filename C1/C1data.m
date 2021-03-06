dat = csvread("50ohm2.csv", 2);
t = dat(:,1);
Vin = dat(:,2);
Vout = dat(:,3);
t = abs(min(t)) + t;
t = t .* 1e6;

plot(t, Vin, "r-")
hold on
plot(t, Vout, "b-")
xlabel("time (\mus)")
ylabel("amplitude (V)")
legend("V_{in}", "V_{out}")

dt = (3.52 - 3.27)*1e-6;
L = 49;
c = 2*L/dt;