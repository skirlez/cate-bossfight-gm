{
  description = "";
  inputs.gamemaker-flake.url = "github:skirlez/gamemaker-flake";
  outputs =
    { self, gamemaker-flake, ... }:
    let
      system = "x86_64-linux";
      cate-bossfight-gm = gamemaker-flake.packages.x86_64-linux.buildGameMakerProject {
        src = ./.;
        runtimeVersion = "2022.6.0.23";
      };
    in
    {
      packages.x86_64-linux.default = cate-bossfight-gm;
    };
}
