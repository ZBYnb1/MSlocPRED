clear
clc
[b1,head]=test1;
load model2.mat
datastore = imageDatastore('testsample', 'IncludeSubfolders',true, 'LabelSource','foldernames');
datastoreTest=datastore.Files;
imdsTest = imageDatastore(datastoreTest, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

inputSize = new_layers(1).InputSize;
augimdsTest = augmentedImageDatastore(inputSize(1:2),imdsTest);

[label,conf] = classify(net_train,augimdsTest);
YPred = label;

p1=find(YPred=='100000000_training1 ');
p2=find(YPred=='010000000_training2 ');
p3=find(YPred=='000010000_training3 ');
p4=find(YPred=='110000000_training4 ');
p5=find(YPred=='100100000_training5 ');
p6=find(YPred=='100000100_training6 ');
p7=find(YPred=='100000001_training7 ');
p8=find(YPred=='110010000_training8 ');
p9=find(YPred=='110000100_training9 ');
p10=find(YPred=='110000110_training10 ');
p11=find(YPred=='111101000_training11 ');
p12=find(YPred=='111100100_training12 ');
p13=find(YPred=='111101100_training13 ');
p14=find(YPred=='111100110_training14 ');
p15=find(YPred=='111100101_training15 ');
p16=find(YPred=='111101110_training16 ');
p17=find(YPred=='111101101_training17 ');
p18=find(YPred=='111101111_training18 ');
N=size(YPred,1); YPred1=zeros(1,N);
N1=size(p1,1);N2=size(p2,1);N3=size(p3,1);N4=size(p4,1);N5=size(p5,1);N6=size(p6,1);
N7=size(p7,1);N8=size(p8,1);N9=size(p9,1);N10=size(p10,1);N11=size(p11,1);N12=size(p12,1);
N13=size(p13,1);N14=size(p14,1);N15=size(p15,1);N16=size(p16,1);N17=size(p17,1);N18=size(p18,1);

for i=1:N1
    YPred1(:,p1(i,1))=1;
end
for i=1:N2
    YPred1(:,p2(i,1))=2;
end
for i=1:N3
    YPred1(:,p3(i,1))=3;
end
for i=1:N4
    YPred1(:,p4(i,1))=4;
end
for i=1:N5
    YPred1(:,p5(i,1))=5;
end
for i=1:N6
    YPred1(:,p6(i,1))=6;
end
for i=1:N7
    YPred1(:,p7(i,1))=7;
end
for i=1:N8
    YPred1(:,p8(i,1))=8;
end
for i=1:N9
    YPred1(:,p9(i,1))=9;
end
for i=1:N10
    YPred1(:,p10(i,1))=10;
end
for i=1:N11
    YPred1(:,p11(i,1))=11;
end
for i=1:N12
    YPred1(:,p12(i,1))=12;
end
for i=1:N13
    YPred1(:,p13(i,1))=13;
end
for i=1:N14
    YPred1(:,p14(i,1))=14;
end
for i=1:N15
    YPred1(:,p15(i,1))=15;
end
for i=1:N16
    YPred1(:,p16(i,1))=16;
end
for i=1:N17
    YPred1(:,p17(i,1))=17;
end
for i=1:N18
    YPred1(:,p18(i,1))=18;
end

clc;
for m=1:N    
    if YPred1(m)==1
        fprintf('>%s \n',head{1,m});
        fprintf(2,'Exosome\n');
    else if YPred1(m)==2
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Nucleus\n');
    else if YPred1(m)==3
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Cytoplasm\n');
    else if YPred1(m)==4
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus\n');
    else if YPred1(m)==5
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Chromatin\n');
    else if YPred1(m)==6
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Cytosol,ER\n');
    else if YPred1(m)==7
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Ribosome\n');
    else if YPred1(m)==8
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Cytoplasm\n');
    else if YPred1(m)==9
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Cytosol\n');
    else if YPred1(m)==10
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Cytosol,Membrane\n');
    else if YPred1(m)==11
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Nucleolus,\n');  
    else if YPred1(m)==12
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Cytosol\n'); 
    else if YPred1(m)==13
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Nucleolus,Cytosol\n'); 
    else if YPred1(m)==14
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Cytosol,Membrane\n'); 
    else if YPred1(m)==15
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Cytosol,Ribosome\n'); 
    else if YPred1(m)==16
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Nucleolus,Cytosol,Membrane\n'); 
    else if YPred1(m)==17
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Nucleolus,Cytosol,Ribosome\n'); 
    else if YPred1(m)==18
            fprintf('>%s \n',head{1,m});
            fprintf(2,'Exosome,Nucleus,Nucleoplasm,Chromatin,Nucleolus,Cytosol,Membrane,Ribosome\n'); 
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
end