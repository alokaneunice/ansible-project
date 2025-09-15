# ansible-project
Ansible is an open source, command-line IT automation software application written in Python. It can configure systems, deploy software, and orchestrate advanced workflows to support application deployment, system updates, and more.
### Project overview
- bring up your ansible controller and remote machines using terraform
- copy the private ip of the two remote servers and keep
- connect to the ansible controller using ssh client.
- go outside infra and bring up another terminal on vscode for the two remote servers and the ansible controller
- confirm ansible controller
     ansible --version
- create public and private key using
     ssh-keygen
- press enter until it gets to the end. Then cd to .ssh do ls
- cat the public key
     cat id_ed25519.pub
- go to aws and ssh into one of the remote machine and ssh into it by bringing up new terminal on vscode
- switch to downloads by
      cd ../.. then cd Downloads
- paste the copied ssh link then cd into .ssh
- type ls and vi authorized_keys
- press i and move to the end of the writings and press enter
- go to the ansible controller terminal and copy the key shown. Paste it in the remote server terminal opened and save using <escape doublecolumn wq!> press enter
- then cd ..   
- do same for other machines.
- ping the machine by <ssh private ip> or <ping private ip>. then type <exit> before pinging other ips on ansible controller       
- create an inventory file <vi inventory>. Write <[webservers]> then paste <private ips>etc and save
- ping the machines together on the ansible controller through the inventory by using
      ansible all -i inventory -m ping
- control c to stop the execution
#### To run multiple tasks, create a playbook
- create a folder ansible-playbook . then create files e.g <startnginx.yaml> 
- on your ansible controller create vi startnginx.yaml
- paste the content inside the ansible playbook <startnginx.yaml> inside the vi startnginx.yaml and save
- run the ansible playbook using
      ansible-playbook -i inventory startnginx.yaml  

- to purge your machine before running another apt
      sudo apt purge nginx <or any other apt>  
- to create a tree on the controller
     sudo apt install tree
- to check the tree out
      tree apache_role
- to create galaxy roles in the ansible controller
     ansible-galaxy init apache_role
