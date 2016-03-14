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


                                                                
    rename-item  come-dine-with-me-in-salisbury.md 24th-september-20120come-dine-with-me-in-salisbury.md
    rename-item 15-jul-1965-them-play-salisbury-city-hall.md   15th-jul-1965-them-play-salisbury-city-hall.md                                                                                          
    rename-item 16-february-1972-free-play-at-salisbury-city-hall.md   16th-february-1972-free-play-at-salisbury-city-hall.md                                                                                 
    rename-item 21-december-1971-led-zeppelin-play-salisbury-city-hall.md    21st-december-1971-led-zeppelin-play-salisbury-city-hall.md                                                                           
    rename-item 22-september-1766-salisbury-people-force-famers-to-sell-at-a-fair-price.md 22nd-september-1766-salisbury-people-force-famers-to-sell-at-a-fair-price.md                                                             
    rename-item 24-november-1979-salisbury-fc-play-millwall-in-fa-cup-3rd-round.md  24th-november-1979-salisbury-fc-play-millwall-in-fa-cup-3rd-round.md                                                                     
    rename-item 26-sept-1963-gene-vincent-plays-in-salisbury.md  26th-sept-1963-gene-vincent-plays-in-salisbury.md                                                                                        
    rename-item 27-november-1736-issue-no-1-of-william-collins-salisbury-journal.md 27th-november-1736-issue-no-1-of-william-collins-salisbury-journal.md                                                                     
    rename-item 8122-2.md "5th-january-1818-prince-leopold-future-king-of-belgium-visits-salisbury.md"                                                                                                                           
    rename-item 8439-2.md 15th-october-king-charles-enters-Salisbury-with-army.md                                                                                                                   
    rename-item 8443-2.md 28th-september-1625-king-charles-I-visited-salisbury.md                                                             
    # rename-item august-10th-1871-crown-prince-of-prussia-victoria-the-princess-royal-and-the-future-kaiser-willhelm-ii-visit-salisbury-and-stonehenge.md
    rename-item dickens-and-salisbury-uk.md 7th-February-1812-Charles-Dickens-birthday.md
    update-HugoPageFrontMatter -file 7th-February-1812-Charles-Dickens-birthday.md -key weight -value "0207"                                                                                                            
    update-HugoPageFrontMatter -file february.md -key draft -value No
    update-HugoPageFrontMatter -file january.md -key draft -value No 
    update-HugoPageFrontMatter -file march-1627-the-plague-reaches-salisbury.md -key weight -value "0300"                                                                                              
    update-HugoPageFrontMatter -file march.md -Value No
    update-HugoPageFrontMatter end-of-july-1665-charles-ii-comes-to-salisbury-to-escape-the-plague.md  -key weight -value  "0732"                                                                
    update-HugoPageFrontMatter first-thursday-in-may-1723-new-prize-at-salisbury-races.md -key weight -value  "0005" 
    update-HugoPageFrontMatter october-2003-the-tailor-of-salisbury-published.md -key weight -value  "0010"
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
         [string]$Key,
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


set-alias temp get-template


<#
vim: tabstop=2 softtabstop=2 shiftwidth=2 expandtab
#>


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
  Param( [string][Alias ("f")]$folder = "$pwd"  ) 

  write-debug "$(get-date -format 'hh:mm:ss.ffff') Function beg: $([string]$MyInvocation.Line) "



  write-debug "$(get-date -format 'hh:mm:ss.ffff') Function end: $([string]$MyInvocation.Line) "

}

set-alias temp get-template


<#
vim: tabstop=2 softtabstop=2 shiftwidth=2 expandtab
#>



