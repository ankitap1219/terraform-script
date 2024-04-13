#!/bin/bash
sudo yum -y install git
sudo git clone https://github.com/ankitap1219/flight-prediction.git
cd flight-prediction/
pip3 install -r requirements.txt
screen -m -d python3 app.py
