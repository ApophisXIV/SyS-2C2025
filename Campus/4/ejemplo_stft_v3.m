% Demo para la introducción de transformada de Fourier de corto plazo SFTF
%
% Señales y Sistemas, Facultad de Ingeniería, Universidad de Buenos Aires 
% Autor: Humberto M. Torres
% hmtorres@conicet.gov.ar
% Agosto de 2018. Revisado Abril 2019


fs = 22100;
t = 0:1/fs:7;
f= (-fs/2)+fs/length(t): fs/length(t): fs/2;

%%
x1 = zeros(size(t));
x1(t>=1 & t<2) = cos(2*pi*697*t(t>=1 & t<2)) + cos(2*pi*1209*t(t>=1 & t<2));
x1(t>=3 & t<4) = cos(2*pi*697*t(t>=3 & t<4)) + cos(2*pi*1336*t(t>=3 & t<4));
x1(t>=5 & t<6) = cos(2*pi*697*t(t>=5 & t<6)) + cos(2*pi*1477*t(t>=5 & t<6));

figure('Name','Marcado telefónico "1 2 3"')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
plot(t,x1)
%title('Marcado telefónico "1 2 3"')
text(1,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1209 \, t)$','Interpreter','latex')
text(3,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1336 \, t)$','Interpreter','latex')
text(5,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1477 \, t)$','Interpreter','latex')
text(1.5,0,'1','FontSize',30)
text(3.5,0,'2','FontSize',30)
text(5.5,0,'3','FontSize',30)
xlabel('$t \, s$','Interpreter','latex')
ylabel('$x(t)$','Interpreter','latex')
axis([t(1) t(end) min(x1)-0.25 max(x1)+0.3])
soundsc(x1,fs)
fprintf('Presione una tecla para continuar...\n')
pause

x1_fft = fftshift(abs(fft(x1)))/length(t);

subplot(212)
plot(f,x1_fft)
title('¿Se puede inferir los números marcados solo observando el espectro de amplitud de la señal?')
axis([-2000 2000 min(x1_fft)*1.05 max(x1_fft)*1.05])
xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('Espectro de amplitud $|FFT(x)|$','Interpreter','latex')

fprintf('Presione una tecla para continuar...\n')
pause

close all
%% Señal generada al marcar los tres digitos al mismo tiempo

x = zeros(size(t));
x(t>=1 & t<6) = 3 * cos(2*pi*697*t(t>=1 & t<6)) + cos(2*pi*1209*t(t>=1 & t<6)) + ...
    cos(2*pi*1336*t(t>=1 & t<6)) + cos(2*pi*1477*t(t>=1 & t<6));

figure('Name','Señal generada pulsar al mismo tiempo 123')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);

subplot(211)
plot(t,x)
title('$x(t) \, = \, 3 \, cos(2 \, \pi \, 697 \, t) \, + \, cos(2 \, \pi \, 1209 \, t) \, + \, cos(2 \, \pi \, 1336 \, t) \, + \, cos(2 \, \pi \, 1477 \, t)$','Interpreter','latex')
xlabel('$t s$','Interpreter','latex')
ylabel('$x(t)$','Interpreter','latex')
axis([t(1) t(end) min(x)-0.25 max(x)+0.25])
soundsc(x,fs)
fprintf('Presione una tecla para continuar...\n')
pause

x_fft = fftshift(abs(fft(x)))/length(t);

subplot(212)
plot(f,x_fft)
title('¿Es el mismo espectro de amplitud de la señal anterior?')
axis([-2000 2000 min(x_fft)*1.05 max(x_fft)*1.05])

xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('Espectro de amplitud $|FFT(x)|$','Interpreter','latex')

fprintf('Presione una tecla para continuar...\n')
pause

