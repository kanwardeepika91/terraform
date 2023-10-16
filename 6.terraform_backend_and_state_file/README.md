Remote State backend is good to use, when you are working with a team
remote State file supporting with Lock ID, will avoid file corruption.
If one person have created the infrastructure, other person cannot make changes, state will be locked
you can also unlock the state, but check what is wrong and only then fix it to unlock.
you can disable locking with the "-lock=false" flag, but this is not recommended.
If there is no lockID, example: "terraform plan -lock=false"
(OR)
If there is LockID then, "terraform force-unlock [options] LOCK_ID"