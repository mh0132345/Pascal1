PROGRAM robot;
CONST max=11;
VAR f,d:ARRAY [1..max,1..max] OF STRING;
n,i,j,he10,coso,tg,x:INTEGER;
s:STRING;
fi,fo:TEXT;
PROCEDURE input;
BEGIN
assign(fi,'robot.inp');
reset(fi);
readln(fi,n);
FOR i:=1 TO n DO
FOR j:=1 TO n DO 
readln(fi,d[i,j]);
END;
FUNCTION min(s1,s2:STRING):BOOLEAN;
BEGIN
    IF length(s1)<length(s2) THEN s:=s1
    ELSE s:=s2;
    FOR i:=1 TO length(s) DO
    IF (s1[i]='1') AND (s2[i]='0') THEN BEGIN s:=s2;break;END
    ELSE IF (s1[i]='0') AND (s2[i]='1') THEN BEGIN s:=s1; break;END;
    IF s=s1 THEN min:=TRUE
    ELSE min:=FALSE;
END;
PROCEDURE optimize; 
BEGIN
    f[1,1]:=d[1,1];
    FOR i:=1 TO n DO
    FOR j:=1 TO n DO
    IF (i-1>0) AND (j-1>0) THEN
    BEGIN
        IF min(f[i,j-1],f[i-1,j]) THEN f[i,j]:= f[i,j-1]+d[i,j]
        ELSE f[i,j]:=f[i-1,j];
        END
    ELSE IF (j-1=0)AND (i-1>0) THEN f[i,j]:=f[i-1,j]+d[i,j]
         ELSE IF j-1>0 THEN BEGIN f[i,j]:=f[i,j-1]+d[i,j];
         END; 
END;

PROCEDURE chuyen;
BEGIN
    he10:=0;
    coso:=0;
    FOR i:=length(f[n,n]) DOWNTO 1 DO
    BEGIN
        IF coso>0 THEN coso:=coso*2
        ELSE coso:=1;
        val(f[n,n][i],tg,x);
        he10:=he10+tg*coso;
    END;
END;
  PROCEDURE output;
    BEGIN
        assign(fo,'robot.out');
        rewrite(fo);
        write(fo,he10);
        close(fi);
        close(fo);
    END;
    BEGIN
        input;
        optimize;
        chuyen;
        output;
    END.
    
         
            
        
       
