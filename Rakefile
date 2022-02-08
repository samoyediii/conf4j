task :default

namespace "init" do
  task :tmux do
    tmux_conf_src = File.join(Dir.getwd, "tmux.conf")
    tmux_conf_dest = File.join(Dir.home, ".tmux.conf")
    FileUtils.cp(tmux_conf_src, tmux_conf_dest)

    sh "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
    sh "~/.tmux/plugins/tpm/bin/install_plugins"
  end

  vim_dir = File.join(Dir.home, ".vim")
  vim_swap_dir = File.join(vim_dir, "swap")
  vim_backup_dir = File.join(vim_dir, "backup")
  vim_undo_dir = File.join(vim_dir, "undo")
  directory vim_dir
  directory vim_swap_dir
  directory vim_backup_dir
  directory vim_undo_dir

  task vim: [vim_swap_dir, vim_backup_dir, vim_undo_dir] do
    vimrc_src = File.join(Dir.getwd, "vimrc")
    vimrc_dest = File.join(Dir.home, ".vim", "vimrc")
    FileUtils.cp(vimrc_src, vimrc_dest)

    sh 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    sh 'vim -es -u ~/.vim/vimrc -i NONE -c "PlugInstall" -c "qa"'
  end
end
