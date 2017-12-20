%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Enumerating all simple paths in a graph                  %
%                Developed in MATLAB R2017a                         %
%                         20-06-2017                                %
%             Programmer: SeyedHedayat Hosseini                     %
%                                                                   %
%                                                                   %
%   Main paper:                                                     %
%                                                                   %
%   RUBIN, FRANK. Enumerating all simple paths in a graph. IEEE     %
%   Transactions on Circuits and Systems, 1978, 25.8: 641-642.      %
%   DOI: http://dx.doi.org/10.1109/TCS.1978.1084515                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             

clear all;
clc;
matrix = [0 1 1 1 0 0;1 0 0 0 1 0;1 0 0 0 1 0;1 0 0 0 0 1; 0 1 1 0 0 1;0 0 0 1 1 0]
%matrix = [0 1 1  0;1 0  0 1 ;1 0 0 1 ; 0 1 1 0 ;]
%matrix = [0 1 1 1 0 0;1 0 0 0 1 0;1 0 0 0 1 0;1 0 0 0 0 1; 0 1 1 0 0 0;0 0 0 1 1 0]


dst = 6;
src = 1;
[ routes ] = allroutes( matrix ); 