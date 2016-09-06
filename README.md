# alfred-snippets

> 这里会存放一些自制的 Alfred Snippets 集合。
> 
> 目前计划的有日常、代码、颜文字等。

## Alfred Snippets 集合推荐

* [emoji 的集合](http://joelcalifa.com/blog/alfred-emoji-snippet-pack )

## 如何制作 Alfred Snippets 集合

### 方法一：Alfred 应用内制作

通过 Alfred 应用内的 UI 界面制作。

### 方法二：`*.json` 集合 -> `*.alfredsnippets`

把 `*.alfredsnippets` 的后缀名改为 `.zip`，解压缩文件，会看到每一条 snippet 为一个 .json 文件，还可能包含一个名为 `icon.png` 的大小为 80*80 的图标。

这里会探索自动化制作 Alfred Snippets 集合的方案。

#### `makeCollection.sh`

`makeCollection.sh` 是一个可以将一个包含 snippet 和图标的 Alfred Snippets 集合文件夹打包成 `*.alfredsnippets` 的脚本。

**使用方法：**

1. 使 `makeCollection.sh` 脚本具有执行权限：

```bash
chmod +x ./makeCollection.sh
```

2. 执行脚本：

```bash
./makeCollection.sh someCollect/
```

3. Alfred Snippets 集合文件夹示例目录结构为：

```
someCollect
├── icon.png
├── �\217�\ extra\ fast\ forward\ [952B925B-D39D-4657-B659-E24743FEB4FC].json
├── �\217�\ extra\ rewind\ [C6F21896-8F7F-49A0-8AA5-049B39161378].json
├── �\217�\ pause\ [101CBDB7-5EF0-4136-A6C0-92FE3BDD8A16].json
├── �\217�\ play\ pause\ [2EF2043A-18C0-4B81-8E7F-5386778EEE6D].json
├── �\217�\ record\ [2C04A1ED-C7EF-4BD2-979B-F16D0667B996].json
└── �\217�\ stop\ [12A22A9A-611D-444C-A75F-28A09EAE63C8].json
```

将打包为：`someCollect.alfredSnippets`，双击 `someCollect.alfredSnippets` 即可安装到 Alfred 中。

---

Alfred 论坛上关于 `*.alfredsnippets` 制作的讨论：[How to compress folder of snippets](http://www.alfredforum.com/topic/9199-how-to-compress-folder-of-snippets/)
