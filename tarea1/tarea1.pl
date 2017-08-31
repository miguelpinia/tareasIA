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
%:- abuelo(bart, X).

% Ejercicio 1.- b)
abuela(X, Y) :- mujer(Y), madre(Z, Y), madre(X, Z).
abuela(X, Y) :- mujer(Y), madre(Z, Y), padre(X, Z).
%:- abuela(maggie, X).
%:- abuela(ling, X).

% Ejercicio 1.- c)
nieto(X, Y) :- hombre(Y), abuelo(Y, X).
nieto(X, Y) :- hombre(Y), abuela(Y, X).
%:- nieto(X, bart).

% Ejercicio 1.- d)
nieta(X, Y) :- mujer(Y), abuelo(Y, X).
nieta(X, Y) :- mujer(Y), abuela(Y, X).
%:- nieta(X, maggie).
%:- nieta(X, Y).

% Ejercicio 1.- e)
hermano(X, Y) :- hombre(Y), padre(Y, Z), padre(X, Z), X \= Y.
hermano(X, Y) :- hombre(Y), madre(Y, Z), madre(X, Z), X \= Y.
%:- hermano(X, Y).

% Ejercicio 1.- f)
hermana(X, Y) :- mujer(Y), padre(Y, Z), padre(X, Z), X \= Y.
hermana(X, Y) :- mujer(Y), madre(Y, Z), madre(X, Z), X \= Y.
%:- hermana(X, Y).

% Ejercicio 1.- g)
tia(X, Y) :- padre(X, Z), hermana(Z, Y).
tia(X, Y) :- madre(X, Z), hermana(Z, Y).
%:- tia(X, Y).


% Ejercicio 1.- h) Revisar con el debugger lo que está haciendo
primo(X, Y) :- hombre(Y), padre(Y, Z), hermano(Z, W), padre(X, W).
primo(X, Y) :- hombre(Y), padre(Y, Z), hermana(Z, W), madre(X, W).
primo(X, Y) :- hombre(Y), madre(Y, Z), hermano(Z, W), padre(X, W).
primo(X, Y) :- hombre(Y), madre(Y, Z), hermana(Z, W), madre(X, W).
%:- primo(X, Y).

% Ejercicio 1.- i)
sobrino(X, Y) :- hombre(Y), padre(Y, W), hermano(X, W).
sobrino(X, Y) :- hombre(Y), padre(Y, W), hermana(X, W).
sobrino(X, Y) :- hombre(Y), madre(Y, W), hermano(X, W).
sobrino(X, Y) :- hombre(Y), madre(Y, W), hermana(X, W).
%:- sobrino(X, Y).

% Ejercicio 1.- j)
pareja(X, Y) :- padre(Z, X), madre(Z, Y).
%:- pareja(X, Y).


%%%%%%%%%%%%%%%
% Ejercicio 2 %
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %:- mujer(X), hombre(Y).    %
% %@ X = lisa,                %
% %@ Y = bart ;               %
% %@ X = lisa,                %
% %@ Y = homero ;             %
% %@ X = lisa,                %
% %@ Y = abraham ;            %
% %@ X = lisa,                %
% %@ Y = herb ;               %
% %@ X = lisa,                %
% %@ Y = clancy ;             %
% %@ X = maggie,              %
% %@ Y = bart ;               %
% %@ X = maggie,              %
% %@ Y = homero ;             %
% %@ X = maggie,              %
% %@ Y = abraham ;            %
% %@ X = maggie,              %
% %@ Y = herb ;               %
% %@ X = maggie,              %
% %@ Y = clancy ;             %
% %@ X = marge,               %
% %@ Y = bart ;               %
% %@ X = marge,               %
% %@ Y = homero ;             %
% %@ X = marge,               %
% %@ Y = abraham ;            %
% %@ X = marge,               %
% %@ Y = herb ;               %
% %@ X = marge,               %
% %@ Y = clancy ;             %
% %@ X = selma,               %
% %@ Y = bart ;               %
% %@ X = selma,               %
% %@ Y = homero ;             %
% %@ X = selma,               %
% %@ Y = abraham ;            %
% %@ X = selma,               %
% %@ Y = herb ;               %
% %@ X = selma,               %
% %@ Y = clancy ;             %
% %@ X = patty,               %
% %@ Y = bart ;               %
% %@ X = patty,               %
% %@ Y = homero ;             %
% %@ X = patty,               %
% %@ Y = abraham ;            %
% %@ X = patty,               %
% %@ Y = herb ;               %
% %@ X = patty,               %
% %@ Y = clancy ;             %
% %@ X = mona,                %
% %@ Y = bart ;               %
% %@ X = mona,                %
% %@ Y = homero ;             %
% %@ X = mona,                %
% %@ Y = abraham ;            %
% %@ X = mona,                %
% %@ Y = herb ;               %
% %@ X = mona,                %
% %@ Y = clancy ;             %
% %@ X = jackeline,           %
% %@ Y = bart ;               %
% %@ X = jackeline,           %
% %@ Y = homero ;             %
% %@ X = jackeline,           %
% %@ Y = abraham ;            %
% %@ X = jackeline,           %
% %@ Y = herb ;               %
% %@ X = jackeline,           %
% %@ Y = clancy ;             %
% %@ X = ling,                %
% %@ Y = bart ;               %
% %@ X = ling,                %
% %@ Y = homero ;             %
% %@ X = ling,                %
% %@ Y = abraham ;            %
% %@ X = ling,                %
% %@ Y = herb ;               %
% %@ X = ling,                %
% %@ Y = clancy.              %
%                             %
%                             %
% %:- mujer(X), !, hombre(Y). %
% %@ X = lisa,                %
% %@ Y = bart ;               %
% %@ X = lisa,                %
% %@ Y = homero ;             %
% %@ X = lisa,                %
% %@ Y = abraham ;            %
% %@ X = lisa,                %
% %@ Y = herb ;               %
% %@ X = lisa,                %
% %@ Y = clancy.              %
%                             %
%                             %
% %:- mujer(X), hombre(Y), !. %
% %@ X = lisa,                %
% %@ Y = bart.                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
