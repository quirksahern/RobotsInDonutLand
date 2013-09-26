function location=initLocations()
n=1;
field1 ='loc'; value1 = [0 0];
while n<9
location(n) = struct(field1, value1);
n=n+1;
end
end

