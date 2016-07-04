$command = $args[0]
$params = $args[1..($args.length-1)]
Start-Process -Verb RunAs -FilePath $command -ArgumentList $params
