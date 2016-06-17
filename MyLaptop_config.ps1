Configuration MyLaptop {
    Node 'localhost' {
        Environment PfaffleBinDir {
            Ensure = 'Present'
            Name = 'PATH'
            Value = 'C:\Users\pfaffle\bin'
            Path = $true
        }
    }
}
