param(
  $FilePath,
  $ExpectedHash
)
$Hash = (Get-FileHash -Alg MD5 $FilePath).Hash.ToLower()
if ($ExpectedHash) {
  Write-Output ($Hash -eq $ExpectedHash)
} else {
  Write-Output $Hash
}
