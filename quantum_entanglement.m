clc;
clear;
close all;

% |00> state
state = [1;0;0;0];

% Hadamard on first qubit
H = (1/sqrt(2))*[1 1;1 -1];
I = eye(2);

U = kron(H,I);

state = U*state;

% CNOT gate
CNOT = [1 0 0 0;
        0 1 0 0;
        0 0 0 1;
        0 0 1 0];

state = CNOT*state;

fprintf('Bell state:\n');
disp(state);

probabilities = abs(state).^2;

figure;
bar(probabilities);
xticklabels({'00','01','10','11'});
ylabel('Probability');
title('Quantum Entanglement - Bell State');
