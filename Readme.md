# My Terraform modules

## Task 1 Agenda

1. Create EC2 Linux instance in AWS using Terraform. The instance should have attached tags: Date_creation, OS_type, Your_First_Name, Your_Last_Name, AWS_Account_ID.
2. Generate SSH key pair and upload to AWS via Terraform.
3. The default AWS key pair for VM bootstrap should refer to the key pair from step 2. As a result, you should be able to login via SSH to the server.
4. Create userdata script which will install Apache and respond over HTTP.
5. As part of useradata script, collect all the tags assigned to instance reading them from EC2 (not from TRF variables).
6. You need to create index.html which will demonstrate AWS tags assigned to EC2 instance in a table form.
7. Restrict access to your webpage from your IP address only. As a result, you should be able to remotely access web page served by Apache and see table of tags there.

### Addition to the task 1
- Put any .txt file to that VM (using provisioners).
- Cat that file remotely (using provisioners).

## Task 2 Agenda

1. Make the VM creation as a Terraform module (can be local folder and not remote one as Bitbucket repo).
2. Push the Terraform state file to the S3 bucket (configure an S3 bucket as a Terraform backend).
3.  Use .tfvars file to specify variables there (aws keys, instance type, subnet ids, etc.). So remove all hard-coded values from the code. Also, use count for the resource as a variable, so we can create a module without resources. It can be used in complex components where we need to create resources by the condition.
4. Create outputs for the instance (instance ID, private IP, public IP).

## Task 3 Agenda

1. Module implementation.
a) EC2 creation as a separate module
b) Security Group creation as a separate module
- module must have the capability to create multiple sg rules
- sg rule needs to be created as a separate resource
- input variable for sg rules need to have list(map) type
- in case we need to delete one of the sg rules in the middle of the list, it needs to be done without any sg rule re-creation.
2. Add user data script for EC2 creation. It should :
a) Install some packages via YUM
b) Create a file with “SUCCESS” context
3. Null resource with remote-exec to print the file context from 2.b
4. SG and EC2 should be created by condition.
5. No hardcode inside the modules. Everything should be declared as variables and all of them should be set in .tfvars file
6. Outputs should present for all the created resources. You can choose any you prefer, but for each resource described in your code.
7. Output of terraform apply command should be also stored in a file and committed to your branch

## Task4 Agenda
Modify the component module created in Task 3, so we can create multiple EC2 instances using map of parameters for EC2 instances. for each for modules should be used here.
