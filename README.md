# naifu-nvidia-docker
A Docker IMG for Naifu.

一个适用于NVIDIA显卡的Naifu服务端镜像。

## 使用说明

参考NVIDIA [Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) 安装驱动环境。

准备好服务端文件，由于版权原因清自行查找下载。

进入下载好的Naifu文件夹
cd naifu

启动服务端
docker run --gpus all -itd --ipc=host -p 6969:6969 --name=naifu --restart=always -v ${PWD}:/content/naifu duan2001/naifu:xformers
