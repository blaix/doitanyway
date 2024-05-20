with import <nixpkgs> {};
mkShell {
  buildInputs = [
    bashInteractive
    flyctl
    litestream
    nodejs_20
    sqlite
  ];
  shellHook = ''
    export PATH="$PWD/node_modules/.bin:$PATH"
    export PATH="$HOME/.fly/bin:$PATH"
    if [ ! -f "$PWD/node_modules/.bin/gren" ]; then
      npm install
    fi
  '';
}

