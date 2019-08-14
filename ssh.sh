branch=$(git symbolic-ref --short -q HEAD)
echo "分支: ${branch}"
ssh root@xxxx 'bash -s' < deploy.sh ${branch}

