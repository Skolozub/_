# create a file C:\Users\[user]\.bashrc

# functions
function autoPush () {
  command git add -A
  echo "=============================================="
  echo "ADDED"
  echo "=============================================="
  command git stash
  echo "=============================================="
  echo "STASHED"
  echo "=============================================="
  command git pull origin master
  echo "=============================================="
  echo "<-PULLED"
  echo "=============================================="
  command git stash apply --index
  echo "=============================================="
  echo "UNSTASHED"
  echo "=============================================="
  command git commit -m "$1"
  echo "=============================================="
  echo "COMMITED"
  echo "=============================================="
  command git push origin sidk
  echo "=============================================="
  echo "PUSHED->"
  echo "=============================================="
}

# git commands
alias add="git add -A"
alias st="git stash"
alias pull="git pull origin $1"
alias push="git push origin $1"
alias commit="git add -A; git commit -m $1"
alias stli="git stash list"
alias stap="git stash apply --index"
alias stcr="git stash clear"
alias autopush=autoPush

# yarn commands
alias ys="yarn start"
alias stb="yarn start-storybook -p 9001"

# servers connect
# edunavi
alias edunavi-p='ssh -i ~/.ssh/webdev3.pem debian@10.100.4.162 -t "cd www/edunavi/; bash --login"'
alias edunavi-d='ssh -i ~/.ssh/webdev3.pem debian@10.0.2.125 -t "cd www/stage.edunavi/; bash --login"'
# uud.school
alias uud-p='ssh -i ~/.ssh/webdev3.pem debian@10.100.4.151 -t "cd www/uud.school/; bash --login"'
alias uud-d='ssh -i ~/.ssh/webdev3.pem debian@10.100.4.152 -t "cd www/development.frontend.uud.school/; bash --login"'
# kreaforn
alias kreaforn-p='ssh -i ~/.ssh/webdev3.pem debian@10.0.2.253 -t "cd /var/www/html; bash --login"'
# pictonet
alias pictonet-p='ssh -i ~/.ssh/webdev3.pem debian@10.0.4.104 -t "cd /var/www/html/; bash --login"'