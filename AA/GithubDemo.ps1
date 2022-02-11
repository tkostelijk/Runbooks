# Demo Script
Param(
  $message
)

Write-Output $message


if($PSPrivateMetadata){
  Write-Output "Jobid: $($PSPrivateMetadata.JobId)"
}
else{
  Write-Output "I am"
  WhoAmi /all
}

Write-Output "Hostinformation:"
$Host

