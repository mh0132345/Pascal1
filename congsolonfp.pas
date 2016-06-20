PROGRAM congsolon;
VAR a,b:ansistring;
FUNCTION Cong(s1,s2:Ansistring):AnsiString;
VAR tam,t1,t2,x,i,j,nho,d,l:INTEGER;
     s3,s:Ansistring;
  BEGIN
   i:=length(s1);
   j:=length(s2);
   nho:=0;
   Delete(s3,1,length(s3));
   REPEAT
     Val(s1[i],t1,x);
     Val(s2[j],t2,x);
     tam:=(t1+t2+nho) MOD 10;
     Str(tam,s);
     s3:=s+s3;
     nho:=(t1+t2+nho) DIV 10;
     dec(i);
     dec(j);
   UNTIL (j=0);
     IF (i=0) AND (j=0) AND (nho<>0) THEN
       BEGIN
         Str(nho,s);
         s3:=s+s3;
       END;
          IF i<>0 THEN
            BEGIN
             IF i=1 THEN
                 s3:=s1[i]+s3
             ELSE

                  FOR l:=i DOWNTO 1 DO
                    s3:=s1[l]+s3;
             END;

   Cong:=s3;
  END;
  BEGIN
    write('nhap 2 so');
    readln(a,b);
    writeln(Cong(a,b));
    readln
    END.

