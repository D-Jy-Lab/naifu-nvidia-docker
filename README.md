# naifu-nvidia-docker
A Docker IMG for Naifu.

һ��������NVIDIA�Կ���Naifu����˾���

## ʹ��˵��

�ο�NVIDIA [Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) ��װ����������

׼���÷�����ļ������ڰ�Ȩԭ�������в������ء�

�������غõ�Naifu�ļ���
cd naifu

���������
docker run --gpus all -itd --ipc=host -p 6969:6969 --name=naifu --restart=always -v ${PWD}:/content/naifu duan2001/naifu:xformers
