$myArray=@("one","two","three",1,2,3)

$myArray.GetType()

$myArray.IsFixedSize
$myArray.Count
$myArray.Length
Write-Output "======================================================"

$myArray=$myArray+4
$myArray+=5
$myArray=$myArray -ne "two"

$myArray
$myArray[1]


########################################################################
Write-Output "======================================================"
$myList = New-Object -TypeName System.Collections.ArrayList
$myList.GetType()
[void]$myList.Add("Test1")
[void]$myList.Add("Test2")
$myList.AddRange(@("Test3", "Test4", "Test5"))
$myList.Remove("Test2")
$myList.RemoveAt(0)
$myList.RemoveRange(0,2)
$myList