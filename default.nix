let pkgs = import <nixpkgs> {};
in pkgs.mkShell rec {
    buildInputs = with pkgs; [
        ruby_3_2
        sqlite
    ];
    shellHooks = ''
    gem install bundler
    bundle install
    '';
}