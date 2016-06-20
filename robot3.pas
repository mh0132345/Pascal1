PROGRAM Robot_tim_duong;
USES crt;
CONST
    max=15;
VAR
    n:INTEGER;
    D,F:ARRAY[1..max,1..max] OF STRING;
   PROCEDURE Input;
VAR
    i,j:INTEGER;
BEGIN
clrscr;
    write('Nhap N : ');readln(n);
   FOR i:=1 TO n DO
        FOR j:=1 TO n DO
            BEGIN write('Nhap [',i,',',j,'] = ');readln(D[i,j]); END;
    FOR i:=1 TO n DO
        BEGIN
            FOR j:=1 TO n DO write(D[i,j],' ');
            writeln;
        END;
END;
FUNCTION Min(s1,s2:STRING):BOOLEAN;
VAR
    i:INTEGER;
    s:STRING;
BEGIN
    IF length(s1)<length(s2) THEN s:=s1
    ELSE s:=s2;
    FOR i:=1 TO length(s) DO
            IF (s1[i]='1') AND (s2[i]='0') THEN BEGIN s:=s2; break; END
            ELSE IF (s1[i]='0') AND (s2[i]='1') THEN BEGIN s:=s1; break; END;
    IF s=s1 THEN Min:=TRUE
    ELSE Min:=FALSE;
END;
PROCEDURE Optimize;
VAR
    i,j:INTEGER;
    s:STRING;
BEGIN
     F[1,1]:=D[1,1];
     FOR i:=1 TO n DO
        FOR j:=1 TO n DO
            IF (j-1>0) AND (i-1>0) THEN
                       IF Min(F[i,j-1],F[i-1,j]) THEN F[i,j]:=F[i,j-1]+D[i,j]
                       ELSE F[i,j]:=F[i-1,j]+D[i,j]                          
                        
                 
            ELSE IF (j-1<=0) AND (i-1>0) THEN F[i,j]:=F[i-1,j]+D[i,j]
            ELSE IF (j-1>0) THEN F[i,j]:=F[i,j-1]+D[i,j];
END; 
PROCEDURE chuyen; 
VAR he10,i,coso,tg,x:INTEGER;
BEGIN
    he10:=0;
    coso:=0; 
    FOR i:= length(F[n,n]) DOWNTO 1 DO
    BEGIN
        IF coso>0 THEN coso:=coso*2
        ELSE coso:=1; 
        val(F[n,n][i],tg,x);
        he10:= he10+ tg * coso ;
    END;
    writeln(he10);
    END;
BEGIN
      Input;
      Optimize;
      writeln;
      writeln(F[n,n]);
      chuyen;
readln;
END.