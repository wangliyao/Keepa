cd /home/arons/workspace/
if [ ! -d "master" ];then
    echo "克隆项目master"
    git clone -b master https://github.com/wangliyao/Keepa.git
    cd Keepa
else
    cd Keepa
    echo "拉取项目Keepa"
    git pull origin master
fi
web=$(docker-compose ps | grep keepa | awk '{print $1}')
if [ -z $web ];then
    echo "构建容器: ${web}"
    docker-compose up -d
else
    echo "重启容器: ${web}"
    docker-compose restart
fi

