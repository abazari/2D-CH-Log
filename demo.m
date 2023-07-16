% matlab code of paper titled by:
% "Application of 2D Crank--Nicolson method on Cahn--Hilliard model for 
%  phase separation with a logarithmic free energy"
%
% Written by Reza Abazari and Hadi Rezazadeh on March 30, 2020. 
% Copyright 2010 by Reza Abazari. All Right Reserved.
% e-mail(s): abazari-r@uma.ac.ir, h.rezazadeh@ausmt.ac.ir


clc; clf; close all
format short g
nx=[8,16,32,64,128];

fig_size=5; % 1 ->   8 x 8
            % 2 ->  16 x 16
            % 3 ->  32 x 32
            % 4 ->  64 x 64
            % 5 -> 128 x 128
            
example=1;  % 1 -> example 1   => u_0(x,y) = cross-shaped initial condition
            % 2 -> example 2   => u_0(x,y) = 1/10*cos(2*pi*x)*cos(2*pi*y);
            % 3 -> example 3   => u_0(x,y) = 0.5*rand(N+1,M+1);
tic  
CH_Log(nx, fig_size, example)
toc