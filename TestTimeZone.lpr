program TestTimeZone;

{$I mormot.defines.inc}

uses
  {$I mormot.uses.inc}
  {$ifdef UNIX}
  cwstring, // needed as fallback if ICU is not available
  {$endif UNIX}
  sysutils,
  mormot.core.search;

var
  tz: TSynTimeZone;

begin
   // This works
   //tz := TSynTimeZone.Create;
   //try
   //  tz.LoadFromResource; // from mormot.tz.res as generated on Windows 10
   //  writeln(tz.NowToLocal('UTC'));
   //finally
   //  tz.Free;
   //end;

  // This dont works
  writeln(TSynTimeZone.Default.NowToLocal('UTC'));

  readln;
end.