close all
% %% Las dos juntas mas la fase
% 
% figure
% set(gcf,'units','normalized','outerposition',[0 0 1 1]);
% 
% subplot(321)
% plot(t,x1)
% text(1.5,0,'1','FontSize',30)
% text(3.5,0,'2','FontSize',30)
% text(5.5,0,'3','FontSize',30)
% xlabel('$t \, s$','Interpreter','latex')
% ylabel('$x(t)$','Interpreter','latex')
% axis([t(1) t(end) min(x1)-0.25 max(x1)+0.3])
% 
% x1_fft = fftshift(abs(fft(x1)))/length(t);
% 
% subplot(323)
% plot(f,x1_fft)
% axis([-2000 2000 min(x1_fft)*1.05 max(x1_fft)*1.05])
% xlabel('$Hz$','Interpreter','latex')
% ylabel('$|FFT(x)|$','Interpreter','latex')
% 
% subplot(325)
% plot(f,angle(x1_fft))
% %axis([-2000 2000 min(x1_fft)*1.05 max(x1_fft)*1.05])
% axis tight
% xlabel('$Hz$','Interpreter','latex')
% ylabel('$\angle FFT(x)$','Interpreter','latex')
% 
% subplot(322)
% plot(t,x)
% xlabel('$t s$','Interpreter','latex')
% ylabel('$x(t)$','Interpreter','latex')
% axis([t(1) t(end) min(x)-0.25 max(x)+0.25])
% 
% x_fft = fftshift(abs(fft(x)))/length(t);
% 
% subplot(324)
% plot(f,x_fft)
% axis([-2000 2000 min(x_fft)*1.05 max(x_fft)*1.05])
% 
% xlabel('$Hz$','Interpreter','latex')
% ylabel('$|FFT(x)|$','Interpreter','latex')
% 
% subplot(326)
% plot(f,angle(x_fft))
% %axis([-2000 2000 min(x1_fft)*1.05 max(x1_fft)*1.05])
% axis tight
% xlabel('$Hz$','Interpreter','latex')
% ylabel('$\angle FFT(x)$','Interpreter','latex')
% 
% fprintf('Presione una tecla para continuar...\n')
% pause
% 
% close all

%% Como se crea el espectrograma
fs = 22100;
t = 0:1/fs:7;
f= (-fs/2)+fs/length(t): fs/length(t): fs/2;

x1 = zeros(size(t));
x1(t>=1 & t<2) = cos(2*pi*697*t(t>=1 & t<2)) + cos(2*pi*1209*t(t>=1 & t<2));
x1(t>=3 & t<4) = cos(2*pi*697*t(t>=3 & t<4)) + cos(2*pi*1336*t(t>=3 & t<4));
x1(t>=5 & t<6) = cos(2*pi*697*t(t>=5 & t<6)) + cos(2*pi*1477*t(t>=5 & t<6));

figure('Name','Marcado telefónico "1 2 3"')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
h_subplot1 = subplot(311);

plot(t,x1)
text(1,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1209 \, t$)','Interpreter','latex')
text(3,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1336 \, t$)','Interpreter','latex')
text(5,2.2,'$cos(2 \, \pi \, 697 \, t) + cos(2 \, \pi \, 1477 \, t$)','Interpreter','latex')
xlabel('$t \, s$','Interpreter','latex')
ylabel('$x(t$)','Interpreter','latex')
axis([t(1) t(end) min(x1)-0.25 max(x1)+0.3])

fprintf('Presione una tecla para continuar...\n')
pause

hold on
vent = zeros(size(x1));
vent((t>=0.95 & t < 1.05)) = 1;
h_vent = plot(t,vent,'r--');
h_text = text(0.75,1.25,'$w(t)$', 'Color','r','Interpreter','latex');

fprintf('Presione una tecla para continuar...\n')
pause

h_subplot2 = subplot(312);

x_vent = zeros(size(x1));
x_vent(t>=0.95 & t < 1.05) = x1(t>=0.95 & t < 1.05);
h_x_vent = plot(t,x_vent);
ylabel('$x(t) . w(t)$','Interpreter','latex')

fprintf('Presione una tecla para continuar...\n')
pause

h_subplot3 = subplot(313);

