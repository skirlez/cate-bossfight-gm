{
  description = "";
  inputs.gamemaker-flake.url = "github:skirlez/gamemaker-flake";
  outputs =
    { self, gamemaker-flake, ... }:
    let
      cate-bossfight-gm = gamemaker-flake.packages.x86_64-linux.buildGameMakerProject {
        src = ./.;
      };
    in
    {
      packages.x86_64-linux.default = cate-bossfight-gm;
    };
}
