A=[10,4,5;1,20,6;5,2,24];
[row,col] = size(A);
    rb=row*2;
    cb=col*2;

B=zeros(rb,cb);
 j=0;
 i=1;
 k=rb;
 x=row-1;
while(i<=row*col)
       j=j+1;
       while(j<=rb*cb)
              B(j)=A(i);
              j=j+1;
              B(j)=A(i);
              break;
       end
             
             if(j==k)
                 i=i-x;
                 k=k+rb*2;
             else
                  i=i+1;
             end
 
end
display(B);
