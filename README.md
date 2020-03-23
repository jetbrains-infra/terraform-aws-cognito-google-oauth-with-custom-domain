## About

Terraform module to set up an AWS Cognito user pool with the following features: 

* OAuth using Google as IdP
* Custom domain

### Params

* `name` - user pool name.
* `oauth_client_id` - Google OAuth client ID.
* `oauth_client_secret` - Google OAuth client secret.
* `client_callback_urls` - the list of OAuth callbacks urls
* `domain` - a domain name 
* `certificate_arn` - ARN of ACM certificate for the domain. The certificate should be placed in the `us-east-1` region. 

## Usage
 
```hcl
module "oauth_google" {
  source               = "github.com/jetbrains-infra/terraform-aws-cognito-google-oauth-with-custom-domain"
  name                 = "MyCustomers"
  oauth_client_id      = "XXXX.apps.googleusercontent.com"
  oauth_client_secret  = "XXX"
  client_callback_urls = ["https://example.com/callback/url"]
  domain               = "example.com"
  certificate_arn      = module.example_com_certificate.arn // see https://github.com/jetbrains-infra/terraform-aws-acm-certificate
}
```