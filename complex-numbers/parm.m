function ztot = parm(varargin)
% PAR  Find the resulting impedance of two or more parallel impedances, and
% return the value as a complex number. The result is also printed in 
% "pretty" format.
%
%   Ztot = PAR(3, 4, 5, 6)
%
%   Ztot = PAR(3 + 4j,2 + 3j)
%
    disp("Antall parallelle impedansar: " + nargin)
    gtot = 0;
    
    for k = 1:nargin
        gtot = gtot + 1/varargin{k};
        %disp("B: " + temp);
        %gtot = gtot + 1/varargin(k);
    end
    ztot = 1/gtot;

    if imag(ztot) == 0
        fprintf('Rtot = ');
        rect(ztot);
        %fprintf('Rtot = ');
        %pol(ztot);
    else
        fprintf('Ztot = ');
        rect(ztot);
        fprintf('Ztot = ');
        pol(ztot);
    end

end