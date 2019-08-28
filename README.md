# gitbook 搭建自己的 blog

- 创建 gitbook 项目

  ```shell
  # 安装
  npm i -g gitbook
  # 创建目录并初始化
  mkdir blog
  cd blog
  gitbook init
  # 构建打包
  gitbook build
  # 本地服务查看
  gitbook serve
  ```

- 关联 github 仓库

  ```shell
  # 初始化并添加仓库
  git init
  git remote add origin git@github.com:jensen5201/blog.git
  # 提交代码
  git add .
  git commit -m '[init] 初始化'
  ```

- 配置 github pages

  ```shell
  # 创建gh-pages分支 用于存放最终的html代码，master用于存放源代码, --orphan是在非新的存储库上以类似git init的状态创建分支
  git checkout --orphan gh-pages
  # 清除非必要的文件
  git rm -r --cached.
  git clean -df
  rm -rf *~
  ```
