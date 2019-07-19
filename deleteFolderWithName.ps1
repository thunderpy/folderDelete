# Script to delete folder with particular name.

$oldFolder=Get-ChildItem -Recurse | Where-Object {$_.Name -like 'old'}

foreach ($old in $oldFolder){
    $item = $old.FullName
    Write-Output $item
    Remove-Item $item -Force -Recurse -ErrorAction SilentlyContinue
}


#### PowerShell Copy Item and exclude extensions. ####

#$exclude = @('*.class','*.swf','*.xml','*.trec','*.camproj')
#Copy-Item .\Political_Science\ -Recurse -Verbose -Exclude $exclude -Destination ..\Political_Science_new\