# Git Cheat Sheet
https://education.github.com/git-cheat-sheet-education.pdf

## Git Installation on Ubuntu

```
apt-get update -y
apt-get install git -y
git --version
```


# Additional Commands

## setup & init

configuring user information used across all local repositories

    git config --global user.name "your name"
represents your name

    git congig --global user.email "your@email.com"
represents your mail

    git config --global user.name
displays user name

    git config --global user.email
displays user email

    git config --global color.ui auto
for identifing with colors

### init

    git init
it is intialize your directory as SCM(source Code Management) or respond to GIT

    git clone http://url_that_u_copy_from_github.git
copy all the content from your Git repository


## Stages
### 3 Stages are available
- unstaged
- staged
- commited
#### commands

    git status
it shows the status of all your files are in which stage state

    git add filename
it moves your file to staged state from unstaged state

    git reset filename
it revert your file from satged state to unstaged state

    git diff
it shows difference of what is changed but not staged

    git diff --staged
it shows difference of what is changed but not commited

    git commit -m "your message"
it commit your staged content as a new commit snapshot

    git log
it shows all commits in the current branch

## Branches

    git branch
it shows list of branches and * will indicate present branch

    git branch -a
it shows hidden branches (if you clone a repository)

    git branch -r
it shows hidden branches (if you clone a repository)

    git branch --merged master
it shows which branches are merged with master

    git branch --no-merged
it show which are not merged


    git branch branch_name
it create branch

    git checkout branch_name
it will take you to that branch

## Merging

    git merge branch_name
it will merge info from selected branch to current branch

## push & pull

    git push origin
it will push your information from main branch into repository

    git push origin branch_name
it will push your information from selected branch_name into repository

    git pull origin
it will pull your information from repository into current_branch

## Inspect & Compose

    git log
it shows all commits in the current branch
    
    git log --oneline
it show in online

    git log -3
it show latest 3

    

    git log branchB..branchA
it show commits on the branchA thar are not in branch B

    git log --follow file_name
it will show commits of that file even across renames

    git show
it show any object in Git in Human readable format






    
    
