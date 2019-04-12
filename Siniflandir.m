function [Siniflanmis] = Siniflandir (Score_Matrix)

for i=1:40
    
  [Maksimum, indis] =  max(Score_Matrix(i,:));
  
  if indis == 1
      
      Siniflanmis{i,1} = 'Business';
      
  end
  
  if indis == 2
      
      Siniflanmis{i,1} = 'Science';
      
  end    
    
  if indis == 3
      
      Siniflanmis{i,1} = 'Technology';
      
  end    

  if indis == 4
      
      Siniflanmis{i,1} = 'Sport';
      
  end    
  
end
