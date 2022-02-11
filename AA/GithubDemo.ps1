# Demo Script
Param(
  $message
)
Write-Output "Jobid: $($PSPrivateMetadata.JobId)"

Write-Output $message



if($PWD -like "c:\temp\){
  Write-Output "This script runs on an Azure Worker"
}
else{
  Write-Output "This script runs on a Hybrid Worker"
  Write-Output "I am"
  WhoAmi /all
}

Write-Output "Hostinformation:"
$Host

