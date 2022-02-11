# Demo Script
Param(
  $message
)

Write-Output $message

Write-Output "I am"
WhoAmi /all

Write-Output "Hostinformation:"
$Host

Write-Output "###############################################################"

$PSPrivateMetadata
