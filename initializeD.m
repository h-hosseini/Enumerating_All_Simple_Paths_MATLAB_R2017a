%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Enumerating all simple paths in a graph                  %
%                Developed in MATLAB R2017a                         %
%                         20-06-2017                                %
%             Programmer: SeyedHedayat Hosseini                     %
%                                                                   %
%                                                                   %
%   Main paper:                                                     %
%                                                                   %
%   RUBIN, FRANK. Enumerating all simple paths in a graph. IEEE     %
%   Transactions on Circuits and Systems, 1978, 25.8: 641-642.      %
%   DOI: http://dx.doi.org/10.1109/TCS.1978.1084515                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             

function [ Dij ] = initializeD( listOfLinks,numberOfnodes )

Dij = cell(numberOfnodes,numberOfnodes);
%Dij = zeros (max,max);
for i = 1 : length(listOfLinks)
    if isempty(Dij{listOfLinks(i).i,listOfLinks(i).j})
        Dij{listOfLinks(i).i,listOfLinks(i).j}{1,1} = [bitor(arrayToBinary(listOfLinks(i).i),arrayToBinary(listOfLinks(i).j)),arrayToBinary(i)];        
    else
        Dij{listOfLinks(i).i,listOfLinks(i).j}{1,length(Dij{listOfLinks(i).i,listOfLinks(i).j})+1} = [bitor(arrayToBinary(listOfLinks(i).i),arrayToBinary(listOfLinks(i).j)),arrayToBinary(i)];        
    end
        

end