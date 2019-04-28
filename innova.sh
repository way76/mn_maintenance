innova-cli invalidateblock 00000000326a9e83df423bef66efe8b8b65a2eb90172a1fff8865a41be8f6a2b
innova-cli stop
sleep 60
innovad -daemon
sleep 60
innova-cli addnode 80.211.213.40 add
innova-cli addnode 81.2.251.10 add
innova-cli addnode 85.255.5.140 add
innova-cli addnode 5.189.173.148 add
innova-cli addnode 173.249.17.108 add
innova-cli addnode 5.189.174.48 add
innova-cli addnode 167.86.75.120 add
innova-cli addnode 5.189.157.15 add
innova-cli addnode 5.189.180.235 add
innova-cli addnode 173.249.39.63 add
innova-cli addnode 167.86.68.75 add
innova-cli addnode 167.86.78.222 add
innova-cli addnode 173.212.247.119 add
innova-cli addnode 173.249.56.247 add 
innova-cli reconsiderblock 00000000326a9e83df423bef66efe8b8b65a2eb90172a1fff8865a41be8f6a2b
watch -n 20 'innova-cli getinfo && innova-cli masternode status'
