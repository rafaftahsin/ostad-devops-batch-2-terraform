### Get session token

aws sts get-session-token \
    --duration-seconds 43200 \
    --serial-number "arn:aws:iam::<AWS-AC>:mfa/<usernmae>" \
    --token-code 472266 --profile <usernmae>