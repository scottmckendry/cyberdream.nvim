Base 16 colorschemes can have many applications. If the instructions for your use case are not listed here, please feel free to open an issue or pull request.

## Stylix (NixOS)

To use the cyberdream base16 colorschemes with [Stylix](https://github.com/danth/stylix) add the following to your `configuration.nix`:

```nix
{ pkgs, ... }:

{
    stylix.base16Scheme = builtins.fetchurl {
      url = "https://raw.githubusercontent.com/scottmckendry/cyberdream.nvim/main/extras/base16/cyberdream.yaml";
      sha256 = "1bfi479g7v5cz41d2s0lbjlqmfzaah68cj1065zzsqksx3n63znf";
    };
}
```

Pay close attention to the `sha256` hash. Especially if you are using the light variant, the hash will be different. NixOS will tell you the correct hash in the error message if you get it wrong.
