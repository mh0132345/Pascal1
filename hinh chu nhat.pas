Program HINH_CHU_NHAT;
Uses Crt;
Var a,b,s,c: real; Begin
 Clrscr;
Writeln('TINH DIEN TICH & CHU VI HINH CHU NHAT');
Write('Nhap chieu dai='); readln(a);
Write('Nhap chieu rong=');readln(b);
s:=a*b;
c:=(a+b)*2;
Writeln('Dien tich hinh chu nhat la:’,s:6:2);
Writeln('Chu vi hinh chu nhat:',c:6:2); Readln;
End.
 
