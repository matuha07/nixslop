{ pkgs, ... }:
{
 programs.nvf = {
  enable = true;
  settings = {
    vim.viAlias = false;
    vim.vimAlias = true;

    vim.lsp.enable = true;
    vim.telescope.enable = true;
    vim.autocomplete.nvim-cmp.enable = true;

    vim.languages = {
      enableTreesitter = true;

      nix.enable = true;
      markdown.enable = true;
      html.enable = true;
      go.enable = true;
      ts.enable = true;
      python.enable = true;
      qml.enable = true;
    };
  };
};

}
