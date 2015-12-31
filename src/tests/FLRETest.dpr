program FLRETest;
{$ifdef fpc}
 {$mode delphi}
{$endif}
{$ifdef win32}
 {$apptype console}
{$endif}
{$ifdef win64}
 {$apptype console}
{$endif}

uses
  SysUtils,
  Classes,
  FLRE in '..\FLRE.pas',
  FLREUnicode in '..\FLREUnicode.pas',
  UnitTestGlobals in 'UnitTestGlobals.pas',
  UnitReplaceTests in 'UnitReplaceTests.pas';

begin
 ExecuteReplaceTests;
{$ifndef fpc}
 if DebugHook<>0 then begin
  readln;
 end;
{$endif}
end.
