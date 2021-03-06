app=$1
cd /root/workspace/
if [ ! -d "${app}" ];then
    echo "克隆项目${app}"
    git clone -b $app https://github.com/wangliyao/Keepa.git $app
    cd ${app}
else
    cd ${app}
    echo "拉取项目${app}"
    git pull origin $app
fi
branch=${app//-/}
echo ${branch}
web=$(docker-compose ps | grep $branch | awk '{print $1}')
if [ -z $web ];then
    echo "构建容器: ${web}"
    docker-compose up -d
else
    echo "重启容器: ${web}"
    docker-compose restart
fi
