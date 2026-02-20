{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    blame-nvim
  ];

  extraConfigLua = ''
    require("blame").setup({
      date_format = "%Y-%m-%d",
      virtual_style = "right_align",
      merge_consecutive = true,
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>gB";
      action = "<cmd>BlameToggle<CR>";
      options = { desc = "Toggle git blame"; };
    }
  ];
}
