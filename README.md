linode-terraform

repo to build a nano at linode with nginx installed, configured, and readt to server a website.


to run:

export some variables:

```export DO_PAT="<linode API key here>"
export SSH_FINGERPRINT="<public ssh key where you are running terraform from>"```

then run these commands::

```terraform plan -var "do_token=${DO_PAT}" -var "pub_key=$HOME/.ssh/id_rsa.pub" -var "pvt_key=$HOME/.ssh/id_rsa" -var "ssh_fingerprint=$SSH_FINGERPRINT"```

to review the plan

```terraform apply -var "do_token=${DO_PAT}" -var "pub_key=$HOME/.ssh/id_rsa.pub" -var "pvt_key=$HOME/.ssh/id_rsa" -var "ssh_fingerprint=$SSH_FINGERPRINT"```

if you miss the ouput with the IP address run

```terraform show```
