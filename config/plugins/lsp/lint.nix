{
  lib,
  pkgs,
  ...
}:
{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      terraform = [ "tflint" ];
      dockerfile = [ "hadolint" ];
      "yaml.ansible" = [ "ansible_lint" ];
    };
    linters = {
      tflint = {
        cmd = "${lib.getExe pkgs.tflint}";
      };
      hadolint = {
        cmd = "${lib.getExe pkgs.hadolint}";
      };
      ansible_lint = {
        cmd = "${lib.getExe pkgs.ansible-lint}";
      };
    };
  };

  autoCmd = [
    {
      event = [
        "BufWritePost"
        "BufReadPost"
        "InsertLeave"
      ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            require("lint").try_lint()
          end
        '';
      };
    }
  ];
}
