PROGRAM Chiakeo;
VAR d1,d2,tr,A:ARRAY[0..10000] OF LONGINT;
C:ARRAY[0..100] OF BOOLEAN;
     i,j,n,m,sum,sum1,sum2,m1:LONGINT;
PROCEDURE Init;
 BEGIN
 sum:=0;
  Write('Nhap n= ');Readln(n);
  FOR i:=1 TO n DO 
  BEGIN
    write('nhap pjhan tu thu',i);
    Readln(A[i]);   
    sum:=sum+a[i]; 
    END;
  FillChar(d1,SizeOf(d1),0);
  d1[0]:=1;
  d2:=d1;
    FillChar(C,SizeOf(C),FALSE);
END;
PROCEDURE Install;
 VAR i,j:INTEGER;
  BEGIN
   FOR i:=1 TO n DO
   BEGIN
    FOR j:=0 TO sum-a[i] DO
     IF (d1[j]=1) AND (d2[j+a[i]]=0) THEN
      BEGIN
       d2[j+a[i]]:=1;
       tr[j+a[i]]:=i;
      END;
     d1:=d2;
    END;
END;
PROCEDURE PrintResult;
 BEGIN
  m:=sum DIV 2; 
  WHILE d1[m]=0 DO dec(m);
  m1:=m;
  REPEAT
   sum1:=sum1+a[tr[m]];
   c[tr[m]]:=TRUE;
   m:=m-a[tr[m]];
  UNTIL m=0;
  Writeln;
  FOR i:=1 TO n DO
   IF NOT C[i] THEN sum2:=sum2+a[i];    
 END;
BEGIN
Init;
Install;
PrintResult;
write(n,' ');
write(sum1,' '); 
write(sum2,' ');
write(abs(sum1-sum2),' ');
writeln;
REPEAT
 Write(a[tr[m1]],' ');
 m1:=m1-a[tr[m1]];
UNTIL m1=0;
writeln;
FOR i:=1 TO n DO
IF NOT C[i] THEN write(a[i],' '); 
readln
END.