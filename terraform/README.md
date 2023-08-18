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