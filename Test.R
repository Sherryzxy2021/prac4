install.pacakages("usethis")
library(usethis)
use_git_config()   #填写name和email

install.packages("gitcreds")
library(gitcreds)
gitcreds_set()  #填写token password

use_github()    #connect R and Github

#4.58 Push to Github
  #先点右上角commit，再点右上角push
   

#4.5.9 Pull from Github
  #在Github里点击edit file，再拉到最下方add commit
  #回到R在右上角点pull
  #如果出现Please commit your changes or stash them before you merge
  #就在Terminal打出“git stash"


#4.5.10 Using Git outside RStudio


#4.5.11 Troubleshooting
#4.5.11.1 Were you challenged for your password?
  #set username and email
git config --global user.name 'yourGitHubUsername'
git config --global user.email 'name@provider.com'



#4.5.11.2 Greyed out push button

  #check the current branch
git branch -vv

  #
git branch -M main
git push -u origin main


  #change the URL of your GitHub
git remote set-url origin [enter your cloned URL from GitHUB here]```


#4.5.12 Fork a repository
  #copy of someone else's repository to your own GitHub account


#4.5.13 Branches
  #点开样例https://github.com/octocat/Spoon-Knife
  #点击右上角"fork"
  


#4.5.14 Back in time
#4.5.14.1 Git  不太会

#4.5.14.2 GitHub 不太会


#4.6.1 HTML
  # "Insert"（在knit旁边） > insert R （insert an R chunk）
find.package("tidyverse")

#4.6 
 #右上角run那一栏的最右 visual text
ff


