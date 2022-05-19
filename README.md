# ec2-ubuntu-dotfiles
## Setup EC2 Instance
- g4dn.12xlarge
- Deep Learning AMI (Ubuntu 18.04) Version 59.0
- Open a port 8888 to access Jypyuter


## Launch Jypyter Lab
```
$ source activate tensorflow_p36
$ jupyter notebook password
$ jupyter lab --port 9999
```

ローカルのターミナルでトンネルを張る
```
$ ssh -i ~/mykeypair.pem -N -f -L 9999:localhost:9999 ubuntu@ec2-###-##-##-###.compute-1.amazonaws.com
``` 

### dotfiles を展開する
```
$ git clone -b deeplearning-ami https://github.com/tkazusa/ec2-ubuntu-dotfiles.git ~/.dotfiles
$ ~/.dotfiles/setup.sh
```

### EC2 のストレージ拡張
[EC2ボリューム拡張.md](https://gist.github.com/tkazusa/c04d289069668a5586f98c8b42f2f8fd)を参照。
