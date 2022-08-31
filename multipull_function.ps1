function multipull {
	param(
		$sourceBranch = "master",
		$destinationBranch = "copy/$($sourceBranch)"
	)

	Get-ChildItem -Recurse -Directory -Hidden -Filter .git | ForEach-Object {
		Write-Host ""

		Write-Host "Grabbing state from branch " -NoNewline;
		Write-Host -ForegroundColor Yellow "${sourceBranch} " -NoNewline;
		Write-Host "and copy it into " -NoNewline;
		Write-Host -ForegroundColor Magenta "${destinationBranch} " -NoNewline;
		Write-Host "for " -NoNewline;
		Write-Host -ForegroundColor Blue "$(Split-Path (Split-Path $_.FullName -Parent) -Leaf)"

		& git --git-dir="$($_.FullName)" --work-tree="$(Split-Path $_.FullName -Parent)" fetch origin ${sourceBranch}:${destinationBranch} --force
		
		Write-Host -ForegroundColor Green "Finished!"

		Write-Host "============================================================"
	}
}
