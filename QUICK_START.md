# 🚀 快速参考

## 工作流程

```
修改 docs/ 文件
    ↓
修改 mkdocs.yml (如需要)
    ↓
git add .
git commit -m "描述修改"
git push origin main
    ↓
GitHub Actions 自动构建
    ↓
网站自动部署到 gh-pages
    ↓
✅ 完成！查看 https://eriche2016.github.io/VFM_course/
```

## 常用命令

### 查看分支
```powershell
git branch -a
```

### 确保在 main 分支
```powershell
git checkout main
git pull origin main
```

### 添加新文件
```powershell
git add .
git commit -m "Add new chapter"
git push origin main
```

### 查看部署状态
浏览器访问：https://github.com/eriche2016/VFM_course/actions

## 文件结构

```
VFM-course/
├── docs/                          # 📝 文档源（修改这里）
│   ├── index.md                   # 首页
│   ├── part1/
│   │   ├── chapter1.md
│   │   └── chapter2.md
│   └── part2/
│       ├── chapter3.md
│       └── chapter4.md
├── mkdocs.yml                     # ⚙️ 网站配置（需要时修改）
├── .github/
│   └── workflows/
│       └── deploy.yml            # 🤖 自动化脚本（勿改）
├── site/                         # 🌐 生成的网站（勿修改）
├── WORKFLOW.md                   # 📖 详细指南
└── README.md                     # 📄 项目说明
```

## 添加新章节的步骤

1. **创建文件**
   ```powershell
   # 在 docs/part1/ 下创建 chapter3.md
   ```

2. **编写内容**
   ```markdown
   # 第三章：标题
   
   内容...
   ```

3. **更新导航**（编辑 `mkdocs.yml`）
   ```yaml
   - 第一部分:
     - 第一章: part1/chapter1.md
     - 第二章: part1/chapter2.md
     - 第三章: part1/chapter3.md  # ← 新增
   ```

4. **提交推送**
   ```powershell
   git add docs/part1/chapter3.md mkdocs.yml
   git commit -m "Add chapter3 to part1"
   git push origin main
   ```

5. **完成！** ✅
   等待 1-3 分钟，访问网站查看更新

## 本地预览（可选）

```powershell
# 安装工具
pip install mkdocs mkdocs-material

# 进入项目目录
cd VFM-course

# 启动本地服务
mkdocs serve

# 打开浏览器：http://localhost:8000
```

## 注意事项

⚠️ **重要**
- 只修改 `docs/` 文件夹中的内容
- 只修改 `mkdocs.yml` 配置
- 不要手动修改 `site/` 目录
- 始终在 `main` 分支工作
- 不要修改 `.github/workflows/deploy.yml`

✅ **好习惯**
- 经常提交（小的、有意义的 commit）
- 使用清晰的 commit 信息
- 在本地预览后再推送
- 定期检查网站是否正确显示
