clc;
clear all;
close all;

[head b1]=fastaread('example.txt');
%--------------------------------------------
NC=35;
Np1=length(b1);
for m=1:Np1
    M=length(b1{1,m});
    P1=b1{1,m}(1:NC); 
    P2=b1{1,m}(M-NC+1:M);
    b1{1,m}=[P1,P2];
end
b1=b1';
writecell(b1,'Test.txt');