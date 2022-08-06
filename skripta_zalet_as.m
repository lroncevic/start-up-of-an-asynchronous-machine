clear all;
close all;

Ts = 1e-4;
Tsim = 3;
Vn = 230;
Pn = 4000;
cos_fi = 0.75;
Sn = Pn/cos_fi;
f = 50;
p = 2;
J = 0.121970;
Rs = 1.1507;
Rr = 1.0107;
Xls = 1.7285;
Xlr = 1.7289;
Xm = 39.5977;

sim('zalet_AS');

I1=Mjerenja(1:end,1);
I2=Mjerenja(1:end,2);
I3=Mjerenja(1:end,3);
M=Mjerenja(1:end,4);
n=Mjerenja(1:end,5);

subplot(511);
%figure;
plot(tout,I1);
xlabel('t [s]');
ylabel('I [A]');
title('Graf struje I1');

subplot(512);
%figure;
plot(tout,I2);
xlabel('t [s]');
ylabel('I [A]');
title('Graf struje I2');

subplot(513);
%figure;
plot(tout,I3);
xlabel('t [s]');
ylabel('I [A]');
title('Graf struje I3');

subplot(514)
%figure;
plot(tout,n);
xlabel('t [s]');
ylabel('n [o/min]');
title('Graf brzine vrtnje');

subplot(515)
%figure;
plot(tout,M);
xlabel('t [s]');
ylabel('M [Nm]');
title('Graf momenta M');




