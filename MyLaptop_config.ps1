Configuration MyLaptop {
    Node 'localhost' {
        File PfaffleBinDir {
            DestinationPath = 'C:\Users\pfaffle\bin'
            Type = 'Directory'
            Ensure = 'Present'
            Recurse = $True
            SourcePath = "$PSScriptRoot\resources\bin"
        }
        Environment PfaffleBinPath {
            Ensure = 'Present'
            Name = 'PATH'
            Value = 'C:\Users\pfaffle\bin'
            Path = $True
        }
    }
}
