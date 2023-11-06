figure;
imshow(Cn)
hold on;

for i=1:length(CellCl(1,:))
    a=sum(CellCl(:,i));
    
    if a==0
    end
    
 bb=find(CellCl(:,i)==1);
 BW1=zeros(d1,d2);
 BW2=zeros(d1,d2);
 cont = medfilt1(Coor{i}')';
 for j=1:size(cont,2)
 BW1(cont(2,j),cont(1,j))=1;
 BW2=bwperim(BW1);
 end
 
 if bb==1
if celltype(1,i)==1
B = bwboundaries(BW2);
visboundaries(B,'Color','r','LineWidth', 0.2,'LineStyle','-.')
else
B = bwboundaries(BW2);
visboundaries(B,'Color','r','LineWidth', 0.2)
end
 end
 
  if bb==2
if celltype(1,i)==1
B = bwboundaries(BW2);
visboundaries(B,'Color','b','LineWidth', 0.2,'LineStyle','-.')
else
B = bwboundaries(BW2);
visboundaries(B,'Color','b','LineWidth', 0.2)
end
  end
 
   if bb==3
if celltype(1,i)==1
B = bwboundaries(BW2);
visboundaries(B,'Color','m','LineWidth', 0.2,'LineStyle','-.')
else
B = bwboundaries(BW2);
visboundaries(B,'Color','m','LineWidth', 0.2)
end
 end
 
end

        
  
    