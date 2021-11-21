%% LINMA1510 Labo 4 Analysis

%===============================================================%
%                                                               %
%   LINMA1510 : Labo 4 - Analysis and treatment of the data     %
%                                                               %
%   2021-2022                                                   %
%                                                               %
%   Prof. D. Dochain                                            %
%   A. Ben Ayed, J. Kadima Kazaku,                              %
%   F. Wielant                                                  %
%                                                               %
%================================================================
  
clear all;
clc;
close all;

%Open and run the simulink file:

sim('Labo4_students.slx')

%Plot Open Loop characteristics:    
Y_Raw = plot(simout_T, simout_OL(:, 1), '.b');
hold on
U = plot(simout_T, simout_OL(:, 2), '-g');
xlabel('time [second]')
ylabel('amplitude')
title('Open loop: step response characteristics')
axis([-1 31 -0.2 1.1])
grid on

hold off

legend([U, Y_Raw],'U','Y Raw')

%use the zoom to see the details on the figure.
