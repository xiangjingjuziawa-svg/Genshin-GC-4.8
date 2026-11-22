# Grasscutter 4.8.0 CN — 可用整合版（Juzi build）

> 基于 [Grasscutter](https://github.com/Grasscutters/Grasscutter)（AGPL-3.0）与 KeiLuna 2.0.3 定制分支整理。
> **下载**：[Release v1.0.0](https://github.com/xiangjingjuziawa-svg/Genshin-GC-4.8/releases/tag/v1.0.0)
> - `GC48-server-v1.0.0.zip`（88.9 MB）服务端：jar + config + 启动脚本 + 改动说明
> - `resources-4.8.0.zip`（437.1 MB）游戏资源，解压后 1.28 GB（已含全部数据修正）

## 特性

- 支持《原神》4.8.0 国服客户端（dispatch + KCP 游戏服）
- 已验证可进入游戏、跑图、传送、拾取、开宝箱、圣遗物、任务面板
- 内置中文语音包支持说明（见下）

## 快速开始

### 1. 准备环境

```
JDK 17        （必需）
MongoDB 5.0+  （必需，默认 127.0.0.1:27017）
resources 目录（必需，本仓库不提供，见下文）
```

### 2. 目录结构

```
server/
├── grasscutter-4.8.0-cn.jar   ← 从 Release 解压得到
├── config.json
├── start.bat
└── resources/                 ← 从 resources-4.8.0.zip 解压得到
```

### 3. 下载并启动

1. 从 [Release v1.0.0](https://github.com/xiangjingjuziawa-svg/Genshin-GC-4.8/releases/tag/v1.0.0) 下载两个包
2. 解压 `GC48-server-v1.0.0.zip`
3. 解压 `resources-4.8.0.zip`，把 `resources` 文件夹放到 `server/` 下（与 jar 同级）
4. 双击 `server/start.bat`

看到 `加载完成！输入 "help" 查看命令列表` 即成功。

### 4. 客户端

需要 4.8.0 客户端 + 指向本服的补丁（Astrolabe.dll 等），本仓库不提供客户端补丁。

## resources 说明

`resources/` 是游戏数据（BinOutput / ExcelBinOutput / Scripts / TextMap 等），体积约 1.3 GB，**不在本仓库内**（GitHub 不适合托管）。

你需要自行准备 4.8 版资源目录，放到 `server/resources/`。

> 本版本已知需要的数据修正（附在 patches/ 目录）：
> - `ExcelBinOutput/ReliquaryAffixExcelConfigData.json` 需要 `weight` 字段
> - `ExcelBinOutput/EnvAnimalGatherExcelConfigData.json` 需要 `gatherItemId` 字段
> - `Server/DropTableExcelConfigData.json` 的 `fallToGround` 设为 false 可避免掉落物重复
> - `BinOutput/Quest/*.json` 中的 uint64 数字需要转成有符号 long
> - `BinOutput/Quest/*.bak` 必须移除（GC 会把备份文件当 JSON 读）

## 已验证可用的命令

```
help                       列出所有命令
account create <user> <pass>
give @<uid> <itemId> x<count>
q @<uid> add <questId>     接任务
q @<uid> finish <questId>  完成任务
prop @<uid> UnlockMap 1    解锁地图
tag @<uid> unlockall       解锁场景标签
sc @<uid> <sceneId>        传送到场景
```

## 已知限制

- 任务追踪 HUD 不可用（4.8 协议中无追踪字段，属客户端本地状态）
- 部分 plot 类任务不显示（缺剧情上报实现）
- 一切依赖场景脚本的复杂交互可能不稳定

## 源码与许可（AGPL-3.0 合规声明）

本仓库分发的 `server/grasscutter-4.8.0-cn.jar` 是基于以下开源项目构建的衍生作品：

| 项目 | 地址 | 许可 |
|---|---|---|
| Grasscutter | https://github.com/Grasscutters/Grasscutter | AGPL-3.0 |
| 4.8 协议适配（KeiLuna 2.0.3 定制分支） | 社区版本 | AGPL-3.0 |

**依据 AGPL-3.0，获取对应源码的方式：**

1. 上游主干源码：https://github.com/Grasscutters/Grasscutter
2. 本版本相对上游的全部修改，已在 [patches/CHANGES.md](patches/CHANGES.md) 中逐项说明
   （包含 4 处 Java 补丁、Lua 垫片、以及全部数据修正）
3. 需要完整可构建源码包，请在 Issues 中提出，作者将提供下载链接

> 注意：`resources/`（游戏资源文件）**不属于本项目**，版权归 miHoYo / HoYoverse 所有，本仓库不提供也不分发。

## 致谢

- 服务端内核：[Grasscutter](https://github.com/Grasscutters/Grasscutter) — AGPL-3.0
- 4.8 协议适配：KeiLuna 2.0.3 定制分支（社区）
- 4.8 proto 定义参考：[Auscobe/Anime-Game-Proto-Archive](https://github.com/Auscobe/Anime-Game-Proto-Archive)
- 4.8 移植思路与协议验证参考：BiliBili 用户 **bili_374499**

## 联系方式

| 渠道 | 地址 |
|---|---|
| QQ | 3663976282 |
| 邮箱 | xiangjingjuziawa@gmail.com |
| GitHub Issues | [提交问题](https://github.com/xiangjingjuziawa-svg/Genshin-GC-4.8/issues) |

> 使用问题、Bug 反馈、源码索取，都可以通过以上方式联系。

## 免责声明

本项目仅用于**学习与研究**（协议逆向、服务端架构学习），请勿用于商业用途。
使用者需自行承担因使用本项目产生的一切后果。
若版权方认为本项目侵犯其权益，请通过 Issue 联系，作者将立即删除相关内容。
