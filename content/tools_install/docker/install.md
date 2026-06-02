+++
date = '2025-08-31T21:49:08+08:00'
draft = true
title = 'Docker 安装命令'
categories= ["tools"]
+++

## 一键安装(国内aliyun加速)

```shell
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
```

## 默认一键安装

```shell
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

## docker-compose 安装

```shell
sudo curl -L "https://ghproxy.com/https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --versio


sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compon
```

```shell
git config --global https.proxy https://192.168.2.6:7890
```
