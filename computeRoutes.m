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

function [ Dij ] = computeRoutes( Dij,numberOfnodes )

for j = 1 : numberOfnodes
    for i = 1 : numberOfnodes
        for k = 1: numberOfnodes
            
            for m = 1 : length(Dij{i,j})    %v=Dij{i,j}{1,1:length(Dij{i,j})}(1); e=Dij{i,j}{1,1:length(Dij{i,j})}(2);
                for n = 1: length(Dij{j,k})  %w=Dij{j,k}{1,1:length(Dij{j,k})}(1); f=Dij{i,j}{1,1:length(Dij{i,j})}(2);
                    v=Dij{i,j}{1,m}(1); 
                    e=Dij{i,j}{1,m}(2); 
                    w=Dij{j,k}{1,n}(1);
                    f=Dij{j,k}{1,n}(2);
                    if (bitand(v,bitand(w,I(j,numberOfnodes)))==0) %v=Dij{i,j}{1,m}(1)  w=Dij{j,k}{1,n}(1)
                        Dij{i,k}{1,length(Dij{i,k})+1} = [bitor(v,w),bitor(e,f)];
                    end
                end
            end
        end
    end
                
           
        


end

