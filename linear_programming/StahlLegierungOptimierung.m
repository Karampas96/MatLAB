%% Stahl Legierung
% 
% 
% Frei übersetzt aus <https://www.mathworks.com/help/optim/ug/mixed-integer-linear-programming-basics-problem-based.html#MixedIntegerLinearProgrammingBasicsProblemBasedExample-1 
% https://www.mathworks.com/help/optim/ug/mixed-integer-linear-programming-basics-problem-based.html#MixedIntegerLinearProgrammingBasicsProblemBasedExample-1>
% 
% Man möchte 25 Tonnen Stahl mischen welcher eine bestimmte chemische Zusammammensetzung 
% hat. Der neu produzierte Stahl soll 5% Kohlenstoff und 5%Molybdän enthalten.
% 
% Dazu stehen verschieden Rohstoffe zur Verfügung:
% 
% Gewicht    Kolenstoff%         Molybdän %    $/ Tonne
%% 
% * Barren Typ 1:                5                5                    3                 
% 350
% * Barren Typ 2                 3                4                    3                 
% 330
% * Barren Typ 3                 4                5                    4                 
% 310
% * Barren Typ 4                 6                3                    4                 
% 280
% * Legierung 1                   beliebig     8                    6                 
% 500   
% * Legierung 2                   beliebig     7                    7                 
% 450
% * Legierung 3                   beliebig     6                    8                 
% 400
% * Schrott                           beliebig     3                    9                 
% 400
%% 
% Für die Produktion können nur ganze Barren verwendet werden. Es steht pro 
% Barren-Typ nur ein Barren zur Verfügung. Legierungen und Schrott können in beliebiger 
% Menge verwendet werden.
% 
% Wie muss die Mischung gewählt werden, um den gewünschten Stahl mit möglichts 
% geringen Kosten erzeugen zu können?
%% Definition der Variablen


%% Optimierungsproblem
% Kosten sollen minimiert werden:


%% Definition der Nebenbedingungen


%% Lösen