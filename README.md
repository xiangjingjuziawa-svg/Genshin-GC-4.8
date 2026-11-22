# Grasscutter 4.8.0 CN — 可用整合版（Juzi build）

> 基于 [Grasscutter](https://github.com/Grasscutters/Grasscutter)（AGPL-3.0）与 KeiLuna 2.0.3 定制分支整理。
> **本仓库只提供可运行的服务端 jar + 配置 + 启动脚本，不包含游戏资源文件。**

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
├── grasscutter-4.8.0-cn.jar
├── config.json
├── start.bat
└── resources/          ← 需要你自己放入
```

### 3. 启动

```bat
双击 server/start.bat
```

看到 `加载完成！输入 "help" 查看命令列表` 即成功。

### 4. 客户端

需要 4.8.0 客户端 + 指向本服的补丁（Astrolabe.dll 等），本仓库不提供客户端补丁。

## resources 说明

`resources/` 是游戏数据（BinOutput / ExcelBinOutput / Scripts / TextMap 等），
体积约 1.3 GB，**不在本仓库内**（GitHub 不适合托管）。

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

## 许可与致谢

- 服务端内核：[Grasscutter](https://github.com/Grasscutters/Grasscutter) — **AGPL-3.0**
- 4.8 协议适配：KeiLuna 2.0.3 定制分支（社区）
- 4.8 proto 定义参考：[Auscobe/Anime-Game-Proto-Archive](https://github.com/Auscobe/Anime-Game-Proto-Archive)

> ⚠️ 本项目遵循 AGPL-3.0。若你分发本 jar，请同时提供对应源码或源码获取方式。

## 免责声明

仅供学习研究使用，请勿用于商业用途。游戏素材版权归米哈游所有。