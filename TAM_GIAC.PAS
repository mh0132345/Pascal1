program tamgiac;
uses crt;
var a,b,c,S,p,CV:real;
begin
clrscr;
write('nhap a,b,c');
readln(a,b,c);
if ((a+b)>c) and((b+c)>a) and((a+c)>b) and(a+b>0) and(b+c>0) and (c+a>0) then
 begin
CV:= a+b+c;
p:= Cv/2;
S:= SQRT(p*(p-a)*(p-b)*(p-c));
writeln('chu vi la', CV:6:2);
writeln('dien tich la', S:6:2);
end
else write('ko co tam giac');
readln
end.
