function [Vocabulary,business_class,science_class,technology_class,sport_class] = train_Naive_Bayes (train_data_set,business,science,technology,sport)

%Sözlük oluþturma.

for i=1:43
    x=1;
    for j=2:295
        
        Kelime = train_data_set{i,j};
        Kelime1 = strcmp(Kelime,'the');
        Kelime2 = strcmp(Kelime,'on');
        Kelime3 = strcmp(Kelime,'in');
        Kelime4 = strcmp(Kelime,'of');
        Kelime5 = strcmp(Kelime,'or');
        Kelime6 = strcmp(Kelime,'and');
        Kelime7 = strcmp(Kelime,'a');
        Kelime8 = strcmp(Kelime,'is');
        Kelime9 = strcmp(Kelime,'The');
        Kelime10 = strcmp(Kelime,'A');
        Kelime11 = strcmp(Kelime,'to');
        Kelime12 = strcmp(Kelime,'for');
             
            if ~( Kelime1==1 || Kelime2==1  || Kelime3==1  || Kelime4==1 || Kelime5==1  || Kelime6==1  || Kelime7==1 || Kelime8==1|| Kelime9==1 || Kelime10==1 || Kelime11==1 || Kelime12==1 )
        
                Vocabulary{i,x}= train_data_set{i,j};

            end

        
        x=x+1;

    end
end

emptyCells = cellfun('isempty', Vocabulary); 
Vocabulary(emptyCells) = [];

%Sýnýflarda geçen kelime sayýsýný bulma

for i=1:10

    for j=1:294
        
        Kelime = business{i,j};
        Kelime1 = strcmp(Kelime,'the');
        Kelime2 = strcmp(Kelime,'on');
        Kelime3 = strcmp(Kelime,'in');
        Kelime4 = strcmp(Kelime,'of');
        Kelime5 = strcmp(Kelime,'or');
        Kelime6 = strcmp(Kelime,'and');
        Kelime7 = strcmp(Kelime,'a');
        Kelime8 = strcmp(Kelime,'is');
        Kelime9 = strcmp(Kelime,'The');
        Kelime10 = strcmp(Kelime,'A');
        Kelime11 = strcmp(Kelime,'to');
        Kelime12 = strcmp(Kelime,'for');
             
            if ~( Kelime1==1 || Kelime2==1  || Kelime3==1  || Kelime4==1 || Kelime5==1  || Kelime6==1  || Kelime7==1 || Kelime8==1|| Kelime9==1 || Kelime10==1 || Kelime11==1 || Kelime12==1 )
        
                business_class{i,j}= business{i,j};

            end

    end
end

emptyCells = cellfun('isempty', business_class); 
business_class(emptyCells) = [];




for i=1:10

    for j=1:294
        
        Kelime = science{i,j};
        Kelime1 = strcmp(Kelime,'the');
        Kelime2 = strcmp(Kelime,'on');
        Kelime3 = strcmp(Kelime,'in');
        Kelime4 = strcmp(Kelime,'of');
        Kelime5 = strcmp(Kelime,'or');
        Kelime6 = strcmp(Kelime,'and');
        Kelime7 = strcmp(Kelime,'a');
        Kelime8 = strcmp(Kelime,'is');
        Kelime9 = strcmp(Kelime,'The');
        Kelime10 = strcmp(Kelime,'A');
        Kelime11 = strcmp(Kelime,'to');
        Kelime12 = strcmp(Kelime,'for');
             
            if ~( Kelime1==1 || Kelime2==1  || Kelime3==1  || Kelime4==1 || Kelime5==1  || Kelime6==1  || Kelime7==1 || Kelime8==1|| Kelime9==1 || Kelime10==1 || Kelime11==1 || Kelime12==1 )
        
                science_class{i,j}= science{i,j};

            end
    end
end

emptyCells = cellfun('isempty', science_class); 
science_class(emptyCells) = [];

for i=1:10

    for j=1:294
        
        Kelime = technology{i,j};
        Kelime1 = strcmp(Kelime,'the');
        Kelime2 = strcmp(Kelime,'on');
        Kelime3 = strcmp(Kelime,'in');
        Kelime4 = strcmp(Kelime,'of');
        Kelime5 = strcmp(Kelime,'or');
        Kelime6 = strcmp(Kelime,'and');
        Kelime7 = strcmp(Kelime,'a');
        Kelime8 = strcmp(Kelime,'is');
        Kelime9 = strcmp(Kelime,'The');
        Kelime10 = strcmp(Kelime,'A');
        Kelime11 = strcmp(Kelime,'to');
        Kelime12 = strcmp(Kelime,'for');
             
            if ~( Kelime1==1 || Kelime2==1  || Kelime3==1  || Kelime4==1 || Kelime5==1  || Kelime6==1  || Kelime7==1 || Kelime8==1|| Kelime9==1 || Kelime10==1 || Kelime11==1 || Kelime12==1 )
        
                technology_class{i,j}= technology{i,j};

            end
    end
end

emptyCells = cellfun('isempty', technology_class); 
technology_class(emptyCells) = [];


for i=1:10

    for j=1:294
        
        Kelime = sport{i,j};
        Kelime1 = strcmp(Kelime,'the');
        Kelime2 = strcmp(Kelime,'on');
        Kelime3 = strcmp(Kelime,'in');
        Kelime4 = strcmp(Kelime,'of');
        Kelime5 = strcmp(Kelime,'or');
        Kelime6 = strcmp(Kelime,'and');
        Kelime7 = strcmp(Kelime,'a');
        Kelime8 = strcmp(Kelime,'is');
        Kelime9 = strcmp(Kelime,'The');
        Kelime10 = strcmp(Kelime,'A');
        Kelime11 = strcmp(Kelime,'to');
        Kelime12 = strcmp(Kelime,'for');
             
            if ~( Kelime1==1 || Kelime2==1  || Kelime3==1  || Kelime4==1 || Kelime5==1  || Kelime6==1  || Kelime7==1 || Kelime8==1|| Kelime9==1 || Kelime10==1 || Kelime11==1 || Kelime12==1 )
        
                sport_class{i,j}= sport{i,j};

            end
    end
end

emptyCells = cellfun('isempty', sport_class); 
sport_class(emptyCells) = [];

% for i=1:size(Vocabulary)
%    for j=1:size(Vocabulary)
%     Kelime_Tekrar = Vocabulary(i);
%     
%    end
% end
    
% Vocabulary deki toplam sözcük sayýsýný bulma
% Toplam_Sozcuk_Sayisi = 0;
% 
% for i=1:43
%     
%     for j=1:294
%       
%         Kelime = Vocabulary{i,j};
%         
%         Bos_mu = isempty(Kelime);
%         
%         if Bos_mu == 0
%             
%             Toplam_Sozcuk_Sayisi = Toplam_Sozcuk_Sayisi +1;
%             
%         end
%         
%     end
% end
%         
% display(Toplam_Sozcuk_Sayisi);
