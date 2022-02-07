task :default

namespace "init" do
  task :tmux do
    tmux_conf_src = File.join(Dir.getwd, "tmux.conf")
    tmux_conf_dest = File.join(Dir.home, ".tmux.conf")
    FileUtils.cp tmux_conf_src tmux_conf_dest
    sh "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
    sh "~/.tmux/plugins/tpm/bin/install_plugins"
  end

  task :vim do
    vimrc_src = File.join(Dir.getwd, "vimrc")
    vimrc_dest = File.join(Dir.home, ".vim", "vimrc")
    FileUtils.cp tmux_conf_src tmux_conf_dest
    sh 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    sh 'vim -es -i NONE -c "PlugInstall" -c "qa"'
  end
end
