m1 = 0.297; %kgram 
g = 9.8; %m/s^2
L = 0.4; %meter 
miu = 0.973e-3; % g/m

% Mencari tegangan T
T1 = m1*g 

% Menghitung kecepatan gelombang v sebagai fungsi dari T
v1 = sqrt(T1 ./ miu)
v1_squared = v1^2

% Menghitung frekuensi f untuk n = 1, 2, 3
n_values = [1, 2, 3];
f1_values = (n_values ./ (2 * L)) .* sqrt(T1 / miu)

% Data pengukuran untuk m1
f_pengukuran1 = [332.9, 665.8, 989.1];

% Data kedua (m2)
m2 = 0.4799; % kg

% Mencari tegangan T
T2 = m2 * g

% Menghitung kecepatan gelombang v
v2 = sqrt(T / miu)
v2_squared = v1^2

% Menghitung frekuensi f untuk n = 1, 2, 3
f2_values = (n_values ./ (2 * L)) .* sqrt(T2 / miu)

% Data pengukuran untuk m2
f_pengukuran2 = [335.6, 670.2, 1010];

% Menghitung error persen untuk masing-masing frekuensi
error_persen2 = abs((f2_values - f_pengukuran2) ./ f_pengukuran2) * 100;

% Menampilkan error
fprintf('Error untuk m1:\n');
fprintf('n = 1: %.2f%%, n = 2: %.2f%%, n = 3: %.2f%%\n', error_persen1);

fprintf('Error untuk m2:\n');
fprintf('n = 1: %.2f%%, n = 2: %.2f%%, n = 3: %.2f%%\n', error_persen2);

% Plot grafik hubungan f vs T
figure;
subplot(2,1,1);
scatter([T1, T2], [f1_values; f2_values], 80, 'b', 'filled'); 
xlabel('Tegangan (T) [N]');
ylabel('Frekuensi (f) [Hz]');
title('Grafik Frekuensi vs Tegangan');
legend('n=1', 'n=2', 'n=3');
grid on;

% Plot grafik hubungan T vs v tanpa garis, titik bulat penuh
subplot(2,1,2);
scatter([T1, T2], [v1_squared, v2_squared], 80, 'r', 'filled');
xlabel('Tegangan (T) [N]');
ylabel('Kecepatan Gelombang (v) [m/s]');
title('Grafik Tegangan vs Kecepatan Gelombang');
grid on;