# 如何上传到 GitHub

## 方式一：网页上传（最简单，无需装 Git）

1. 打开 https://github.com/new 建一个空仓库
2. 进入仓库 → Add file → Upload files
3. 把 `H:\GC48-GitHub` 里的所有文件拖进去（server 目录整个拖）
4. Commit

⚠️ 注意：
- `grasscutter-4.8.0-cn.jar` 有 97 MB，网页上传**可能失败**
- 超过 50 MB 会有警告，超过 100 MB 会被拒绝
- 如果网页上传失败 → 用方式二或 Git LFS

## 方式二：Git 命令行（推荐，jar 用 LFS）

```bash
# 1. 安装 Git（你的电脑还没装）
#    https://git-scm.com/download/win

# 2. 初始化
cd /d H:\GC48-GitHub
git init
git lfs install
git lfs track "*.jar"
git add .gitattributes
git add .
git commit -m "Grasscutter 4.8.0 CN usable build"

# 3. 关联远程仓库（换成你自己的地址）
git remote add origin https://github.com/<你的用户名>/<仓库名>.git
git branch -M main
git push -u origin main
```

## 方式三：直接把服务器目录压缩上传到「Release」

```
1. 把 H:\GC48-GitHub 压成 zip
2. GitHub 仓库 → Releases → Create a new release
3. 把 zip 作为附件上传（Release 附件支持 2 GB）
→ 这样 jar 大小不是问题
```

## 建议

- **仓库里只放源码/配置/文档**
- **jar 用 Release 附件或 LFS**
- resources（1.3 GB）永远不要上传