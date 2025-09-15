# to create a role in ansible run the comand below

ansible-galaxy init apache_role


# Now to run ansible patching role on the remote servers run the command below

ansible-playbook -i inventory apache_playbook_role.yml