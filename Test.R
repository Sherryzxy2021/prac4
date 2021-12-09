install.pacakages("usethis")
library(usethis)
use_git_config()   #填写name和email

install.packages("gitcreds")
library(gitcreds)
gitcreds_set()  #填写token password

use_github()    #connect R and Github
