# devops 

## Git

```
brew install git
```

learn git

> [Git Pro](https://git-scm.com/book/en/v2)

> [Git CheatSheet](./git.md)

#### GitLab

[Install on MacOSX 10.12.1](./gitlab.md)

> https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/install/installation.md
> https://github.com/WebEntity/Installation-guide-for-GitLab-on-OS-X

#### GitHub

##### Register
    
[sign up](http://github.com)

##### hub(Option)

```
brew install hub
```
Example:create a repo using command line

> create repo: http://github.com/hongshunyang/devops

```
mkdir devops
cd devops
hub create
```

Or

```
mkdir devops
cd devops

echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/hongshunyang/devops.git
git push -u origin master
```



## Jenkins

```
rm -R ~/.jenkins (Reinstall)
brew install jenkins
brew services start/stop/restart jenkins
```
Configure 

> http://localhost:8080/

> GitHub Plugin

### Travis CI

> https://travis-ci.org/


## Docker

> https://github.com/yeasy/docker_practice/blob/master/SUMMARY.md

## Reference

> http://www.stratoscale.com/blog/devops/practical-devops-use-case-github-jenkins-docker/
