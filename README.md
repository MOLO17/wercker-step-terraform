# wercker-step-terraform
A Wercker step that will run terraform on local \*.tf files and will save remote state in a s3 bucket.
If you want to specify any variables to the terraform scripts, then for each variable name export an
environment variable with "TF_VAR_" prefixed to its name.
Example usage:
```
    - script:
        name: Set Terraform variables
        code: |
          export TF_VAR_my_var1=foo
          export TF_VAR_my_var2=bar
      - releasequeue/run-terraform@0.0.13:
          action: "plan"
          out_file: "output_file"
          state_stor_bucket: "test-terraform-state-bucket"
          state_stor_bucket_region: "us-east-1"
          state_stor_key: "terraform_state"

```
Parameters:

* action parameter can be either "plan" or "apply"
* out_file (optional) can be used to specify where to save the execution plan(when action is plan).
* in_file (optional) can be used to specify a saved execution plan(when action is apply)
* state_stor_bucket - s3 bucket where to store the terraform state (must exist)
* state_stor_bucket_region - AWS region where the state_stor_bucket is located
* state_stor_key - name of the output terraform state file in the s3 bucket

