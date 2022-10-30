program main;
{$mode delphi}

var
  roman: string;
  z,num,I,V,X,L,C,D,M: longint;
  y: char;
begin
  //intialization
  I:=1;
  V:=5;
  X:=10;
  L:=50;
  C:=100;
  D:=500;
  M:=1000;
  num:=0;

  //main program
  writeln('Enter Roman number that should be converted to decimal'); //enter roman number
  readln(roman); //read roman number

  //make everything uppercase
  roman:=upcase(roman);

  //start loop
  for z := 1 to Length(roman) do
    begin
         y:=roman[z]; //get a sequential char in the string with the help of for incrementer

         //case
         case y of
           'I': num:=num+I;
           'V': num:=num+V;
           'X': num:=num+X;
           'L': num:=num+L;
           'C': num:=num+D;
           'D': num:=num+C;
           'M': num:=num+M;
         else

           //If its not the in the CASE exit the program with a output
           writeln('Did you do the correct input?');
           writeln('');
           writeln('');
           writeln('');
           writeln('The input: ', roman);
           writeln('');
           writeln('');
           writeln('');
           writeln('');
           writeln('Press any key to continue....');
           readln;
           exit;
         end;
    end;
  writeln('Decimal Value for Roman ', roman, ' is ',num);
  readln;
end.

