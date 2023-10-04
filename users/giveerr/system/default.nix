{ pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.giveerr = {
    isNormalUser = true;
    home = "/home/giveerr";
    description = "giveerr";
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "docker" "libvirtd" ];
  };
}
