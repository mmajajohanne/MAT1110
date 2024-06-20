% Definerer symbolske variabler
syms u v R w;
% Definerer vektorfunksjonen
r = [( R + w* cos ( u )) * cos ( v ) , ( R + w * cos ( u ) ) * sin ( v ) , w * sin
( u ) ];
% Beregner den partielle deriverte med hensyn til u
dr_du = diff (r , u ) ;
dr_du_simplified = simplify ( dr_du ) ;
% Beregner den partielle deriverte med hensyn til v
dr_dv = diff (r , v ) ;
dr_dv_simplified = simplify ( dr_dv ) ;
% Beregner den partielle deriverte med hensyn til w
dr_dw = diff (r , w ) ;
dr_dw_simplified = simplify ( dr_dw ) ;
% Skriver ut de deriverte
fprintf ( ' Deriverte med hensyn til u :\ n ') ;
pretty ( dr_du_simplified )
fprintf ( '\ nDeriverte med hensyn til v :\ n ') ;
pretty ( dr_dv_simplified )
fprintf ( '\ nDeriverte med hensyn til w :\ n ') ;
pretty ( dr_dw_simplified )


% Definerer symbolene og parameteriseringen av torusoverflaten
R = sym ( 'R ') ; % Ytre radius , anta at dette er kjent eller gitt
w = sym ( 'w ') ; % Indre radius , anta at dette er kjent eller gitt
u = sym ( 'u ') ; % Parameter u
v = sym ( 'v ') ; % Parameter v
% Definerer de partielle deriverte
du = [ - w * cos ( v ) * sin ( u ) , -w * sin ( u ) * sin ( v ) , w * cos ( u ) ];
dv = [ - sin ( v ) *( R + w * cos ( u ) ) , cos ( v ) *( R + w * cos ( u ) ) , 0];
dw = [ cos (u ) * cos (v ) , cos ( u ) * sin ( v ) , sin ( u ) ];
% Setter opp Jacobimatrisen
J = [ du ; dv ; dw ];
% Beregner determinanten av Jacobimatrisen
detJ = det ( J) ;
% Forenkler resultatet
detJ_simplified = simplify ( detJ ) ;
% Beregner og viser absoluttverdien av determinanten
abs_detJ = abs ( detJ_simplified ) ;
disp ( abs_detJ ) ;