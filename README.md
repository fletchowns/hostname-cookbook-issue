# This purpoes of this repo is to demonstrate an issue with the hostname cookbook I'm experiencing

Why does certificate_manage create a file called ```/etc/pki/tls/certs/localhost.pem``` instead of ```/etc/pki/tls/certs/mybox.mycompany.com.pem```?

The file ```/home/vagrant/fqdn_test``` on the otherhand, has the correct value of node['fqdn'].

```
$ cd ./hostname-cookbook-issue/cookbooks/hostname-test-cookbook
$ vagrant up
$ vagrant ssh
[vagrant@mybox ~]$ hostname -a
mybox
[vagrant@mybox ~]$ hostname -f
mybox.mycompany.com
[vagrant@mybox ~]$ cat fqdn_test
This is a test. The value of fqdn is: mybox.mycompany.com
[vagrant@mybox ~]$ sudo ls -la /etc/pki/tls/certs/
total 1224
drwxr-xr-x. 2 root root   4096 Oct  2 05:12 .
drwxr-xr-x. 5 root root   4096 Mar  7  2014 ..
-rw-r--r--. 1 root root 244954 Jan 29  2014 ca-bundle.crt
-rw-r--r--. 1 root root 978662 Sep  3  2013 ca-bundle.trust.crt
-rw-r--r--. 1 root root     12 Oct  2 05:12 localhost-bundle.crt
-rw-r--r--. 1 root root     11 Oct  2 05:12 localhost.pem
-rwxr-xr-x. 1 root root    610 Nov 22  2013 make-dummy-cert
-rw-r--r--. 1 root root   2242 Nov 22  2013 Makefile
-rwxr-xr-x. 1 root root    829 Nov 22  2013 renew-dummy-cert
```