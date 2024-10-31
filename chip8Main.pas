unit chip8Main;

{$IFDEF FPC}{$MODE DELPHIUNICODE}{$CODEPAGE UTF8}{$ENDIF}

interface

procedure Main();

implementation

uses
  SysUtils,
  raylib;

const
  Size = 10;
  ScreenWidth = 64 * Size;
  ScreenHeight = 32 * Size;


procedure DrawPixelChip8(x, y: Integer);
begin
  DrawRectangle(x, y, 1 * Size, 1 * Size, WHITE);
end;


procedure Main();
begin
  SetConfigFlags(FLAG_WINDOW_HIGHDPI);
  InitWindow(ScreenWidth, ScreenHeight, UTF8String('CHIP-8 Emulator'));
  SetTargetFPS(60);

  while not WindowShouldClose() do
  begin
    BeginDrawing();
      ClearBackground(BLACK);
      DrawPixelChip8(0, 0);
    EndDrawing();
  end;

  CloseWindow();
end;
 
end.
