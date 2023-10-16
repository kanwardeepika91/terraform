# Task6: Let us understand other Providers.Create a file - main.tf– > Understand the External block 
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
}

resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  #keep_locally = true 
}
# Task7 : Create a docker container along with Task6, include the above code and write below code.
resource "docker_container" "nginx-con" {
  image = docker_image.nginx_image.image_id
  name  = "nginx_container"
  ports {
    internal = 80
    external = 1234
  }
}
