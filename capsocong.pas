PROGRAM CapsoCong;
TYPE mang=ARRAY[0..100] OF INTEGER;
VAR L,T,A,B:mang;
    q,w,d,n,m,j,i,jmax,min,max,vtmax,dmax,vtm:INTEGER;
PROCEDURE Init;
 BEGIN
  Write('Nhap n= ');Readln(n);
  FOR i:=1 TO n DO 
  begin
    write('phan tu thu',i);
    Readln(a[i]);
    END;
  q:=a[1];
  w:=a[1];
  FOR i:=1 TO n DO
   BEGIN
    IF a[i]<q THEN q:=a[i];
    IF a[i]>w THEN w:=a[i];
   END;
 END;
PROCEDURE minmax(a:mang);
VAR i:INTEGER;
BEGIN
  max:=a[1];
  min:=a[1];
  FOR i:=2 TO n DO
   BEGIN
    IF a[i]>max THEN
     BEGIN
      max:=a[i];
      vtmax:=i;
       END;
   END;
END;
PROCEDURE PrintResult;
 BEGIN
  write(A[vtm],' ');
 i:=B[vtm];
  WHILE i<>n+1 DO
   BEGIN
    write(A[i],' ');
    i:=B[i];
   END;
   writeln;
  END;
 PROCEDURE Install;
  BEGIN
    FOR d:=q TO w DO
       BEGIN 
               L[n+1]:=1;
               A[0]:=A[1]-d;
               A[n+1]:=A[n]+d;
               FOR i:=n DOWNTO 0 DO 
               BEGIN
                 jmax:=n+1;
                    FOR j:=i+1 TO n+1 DO
                     IF (A[j]-A[i]=d) AND (L[j]>L[jmax]) THEN jmax:=j;
                 L[i]:=L[jmax]+1;
                 T[i]:=jmax;
               END;
             minmax(L);
          IF max>dmax THEN 
          BEGIN 
            dmax:=max;
            vtm:=vtmax; 
            B:=T;
            END;
      END;
       PrintResult;
 END;
BEGIN
 Init;
 dmax:=0;
 Install;
 readln
 END.