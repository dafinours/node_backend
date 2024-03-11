variable "region" {
  type = string
  default = "us-east-1"
}
variable "frontend_app_name" {
    description = "app name"
    default = "name"
  
}
variable "backend_app_name" {
    description = "app name"
    default = "name"
  
}
variable "cpu" {
    description = "cpu size"
    default = 10
}
variable "memory" {
    description = "container memory size"
    default = 512
  
}
variable "image" {
    description = "image URI"
    default = ""
}

variable "image_tag" {
    description = "Image tag"
    default = 1
  
}
variable "cluster_name" {
    description = "Cluster name"
    default = "cluster_name"
}
variable "project_name" {
    default = "name"
  
}
variable "backend_port" {
    description = "port of the backnd app"
    default = 80
  
}
variable "frontend_port" {
    description = "port of the frontend app"
    default = 80
  
}