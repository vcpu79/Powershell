#function to clear dir of Sample file types
function ClearSample(){
$sample = "*sample.*"
foreach ($file in $sample){
   $count = (Get-ChildItem -path $folderpath -recurse | Where-Object {$_.name -like "$file"} | measure-object).count 
   write-host "Found $count $file files" 
      if ($count -gt 0) {
         write-host "Deleting $file files"
         Get-ChildItem -path $folderpath $file -recurse | ForEach-Object { remove-item -Recurse -Force -path $_.fullname } 
         write-host "$folder - $file deleted"
      }   
   } 
}    
  
#Kids Movies Dir
Write-host "*******Starting Kids Movies DIR cleanup of Sample files*******"
$folder = "Kids Movies DIR"
$folderpath = 'Z:\Media\Kids Movies\'
ClearSample($folder,$folderpath) 

#Disney Movies Dir
Write-host "*******Starting Disney Movies DIR cleanup of Sample files*******"
$folder = "Disney Movies DIR"
$folderpath = 'Z:\Media\Disney Movies\'
ClearSample($folder,$folderpath) 

#Documentaries Dir
Write-host "*******Starting Documentaries Movies DIR cleanup of Sample files*******"
$folder = "Documentaries Movies DIR"
$folderpath = 'Z:\Media\Documentaries'
ClearSample($folder,$folderpath) 

#EDU Dir
Write-host "*******Starting EDU Movies DIR cleanup of Sample files*******"
$folder = "EDU Movies DIR"
$folderpath = 'Z:\Media\EDU'
ClearSample($folder,$folderpath) 

#Stand-ups Dir
Write-host "*******Starting Stand-ups Movies DIR cleanup of Sample files*******"
$folder = "Stand-ups Movies DIR"
$folderpath = 'Z:\Media\Stand-ups'
ClearSample($folder,$folderpath) 

#TV Shows Dir
Write-host "*******Starting TV Shows DIR cleanup of Sample files*******"
$folder = "TV Shows Movies DIR"
$folderpath = 'Z:\Media\TV Shows'
ClearSample($folder,$folderpath) 

#Movies Dir
Write-host "*******Starting Movies DIR cleanup of Sample files*******"
$folder = "Movies DIR"
$folderpath = 'Z:\Media\Movies'
ClearSample($folder,$folderpath) 
 


 
