dotfiles
========

My personal dotfiles to configure a Fedora linux, always in work never finished.

```
sudo dnf install git
git clone https://github.com/fliiiix/dotfiles.git
cd dotfiles && ./bootstrap.sh laptop|desktop
```

![desktop](desktop.png)

## Common Problems

**Q**: How can I run a single playbook?  
**A**: just run `ansible-playbook -i localhost, -c local --ask-become-pass function/$name.yml`  

**Q**: Which background image do you use?  
**A**: [Expedition 46 Landing (NHQ201603020016)](https://www.flickr.com/photos/nasahqphoto/25446711355/)  

## Development

Feel free to fork it, test it and submit patches! Or just use it as base
for your own dotfiles. Scripts are only testet with the Fedora versions I'm using.
