# 2019-12
```
   log my learning
```

## docker
### permisson deny or file does not exist
```
	for safety, docker images should use non-root user to execute file.
	sometimes, non-root user cannot execute excutable file.
	solution 1
	chmod u+x file
	solution 2
	ldd file
	see depend so lib, check if the user have the execute mode of the directory
	chmod 0755 dir  
	add r_x mode
```
### COPY
when COPY file, change file owner.
```
    # COPY --chown=user:usergroup files /dir   
``` 

## shell

### tar
```
	if there are too many small files, such as more than 200,000. we need to tar some 
	small pack, like 10 pack, each pack is a dir, and contains lots of files.
        we need tar.sh to tar sud-dir. 	
```
### nc
transfer file to you friend in local network
```$xslt
    # nc -l 11231 < filename
```
you friend can get this file by this cmd
```$xslt
    # nc ip 11231 > newfilename
```

## git
### set user for each repo
```
    you may have github account and gitlab account in the same OS
    for each repo you can set as follows:
	git config user.name "xxx"
	git config user.email xxx@qq.com
```

## mysql

### transaction concurrency
```
transaction concurrency  execute sql one by one
```
```sql
    CREATE TABLE `test` (
      `id` int(11) NOT NULL AUTO_INCREMENT,
      `value` int(11) DEFAULT NULL,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 MAX_ROW
```
| sequence|transaction1|transaction2|
|--------|---------|-----|
| 1|insert test (value) values(1)| |
| 2| |insert test (value) values(2) |
| 3|insert test (value) values(3)| |
| 4| |insert test (value) values(4) |
| 5| commit| |
| 6| select * from test;<br>  result: id is 1 and 3|  |
| 7|  |commit |
| 8| |select * from test;<br>  result: id is 1 2 3 4  |

### truncate
```$xslt
truncate can not rollback in transaction
```

## network

### tcpdump
tcpdump -vv host ip -w file.cap
```
	this command to dump packet into file.cap
```
then use tcpdump -r file.cap or wireshark file.cap to anylazye

#### tcpdump
icmp   
```
# ping www.baidu.com
23:53:13.847245 IP (tos 0x0, ttl 55, id 26190, offset 0, flags [DF], proto ICMP (1), length 84)
    14.215.177.39 > liangwr-Inspiron-7447: ICMP echo reply, id 4541, seq 2, length 64
```
### eth

### ip
#### IPv4 forwarding is disabled
set net.ipv4.ip_forwarding=1
```
	vi /etc//etc/sysctl.conf
```

