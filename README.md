# Tutorial

An introduction to Terraform.

Steps:

* Terraform Data vs Resource
* Setup credentials from 1Password -> Download service-account JSON file

```bash
# The credentials are set as part of the context
# example
# export TF_CREDS="/tmp/bla.json"
export TF_CREDS="<path to JSON file>"
export GOOGLE_APPLICATION_CREDENTIALS="${TF_CREDS}"
```

* Find the network `Default`.  Hint: Use GCP console, and <https://www.terraform.io/docs/providers/google/d/datasource_compute_subnetwork.html>
* Create a VM connected to the `Default` network based on an `Ubuntu` image and using a `f1-micro` machine type.
* Examine the content of the created state file: `terraform.state`
* Cleanup (`terraform destroy`)


Useful commands:

```bash
$ # Download plugin as specified by provider
$ terraform init
Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "google" (2.1.0)...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

$ # Compute the execution plan
$ terraform plan
...

$ # Execute plan
$ terraform apply
...

$ # Delete everything
$ terraform destroy
...

```

# Links

See https://www.terraform.io/.

