//GIT COMMANDS
sudo su
apt update
apt install git -y
mkdir project-code
cd project-code
# we need to initialize this folder/directory as git folder because i need to save the code which is
present in this folder as a version
git init
# if u dont run git init you will not be able to run any git based commands and will not be able to save
code as version in this folder
now lets create a file with name index.html with content hello world
vi index.html
press i
hello world
press esc :wq
git add. or git add <Filename>
git status
git diff filename # it will tell the difference in the file which git is tracking and not tracking
git config --global user.name "yourname"
git config --global user.email "yourmail@gmail.com"
Lets lets save the code as a version:
## all the content of the files which git is tracking will be saved as a version
git commit -m"this is first version of the code where we created index.html"
I want to see all the versions which is created:
git log
i want to see all the versions which is created single line:
git log --oneline 
we need to push the versions which we have created locally to github ---->
To perform first step:
git remote add origin githubrepolink
