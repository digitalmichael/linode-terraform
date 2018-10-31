linode-terraform

repo to build a nano at linode with nginx installed, configured, and readt to server a website.


to run:

export some variables:

`export DO_PAT="(linode API key here)"`


`export SSH_FINGERPRINT="(public ssh key where you are running terraform from)"`


then run these commands (replace "path_to" with path to .ssh directory and "your_password_here" with your own root password)

to review the plan:

`terraform plan -var "do_token=${DO_PAT}" -var "pub_key=path_to/.ssh/id_rsa.pub" -var "pvt_key=path_to/.ssh/id_rsa" -var "authorized_key=`cat path_to/id_rsa.pub`" -var "root_password="your_password_here""
`

to deploy the plan

`terraform apply -var "do_token=${DO_PAT}" -var "pub_key=path_to/.ssh/id_rsa.pub" -var "pvt_key=path_to/.ssh/id_rsa" -var "authorized_key=`cat path_to/id_rsa.pub`" -var "root_password="your_password_here""
`

if you miss the ouput with the IP address run

`terraform show`

to destroy:

`terraform destroy -var "do_token=${DO_PAT}" -var "pub_key=path_to/.ssh/id_rsa.pub" -var "pvt_key=path_to/.ssh/id_rsa" -var "authorized_key=`cat path_to/id_rsa.pub`" -var "root_password="your_password_here""
`
