program chip8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils,
  raylib in 'raylib\raylib.pas',
  raymath in 'raylib\raymath.pas',
  rlgl in 'raylib\rlgl.pas',
  chip8Main in 'chip8Main.pas';

begin
  try
    SetCurrentDir(ExtractFilePath(ParamStr(0)));
	
    Main();
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
