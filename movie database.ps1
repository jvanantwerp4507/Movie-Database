

function useOMDB {

$title = Read-Host "Enter a title"
do {
$type = Read-Host "Please select a type (Movie or Series  or Episode)"
} until ($type -eq "Movie"-or ($type -eq "Series") -or ($type = "Episode")) 
$Year = Read-Host "Filter by specific year (Default is blank)"
$Search = Invoke-WebRequest -Uri "http://www.omdbapi.com/?t=$($Title -replace " ","+")&y=$($Year)&plot=full&type=$($type)&apikey=eb132aec" -UseBasicParsing
$SearchResults = ConvertFrom-Json $Search
$MatchTitle = 
$Year = 
$IMDBID =
$ActorsList =
$MovieRating = 
$IMDBRATING =
$Description =
$Runtime = 
$ReleaseDate = 


  $returnObject = New-Object System.Object
                $returnObject | Add-Member -Type NoteProperty -Name Title -Value $MatchTitle
                Write-Output $SearchResults
				
				}
				
function useTheMovieDB {
$hello = Invoke-WebRequest -Uri "https://www.themoviedb.org/search/person?query=Adam%20Sandler&language=en-US"
 }
