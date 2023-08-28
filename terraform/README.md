# How HCL will have the code
* code is in blocks, The example you see here is a resource block
* A Resource belongs to a provider.
* Terraform has a lot of providers. AWS is one of them.
* Everything is a block in terraform HCL.
* Ex:- resources,variable,outputs,data,proviser,locals,module.

# Terraform Files
* All the files of terraform should end with .tf or .tf.json file extension.
* We can keep multiple files,files will be loaded in terraform in alphabetical order,but it compiles the list and make its own order.
* Execution order will be smartly picked by terraform , Also gives the flexibility to write your own dependencies (depends_on).

# Terraform Command or lifecycle
* Terraform echo system comprises of init, plan, apply, destroy.
* Destroy - is optional unless you want to destroy the resources created.

* INIT    :- This phase downloads all the required provider plugins and also initializes the state file if it is remote.
* PLAN    :- Plan will show what the terraform can do on your code when actually apply.
* APPLY   :- Create the actual resources.
* Destroy :- Delete the actual resources which are create. 

# Outputs
 Syntax :-
    url :- # https://www.devopsschool.com/blog/wp-content/uploads/2019/12/terraform-output-variable-740x414.jpg
           # https://developer.hashicorp.com/terraform/language/values/outputs

    output "instance_ip_addr" {
        value = aws_instance.server.private_ip
    }

* Output prints a message on the screen.
* Output block helps in printing the created resource attributes & arguments on the screen.
* Outputs with modules work as a data transmitter.
* You can define multiple output blocks.


### Terraform variable precedence 

# https://www.env0.com/blog/terraform-variables


* 1. -var-file
* 2. *auto-.tfvars
* 3. terraform.tfvars
* 4. ask in cli to provide input

* Terraform uses a specific order of precedence when determining the value of a variable. 
* If the same variable is assigned multiple values, Terraform will use the value of highest precedence, 
  overriding any other values. 
* Below is the precedence order starting from the highest priority to the lowest.

    * Environment variables (TF_VAR_variable_name)
    * The terraform.tfvars file
    * The terraform.tfvars.json file
    * Any .auto.tfvars or .auto.tfvars.json files, processed in lexical order of their filenames.
    * Any -var and -var-file options on the command line, in the order they are provided.
    * Variable defaults


# Null Resource 
   
    * that when you are using this Terraform resource, you are not handling a physical resource in the cloud.

    * The null_resource helps us to execute any command remotely or locally to provisioning any resource or even to create a configuration file or perform some command or scripts to change some configuration.
    * There is no limit to what you can do, which is powerful. 

# State File

    # reference :- https://developer.hashicorp.com/terraform/language/state



    * Terraform must store state about your managed infrastructure and configuration. 
    
    * This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.

    * This state is stored by default in a local file named "terraform.tfstate", but we recommend storing it in Terraform Cloud to version, encrypt, and securely share it with your team.

    * Terraform uses state to determine which changes to make to your infrastructure. Prior to any operation, Terraform does a refresh to update the state with the real infrastructure.


## Provisioners

## https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax

    * You can use provisioners to model specific actions on the local machine or on a remote machine in order to prepare servers or other infrastructure objects for service.

    ## File Provisioner 
     
        * The file provisioner copies files or directories from the machine running Terraform to the newly created resource. The file provisioner supports both ssh and winrm type connections.

        # Example usage

            resource "aws_instance" "web" {
            # ...

            # Copies the myapp.conf file to /etc/myapp.conf
            provisioner "file" {
                source      = "conf/myapp.conf"
                destination = "/etc/myapp.conf"
            }

            # Copies the string in content into /tmp/file.log
            provisioner "file" {
                content     = "ami used: ${self.ami}"
                destination = "/tmp/file.log"
            }

            # Copies the configs.d folder to /etc/configs.d
            provisioner "file" {
                source      = "conf/configs.d"
                destination = "/etc"
            }

            # Copies all files and folders in apps/app1 to D:/IIS/webapp1
            provisioner "file" {
                source      = "apps/app1/"
                destination = "D:/IIS/webapp1"
            }
            }

    ## local-exec Provisioner
        
        *  The local-exec provisioner invokes a local executable after a resource is created.
        *  This invokes a process on the machine running Terraform, not on the resource. 
        *  See the remote-exec provisioner to run commands on the resource.
        *  Note that even though the resource will be fully created when the provisioner is run, there is no guarantee that it will be in an operable state - 
        
        * for example system services such as sshd may not be started yet on compute resources.

        # Example usage

        resource "aws_instance" "web" {
        # ...

        provisioner "local-exec" {
            command = "echo ${self.private_ip} >> private_ips.txt"
        }
        }

    ## remote-exec Provisioner

        * The remote-exec provisioner invokes a script on a remote resource after it is created. 
        * This can be used to run a configuration management tool, bootstrap into a cluster, etc. 
        * To invoke a local process, see the local-exec provisioner instead. 
        * The remote-exec provisioner requires a connection and supports both ssh and winrm.

        # Example usage

        resource "aws_instance" "web" {
        # ...

        # Establishes connection to be used by all
        # generic remote provisioners (i.e. file/remote-exec)
        connection {
            type     = "ssh"
            user     = "root"
            password = var.root_password
            host     = self.public_ip
        }

        provisioner "remote-exec" {
            inline = [
            "puppet apply",
            "consul join ${aws_instance.web.private_ip}",
            ]
        }
        }

