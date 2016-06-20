PROGRAM cong;
TYPE bigInt=STRING[10];
FUNCTION Cong(S1,S2:bigInt):STRING;
VAR res:bigInt;
	nho,i:INTEGER;
BEGIN
	res:=''; nho:=0;
	FOR i:=Length(S1) DOWNTO 1 DO
	BEGIN
		res:=CHAR(((BYTE(S1[i]) + BYTE(S2[i]) + nho - 96) MOD 10)+48)+res;
		nho:=(BYTE(S1[i]) + BYTE(S2[i]) + nho - 96) DIV 10;
	END;
        IF nho<>0 THEN res:=CHAR(nho+48)+res;
        nho:=0;
	Cong:=res;
END;

BEGIN
	writeln(Cong('0000001111','0000009999'));
	readln;
END.