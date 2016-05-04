@echo OFF
echo 		"Building: Revit Plugin Release|x86"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\RevitPlugin\BoldarcRevitPlugin\BoldarcRevitPlugin.sln" /rebuild "Release|x86" 
echo 				Complete.
echo 		"Building: Revit Plugin Release|x64"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\RevitPlugin\BoldarcRevitPlugin\BoldarcRevitPlugin.sln" /rebuild "Release|x64"
echo 				Complete.
echo		"Building: Unreal Project Boldarc Ware x86"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.sln" /build "Shipping|Win32"
echo				Complete.
echo 		"Building: Unreal Project Boldarc Ware x64"
"C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" "D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.sln" /build "Shipping|Win64"
echo				Complete.
echo 		"Packaging: Unreal Project Boldarc Ware x86"
call "D:\Program Files(x86)\Epic Games\4.10\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.uproject" -noP4 -platform=Win32 -clientconfig=Shipping -serverconfig=Shipping -cook -allmaps -stage -pak -archive -archivedirectory="D:\Joel\Packaged\32"
echo 				Complete.
echo 		"Packaging: Unreal Project Boldarc Ware x64"
call "D:\Program Files(x86)\Epic Games\4.10\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="D:\Joel\GitHub\Boldarc\BoldWare\BoldarcWare\BoldarcWare.uproject" -noP4 -platform=Win64 -clientconfig=Shipping -serverconfig=Shipping -cook -allmaps -stage -pak -archive -archivedirectory="D:\Joel\Packaged\64"
echo 				Complete.
echo		"Building 32-bit installer."
"C:\Program Files (x86)\Caphyon\Advanced Installer 12.8\bin\x86\AdvancedInstaller.com" /build "D:\Joel\AdvancedInstaller Projects\Boldarc_V-Rex32_2014.aip"
echo				Complete.
echo 		"Building 64-bit installer."
"C:\Program Files (x86)\Caphyon\Advanced Installer 12.8\bin\x86\AdvancedInstaller.com" /build "D:\Joel\AdvancedInstaller Projects\Boldarc_V-Rex64_2014.aip"
echo				Complete.
echo 				**All done!**
pause 