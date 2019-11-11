---
layout: post
---
Dumping the credentials stored in the Firefox browser cache on MacOS is possible using the following commands:

{% highlight ruby %}
firefox_decrypt myuser$ python firefox_decrypt.py
Select the Firefox profile you wish to decrypt
1 -> Profiles/1v42l6gf.dev-edition-default
2 -> Profiles/cunynfjm.default
2

Master Password for profile /Users/myuser/Library/Application Support/Firefox/Profiles/cunynfjm.default:
2019-11-11 14:13:18,813 - WARNING - Attempting decryption with no Master Password

Website:   https://www.hackthebox.eu
Username: '<username>'
Password: '******'

Website:   http://webmail.mijndomein.nl
Username: '<username>'
Password: '******'

Website:   https://www.t-mobile.nl
Username: '<username>'
Password: '******'
{% endhighlight %}
