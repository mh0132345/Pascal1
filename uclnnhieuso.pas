PROGRAM ucln_nhieuso;
USES crt;
VAR x, y, i, n, ucln, bcnn: LONGINT;
  a: ARRAY[1..100] OF INTEGER;
FUNCTION h_ucln(x,y:INTEGER):INTEGER;  
VAR t:INTEGER;
BEGIN  
    t:=x MOD y;
 WHILE t<>0 DO BEGIN
    t:=x MOD y;
    y:=x;
    x:=t
    END;
 h_ucln:=y;
END;
BEGIN
 clrscr;
 REPEAT
  write('Nhap N (N>=2): ');
  readln(n);
 UNTIL(n>=2);
 FOR i:=1 TO n DO
 BEGIN
  write('Phan tu thu ',i,' = ');
  readln(a[i]);
 END;
 ucln:=h_ucln(a[1],a[2]);
 bcnn:=(a[1]*a[2]) DIV ucln;
 FOR i:=3 TO n DO
 BEGIN
  ucln:=h_ucln(bcnn,a[i]);
  bcnn:=(bcnn*a[i]) DIV ucln;
 END;     
 write('ucln la',ucln);
 writeln('bcnn la: ',bcnn);
 readln;
END.