x_vent_fft = fftshift(abs(fft(x_vent)))/length(x1);
plot3(f(f>0 & f<2000),ones(size(f(f>0 & f<2000))),x_vent_fft(f>0 & f<2000))
title('Análisis tiempo-frecuencia: espectrograma')
set(gca,'YDir','reverse')
grid on
xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('Tiempo $s$','Interpreter','latex')
zlabel('$|FFT(x.w)|$','Interpreter','latex')

fprintf('Presione una tecla para continuar...\n')
pause

delete(h_text)
for n=1.05:0.1:6,
    set(h_vent,'visible','off')
    
    vent = zeros(size(x1));
    vent((t>=n & t < (n+0.1))) = 1;
    set(gcf,'CurrentAxes',h_subplot1)
    h_vent = plot(t,vent,'r--');
    
    set(gcf,'CurrentAxes',h_subplot2)
    hold on
    set(h_x_vent,'visible','off')
    x_vent = zeros(size(x1));
    x_vent(t>=n & t < (n+0.1)) = x1(t >= n & t < (n+0.1));
    h_x_vent = plot(t,x_vent);
    
    set(gcf,'CurrentAxes',h_subplot3)
    hold on
    x_vent_fft = fftshift(abs(fft(x_vent)))/length(x1);
    plot3(f(f>0 & f<2000),(n+0.05)*ones(size(f(f>0 & f<2000))),x_vent_fft(f>0 & f<2000))
    
    pause(1)
end
str='$$ STFT\{x(t)\} = X(\tau, \omega) = \int_{-\infty}^{\infty} x(t) w(t - \tau) e^{-j \omega t} dt $$';
text(3300,-2,0.005, str,'Interpreter','latex','FontSize',18)
fprintf('Presione una tecla para continuar...\n')
pause
close all
%% Espectrograma del discado de 1 2 3

