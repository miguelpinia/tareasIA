%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tarea 1.                  %
% Miguel Angel Piña Avelino %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%
% Base de conocimiento %
%%%%%%%%%%%%%%%%%%%%%%%%
hombre(bart).
hombre(homero).
hombre(abraham).
hombre(herb).
hombre(clancy).
mujer(lisa).
mujer(maggie).
mujer(marge).
mujer(selma).
mujer(patty).
mujer(mona).
mujer(jackeline).
mujer(ling).
padre(bart,homero).
padre(lisa,homero).
padre(maggie,homero).
padre(homero,abraham).
padre(herb,abraham).
padre(marge,clancy).
padre(patty,clancy).
padre(selma,clancy).
madre(bart,marge).
madre(lisa,marge).
madre(maggie,marge).
madre(homero,mona).
madre(herb,mona).
madre(marge,jackeline).
madre(patty,jackeline).
madre(selma,jackeline).
madre(ling,selma).

% Ejercicio 1.- a)
abuelo(X, Y) :- hombre(Y), padre(Z, Y), padre(X, Z).
abuelo(X, Y) :- hombre(Y), padre(Z, Y), madre(X, Z).

%:- abuelo(maggie, X).
%@ X = abraham ;
%@ X = clancy ;
%@ false.

%:- abuelo(bart, X).
%@ X = abraham ;
%@ X = clancy ;
%@ false.

% Ejercicio 1.- b)
abuela(X, Y) :- mujer(Y), madre(Z, Y), madre(X, Z).
abuela(X, Y) :- mujer(Y), madre(Z, Y), padre(X, Z).

%:- abuela(maggie, X).
%@ X = jackeline ;
%@ X = mona ;
%@ false.

%:- abuela(ling, X).
%@ X = jackeline ;
%@ false.
