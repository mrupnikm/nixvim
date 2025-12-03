{
  plugins.startup = {
    enable = true;

    settings = {
      parts = [
        "header"
        "body"
      ];
      options = {
        paddings = [
          1
          3
        ];
      };
      colors = {
        background = "#ffffff";
        foldedSection = "#ffffff";
      };

      header = {
        type = "text";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          " ██████╗░███████╗░█████╗░░█████╗░██████╗░████████╗░░░████████╗███████╗░█████╗░██╗░░██╗"
          " ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝░░░╚══██╔══╝██╔════╝██╔══██╗██║░░██║"
          " ██║░░██║█████╗░░██║░░╚═╝██║░░██║██████╔╝░░░██║░░░░░░░░░██║░░░█████╗░░██║░░╚═╝███████║"
          " ██║░░██║██╔══╝░░██║░░██╗██║░░██║██╔══██╗░░░██║░░░░░░░░░██║░░░██╔══╝░░██║░░██╗██╔══██║"
          " ██████╔╝███████╗╚█████╔╝╚█████╔╝██║░░██║░░░██║░░░██╗░░░██║░░░███████╗╚█████╔╝██║░░██║"
          " ╚═════╝░╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚══════╝░╚════╝░╚═╝░░╚═╝"
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };

      body = {
        type = "mapping";
        oldfilesDirectory = false;
        align = "center";
        foldSection = false;
        title = "Menu";
        margin = 5;
        content = [
          [
            " Find File"
            "Telescope find_files"
            "ff"
          ]
          [
            "󰍉 Find Word"
            "Telescope live_grep"
            "fr"
          ]
          [
            " Recent Files"
            "Telescope oldfiles"
            "fg"
          ]
          [
            " File Browser"
            "Telescope file_browser"
            "fe"
          ]
        ];
        highlight = "string";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

  };
}
