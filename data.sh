#!/bin/bash
sudo yum -y install git
sudo git clone https://github.com/ankitap1219/step-4.git
cd step-4/
pip3 install -r requirements.txt
screen -m -d python3 app.py