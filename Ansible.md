# Ansible cheet sheet

## Ansible insterview questions
https://www.interviewbit.com/ansible-interview-questions/

## Yaml file or play book
```
---
- hosts: stagingwebservers
 gather_facts: False
 vars:
  - server_port: 8080
 tasks:
  - name: install nginx
    apt: pkg=nginx state=installed update_cache=true
  - name: serve nginx config
     template: src=../files/flask.conf dest=/etc/nginx/conf.d/
     notify:
     - restart nginx
 handlers:
   - name: restart nginx
     service: name=nginx state=restarted
   - name: restart flask app
     service: name=flask-demo state=restarted
...
```

## Ansible Installation on Ubuntu and brief Info
https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-16-04
### pdf
https://www.edureka.co/blog/wp-content/uploads/2018/11/Ansible-Cheat_Sheet_Edureka.pdf

https://opensource.com/sites/default/files/gated-content/osdc_cheatsheet-ansible.pdf

### info
https://lzone.de/cheat-sheet/Ansible

https://opensource.com/article/20/11/ansible-cheat-sheet
### more log from git Hub (advanced)
https://github.com/cherkavi/cheat-sheet/blob/master/ansible.md

# Additional Commands
