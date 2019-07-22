# ___________.__                          __     ___ ___               __  
# \__    ___/|  |_________   ____ _____ _/  |_  /   |   \ __ __  _____/  |
#   |    |   |  |  \_  __ \_/ __ \\__  \\   __\/    ~    \  |  \/    \   __\
#   |    |   |   Y  \  | \/\  ___/ / __ \|  |  \    Y    /  |  /   |  \  |
#   |____|   |___|  /__|    \___  >____  /__|   \___|_  /|____/|___|  /__|
#                 \/            \/     \/             \/            \/  
# Initial Access

Function Menu 
{
 Clear-Host        
  Do
  {
    Clear-Host
    Write-Host -Object '****************************'
    Write-Host -Object 'MITRE ATT&CK: Initial Access'
    Write-Host -Object '****************************'
    Write-Host -Object ''
    Write-Host -Object '1.  T1078 Valid Accounts '
    Write-Host -Object '2.  T1193 Spearphishing Attachment '
    Write-Host -Object '3.  T1192 Spearphishing Link '
    Write-Host -Object '4.  T1194 Spearphishing via Service '
    Write-Host -Object 'Q.  Quit'
    Write-Host -Object ''
    Write-Host -Object '****************************'
    Write-Host -Object $errout
    $Menu = Read-Host -Prompt '(0-4 or Q to Quit)'
    switch ($Menu) 
        {
           1 
            {.".\scripts\techniques\T1078.ps1"
            pause}
            2 
            {.".\scripts\techniques\T1193.ps1"
            pause}
            3 
            {.".\scripts\techniques\T1192.ps1"
            pause}
            4 
            {.".\scripts\techniques\T1194.ps1"
            pause} 
            Q 
            {Exit}   
            default
            {$errout = 'Invalid option please try again........Try 0-6 or Q only'}
        }
    }
    until ($Menu -eq 'q')
}
menu