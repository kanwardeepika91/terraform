#Task24: how to use lifecycle
#example1:

resource "local_file" "lifecyle" {
  filename        = "/tmp/create_before_destroy.txt"
  content         = "create before you destroy"
  file_permission = "770"

lifecycle {
    create_before_destroy = true
    #prevent_destroy = true
  }
}