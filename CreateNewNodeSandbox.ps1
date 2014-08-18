$datetime = [DateTime]::Now.toString('yyyy-MM-dd_HH-mm-ss');
$WorkingFolder = 'C:\SandBox\'+$datetime;
mkdir $WorkingFolder;

$Packages = '{
  "name": "sandbox",
  "description": "sandbox",
  "version": "0.0.1",
  "private": true,
  "dependencies": {
    "express": "4.x",
	"jade": "*",
	"ejs": "~1.0.0"
  }
}
'
$ServerJs = "var express = require('express');
var http = require('http');
var app = express();
app.set('port', process.env.PORT || 3000);
app.engine('html', require('ejs').renderFile);
app.get('/',function(req,res)
{
  res.render('index.html');
})

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
";
$IndexHtml  = "<h2>
  Sandbox Up!
</h2>
";

cd $WorkingFolder;
mkdir Views;
$IndexHtml | out-file Views/index.html -Encoding ASCII;
$ServerJs | out-file server.js -Encoding ASCII;
$Packages | out-file package.json -Encoding ASCII;

Start-Process powershell -ArgumentList "cd $WorkingFolder;npm install; node server.js;";
Write-Host "Waiting for environment to set up...";
Start-Sleep -s 7;
start "http://localhost:3000";
