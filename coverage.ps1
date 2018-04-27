Write-Host "Running Tests..." -ForegroundColor Cyan

try {
  $sourceDirectory = "c:\projects\gamenotebookapi\src"
  $packagesPath = "$env:USERPROFILE\.nuget\packages"

  $openCover = Resolve-Path "$packagesPath\OpenCover\*\tools\OpenCover.Console.exe"
  $codecov = Resolve-Path "$packagesPath\codecov\*\tools\codecov.exe"

  & $opencover -register:user -target:dotnet.exe "-targetargs: test $sourceDirectory --no-build" -oldStyle -filter:"+[GameNotebookApi*]*" -output:coverage.xml

  & $codecov -f "coverage.xml" -t $env:CODECOV_REPO_TOKEN
} catch {
  Write-Host "Error occurred during build" -ForegroundColor Red
  Write-Host $_.Exception.Message -ForegroundColor Red

  throw;
}
