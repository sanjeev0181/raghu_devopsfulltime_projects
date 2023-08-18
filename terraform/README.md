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

