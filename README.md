# Repository containing terraform configuration with NULL_PROVIDER & NULL_RESOURCE

# SOURCE -  Terraform Registry. 

 ## Prerequisites

- git
- terraform (>=1.5)
- AWS account
- AWS credentials configured to work with terraform tool
- Terraform installed localy

 ## Version of the provider
 - null (=3.2.1) 


 ## DESCRIPTION

  This kind of provider has a special task - triggering another proccess without creating any resource or a process. And not only the providers can be null in terraform and the      cloud environment. More information about null_providers can be found in the official documentation, and Terraform Registry. To demonstrate what exactly this provider can do, it   used another block with "null_resource" with count meta-argument in the configuration. Mein task ot this configuration is to generate ids in the state file, but no real       
  resources are deployed in any vendor like AWS, Azure ect. 

  ## FILES IN THE REPO

    - Create `main.tf` file
    ```
    provider "null" {}
    resource "null_resource" "example" {}

    ```

   * The variables.tf and outputs.tf files are part of the folder and are not removed it order for this folder to be used as s module in the future. So if someone desides to put some variables and outputs in order to expand the configuration those files are available for this task. 

## TESTING

   ### Commands for testing the configuration

     ```
     $ terraform init 
     $ terraform plan
     $ terraform apply

     - `Terraform init` will:
        - Initalize the required plugins

     - `Terraform plan` will:
        - 3 to add, 0 to change, 0 to destroy

    - `Terraform show` will:
        - null_resource.example[0]
        - null_resource.example[1]
        - null_resource.example[2]

    #### Outputs
      - No outputs to show 
