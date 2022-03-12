{
  description = ''Karax is a framework for developing single page applications in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."karax-master".url = "path:./master";
  inputs."karax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-0_1_0".url = "path:./0_1_0";
  inputs."karax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-0_2_0".url = "path:./0_2_0";
  inputs."karax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_0_0".url = "path:./1_0_0";
  inputs."karax-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_0".url = "path:./1_1_0";
  inputs."karax-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_1".url = "path:./1_1_1";
  inputs."karax-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_2".url = "path:./1_1_2";
  inputs."karax-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_3".url = "path:./1_1_3";
  inputs."karax-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_2_1".url = "path:./1_2_1";
  inputs."karax-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}