{
  plugins.neo-tree = {
    enable = true;
    settings = {
      default_component_configs = {
        indent = {
          with_expanders = true;
          expander_collapsed = "󰅂";
          expander_expanded = "󰅀";
          expander_highlight = "NeoTreeExpander";
        };
        git_status = {
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
        bind_to_cwd = false;
        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
        filtered_items = {
          visible = true;
          hide_dotfiles = false;
          hide_gitignored = false;
          hide_by_name = [
            ".git"
          ];
        };
      };
      sources = [
        "filesystem"
        "buffers"
        "git_status"
        "document_symbols"
      ];
      add_blank_line_at_top = false;
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
