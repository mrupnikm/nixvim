{
  plugins.neo-tree = {
    enable = true;
    settings = {
      defaultComponentConfigs = {
        indent = {
          withExpanders = true;
          expanderCollapsed = "󰅂";
          expanderExpanded = "󰅀";
          expanderHighlight = "NeoTreeExpander";
        };

        gitStatus = {
          symbols = {
            added = " ";
            conflict = "󰩌 ";
            deleted = "󱂥";
            ignored = " ";
            modified = " ";
            renamed = "󰑕";
            staged = "󰩍";
            unstaged = "";
            untracked = " ";
          };
        };
      };
      filesystem = {
        bindToCwd = false;
        followCurrentFile = {
          enabled = true;
        };
      };
      sources = [
        "filesystem"
        "buffers"
        "git_status"
        "document_symbols"
      ];
      addBlankLineAtTop = false;
    };

  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
  ];
}
