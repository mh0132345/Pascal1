PROGRAM xau_thuan_nhat;
USES crt;
VAR s,ss,st,si:STRING; i,j,l:INTEGER;
FUNCTION kttn(s:STRING):BOOLEAN;
 VAR x:CHAR; ok:BOOLEAN;
 BEGIN
  kttn:=TRUE;
  FOR i:=1 TO length(s) DO
   s[i]:=upcase(s[i]);
  FOR i:=1 TO length(s) DO
   BEGIN
    ok:=FALSE;
    FOR x:='A' TO 'Z' DO
     IF s[i]=x THEN ok:=TRUE;
    IF NOT ok THEN BEGIN kttn:=FALSE;break;END;
   END;
 END;
PROCEDURE nen(s:STRING;VAR st:STRING);
 BEGIN
  ss:='';
  WHILE s<>'' DO
   BEGIN
    i:=1;
    WHILE (s[i+1]=s[1])AND(i<length(s)) DO
     inc(i);
    IF i>1 THEN
     BEGIN
      str(i,si);
      ss:=ss+s[1]+si;
     END
    ELSE ss:=ss+s[1];
    delete(s,1,i);
   END;

  s:=ss;l:=2;
  WHILE l<length(s) DO
   BEGIN
    i:=1;
    WHILE i<=length(s)-l DO
     BEGIN
      si:=copy(s,i,l);
      j:=i+l;
      ss:=copy(s,j,l);
      WHILE ss=si DO
       BEGIN
        j:=j+l;
        ss:=copy(s,j,l);
       END;
      IF j=i+l THEN inc(i)
      ELSE
       BEGIN
        str((j-i)DIV l,ss);
        delete(s,i,j-i);
        si:='('+si+')'+ss;
        insert(si,s,i);
        i:=i+l+2+length(ss);
       END;
     END;
    inc(l);
   END;
  st:=s;
 END;
FUNCTION ktcd(st:STRING):BOOLEAN;
 BEGIN
  ktcd:=FALSE;
  FOR i:=1 TO length(st) DO
   IF st[i]='(' THEN BEGIN ktcd:=TRUE; break; END;
 END;
PROCEDURE giainen(st:STRING;VAR s:STRING);
 VAR d,c:BYTE; code:INTEGER;
 BEGIN
  WHILE ktcd(st) DO
   BEGIN
    i:=1; c:=0;
    WHILE st[i]<>'(' DO inc(i);
    d:=1; j:=i+1;
    WHILE c<d DO
     BEGIN
      inc(j);
      IF st[j]='(' THEN inc(d);
      IF st[j]=')' THEN inc(c);
     END;
    si:=copy(st,i,j-i+1);
    delete(st,i,j-i+1);
    delete(si,1,1);
    delete(si,length(si),1);
    j:=i;
    WHILE st[j+1] IN['0'..'9'] DO inc(j);
    ss:=copy(st,i,j-i+1);
    delete(st,i,j-i+1);
    val(ss,l,code);
    FOR j:=1 TO l DO
     insert(si,st,i);
   END;
  i:=1;
  WHILE i<=length(st) DO
   BEGIN
    inc(i);
    IF st[i] IN['0'..'9'] THEN
     BEGIN
      j:=i;
      WHILE st[j+1] IN['0'..'9'] DO inc(j);
      ss:=copy(st,i,j-i+1);
      delete(st,i,j-i+1);
      val(ss,l,code);
      ss:=st[i-1];
      FOR j:=1 TO l-1 DO insert(ss,st,i);
      i:=i+l-1;
     END;
   END;

  s:=st;
 END;
BEGIN
 clrscr;
 write('nhap chuoi: ');readln(s);
 IF kttn(s) THEN
  BEGIN
   nen(s,st);
   writeln('Chuoi sau khi nen la: ',st);
   giainen(st,s);
   writeln('Chuoi sau khi giai nen la: ',s);
  END
 ELSE write('Xau ko thuan nhat.');
readln;
END. 