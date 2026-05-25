clc;
clear;
close all;

% Multi-port DC-DC Converter Parameters

Vin_solar = 24;      % Solar source voltage
Vin_battery = 12;    % Battery voltage
R_load = 10;         % Load resistance
L = 5e-3;            % Inductance
C = 100e-6;          % Capacitance
fs = 10000;          % Switching frequency

% Output voltage calculation
Duty_cycle = 0.5;

Vout = Vin_solar / (1 - Duty_cycle);

fprintf('Output Voltage of Converter = %.2f V\n', Vout);

% Time response
t = 0:0.0001:0.05;
response = Vout * (1 - exp(-t/0.002));

figure;
plot(t, response,'LineWidth',2);
grid on;

title('Output Voltage Response of Multi-port DC-DC Converter');
xlabel('Time (s)');
ylabel('Output Voltage (V)');