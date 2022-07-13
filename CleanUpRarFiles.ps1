  #function to clear dir of rar file types
function ClearRAR(){
$rar = ('*.r0*','*.r1*','*.r2*','*.r3*','*.r4*','*.r5*','*.r6*','*.r7*','*.r8*') 
foreach ($file in $rar){
   $count = (GCI -path $folderpath -recurse | where {$_.name -like "$file"} | measure-object).count 
   write-host "Found $count $file files"
      if ($count -gt 0) {
         write-host "Deleting $file files"
         GCI -path $folderpath $file -recurse | foreach { remove-item -path $_.fullname }
         write-host "$folder - WinRar $file deleted"
      }
   } 
}   

#Kids Movies Dir
Write-host "*******Starting Kids Movies DIR cleanup of WinRar files*******"
$folder = "Kids Movies DIR"
$folderpath = 'Z:\Media\Kids Movies\'
ClearRAR($folder,$folderpath) 

#Disney Movies Dir
Write-host "*******Starting Disney Movies DIR cleanup of WinRar files*******"
$folder = "Disney Movies DIR"
$folderpath = 'Z:\Media\Disney Movies\'
ClearRAR($folder,$folderpath) 

#Documentaries Dir
Write-host "*******Starting Documentaries Movies DIR cleanup of WinRar files*******"
$folder = "Documentaries Movies DIR"
$folderpath = 'Z:\Media\Documentaries'
ClearRAR($folder,$folderpath) 

#EDU Dir
Write-host "*******Starting EDU Movies DIR cleanup of WinRar files*******"
$folder = "EDU Movies DIR"
$folderpath = 'Z:\Media\EDU'
ClearRAR($folder,$folderpath) 

#Stand-ups Dir
Write-host "*******Starting Stand-ups Movies DIR cleanup of WinRar files*******"
$folder = "Stand-ups Movies DIR"
$folderpath = 'Z:\Media\Stand-ups'
ClearRAR($folder,$folderpath) 

#TV Shows Dir
Write-host "*******Starting TV Shows DIR cleanup of WinRar files*******"
$folder = "TV Shows Movies DIR"
$folderpath = 'Z:\Media\TV Shows'
ClearRAR($folder,$folderpath) 



 
