#function to clear dir of nfo file types
function ClearNFO(){
$nfo = "*.nfo"
foreach ($file in $nfo){
   $count = (GCI -path $folderpath -recurse | where {$_.name -like "$file"} | measure-object).count 
   write-host "Found $count $file files" 
      if ($count -gt 0) {
         write-host "Deleting $file files"
         GCI -path $folderpath $file -recurse | foreach { remove-item -path $_.fullname }
         write-host "$folder - nfo $file deleted"
      }   
   } 
}   

#Kids Movies Dir
Write-host "*******Starting Kids Movies DIR cleanup of nfo files*******"
$folder = "Kids Movies DIR"
$folderpath = 'Z:\Media\Kids Movies\'
ClearNFO($folder,$folderpath) 

#Disney Movies Dir
Write-host "*******Starting Disney Movies DIR cleanup of nfo files*******"
$folder = "Disney Movies DIR"
$folderpath = 'Z:\Media\Disney Movies\'
ClearNFO($folder,$folderpath) 

#Documentaries Dir
Write-host "*******Starting Documentaries Movies DIR cleanup of nfo files*******"
$folder = "Documentaries Movies DIR"
$folderpath = 'Z:\Media\Documentaries'
ClearNFO($folder,$folderpath) 

#EDU Dir
Write-host "*******Starting EDU Movies DIR cleanup of nfo files*******"
$folder = "EDU Movies DIR"
$folderpath = 'Z:\Media\EDU'
ClearNFO($folder,$folderpath) 

#Stand-ups Dir
Write-host "*******Starting Stand-ups Movies DIR cleanup of nfo files*******"
$folder = "Stand-ups Movies DIR"
$folderpath = 'Z:\Media\Stand-ups'
ClearNFO($folder,$folderpath) 

#TV Shows Dir
Write-host "*******Starting TV Shows DIR cleanup of nfo files*******"
$folder = "TV Shows Movies DIR"
$folderpath = 'Z:\Media\TV Shows'
ClearNFO($folder,$folderpath) 

#Movies Dir
Write-host "*******Starting Movies DIR cleanup of nfo files*******"
$folder = "Movies DIR"
$folderpath = 'Z:\Media\Movies'
ClearNFO($folder,$folderpath) 
 


 
