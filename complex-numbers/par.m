function ztot = par(Z1, Z2)
% PAR  Find the resulting impedance of two parallel impedances,
% and print the result in "pretty" format.
%
%   Ztot = PAR(3 + 4j,2 + 3j)
%

    ztot = (Z1 * Z2)/(Z1 + Z2);

    fprintf('Ztot = ');
    rect(ztot);
    fprintf('Ztot = ');
    pol(ztot);
end