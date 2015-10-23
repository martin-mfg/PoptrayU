unit uAccountsFormTests;

interface

uses
  TestFrameWork, uRCUtils;

type
 TTest_uAccountsForm = class(TTestCase)
 published
   procedure Test_AddRemoveAccounts;
 end;



implementation
uses SysUtils, Dialogs, System.UITypes;


procedure TTest_uAccountsForm.Test_AddRemoveAccounts;
var
  FNameOfBook : String;
begin

{
Manual Test Cases:

1. Start with no accounts
2. Add an account, edit, save
3. Delete the one account, back to no accounts
  3a. select no on the delete new account confirmation -> one account remains
  3b. repeat but select yes -> now no accounts, all fields disabled, applicable buttons disabled
4. Add several accounts, fill in random details on some.
  -> prompted to save changes when account any time add account pressed
  -> not prompted if account saved first
5. Click on a new account tab while editing. -> prompted to save
  5b. repeat with no unsaved edits, no prompt
6. click on a different screen tab (like mail) while editing -> prompted to save
  6b. repeat with no unsaved edits, no prompt.
7. Add new account, delete without saving, test each dialog option
8. Delete account from middle
9. Delete first account.
10. Reorder accounts
  -> verify account order "sticks"
  -> verify account order persists between shutting down the app
  -> verify rules are modified to continue to point to the correct higher numbered accounts
11. Delete account with rules
  -> rules changed to inactive, set to "all accounts"
  -> rules for higher number accounts shifted



}

end;


initialization
   TestFramework.RegisterTest(TTest_uAccountsForm.Suite);
end.
