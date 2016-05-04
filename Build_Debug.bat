@echo OFF
echo 		"Building: Revit Plugin Debug|x86"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\RevitPlugin\BoldarcRevitPlugin\BoldarcRevitPlugin.sln" /rebuild "Debug|x86" 
echo 				Complete.
echo 		"Building: Revit Plugin Debug|x64"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\RevitPlugin\BoldarcRevitPlugin\BoldarcRevitPlugin.sln" /rebuild "Debug|x64"
echo 				Complete.
echo		"Building: Unreal Project Boldarc Ware Debug x86"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.sln" /build "DebugGame|Win32"
echo				Complete.
echo 		"Building: Unreal Project Boldarc Ware Debug x64"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.sln" /build "DebugGame|Win64"
echo				Complete.
echo 				**All done!**
pause 