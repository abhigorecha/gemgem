Things what I have performed in this task


Requirement was:- 
1. ECS (EC2 launch type) for hosting the application.
2. EC2 instances as worker nodes for ECS.
3. RDS (MariaDB) as a database backend.
4. S3 bucket for storing static files.
5. EFS (Elastic File System) for shared storage.
6. CloudFront for CDN and caching.


What things I have added:-

1. Added a cloudfront
2. IAM permission for ECS as it is required to access diffrent services of AWS
3. EFS filesystem
4. changed name in RDS as it ws not correct (i.e resource name)
5. For ECS to run on EC2 
iam_instance_profile   = aws_iam_instance_profile.ecs_profile.name
  user_data = <<-EOF
              #!/bin/bash
              echo ECS_CLUSTER=${aws_ecs_cluster.gem_cluster.name} >> /etc/ecs/ecs.config
              EOF

}
this things were necessary otherwise it will not work
6. Also made changes in resource for security group id things




Github Pipeline added

it is a very simple pipeline with github syntax in which we will first setup the env to run using ubuntu as base OS, then checking out the code , getting logged in AWS cli using credentials from secrets, login to ECR repo, creating docker image and pusing it and then running terrafrom init ,plan ,apply to run the code.

How to run it locally

so there are two options first it either you can set default values for your variables the way I have done or the second option would be passing them either at runtime or using terraform.tfvars file and in this case you need to have already setup the AWS cli so that it can have the env. ready for deployment.


****IMP***

Providing credentials for AWS in variables is not a good way to do things, either your repo should be so protected that no one can access your content else your runner should run in the AWS acount itself and the instance would have permission to launch anything on AWS , removing use of credentials and getting high security
