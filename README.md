# Zeek Spicy IMAP

This is a spicy parser of IMAP for Zeek based on https://www.youtube.com/watch?v=oJprmlB3eNo. Also, It will be a part of [zeek-mail-detection](https://github.com/Boomboomdunce/zeek-mail-detection) (private)

- rfc source: https://www.rfc-editor.org/rfc/rfc3501

## Usage

- Nix: Compile the analyzer.spicy to hlto

```
nix develop --command spicy-compile imap
```

- Native: Compile and test

```
cd build
cmake ..
cmake --build .
cd ../tests
btest
```
