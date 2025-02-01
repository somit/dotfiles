Using chezmoi to create dotfiles.

Create toml settings for encryption
-----
vi ~/.config/chezmoi/chezmoi.toml

```toml
encryption = "age"
[age]
    identity = "/home/user/key.txt"
    recipient = "this comes age identity file"
```


