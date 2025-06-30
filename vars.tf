variable "ecr_image_url" {
	type = string
	default = "382751406730.dkr.ecr.us-east-1.amazonaws.com/my-app:latest"
}

variable "db_user" {
	type = string
	default = "admin"
}
variable "db_pass" {
	type = string
	defaulty = "password"
}