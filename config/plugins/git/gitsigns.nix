_: {
  plugins.gitsigns = {
    enable = true;
    settings = {
      current_line_blame = true;
      current_line_blame_opts = {
        virt_text = true;
        virt_text_pos = "eol";
        delay = 500;
      };
      current_line_blame_formatter = "<author>, <author_time:%R> - <summary>";
      signs = {
        add = {
          text = " ";
        };
        change = {
          text = " ";
        };
        delete = {
          text = " ";
        };
        untracked = {
          text = "";
        };
        topdelete = {
          text = "󱂥 ";
        };
        changedelete = {
          text = "󱂧 ";
        };
      };
    };
  };
}
