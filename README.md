# wercker-step-terraform
A Wercker step that will run terraform on local \*.tf files and will save remote state in a s3 bucket.

Example usage:
```
      - releasequeue/run-terraform@0.0.4:
          action: "plan"
          execution_plan_file: "output_file"
          access_key: "my_access_key"
          secret_key: "my_secret_key"
          state_stor_bucket: "test-terraform-state-bucket"
          state_stor_bucket_region: "us-east-1"
          state_stor_key: "terraform_state"
          db_user: "pg_user123"
          db_password: "pg_pass123"
          api_ssl_certificate_id: "cert_id"

```
Parameters:

* action parameter can be either "plan" or "apply"
* execution_plan_file (optional) can be used to specify where to save or load the execution plan from.
* access_key - AWS access key
* secret_key - AWS secret key
* state_stor_bucket - s3 bucket where to store the terraform state (must exist)
* state_stor_bucket_region - AWS region where the state_stor_bucket is located
* state_stor_key - name of the output terraform state file in the s3 bucket

