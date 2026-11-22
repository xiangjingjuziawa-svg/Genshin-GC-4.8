# 本版本相对原始 Grasscutter 的改动

## 一、Jar 内的 Java 补丁（4 处）

| 类 | 改动 |
|---|---|
| `emu.grasscutter.scripts.ScriptLib` | 新增 `GetQuestStateByUid(int,int)`、`SetGadgetTalkByConfigId(int,int,int)` |
| `emu.grasscutter.game.quest.QuestManager#onLogin` | 登录时自动接取 4.8 活动任务链（4016201/4016301/4016401/4016501）+ 推送任务列表与进度包 |
| `emu.grasscutter.game.quest.GameQuest#toProto` | 补 `setQuestConfigId(subQuestId)` |
| `emu.grasscutter.GameConstants` | `VERSION` 改为 `4.8.0` |

## 二、运行期 Lua 垫片

`resources/Scripts/Common/ZZZ_JuziShim.lua`

把全局 `ScriptLib` 包成一个代理表，缺失的 267 个函数自动返回安全默认值
（`false` / `{}` / `0`），避免场景脚本调用 nil 导致交互中断。

## 三、数据修正

1. `ExcelBinOutput/ReliquaryAffixExcelConfigData.json`
   350 条圣遗物词条缺 `weight` 字段 → 补 `"weight": 100`

2. `ExcelBinOutput/EnvAnimalGatherExcelConfigData.json`
   54 条环境生物缺 `gatherItemId` → 由 `gatherItemList` 生成
   `[{"id":..., "count":...}]` 对象数组

3. `Server/DropTableExcelConfigData.json`
   `fallToGround: true → false`（12896 条），避免「物品已进背包但地上还残留模型」

4. `BinOutput/Quest/*.json`
   `preloadLuaList` 里的 uint64 超出 Java long → 转成有符号等价（801 文件 / 1626 个数字）

5. 移除 `BinOutput/Quest/*.bak`
   Grasscutter 会把备份文件也当 JSON 解析，导致启动崩溃

## 四、已知无效/不可修复项

- 任务追踪 HUD：4.8 的 `Quest` 协议中没有追踪字段，属客户端本地状态，服务端无法驱动
- plot 类任务（如活动第一页）不显示：缺少剧情事件上报实现
- 彩色 UID：需要客户端具备 WindSeed Lua 执行能力，原版 4.8 客户端没有该 hook