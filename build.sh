# リモートリポジトリのURL
remote_path=https://github.com/neovim/neovim

# デプロイするブランチ
branch=master

# プロジェクトのディレクトリがあるか確認
# なければclone、あればpullをおこなう
if [ ! -e ${proj_name} ]; then
    git clone ${remote_path} ${proj_name}
    echo 'cloning success!'
else
    # pullもしくはfetch＆reset --hardを使う
    # 競合を起こさないよう、強制的に最新のリモートリポジトリに合わせる
    sudo git pull origin ${branch}
    echo 'git pull success!'
fi

cd ~/neovim
sudo rm -rf ~/neovim/build
sudo make CMAKE_BUILD_TYPE=Release
sudo make install
