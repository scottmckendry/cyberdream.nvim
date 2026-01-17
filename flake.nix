{
  description = "cyberdream.nvim flake";
  outputs =
    { self }:
    let
      extrasDir = "${self}/extras";
      extraDirs = builtins.attrNames (builtins.readDir extrasDir);
      mkExtraPath = name: {
        inherit name;
        value = "${extrasDir}/${name}";
      };
    in
    {
      outPath = self;
      extras = builtins.listToAttrs (map mkExtraPath extraDirs);
    };
}
