{ }:

let
  pkgs = import <nixpkgs> { };
in

with pkgs;

buildEnv {
  name = "plone-env";
  paths = [
    python27
    python27Packages.distribute
    python27Packages.recursivePthLoader
    python27Packages.virtualenv
    plone43Packages.plone
    plone43Packages.pillow
    plone43Packages.mailinglogger
    plone43Packages.plone_recipe_zope2instance
    plone43Packages.zc_recipe_egg
  ] ++ lib.attrValues python27.modules;
}