n_win = 512;
figure('Name','Espectrograma de la señal del discado de 1 2 3')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(121)
spectrogram(x1,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
colorbar off
view([60 38])
subplot(122)
spectrogram(x1,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')

fprintf('Presione una tecla para continuar...\n')
pause
close all
%% Espectrograma de los tres digitos al mismo tiempo

n_win = 512;
figure('Name','Espectrograma de la señal al presionar simultaneamente 1 2 3')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(121)
spectrogram(x,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
colorbar off
view([60 38])
subplot(122)
spectrogram(x,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
fprintf('Presione una tecla para continuar...\n')
pause
close all
%% Resolución temporal vs resolución frecuencial
fs = 10000;
t = 0:1/fs:0.05;
f1 = 100;
f2 = 500;
coseno1 = cos(2*pi*t*f1);
coseno2 = cos(2*pi*t*f2);
coseno3 = coseno1 + coseno2;

figure('Name','Resolución temporal vs resolución frecuencial')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);

subplot(211)
plot(t,coseno3,'LineWidth',2), grid on, xlabel('Tiempo $s$','Interpreter','latex'), ylabel('$x(t)$','Interpreter','latex')
title(strcat('$x(t) \, = \, cos(2 \, \pi \, ',num2str(f1),') \,  + \, cos(2 \, \pi \, ',num2str(f2),')$'),'Interpreter','latex')

subplot(212)
x_vent_fft_1 =abs(fft(coseno1, fs))/fs;
x_vent_fft_2 =abs(fft(coseno2, fs))/fs;
x_vent_fft_3 = x_vent_fft_1 + x_vent_fft_2;

f= 0:fs/length(x_vent_fft_1): fs - fs/length(x_vent_fft_1);

plot(f(f >= 0 & f <= (f2 + 100)), x_vent_fft_3(f >= 0 & f <= (f2 + 100)), 'b', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_1(f >= 0 & f <= (f2 + 100)), 'k--', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_2(f >= 0 & f <= (f2 + 100)), 'g--','LineWidth',2)
legend('100+500','100','500')
grid on, axis tight
xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('$|FFT(x)|$', 'Interpreter','latex')
pause
for f2=[400 300 200 150 140 130 125 120 115 110 105],
    
    coseno2 = cos(2*pi*t*f2); coseno3 = coseno1 + coseno2;
    subplot(211)
    plot(t,coseno3,'LineWidth',2), grid on, xlabel('Tiempo $[s]$','Interpreter','latex'), ylabel('$x(t)$','Interpreter','latex')
    title(strcat('$x(t) \, = \, cos(2 \, \pi \, ',num2str(f1),') \,  + \, cos(2 \, \pi \, ',num2str(f2),')$'),'Interpreter','latex')
    
    subplot(212)
    
    x_vent_fft_2 = abs(fft(coseno2,fs))/fs;
    x_vent_fft_3 = x_vent_fft_1 + x_vent_fft_2;
    
    plot(f(f >= 0 & f <= (f2 + 100)), x_vent_fft_3(f >= 0 & f <= (f2 + 100)), 'b', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_1(f >= 0 & f <= (f2 + 100)), 'k--', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_2(f >= 0 & f <= (f2 + 100)), 'g--','LineWidth',2)
    legend('100+500','100',num2str(f2))
    grid on, axis tight
    xlabel('Frecuencias $Hz$','Interpreter','latex')
    ylabel('$|FFT(x)|$','Interpreter','latex')
    
    pause(3)
end
fprintf('Presione una tecla para continuar...\n')
pause
close all
%%
fs = 10000;
t = 0:1/fs:0.5;
f1 = 100;
f2 = 500;
coseno1 = cos(2*pi*t*f1);
coseno2 = cos(2*pi*t*f2);
coseno3 = coseno1 + coseno2;

figure('Name','Ejemplo para ver la influencia de las ventanas')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);

subplot(211)
plot(t,coseno3,'LineWidth',2), grid on, xlabel('Tiempo $s$','Interpreter','latex'), ylabel('$x(t)$','Interpreter','latex')
title(strcat('$x(t) \, = \, cos(2 \, \pi \, ',num2str(f1),') \,  + \, cos(2 \, \pi \, ',num2str(f2),')$'),'Interpreter','latex')

subplot(212)
x_vent_fft_1 =abs(fft(coseno1, fs))/fs;
x_vent_fft_2 =abs(fft(coseno2, fs))/fs;
x_vent_fft_3 = x_vent_fft_1 + x_vent_fft_2;

f= 0:fs/length(x_vent_fft_1): fs - fs/length(x_vent_fft_1);

plot(f(f >= 0 & f <= (f2 + 100)), x_vent_fft_3(f >= 0 & f <= (f2 + 100)), 'b', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_1(f >= 0 & f <= (f2 + 100)), 'k--', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_2(f >= 0 & f <= (f2 + 100)), 'g--','LineWidth',2)
legend('100+500','100','500')
grid on, axis tight
xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('$|FFT(x)|$','Interpreter','latex')
pause
for f2=[400 300 200 150 140 130 125 120 115 110 105 104 103 102 101],
    
    coseno2 = cos(2*pi*t*f2); coseno3 = coseno1 + coseno2;
    subplot(211)
    plot(t,coseno3,'LineWidth',2), grid on, xlabel('Tiempo $s$','Interpreter','latex'), ylabel('$x(t)$','Interpreter','latex')
    title(strcat('$x(t) \, = \, cos(2 \, \pi \, ',num2str(f1),') \,  + \, cos(2 \, \pi \, ',num2str(f2),')$'),'Interpreter','latex')
    
    subplot(212)
    
    x_vent_fft_2 = abs(fft(coseno2,fs))/fs;
    x_vent_fft_3 = x_vent_fft_1 + x_vent_fft_2;
    
    plot(f(f >= 0 & f <= (f2 + 100)), x_vent_fft_3(f >= 0 & f <= (f2 + 100)), 'b', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_1(f >= 0 & f <= (f2 + 100)), 'k--', f(f >= 0 & f <= (f2 + 100)), x_vent_fft_2(f >= 0 & f <= (f2 + 100)), 'g--','LineWidth',2)
    legend('100+500','100',num2str(f2))
    grid on, axis tight
    xlabel('Frecuencias $Hz$','Interpreter','latex')
    ylabel('$|FFT(x)|$','Interpreter','latex')
   
    pause(3)
end
fprintf('Presione una tecla para continuar...\n')
pause
close all
%% Ejemplo para ver la influencia de las ventanas

fs = 22100;
t = 0:1/fs:3;
x2(t<1) = cos(2*pi*1209*t(t<1));
x2(t>=1 & t<2) = cos(2*pi*1336*t(t>=1 & t<2));
x2(t>=2 & t<=3) = cos(2*pi*1477*t(t>=2 & t<=3));

figure('Name',' Ejemplo para ver la influencia de las ventanas')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)

plot(t,x2)

text(0.1,1.2,'$cos(2 \, \pi \, 1209 \, t$)','Interpreter','latex')
text(1,1.2,  '$cos(2 \, \pi \, 1336 \, t)$','Interpreter','latex')
text(2,1.2,  '$cos(2 \, \pi \, 1477 \, t)$','Interpreter','latex')

line([1 1],[-1 1], 'Color','r','LineStyle','--')
line([2 2],[-1 1], 'Color','r','LineStyle','--')

xlabel('$t \, s$','Interpreter','latex')
ylabel('$x(t)$','Interpreter','latex')
axis([t(1) t(end) min(x2)*1.05 max(x2)*1.05])

soundsc(x2,fs)
%fprintf('Presione una tecla para continuar...\n')
%pause

x2_fft = fftshift(abs(fft(x2)))/length(t);
f= (-fs/2)+fs/length(t): fs/length(t): fs/2;

subplot(212)
plot(f,x2_fft)
axis([f(1) f(end) min(x2_fft)*1.05 max(x2_fft)*1.05])
xlabel('Frecuencias $Hz$','Interpreter','latex')
ylabel('Espectro de amplitud $|FFT(x)|$','Interpreter','latex')

fprintf('Presione una tecla para continuar...\n')
pause
close all
%%
figure('Name','Resolución temporal vs resolución frecuencial')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(411)

plot(t,x2)

% text(0.1,1.2,'cos(2 pi 1209 t)')
% text(1,1.2,'cos(2 pi 1336 t)')
% text(2,1.2,'cos(2 pi 1477 t)')
text(0.1,1.2,'$cos(2 \, \pi \, 1209 \, t$)','Interpreter','latex')
text(1,1.2,  '$cos(2 \, \pi \, 1336 \, t)$','Interpreter','latex')
text(2,1.2,  '$cos(2 \, \pi \, 1477 \, t)$','Interpreter','latex')

line([1 1],[-1 1], 'Color','r','LineStyle','--')
line([2 2],[-1 1], 'Color','r','LineStyle','--')

xlabel('$t \, s$','Interpreter','latex')
ylabel('$x(t)$','Interpreter','latex')
axis([t(1) t(end) min(x2)*1.05 max(x2)*1.05])

subplot(412)
n_win = 1024;
spectrogram(x2,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
title(strcat('Ancho de la ventana: $',num2str(1000*n_win/fs),' ms$'),'Interpreter','latex');
colorbar off

subplot(413)
n_win = 512;
spectrogram(x2,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
title(strcat('Ancho de la ventana: $',num2str(1000*n_win/fs),' ms$'),'Interpreter','latex');
colorbar off

subplot(414)
n_win = 64;
spectrogram(x2,hamming(n_win),round(n_win/2),n_win,fs,'yaxis')
title(strcat('Ancho de la ventana: $',num2str(1000*n_win/fs),' ms$'),'Interpreter','latex');
colorbar off
fprintf('Presione una tecla para continuar...\n')
pause
close all
%% Analizando las ventanas

wvtool(rectwin(64),hamming(64), hann(64), gausswin(64))
legend({'Rectangular','Hamming','Hanning','Gaussiana'})

wvtool(rectwin(1000),rectwin(2000), rectwin(3000), rectwin(4000))
legend({'N = 64','N=128','256','512'})


