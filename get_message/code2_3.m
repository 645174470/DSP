x1=sin(pi/10*(0:19));
x2=sin(pi/5*(0:19));
x3=sin(pi/2*(0:19));
x4=(-1).^(0:19);
z=[x1 x2 x3 x4];
figure(1)
stem(z)
[h1]=impulse(0,0,19);
[h2]=impulse(5,0,19);
[h3]=impulse(19,0,19);
y1=conv(x1,h1);
y2=conv(x1,h2);
y3=conv(x1,h3);
figure(2)
subplot(1,3,1)
stem(y1)
subplot(1,3,2)
stem(y2)
subplot(1,3,3)
stem(y3)
a1=conv(fliplr(x1),x1);
a2=conv(fliplr(x2),x2);
a3=conv(fliplr(x3),x3);
a4=conv(fliplr(x4),x4);
lag=-(20-1):(20-1);
figure(3)
subplot(2,2,1)
stem(lag,a1)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,2)
stem(lag,a2)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,3)
stem(lag,a3)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,4)
stem(lag,a4)
xlabel('lag ')
ylabel('Amplitude')
lag1=-(80-1):(20-1);
z1=conv(fliplr(z),x1);
z2=conv(fliplr(z),x2);
z3=conv(fliplr(z),x3);
z4=conv(fliplr(z),x4);
figure(4);
subplot(2,2,1)
stem(lag1,z1)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,2)
stem(lag1,z2)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,3)
stem(lag1,z3)
xlabel('lag ')
ylabel('Amplitude')
subplot(2,2,4)
stem(lag1,z4)
xlabel('lag ')
ylabel('Amplitude')


function [h]=impulse(n0,a,b)
n=a:1:b;
h=(n-n0==0);
end
