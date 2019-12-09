dotfiles
========

My personal dotfiles to configure a Fedora linux, always in work never finished.

```
git clone https://github.com/fliiiix/dotfiles.git
cd dotfiles && ./bootstrap.sh laptop|desktop
```

![desktop](desktop.png)

## Common Problems

**Q**: How can I run a single playbook?
**A**: just run `ansible-playbook -i localhost, -c local --ask-become-pass functions/$name.yml`

**Q**: Which background image do you use?
**A**: [untitled by Masashi Wakui](https://www.flickr.com/photos/megane_wakui/32109503744/in/photostream/)

## Development

Feel free to fork it, test it and submit patches! Or just use it as base
for your own dotfiles. Scripts are only tested with the Fedora versions I'm using.
