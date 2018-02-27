clc;
clear all;

Tot=345;
[x,c] = ReadLiver(Tot)
a = readfis('FUZZY_PROJECT_2_june.fis');
rec1=0;rec2=0;sum=0;
ugi=0;lath1 =0;lath2=0;
for i= 1:Tot
    katastash = evalfis( [x(4,i);x(3,i);x(2,i);x(5,i); x(1,i)], a);
    if katastash<-12
        if c(i) == 1
            rec1=rec1+1;
        else
            lath1=lath1+1;
        end
      sum=sum+1;
    elseif katastash>7      
        if c(i) == 2
            rec2=rec2+1;
        
        else
            lath2=lath2+1;
        end
        sum=sum+1;
    end
    
end
lath1
lath2
rec1
rec2
rec=rec1+rec2;
1-rec/sum
1-(rec+(Tot-sum))/Tot


