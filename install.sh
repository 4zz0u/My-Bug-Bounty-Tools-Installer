#!/bin/bash
apt-get install -y software-properties-common
apt-get update
apt-get install -y gobuster golang massdns git assetfinder subfinder httprobe knockpy amass nuclei naabu dirsearch seclists

git clone https://github.com/Edu4rdSHL/findomain.git
cd findomain
sudo apt-get install -y cargo
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ..
rm -rf findomain

git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt
chmod +x ParamSpider.py
cd ..

git clone https://github.com/Raywando/degoogle
cd degoogle
pip install .
ln dorky /usr/bin/
cd ..
rm -rf degoogle

git clone https://github.com/elamaran619/zile.git
mv zile/zile.py .
chmod +x zile.py
rm -rf zile

wget https://github.com/tomnomnom/anew/releases/download/v0.1.1/anew-linux-386-0.1.1.tgz
gzip -d anew-linux-386-0.1.1.tgz
tar -xf anew-linux-386-0.1.1.tar
mv anew /usr/bin
rm anew-linux-386-0.1.1.tar

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip
mv aquatone /usr/bin/
rm aquatone_linux_amd64_1.7.0.zip LICENSE.ts README.md

go install github.com/gwen001/github-endpoints@latest
go install github.com/gwen001/github-subdomains@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/KathanP19/Gxss@latest
go install -v github.com/Emoe/kxss@latest
go install -v github.com/tomnomnom/gf@latest
go install -v github.com/tomnomnom/anew@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/lukasikic/subzy@latest

echo "export GOPATH=/root/go" >> ~/.bashrc
export GOPATH=/root/go
echo "export PATH=$GOPATH/bin:$PATH" >> ~/.bashrc
export PATH=$GOPATH/bin:$PATH
echo 'source $GOPATH/gf/gf-completion.bash' >> ~/.bashrc
git clone https://github.com/1ndianl33t/Gf-Patterns
mkdir ~/.gf
mv Gf-Patterns/*.json ~/.gf
mv /root/go/bin/gf /usr/bin/
rm -rf Gf-Patterns

wget https://gist.github.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt
wget https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt
git clone https://github.com/projectdiscovery/nuclei-templates.git
