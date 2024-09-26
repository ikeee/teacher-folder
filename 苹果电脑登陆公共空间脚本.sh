#!/bin/bash

# 卸载所有已挂载的CIFS/SMB共享
umount -a -t cifs -r

# 提示用户输入用户名和密码
read -p "请输入用户名: " username
read -s -p "请输入密码: " password
echo

# 挂载远程共享目录到本地 /mnt/remote
mount_command="mount -t cifs //192.168.30.99/homes /mnt/remote -o username=$username,password=$password"
eval $mount_command

# 检查挂载是否成功
if [ $? -eq 0 ]; then
    echo "远程共享目录已成功挂载到 /mnt/remote"
    # 打开文件管理器并显示挂载点
    xdg-open /mnt/remote
else
    echo "挂载远程共享目录失败"
fi