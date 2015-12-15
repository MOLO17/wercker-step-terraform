# wercker-step-terraform
A Wercker step that will run terraform on local \*.tf files and will save remote state in a s3 bucket.

Example usage:
```
      - releasequeue/run-terraform@0.0.13:
          action: "plan"
          out_file: "output_file"
          state_stor_bucket: "test-terraform-state-bucket"
          state_stor_bucket_region: "us-east-1"
          state_stor_key: "terraform_state"
          db_user: "pg_user123"
          db_password: "pg_pass123"
          api_ssl_certificate_id: "cert_id"

```
Parameters:

* action parameter can be either "plan" or "apply"
* out_file (optional) can be used to specify where to save the execution plan(when action is plan).
* in_file (optional) can be used to specify a saved execution plan(when action is apply)
* state_stor_bucket - s3 bucket where to store the terraform state (must exist)
* state_stor_bucket_region - AWS region where the state_stor_bucket is located
* state_stor_key - name of the output terraform state file in the s3 bucket

