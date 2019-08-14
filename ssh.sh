branch=$(git symbolic-ref --short -q HEAD)
echo "分支: ${branch}"
ssh arons@74.114.158.103 'bash -s' < deploy.sh ${branch}

