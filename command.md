# to ping all the servers saved in your inventory folder
ansible all -i inventory -m ping
# to list all iam users
aws iam list-users
# to create a new s3 bucket using the terminal
aws s3api create-bucket --bucket clam-bucket42 --region us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
### using paste mode in 
To safely paste without your code getting scrambled, follow this:
- open or create your file using
   vi stopnginx.yaml
- press esc button
- enable paste mode using
    :set paste
    press i
- paste your code and press esc
- disable paste mode very important using
    :set nopaste    
- save and exit using
   :wq!