#!/bin/sh

apt-get update -y
apt-get upgrade -y
apt-get install libcurl4-openssl-dev -y
apt-get install libssl-dev -y
apt-get install libjansson-dev -y
apt-get install automake -y
apt-get install autotools-dev -y  
apt-get install build-essential -y
apt-get install nano -y


chmod +x edit-miner
chmod +x run-miner
chmod +x add-file
chmod +x update
chmod +x down-grade
chmod +x ANSI_Shadow.flf
chmod +x backup
chmod +x restore
chmod +x install.txt

apt-get install python3 -y
apt-get install pip -y
apt-get install wget -y
apt-get install figlet -y
apt-get install python3-progress -y
apt-get install python3-requests -y



apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang -y

mv mobile-mining ../../etc
mv edit-miner ../../bin
mv run-miner ../../bin
mv add-file ../../bin
mv update ../../bin
mv down-grade ../../bin
mv ANSI_Shadow.flf ../../usr/share/figlet
mv backup /data/data/com.termux/files/usr/bin
mv restore /data/data/com.termux/files/usr/bin
mv install.txt /storage/emulated/0/download

run-miner


cd && cd ../etc/mobile-mining/ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh

chmod +x ccminer

cd && cd ../etc
nano bash.bashrc

run-miner
