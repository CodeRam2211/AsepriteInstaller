$InstallDirectory = Read-Host "Enter Install Location example C:\ "
$InstallDirectoryAseprite = $InstallDirectory+"aseprite\"
if(Test-Path $InstallDirectoryAseprite)
{
    Write-Host "Folder Exists" -f Green
    Set-Location $InstallDirectoryAseprite
    git pull
    git submodule update --init --recursive
}
else
{
    Write-Host "Hello"
    Set-Location  -Path $InstallDirectory
    git clone --recursive https://github.com/aseprite/aseprite.git
 
}
if(!(Test-Path ($InstallDirectory+"\Ninja")))
{
    mkdir ($InstallDirectory+"\Ninja")
    Set-Location ($InstallDirectory+"\Ninja")
    git clone https://github.com/ninja-build/ninja.git
}