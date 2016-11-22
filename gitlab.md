### Reference links

> http://www.yangchangming.com/articles/2016/08/27/1472300229554.html
> https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/install/installation.md
> https://github.com/WebEntity/Installation-guide-for-GitLab-on-OS-X


### redis

```
brew install redis
ln -sfv /usr/local/opt/redis/homebrew.mxcl.redis.plist ~/Library/LaunchAgents/
brew services start redis
```


### go

```
brew install go
```

### User

```
LastUserID=$(dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1)
NextUserID=$((LastUserID + 1))
sudo dscl . create /Users/git
sudo dscl . create /Users/git RealName "GitLab"
sudo dscl . create /Users/git hint "Password Hint"
sudo dscl . create /Users/git UniqueID $NextUserID
LastGroupID=$(dscl . readall /Groups | grep PrimaryGroupID | awk '{ print $2 }' | sort -n | tail -1)
NextGroupID=$(($LastGroupID + 1 ))
sudo dscl . create /Groups/git
sudo dscl . create /Groups/git RealName "GitLab"
sudo dscl . create /Groups/git passwd "*"
sudo dscl . create /Groups/git gid $NextGroupID
sudo dscl . create /Users/git PrimaryGroupID $NextGroupID
sudo dscl . create /Users/git UserShell $(which bash)
sudo dscl . create /Users/git NFSHomeDirectory /Users/git
sudo cp -R /System/Library/User\ Template/English.lproj /Users/git
sudo chown -R git:git /Users/git

sudo defaults write /Library/Preferences/com.apple.loginwindow HiddenUsersList -array-add git

```
