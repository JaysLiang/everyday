# 2019-12
```
   log my learning
```

## docker problem
```
	for docker safety, so docker images should use non-root user to execute file.
	non-root user may cannot execute excutable file.
	solution 1
	chmod u+x file
	solution 2
	ldd file
	see depend so lib, check if the user have the execute mode of the directory
	chmod 0755 dir  
	add r_x mode
```

## shell

### tar

```
	if there are too many small files, such as more than 200,000. we need to tar some 
	small pack, like 10 pack, each pack is a dir, and contains lots of files.
        we need tar.sh to tar sud-dir. 	
```

## git
### set user for each repo
```
	git config user.name "xxx"
	git config user.email xxx@qq.com
```
