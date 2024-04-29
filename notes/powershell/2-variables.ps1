Set-StrictMode -Version latest

$myVar = "Bob"
[double]$myAge = 27
$myAge = $myAge + $myAge
$myVar.GetType()
$myAge.GetType()
$myStatement = $false
Write-Output "My name is $myVar and my age is $myAge"
Write-Output $myStatement