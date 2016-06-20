PROGRAM cong_mang;
VAR a,b,c:ARRAY[0..1000] OF SHORTINT;
max,n,m:INTEGER;
PROCEDURE nhap;
VAR i:INTEGER;
BEGIN
write('nhap m,n=');readln(m,n);
fillchar(a,sizeof(a),0);
fillchar(b,sizeof(b),0);c:=b;
FOR i:=1 TO m DO
BEGIN
write('a[',i,']=');readln(a[i]);
END;
FOR i:=1 TO n DO
BEGIN
write('c[',i,']=');readln(c[i]);
END;
END;
PROCEDURE xuli;
VAR sodu,nho,tong,i:INTEGER;
BEGIN
IF m>n THEN max:=m ELSE max:=n;
IF m>n THEN FOR i:=max DOWNTO (m-n+1) DO b[i]:=c[i-m+n] ELSE
FOR i:=max DOWNTO (n-m+1) DO b[i]:=c[i-n+m];
nho:=0;
FOR i:=max DOWNTO 1 DO
BEGIN
tong:=a[i]+b[i]+nho;
sodu:=tong MOD 10;
nho:=tong DIV 10;
c[i]:=sodu;
END;
c[0]:=nho;
END;
PROCEDURE xuat;
VAR i:INTEGER;
BEGIN
IF c[0]<>0 THEN FOR i:=0 TO max DO write(c[i])
ELSE FOR i:=1 TO max DO write(c[i]);
END;
BEGIN
nhap;
xuli;
xuat;
readln;
END.