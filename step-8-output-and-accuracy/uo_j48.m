a=xlsread('dataset3.xlsx')
f=readfis('P1unoptimize.fis')
for i=1:31
    k=evalfis([a(i,1) a(i,2) a(i,3) a(i,4) a(i,5)],f)
    if k<=0.4592
        a(i,7)=0
    else
        a(i,7)=1
    end
end
   xlswrite('output-j48.xlsx',a)
 
a=xlsread('output-j48.xlsx')
count1=0
for i=1:31
    exp=a(i,6)
    pred=a(i,7)
    if exp==pred
        count1=count1+1
    end
end
accuracy=(count1/31)*100
fprintf('%f\n',accuracy )

