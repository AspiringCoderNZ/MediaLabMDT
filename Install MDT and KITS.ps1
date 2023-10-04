#Installing Windows ADK
    #Change directory to specified file folder witn Windows ADK
    cd "C:\APPISO\Windows Kits\10\ADK"
    #Launch & execute program
    Start-Process -FilePath adksetup.exe -ArgumentList "/s" -Wait

#Installing Windows PE
    #Change directory to file folder
    cd "C:\APPISO\windows kits\10\ADKWinPEAddons"
    Start-Process -FilePath adkwinpesetup.exe -ArgumentList "/s" -wait
    #Launch and execute program
    cd "C:\mdtmsi"
    Start-Process -FilePath msiexec.exe -ArgumentList "/i `"mdt.msi`" /quiet /norestart" -wait

    $mdtInstallerPath = "C:\mdtmsi"
    #Silent Install
    Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$mdtInstallerPath`" /quiet /norestart" -Wait

