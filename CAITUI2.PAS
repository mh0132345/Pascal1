PROGRAM caitui;
CONST maxn=100;maxv=100;
fi='bag.inp';
fo='bag.out';
VAR fx:ARRAY [0..maxn,0..maxv] OF WORD;
w,v:ARRAY[1..maxn] OF BYTE;
m,n,v1,i,j:INTEGER;
g,f:TEXT;
PROCEDURE input;
BEGIN
assign(g,fi);
{$I-}
reset(g);
{$I+}
IF ioresult<>0 THEN halt(ioresult);
readln(g,n,m);
FOR i:=1 TO n DO readln(g,w[i],v[i]);
END;
FUNCTION getmax(v1,v2:WORD):WORD;
BEGIN
IF v1>v2 THEN getmax:=v1
ELSE getmax:=v2;
END;
PROCEDURE chon;
BEGIN
fillchar(f,sizeof(f),0);
FOR i:=1 TO n DO
FOR j:=1 TO m DO
IF j>=w[i] THEN fx[i,j]:=getmax(fx[i-1,j-w[i]]+v[i],fx[i-1,j])
ELSE fx[i,j]:=fx[i-1,j];
END;
PROCEDURE output;
VAR max,v0,n0,v1:WORD;
BEGIN
assign(f,fo);
rewrite(f);
max:=0;
v0:=0;
n0:=0;
FOR i:=1 TO m DO
IF max<fx[n,i] THEN
BEGIN
max:=fx[n,i];
v0:=i
END;
v1:=v0;
FOR i:=n DOWNTO 1 DO
IF fx[i,v0]<>fx[i-1,v0] THEN
BEGIN
inc(n0);
write(f,i,' ',w[i],' ',v[i]);
v0:=v0-w[i]
END;
write(f,'chon',n0,' tongv=',v1,'tong gia tri',max);
close(f);
END;
BEGIN
input;
chon;
output
END.