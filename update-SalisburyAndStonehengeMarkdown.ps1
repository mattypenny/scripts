<#
.Synopsis
   salisburyandstonehenge.net specific tweaks
   update-SalisburyAndStonehengeMarkdown
.DESCRIPTION
   salisburyandstonehenge.net specific tweaks to include:
   - fixing things where the onthisday order is mucked up
   - removing or replacing amazon links
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function update-SasIndividualFiles
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([int])]
    Param
    (
        # Param2 help description
        [int]
        $Param2
    )

   
    cd D:\hugo\sites\example.com\content\on-this-day


                                                                
    rename-item -force  come-dine-with-me-in-salisbury.md 24th-september-20120come-dine-with-me-in-salisbury.md
    rename-item -force 15-jul-1965-them-play-salisbury-city-hall.md   15th-jul-1965-them-play-salisbury-city-hall.md                                                                                          
    rename-item -force 16-february-1972-free-play-at-salisbury-city-hall.md   16th-february-1972-free-play-at-salisbury-city-hall.md                                                                                 
    rename-item -force 21-december-1971-led-zeppelin-play-salisbury-city-hall.md    21st-december-1971-led-zeppelin-play-salisbury-city-hall.md                                                                           
    rename-item -force 22-september-1766-salisbury-people-force-famers-to-sell-at-a-fair-price.md 22nd-september-1766-salisbury-people-force-famers-to-sell-at-a-fair-price.md                                                             
    rename-item -force 24-november-1979-salisbury-fc-play-millwall-in-fa-cup-3rd-round.md  24th-november-1979-salisbury-fc-play-millwall-in-fa-cup-3rd-round.md                                                                     
    rename-item -force 26-sept-1963-gene-vincent-plays-in-salisbury.md  26th-sept-1963-gene-vincent-plays-in-salisbury.md                                                                                        
    rename-item -force 27-november-1736-issue-no-1-of-william-collins-salisbury-journal.md 27th-november-1736-issue-no-1-of-william-collins-salisbury-journal.md                                                                     
    rename-item -force 8122-2.md "5th-january-1818-prince-leopold-future-king-of-belgium-visits-salisbury.md"                                                                                                                           
    rename-item -force 8439-2.md 15th-october-king-charles-enters-Salisbury-with-army.md                                                                                                                   
    remove-item -force D:\hugo\sites\example.com\public\on-this-day\october\8439-2
update-HugoPageFrontMatter -file 15th-october-king-charles-enters-Salisbury-with-army.md -key weight -value 1015
    rename-item -force 8443-2.md 28th-september-1625-king-charles-I-visited-salisbury.md                                                             
    remove-item -force D:\hugo\sites\example.com\public\on-this-day\september\8443-2
    # rename-item -force august-10th-1871-crown-prince-of-prussia-victoria-the-princess-royal-and-the-future-kaiser-willhelm-ii-visit-salisbury-and-stonehenge.md
    rename-item -force dickens-and-salisbury-uk.md 7th-February-1812-Charles-Dickens-birthday.md

rename-item -force 21st-of-june-1741-salisbury-cathedral-spire-catches-fire.md 21st-june-1741-salisbury-cathedral-spire-catches-fire.md
    update-HugoPageFrontMatter -file 21st-june-1741-salisbury-cathedral-spire-catches-fire.md -key weight -value "0621"
    update-HugoPageFrontMatter -file 6th-march-1556-charles-lord-stourton-is-hung-in-salisbury-market-square.md -key weight -value "0306"
    
rename-item -force august-10th-1871-crown-prince-of-prussia-victoria-the-princess-royal-and-the-future-kaiser-willhelm-ii-visit-salisbury-and-stonehenge.md 10th-August-1871-crown-prince-of-prussia-visits-salisbury-and-stonehenge.md
update-HugoPageFrontMatter -file 10th-August-1871-crown-prince-of-prussia-visits-salisbury-and-stonehenge.md -key weight -value "0810"
update-HugoPageFrontMatter -file 28th-september-1625-king-charles-I-visited-salisbury.md -key weight -value "0928"
    update-HugoPageFrontMatter -file 7th-February-1812-Charles-Dickens-birthday.md -key weight -value "0207"                                                                                                            
rename-item -force 21st-of-june-1741-salisbury-cathedral-spire-catches-fire.md  21st-june-1741-salisbury-cathedral-spire-catches-fire.md 
update-HugoPageFrontMatter -file 21st-june-1741-salisbury-cathedral-spire-catches-fire.md -key weight -value "0621"

rename-item -force 26th-sept-1963-gene-vincent-plays-in-salisbury.md 26th-september-1963-gene-vincent-plays-in-salisbury.md

update-HugoPageFrontMatter -file 26th-september-1963-gene-vincent-plays-in-salisbury.md -key weight -value "0926"


