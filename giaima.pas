PROGRAM Mahoaxau ;
TYPE mang=ARRAY[1..100] OF INTEGER;
VAR s,st,sst:STRING;
X:ARRAY[1..100] OF STRING;
L:mang;
i,j,d,k:INTEGER;
FUNCTION max(L:mang):INTEGER;
 VAR h,m:INTEGER;
  BEGIN
   m:=0;
   FOR h:=1 TO d DO  IF L[h]>m THEN m:=L[h];
    max:=m;
   END;
PROCEDURE Init;
VAR h:INTEGER;
 BEGIN
  Write('Nhap xau:');Readln(s);
  st:=s+#32;
  i:=0;
   WHILE (pos(#32,st)<>0) DO
    BEGIN
     inc(i);
     X[i]:=Copy(st,1,pos(#32,st));
     Delete(st,1,pos(#32,st));
    END;
      d:=i;
      sst:='';
      FOR j:=1 TO d DO
      Delete(X[j],length(X[j]),1);
    FOR j:=1 TO d DO
      L[j]:=length(X[j]);
      FOR k:=1 TO max(L) DO
       BEGIN
        FOR h:=1 TO d DO
            IF k<=L[h] THEN sst:=sst+X[h][k];
       END;
       Writeln;
      Writeln(sst);
END;
 BEGIN
  Init;
  readln
  END.