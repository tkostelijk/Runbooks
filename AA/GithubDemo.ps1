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

Write-Output "11111111111111111111111111"
$PSPrivateMetadata.Name

Write-Output "22222222222222222222222222"
$PSPrivateMetadata.Value
