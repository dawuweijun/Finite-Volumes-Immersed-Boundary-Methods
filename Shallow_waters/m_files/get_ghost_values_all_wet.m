function RP_value = get_RP_value_all_wet(RP, M)

%
% function RP_value = get_RP_value_all_wet(RP, M)
%
% Ritorna il valore dell'incognita nel punto riflesso nel caso 'all_wet'
% (matrice 4x4 identica per ogni incognita).
%
% PARAMETRI D'INGRESSO
%
% M = matrice 4x5 del tipo [Matrix4x4 c] dove c è il termine noto.
% RP = vettore [RPx RPy] (punto riflesso)
%

Matrix = M(:,1:4);
c = M(:,5);

coeff = Matrix\c;

RP_value = coeff(1)*RP(1)*RP(2) + coeff(2)*RP(1) + coeff(3)*RP(2) + coeff(4);

end