param(
  $FilePath,
  $ExpectedHash
)
$Hash = (Get-FileHash -Alg SHA1 $FilePath).Hash.ToLower()
if ($ExpectedHash) {
  Write-Output ($Hash -eq $ExpectedHash)
} else {
  Write-Output $Hash
}
