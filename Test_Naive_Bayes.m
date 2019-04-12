function [Score_Matrix] = Test_Naive_Bayes (Business_Sayisi,Science_Sayisi,Technology_Sayisi,Sport_Sayisi,Sozluk, Test_Data,business_class,science_class,technology_class,sport_class)

Sozcuk_Sayisi = length(Sozluk);

Matris_Boyutu = size(Test_Data);

for i=1:Matris_Boyutu(1)
    
Total_Score_Class_Business = 0;
Total_Score_Class_Science = 0;
Total_Score_Class_Technology = 0;
Total_Score_Class_Sport = 0;
    
    
    for j=1:Matris_Boyutu(2)
               
        Bosmu = isempty(Test_Data{i,j});
               
        if Bosmu == 0
            
            Kelime_Varmi=ismember(Test_Data{i,j},Sozluk);
            
            if Kelime_Varmi == 1                                            
                
                Kac_Tane_Business = ismember(business_class,Test_Data{i,j});
                
                Sayisi_Business = sum (Kac_Tane_Business);
                
                Kelime_Sayisi_Business = Sayisi_Business;
                
                Kac_Tane_Science = ismember(science_class,Test_Data{i,j});
                
                Sayisi_Science = sum (Kac_Tane_Science);
                
                Kelime_Sayisi_Science = Sayisi_Science;   
                
                Kac_Tane_Technology = ismember(technology_class,Test_Data{i,j});
                
                Sayisi_Technology = sum (Kac_Tane_Technology);
                
                Kelime_Sayisi_Technology = Sayisi_Technology;  
                
                Kac_Tane_Sport = ismember(sport_class,Test_Data{i,j});
                
                Sayisi_Sport = sum (Kac_Tane_Sport);
                
                Kelime_Sayisi_Sport = Sayisi_Sport;                 
                
            else 
                
               Kelime_Sayisi_Sport = 0; 
               Kelime_Sayisi_Technology = 0;
               Kelime_Sayisi_Science = 0;
               Kelime_Sayisi_Business = 0;
                                
            end
                                                                                        
        display (Kelime_Sayisi_Business);
        display (Kelime_Sayisi_Science);
        display (Kelime_Sayisi_Technology);
        display (Kelime_Sayisi_Sport);
        
        Score_Class_Business = log10((1+Kelime_Sayisi_Business)/(Business_Sayisi+Sozcuk_Sayisi));
        
        Total_Score_Class_Business = Score_Class_Business + Total_Score_Class_Business;
        
        Score_Class_Science = log10((1+Kelime_Sayisi_Science)/(Science_Sayisi+Sozcuk_Sayisi));
        
        Total_Score_Class_Science = Score_Class_Science + Total_Score_Class_Science;
        
        Score_Class_Technology = log10((1+Kelime_Sayisi_Technology)/(Technology_Sayisi+Sozcuk_Sayisi));
        
        Total_Score_Class_Technology = Score_Class_Technology + Total_Score_Class_Technology;
        
        Score_Class_Sport = log10((1+Kelime_Sayisi_Sport)/(Sport_Sayisi+Sozcuk_Sayisi));
        
        Total_Score_Class_Sport = Score_Class_Sport + Total_Score_Class_Sport;
        

        
        end
        
    end
    
        Score_Matrix(i,1) = (Total_Score_Class_Business)*1/4;
        
        Score_Matrix(i,2) = (Total_Score_Class_Science)*1/4;
        
        Score_Matrix(i,3) = (Total_Score_Class_Technology)*1/4;
        
        Score_Matrix(i,4) = (Total_Score_Class_Sport)*1/4;     
    
   
    
end