let
  twilight = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHCYOS4BAZE0lca/0T5dS8GEvgwUxB78BCbIU2FczqaM root@nixos";
  april = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINef2ken7G9138zedVAkEyX+gJtZ8SqACmYK3g4D1+0p me@aprl.pet";
in
{
  "wifi-password.age".publicKeys = [ twilight april ];
}