load train_data.mat;
load business_class_train_data.mat;
load science_class_train_data.mat;
load technology_class_train_data.mat;
load sport_class_train_data.mat;

[Vocabulary,business_class,science_class,technology_class,sport_class] = train_Naive_Bayes (train_data,business_class_train_data,science_class_train_data,technology_class_train_data,sport_class_train_data);

load sozluk.mat;
load business_temiz.mat;
load science_temiz.mat;
load technology_temiz.mat;
load sport_temiz.mat;

[Business_Sayisi,Science_Sayisi,Technology_Sayisi,Sport_Sayisi] = Kelime_Sayisi_Bul(Sozluk,business_temiz,science_temiz,technology_temiz,sport_temiz);