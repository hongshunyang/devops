# devops 

## [Introduction](http://www.martinfowler.com/articles/continuousIntegration.html)

* Continuous Integration

![continuous integration](./misc/ci1.png)

* Continuous Delivery

![continuous delivery](./misc/cd2.png)

* Continuous Deployment

![continuous depolyment](./misc/cd3.png)

## Git

```
brew install git
```

learn git

> [Git Pro](https://git-scm.com/book/en/v2)

> [Git CheatSheet](./git.md)

> [Git Completion](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion)

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

> [Install Docker](https://www.docker.com/products/overview)

> Install Kitematic

> [Learn Docker](./docker.md)

## CoreOS

## Ansible

## Saltstack

## Chef

## Puppet




## Reference

> http://www.stratoscale.com/blog/devops/practical-devops-use-case-github-jenkins-docker/
