function S = cpower(U, I)
% CPOWER  Find the complex power resulting from a given voltage and current
% phasor.
%
%   S = CPOWER(3 + 4j,2 + 3j)
%

    % Check if load is inductive or capacitive
    phi = angle(U) - angle(I);
    phid = rad2deg(phi);
    cosphi = cos(phi);
    
    %TODO: Detect if power is inductive or capacitive.    
    phi_type = 'Ind';
    fprintf('phi = %g%c, cos(phi) = %g (%s)\n', phid, char(0176), cosphi, phi_type);
 
    % Compute complex power
    S = U * conj(I);
    
    P = real(S);
    Q = imag(S);
    
    fprintf('P = %g W. Q = %g VAr\n', P, Q);
    fprintf('S = %s VA\n', polprint(abs(S), rad2deg(angle(S))));
    %rect(S);
    %fprintf('\nS = ');
    %pol(S);
end
