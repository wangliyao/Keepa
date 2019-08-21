branch=$(git symbolic-ref --short -q HEAD)
echo "分支: ${branch}"
deploy.sh master

