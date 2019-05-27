close all;
figure();
hold on;
grid on;
plot(r1.time, r1.signals.values,'LineWidth',2);
plot(j1.time, j1.signals.values,'LineWidth',2);
plot(stateCount.time, stateCount.signals.values,'LineWidth',2);
legend('r','j','Total Number of States');
xlabel('time');


figure();
hold on;
grid on;
plot(cosStateCount.time, cosStateCount.signals.values,'LineWidth',2);
plot(mcossize.time, mcossize.signals.values,'LineWidth',2);
legend('Number of Cosine States','Number of Elements in Cosine System Matrix');
xlabel('time');

figure();
hold on;
grid on;
plot(SinStateCount.time, SinStateCount.signals.values,'LineWidth',2);
plot(msinsize.time, msinsize.signals.values,'LineWidth',2);
legend('Number of Sine States','Number of Elements in Sine System Matrix');
xlabel('time');