# Git Cheat Sheet
https://education.github.com/git-cheat-sheet-education.pdf
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

        commands as follows

    git status
it shows the status of all your files are in which stage state

    git add filename
it moves your file to staged state from unstaged state

    git reset filename
it revert your file from satged state to unstaged state

    git diff
it shows difference of what is changed but not staged

    git commit -m "your message"
it commit your staged content as a new commit snapshot

## Branches

    git branch
it shows list of branches and * will indicate present branch

    git branch branch_name
it create branch

    git checkout branch_name
it will take you to that branch




    
    
