% Definer matrisen A
A = [0.5 0.3 0.2; 0.3 0.4 0.3; 0.2 0.3 0.5];
% Beregn egenverdier og egenvektorer til matrisen A
[V , D ] = eig ( A) ;
% Vis egenverdiene
disp ( ' Egenverdiene : ') ;
disp (D ) ;
% Vis egenvektorene
disp ( ' Egenvektorene : ') ;
disp (V ) ;