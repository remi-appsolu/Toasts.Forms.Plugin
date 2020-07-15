REM Commandes utiles : 
REM nuget sources Add -Name AppsoluTaxi 
REM msbuild Toasts.Forms.Plugin.sln /t:Clean;Build /p:Configuration=Release

del *.nupkg
nuget pack Misc\Toasts.Forms.Plugin.nuspec
nuget.exe push -Source "AppsoluTaxi" -ApiKey VSTS *.nupkg
