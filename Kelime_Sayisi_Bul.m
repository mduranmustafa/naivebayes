function[Business_Sayisi,Science_Sayisi,Technology_Sayisi,Sport_Sayisi] = Kelime_Sayisi_Bul(Sozluk,Business,Science,Technology,Sport)

Business_Sayisi=0;
Science_Sayisi=0;
Technology_Sayisi=0;
Sport_Sayisi=0;


for i=1:length(Business)
   
    for j=1:length(Sozluk) 
        
        Esitmi = strcmp(Business(i),Sozluk(j));

        if Esitmi==1
            
            Business_Sayisi = Business_Sayisi + 1;
            
        end
    end
    
end

for i=1:length(Science)
   
    for j=1:length(Sozluk) 
        
        Esitmi = strcmp(Science(i),Sozluk(j));
        
        if Esitmi==1
            
            Science_Sayisi = Science_Sayisi + 1;
            
        end
    end
    
end

for i=1:length(Technology)
   
    for j=1:length(Sozluk) 
        
        Esitmi = strcmp(Technology(i),Sozluk(j));
        
        if Esitmi==1
            
            Technology_Sayisi = Technology_Sayisi + 1;
            
        end
    end
    
end

for i=1:length(Sport)
   
    for j=1:length(Sozluk) 
        
        Esitmi = strcmp(Sport(i),Sozluk(j));
        
        if Esitmi==1
            
            Sport_Sayisi = Sport_Sayisi + 1;
            
        end
    end
    
end