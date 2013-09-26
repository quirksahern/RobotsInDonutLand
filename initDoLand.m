
function dland=initDoLand()
a=1;
while (a<41)
    b=1;
    while (b<41)
        field1 = 'energysource'; value1 = {0};
        field2= 'corossivepatch'; value2={0};
        dland(a,b) = struct (field1,value1,field2,value2);
        dland(a,b)
        b=b+1;
    end
    a=a+1;
end
%dland();
c=1;
while(c<350)
    d = randi([1,40],1,1);
    e = randi([1,40],1,1);
    if(dland(d,e).corossivepatch == 0)
        dland(d,e).corossivepatch = dland(d,e).corossivepatch + 1;
    end
    c=c+1;
end
f=1;
while(f<3501)
    g = randi([1,40],1,1);
    h = randi([1,40],1,1);
    if(dland(g,h).corossivepatch==0)
        dland(g,h).energysource = dland(g,h).energysource + 1;
    end
    f=f+1;
end
end