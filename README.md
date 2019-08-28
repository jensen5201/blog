# gitbook 搭建自己的 blog

- 创建 [gitbook](https://www.gitbook.com/) 项目

  ```shell
  # 安装
  npm install -g gitbook-cli
  # 创建目录并初始化
  mkdir blog
  cd blog
  gitbook init
  # 构建打包
  gitbook build
  # 本地服务查看
  gitbook serve
  ```

- 关联 [github](https://github.com/) 仓库

  ```shell
  # 初始化并添加仓库
  git init
  git remote add origin git@github.com:jensen5201/blog.git
  # 忽略不需要提交的文件
  echo '_book' > .gitignore
  echo 'node_modules' >> .gitignore
  # 提交代码
  git add .
  git commit -m '[init] 初始化'
  ```

- 配置 [github pages](https://pages.github.com/)

  ```shell
  # 创建gh-pages分支 用于存放最终的html代码，master用于存放源代码, --orphan是在非新的存储库上以类似git init的状态创建分支
  git checkout --orphan gh-pages
  # 清除非必要的文件
  git rm -r --cached.
  git clean -df
  rm -rf *~
  # 提取需要得文件并提交, 推送后github->setting中就自动会把github-pages指向gh-pages分支，并通过域名可访问
  cp -r _book/* .
  rm -rf _book
  git add .
  git commit -m '[release] 首次发布'
  git push -u origin gh-pages
  ```

- 如何通过脚本自动发布

  ```txt
    1、master存放源码，gh-pages存放html包；
    2、build之后进入_book目录，git init操作后，并添加同一仓库；
    3、把_book的master分支推送到仓库的gh-pages分支即可。
    4、授权执行权限：chmod +x deploy.sh
  ```

- [travis-ci](https://travis-ci.com/) 持续集成