update-HugoPageFrontMatter -file 24th-september-20120come-dine-with-me-in-salisbury.md -key weight -value "0924"
rename-item -force 24th-september-20120come-dine-with-me-in-salisbury.md 24th-september-2012-come-dine-with-me-in-salisbury.md
update-HugoPageFrontMatter -file 5th-january-1818-prince-leopold-future-king-of-belgium-visits-salisbury.md -key weight -value "0105"

 update-HugoPageFrontMatter -file december.md -key draft -Value yes
  update-HugoPageFrontMatter -file november.md -key draft -Value yes
   update-HugoPageFrontMatter -file october.md -key draft -Value yes
    update-HugoPageFrontMatter -file september.md -key draft -Value yes
     update-HugoPageFrontMatter -file august.md -key draft -Value yes
      update-HugoPageFrontMatter -file july.md -key draft -Value yes
       update-HugoPageFrontMatter -file june.md -key draft -Value yes
        update-HugoPageFrontMatter -file may.md -key draft -Value yes
         update-HugoPageFrontMatter -file april.md -key draft -Value yes
    update-HugoPageFrontMatter -file march.md -key draft -Value yes
    update-HugoPageFrontMatter -file february.md -key draft -value yes
    update-HugoPageFrontMatter -file january.md -key draft -value yes 
    update-HugoPageFrontMatter -file march-1627-the-plague-reaches-salisbury.md -key weight -value "0300"                                                                                              
    update-HugoPageFrontMatter -file end-of-july-1665-charles-ii-comes-to-salisbury-to-escape-the-plague.md  -key weight -value  "0732"                                                                
    update-HugoPageFrontMatter -file first-thursday-in-may-1723-new-prize-at-salisbury-races.md -key weight -value  "0500" 
    update-HugoPageFrontMatter -file october-2003-the-tailor-of-salisbury-published.md -key weight -value  "1000"
    update-HugoPageFrontMatter tuesday-after-12th-night-salisbury-cattle-and-wool-fair.md -key weight -value "0108"                                                                              

}

function update-HugoPageFrontMatter { 
<#
.SYNOPSIS
  One-line description

.DESCRIPTION
  Longer description

  Todo: amened so it works with JSON as well as YAML

.PARAMETER folder
  Folder 

.EXAMPLE
  Example of how to use this cmdlet

#>
  [CmdletBinding()]
  Param( [string][Alias ("file")]$HugoMarkdownFile,
         [string][Alias ("keyword")]$Key,
         [string]$Value) 

  # Todo: validate the key is valid

  write-startfunction
  
  # validate the Yaml
  $CountOccurencesOfKeyword = $(select-string "^$Key`:" $HugoMarkdownFile).length

  if ($CountOccurencesOfKeyword -ne 1)
  {
    write-error "More than one occurence of keyword $Key found in $HugoMarkdownFile so it can't be processed"
    return
  }

  $HugoPageAsString = get-content $HugoMarkdownFile

  $HugoPageAsString = $HugoPageAsString -ireplace "$Key`: ..*", "$Key`: $Value"
  
  set-content -value $HugoPageAsString -literalpath $HugoMarkdownFile
  write-endfunction
  return
}




<#
vim: tabstop=2 softtabstop=2 shiftwidth=2 expandtab
#>

function update-HugoPagePrefix { 
<#
.SYNOPSIS
  One-line description

.DESCRIPTION
  Longer description

.PARAMETER folder
  Folder 

.EXAMPLE
  Example of how to use this cmdlet

#>
  [CmdletBinding()]
  Param( [string][Alias ("f")]$file,
         [string][Alias ("w")]$weight ) 

  write-startfunction

  if ($file -match "[0-9][0-9][0-9][0-9]_..*.md")
  {
    write-debug "Found prefix on $file"
  }

  write-endfunction

}

function update-HugoPageWeight { 
<#
.SYNOPSIS
  One-line description

.DESCRIPTION
  Longer description

.PARAMETER folder
  Folder 

.EXAMPLE
  Example of how to use this cmdlet

#>
  [CmdletBinding()]
  Param( [string][Alias ("f")]$file,
         [string][Alias ("w")]$weight ) 

  write-startfunction
  foreach ($f in $(dir $file))
  {
    write-verbose 'Running update-HugoPageFrontMatter -file $f -keyword weight -value $weight'
    update-HugoPageFrontMatter -file $f -keyword weight -value $weight
  }

  write-endfunction

}

function get-HugoPageWeight { 
<#
.SYNOPSIS
  One-line description

.DESCRIPTION
  Longer description

.PARAMETER folder
  Folder 

.EXAMPLE
  Example of how to use this cmdlet

#>
  [CmdletBinding()]
  Param( [string][Alias ("f")]$file ) 

  write-startfunction
  foreach ($f in $(dir "*$file*"))
  {
    write-verbose 'Getting weight for $f'
    $MatchingLines = select-string -path $f -pattern "^Weight*:*"
    
    [string]$Line = $MatchingLines.Line
    [string]$Weight = $($Line.split(':'))[1] 

    New-Object -type PSObject -property @{Weight = $Weight
                                          Filename = [System.IO.Path]::GetFileName($f)}
  }

  write-endfunction

}

set-alias ghpw get-HugoPageWeight

function backup-HugoPage { 
<#
.SYNOPSIS
  One-line description

.DESCRIPTION
  Longer description

.PARAMETER folder
  Folder 

.EXAMPLE
  Example of how to use this cmdlet

#>
  [CmdletBinding()]
  Param( [Mandatory][string][Alias ("f")]$file)
       

  write-startfunction
  foreach ($f in $file)
  {
    write-verbose 'Running update-HugoPageFrontMatter -file $f -keyword weight -value $weight'
    update-HugoPageFrontMatter -file $f -keyword weight -value $weight
  }

  write-endfunction

}


<#
vim: tabstop=2 softtabstop=2 shiftwidth=2 expandtab
#>


