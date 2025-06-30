variable "ecr_image_url" {
	type = string
	default = "1234.dkr.ecr.us-east-1.amazonaws.com/my-app:latest"
}

variable "db_user" {
	type = string
	default = "admin"
}
variable "db_password" {
	type = string
	default = "password"
}