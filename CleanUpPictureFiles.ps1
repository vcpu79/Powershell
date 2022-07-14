    #function to clear dir of Picture file types
function ClearPicture(){
$pics = ('*.png','*.jpeg','*.jpg') 
foreach ($file in $pics){
   $count = (GCI -path $folderpath -recurse | where {$_.name -like "$file"} | measure-object).count 
   write-host "Found $count $file files"
      if ($count -gt 0) {
         write-host "Deleting $file files"
         GCI -path $folderpath $file -recurse | foreach { remove-item -path $_.fullname }
         write-host "$folder - Picture $file deleted"
      }
   } 
}   

#Kids Movies Dir
Write-host "*******Starting Kids Movies DIR cleanup of Picture files*******"
$folder = "Kids Movies DIR"
$folderpath = 'Z:\Media\Kids Movies\'
ClearPicture($folder,$folderpath) 

#Disney Movies Dir
Write-host "*******Starting Disney Movies DIR cleanup of Picture files*******"
$folder = "Disney Movies DIR"
$folderpath = 'Z:\Media\Disney Movies\'
ClearPicture($folder,$folderpath) 

#Documentaries Dir
Write-host "*******Starting Documentaries Movies DIR cleanup of Picture files*******"
$folder = "Documentaries Movies DIR"
$folderpath = 'Z:\Media\Documentaries'
ClearPicture($folder,$folderpath) 

#EDU Dir
Write-host "*******Starting EDU Movies DIR cleanup of Picture files*******"
$folder = "EDU Movies DIR"
$folderpath = 'Z:\Media\EDU'
ClearPicture($folder,$folderpath) 

#Stand-ups Dir
Write-host "*******Starting Stand-ups Movies DIR cleanup of Picture files*******"
$folder = "Stand-ups Movies DIR"
$folderpath = 'Z:\Media\Stand-ups'
ClearPicture($folder,$folderpath) 

#TV Shows Dir
Write-host "*******Starting TV Shows DIR cleanup of Picture files*******"
$folder = "TV Shows Movies DIR"
$folderpath = 'Z:\Media\TV Shows'
ClearPicture($folder,$folderpath) 

#Movies Dir
Write-host "*******Starting Movies DIR cleanup of Picture files*******"
$folder = "Movies DIR"
$folderpath = 'Z:\Media\Movies'
ClearPicture($folder,$folderpath) 
 



 
 
 
