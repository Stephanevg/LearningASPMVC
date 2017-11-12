set-location C:\Users\taavast3\OneDrive\Scripting\ASP.NET\LearningASPMVC\
$a = @"
# ASP.NET MVC Learning repo

This repository contains my files, and notes of my learning path into the ASP.NET MVC world.

## Learning Ressources:

### videos

- [ASP.NET MVA JumpStart](https://www.microsoft.com/fr-fr/learning/exam-70-486.aspx)

## Creating and configuring models
- [ASP.NET MVA JumpStart](https://mva.microsoft.com/en-us/training-courses/introduction-to-asp-net-mvc-8322?l=4fo2g9Zy_1404984382)

## Creating and configuring models
-[ASP.NET MVA JumpStart](https://mva.microsoft.com/en-us/training-courses/introduction-to-asp-net-mvc-8322?l=Omf358Zy_1604984382)

## Creating and configuring models

## Deux secondes
- [ASP.NET MVA JumpStart](https://mva.microsoft.com/en-us/training-courses/introduction-to-asp-net-mvc-8322?l=4fo2g9Zy_1404984382)

### cheat cheets

- TBD

### books I used

- TBD


## Learning path

"@

$AllMDs = Get-ChildItem .\ -Recurse -Filter "*.md"

$directories = $AllMDs | group directory


$a += "`r`n"
$a += "`r`n"
foreach ($folder in $directories){

    $leaf = $null
    $leaf = (split-Path $folder.name -leaf)
    $a += "`r`n"
    $a += "## $($leaf) `r`n"
    $a += "`r`n"
    foreach ($file in $folder.group){


        $relPath = $null
        $relPath = (($file | Resolve-Path -Relative).Replace(".\","\")).replace('\','/')
        $a += "[$($file.BaseName)]($relPath)"
        $a += "<br>`r`n "

    }
    

}

$a > readme.md