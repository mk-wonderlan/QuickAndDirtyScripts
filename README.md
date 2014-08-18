QuickAndDirtyScripts
====================



Setting up a quick express node sandbox with a single route / => index.html using ejs 
--Requires: node.js, npm, powershell v2/3.

The script creates the following files and folders:
C:\SandBox   -Folder

C:\SandBox\[DateTimeStamp] -Folder

C:\SandBox\[DateTimeStamp]\Views   -Folder.

C:\SandBox\[DateTimeStamp]\server.js  -node main file.

C:\SandBox\[DateTimeStamp]\package.json -npm package file.

C:\SandBox\[DateTimeStamp]\Views\index.html -main html-file.


Run this in cmd:
```
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mk-wonderlan/QuickAndDirtyScripts/master/CreateNewNodeSandbox.ps1'))"
```

Or this in a powershell window with unrestricted executionpolicy:
```powershell
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mk-wonderlan/QuickAndDirtyScripts/master/CreateNewNodeSandbox.ps1'))
```
