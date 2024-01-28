program nrRomane;
var
  input: char;
begin
  Write('Introduceți un număr: ');
  read(input);
  case input of 
  'I': Writeln(1);
  'V': Writeln(5);
  'X': Writeln(10);
  'L': Writeln(50);
  'C': Writeln(100);
  'D': Writeln(500);
  'M': Writeln(1000);
  else  Writeln('număr inxistent');
  end;

end.