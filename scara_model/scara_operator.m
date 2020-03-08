%SCARA_OPERATOR will tell you how to operate a scara robot model
%
%       scara_operator
%
% script will drive robot to move from one point to another
%
% Notes::
% - Based on my CSDN blog 
%   https://blog.csdn.net/hitgavin/article/details/104672482
%   If you are interested in robotics, welcome to my blog
%   https://blog.csdn.net/hitgavin.
mdl_scara400;
L(3).qlim = [0.05 0.3];
q1 = [0 0 0.05 0];
q2 = [pi/4 pi/6 0.2 pi/8];
q = jtraj(q1, q2, 100);
scara.plot(q);