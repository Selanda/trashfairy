# Pre-reqs
Before running this, you'll need to do two quick setup steps:
1. Run `C:\Windows\System32\cleanmgr.exe /sageset:1` as administrator and check the boxes for the things you want cleaned every time. This creates a "preset" you'll be calling from the script/
2. Using any text editor, open the script and edit the list of drive letters after the `defrag` command to whatever matches the sytem it's being run on.

# Important Info
When running the script, you need to right-click and 'Run As Administrator' otherwise it will not be able to complete some of the steps and you will get several 'Access Denied' error messages.
