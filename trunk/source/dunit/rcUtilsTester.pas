unit rcUtilsTester;

interface

uses
  TestFrameWork, uRCUtils;

type
 TTest_RCUtils = class(TTestCase)
 published
   procedure Test_SanitizeFileName;
 end;



implementation
uses SysUtils;


procedure TTest_RCUtils.Test_SanitizeFileName;
var
  subject,expected,actual : string;
begin
  subject := 'Earth: The Final Frontier?' ;
  expected := 'Earth  The Final Frontier ';
  actual := SanitizeFileName(subject);
  Check(actual = expected, actual);

  subject := '"***SPAM***"' ;
  expected := '    SPAM    ';
  actual := SanitizeFileName(subject);
  Check(actual = expected, actual);

  subject := 'this is a valid subject.' ;
  expected := 'this is a valid subject.';
  actual := SanitizeFileName(subject);
  Check(actual = expected, actual);

  subject := 'left/right, front\back' ;
  expected := 'left right, front back';
  actual := SanitizeFileName(subject);
  Check(actual = expected, actual);

  subject := 'hi: who''s it gonna be? | not me! that''s who!' ;
  expected := 'hi  who''s it gonna be    not me! that''s who!';
  actual := SanitizeFileName(subject);
  Check(actual = expected, actual);
end;


initialization
   TestFramework.RegisterTest(TTest_RCUtils.Suite);
end.
