# Single line comment

// Single line comment

/*
Multi-line comment
line 2
*/

resource "null_resource" "demo_run" {
  provisioner "local-exec" {
    command = "echo Null Provider has completed >> sample.txt"
  }
}