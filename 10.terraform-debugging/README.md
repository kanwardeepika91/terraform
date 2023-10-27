## Terraform Debugging(Logging)

`1) Terraform environment logging variable: TF_LOG
2) There are 5 forms of logging :
  `  Info
    Warning
    Error
    Debug
    Trace ` 

3) `TRACE` → is the highest verbose logging in terraform
Example to set log env variable : `export TF_LOG=ERROR` or any form above can be used based on logs needed

4) You can export this log to a file:
    `export TF_LOG_PATH=/tmp/terraform.log`
    Command to view file, you can cat or tail as well : head -10 /tmp/terraform.log

5) You can also unset the log path
    Command: `unset TF_LOG_PATH` 

6) I'm using the same Taint example so we can view the logs
7) export the variable on terminal before running terraform commands`
