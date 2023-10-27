## Terraform Remote State Backend

`1) Remote State backend is good to use, when you are working with a team
 2) remote State file supporting with Lock ID, will avoid file corruption.
 3) If one person have created the infrastructure, other person cannot make changes, state will be locked
 4) you can also unlock the state, but check what is wrong and only then fix it to unlock.
 5) you can disable locking with the "-lock=false" flag, but this is not recommended.
 6) If there is no lockID, example: "`terraform plan -lock=false`"
                        (OR)
 7) If there is LockID then, "`terraform force-unlock [options] LOCK_ID`"`