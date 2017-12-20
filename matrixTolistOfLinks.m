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

function [ listOfLinks ] = matrixTolistOfLinks( matrix )

linkCounter = 0;
for i=1:length(matrix)
    for j=1:length(matrix)
        if matrix(i,j)>0
            linkCounter = linkCounter + 1;
            listOfLinks(linkCounter).i = i;
            listOfLinks(linkCounter).j = j;
        end
    end
end
%listOfLinks(linkCounter+1).i = 1;
       %     listOfLinks(linkCounter+1).j = 2;
end

