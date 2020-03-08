%MDL_SCARA400 Create model of a scara robot
%
%       mdl_scara400
%
% script creates the workspace variable which describes the kinematic
% characteristics of a scara 400 machine
%
% Notes::
% - Based on my CSDN blog. If you are interested in robotics, then 
%   welcome to my blog https://blog.csdn.net/hitgavin.


% Copyright (C) 2020-2021, by gavin

l1 = 0.225; % unit m
l2 = 0.175; 
d3 = 0.05;

scara_dh = [
% theta    d    a    alpha    
    0      0    l1     0      
    0      0    l2     pi      
    0      d3   0      0      
    0      0    0      0     
    ];

% joint-type 0 for revolute, 1 for prismatic
%          theta  d     a   alpha joint-type
L(1) = Link([0    0     l1    0       0], 'standard');
L(2) = Link([0    0     l2    pi      0], 'standard');
L(3) = Link([0    d3    0     0       1], 'standard');
L(4) = Link([0    0     0     0       0], 'standard');

scara = SerialLink(L, 'name', 'scara400');