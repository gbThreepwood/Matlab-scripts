% RECT  Allows entering a complex number in rectangular format. The return
% value is the complex numer in Matlab format.
%

function num = rect(num)
    re = real(num);
    im = imag(num);
    
    if im ~= 0
       fprintf('%g + j%g\n', re, im);
    else
        fprintf('%g\n', re);
    end
end