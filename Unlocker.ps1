$i = 1
while ($true) {
    write "Unlock pass # $i"                                                        # echo how many unlock passes we've made
    Unlock-ADAccount fubar                                                          # unlock the AD account
    Get-ADUser fubar -Properties LockedOut | Select SamAccountName,LockedOut        # write the status of the account to the screen so we can see that it's unlocked
    $i+=1                                                                           # increment $i for the next pass through the loop
    Start-Sleep -Seconds 10                                                         # pause for 10 seconds then do it again
}