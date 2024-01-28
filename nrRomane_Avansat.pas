program nrRomane_Avansat;

var
  input: string;
  Nr, i: integer;

function OrdNr(a: char): integer;
begin
  case a of 
    'I': OrdNr:=1;
    'V': OrdNr:=5;
    'X': OrdNr:=10;
    'L': OrdNr:=50;
    'C': OrdNr:=100;
    'D': OrdNr:=500;
    'M': OrdNr:=1000
  else  
    begin
    Writeln('Eroare');
    Halt; //opreste programul.
    end;
  end;
end;


begin
  Write('Introduceți un număr: ');
  read(input);
  Nr:=0;
  for i:=1 to input.Length-1 do
  begin
   if (OrdNr(input[i]) < OrdNr(input[i+1])) then
     Nr:= Nr-OrdNr(input[i])
   else
      Nr:= Nr+OrdNr(input[i]);
  end;
  Nr:= Nr+OrdNr(input[input.Length]);
  Writeln(Nr);
  

end.