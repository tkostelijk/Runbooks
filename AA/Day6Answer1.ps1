$Map = Get-Content .\Day6Input1.txt

$Map = @("COM)B","B)C","C)D","D)E","E)F","B)G","G)H","D)I","E)J","J)K","K)L")
#$Map = @("COM)B")


Function Calc-Orbits{
    Param(
        $CenterObject,
        $Distance
    )
    $Satelites = @()

    foreach($Object in $Map){
        If($Object -like "$CenterObject)*"){
            $Satelites += $Object.Split(')')[1]
        }
    }

    foreach($Satelite in $Satelites){
        $Depth = $Distance + 1
        $Distance = (Calc-Orbits -CenterObject $Satelite -Distance $($Depth + 1))
    }

    return $Distance + 1
}

foreach($Object in $Map){
    $TestCount = 0
    $TestObject = $Object.Split(')')
    foreach($Element in $Map){
        if($Element -like "*)$($TestObject[0])"){
            $TestCount += 1
        }
    }
    If($TestCount -eq 0){
        Write-Host "Center Object:" $TestObject[0]
        $CenterObject = $TestObject[0]
    }
}

Calc-Orbits -CenterObject $CenterObject -Distance 0
