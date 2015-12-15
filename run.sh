SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
$SCRIPT_PATH/run_terraform --state_stor_bucket "$WERCKER_RUN_TERRAFORM_STATE_STOR_BUCKET" --state_stor_bucket_region "$WERCKER_RUN_TERRAFORM_STATE_STOR_BUCKET_REGION" \
--state_stor_key "$WERCKER_RUN_TERRAFORM_STATE_STOR_KEY" --action "$WERCKER_RUN_TERRAFORM_ACTION" \
--in_file "$WERCKER_RUN_TERRAFORM_IN_FILE" --out_file "$WERCKER_RUN_TERRAFORM_OUT_FILE"
