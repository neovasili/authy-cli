# Two factor authentication cli

This docker file contains a nodejs tool to create a two factor authentication cli.

## Usage

```bash
docker build --rm -t authy:latest ~/workspace/docker/authy-cli

docker run --rm authy:latest authenticator --key "YOUR_TOKEN_KEY" | grep Token | grep -o "\([0-9]\+\)\$" | tr -d "\n" | pbcopy
```

With this last command, your TOTP current code will be copied to your clipboard, so you only have to paste it using Command + V (or Ctrl + V).

The parameter **YOUR_TOKEN_KEY** is unique for your TOTP and is irrecoverable, so maybe you have to restore your TOTP to retrieve a new one.

## Reference

*  https://www.npmjs.com/package/authenticator-cli