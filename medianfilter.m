function J = medianfilter(I)
if (length(size(I))==3)
    I=rgb2gray(I);
end

 [r,c]=size(I);
 J=ones(r,c);
 
for x=2:r-1
    for y=2:c-1
        m=[];
        for i=-1:1
            for j=-1:1
                a=I(x+i,y+j);
                m=[m a];
            end
        end
        
        J(x,y)=median(m);
    end
end
 J=uint8(J);