function cnum = pol(num, ang)
% POL  Allows entering a complex number in several different ways, and print
% the complex number in polar form "pretty" format. The return value is the
% complex numer in Matlab format.
%
%   POL(4 + 6j) The number is entered in rectangular form, but displayed in
%   polar form.
%
%   POL(4*exp(3j)) The numer is entered in polar exponential form, with the
%   angle in radians.
%
%   POL(3, 54) Enters the number (4∠54) in polar form, with the angle in
%   degrees.
%

    if exist('ang','var')
        arg = ang;
        cnum = num*exp(deg2rad(ang)*1j);
    else
        % Second parameter does not exist, so assume the first parameter is
        % a complex number. I.e. a matlab type complex number.
        arg = rad2deg(angle(num));
        cnum = num;
    end

    val = abs(num);
    if imag(cnum) ~= 0
        fprintf('%g%c%g%c\n', val, char(8736), arg, char(0176));
    else
        fprintf('%g\n', val);
    end
end