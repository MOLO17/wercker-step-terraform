SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
$SCRIPT_PATH/run_terraform --access_key $WERCKER_RUN_TERRAFORM_ACCESS_KEY --secret_key $WERCKER_RUN_TERRAFORM_SECRET_KEY --state_stor_bucket $WERCKER_RUN_TERRAFORM_STATE_STOR_BUCKET --state_stor_bucket_region $WERCKER_RUN_TERRAFORM_STATE_STOR_BUCKET_REGION --state_stor_key $WERCKER_RUN_TERRAFORM_STATE_STOR_KEY --db_user $WERCKER_RUN_TERRAFORM_DB_USER --db_password $WERCKER_RUN_TERRAFORM_DB_PASSWORD --api_ssl_certificate_id $WERCKER_RUN_TERRAFORM_API_SSL_CERTIFICATE_ID --action $WERCKER_RUN_TERRAFORM_ACTION --execution_plan_file $WERCKER_RUN_TERRAFORM_EXECUTION_PLAN_FILE
