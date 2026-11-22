# Grasscutter 4.8.0 CN 鈥?鍙敤鏁村悎鐗堬紙Juzi build锛?
> 鍩轰簬 [Grasscutter](https://github.com/Grasscutters/Grasscutter)锛圓GPL-3.0锛変笌 KeiLuna 2.0.3 瀹氬埗鍒嗘敮鏁寸悊銆?> **鏈粨搴撳彧鎻愪緵鍙繍琛岀殑鏈嶅姟绔?jar + 閰嶇疆 + 鍚姩鑴氭湰锛屼笉鍖呭惈娓告垙璧勬簮鏂囦欢銆?*

## 鐗规€?
- 鏀寔銆婂師绁炪€?.8.0 鍥芥湇瀹㈡埛绔紙dispatch + KCP 娓告垙鏈嶏級
- 宸查獙璇佸彲杩涘叆娓告垙銆佽窇鍥俱€佷紶閫併€佹嬀鍙栥€佸紑瀹濈銆佸湥閬楃墿銆佷换鍔￠潰鏉?- 鍐呯疆涓枃璇煶鍖呮敮鎸佽鏄庯紙瑙佷笅锛?
## 蹇€熷紑濮?
### 1. 鍑嗗鐜

```
JDK 17        锛堝繀闇€锛?MongoDB 5.0+  锛堝繀闇€锛岄粯璁?127.0.0.1:27017锛?resources 鐩綍锛堝繀闇€锛屾湰浠撳簱涓嶆彁渚涳紝瑙佷笅鏂囷級
```

### 2. 鐩綍缁撴瀯

```
server/
鈹溾攢鈹€ grasscutter-4.8.0-cn.jar
鈹溾攢鈹€ config.json
鈹溾攢鈹€ start.bat
鈹斺攢鈹€ resources/          鈫?闇€瑕佷綘鑷繁鏀惧叆
```

### 3. 鍚姩

```bat
鍙屽嚮 server/start.bat
```

鐪嬪埌 `鍔犺浇瀹屾垚锛佽緭鍏?"help" 鏌ョ湅鍛戒护鍒楄〃` 鍗虫垚鍔熴€?
### 4. 瀹㈡埛绔?
闇€瑕?4.8.0 瀹㈡埛绔?+ 鎸囧悜鏈湇鐨勮ˉ涓侊紙Astrolabe.dll 绛夛級锛屾湰浠撳簱涓嶆彁渚涘鎴风琛ヤ竵銆?
## resources 璇存槑

`resources/` 鏄父鎴忔暟鎹紙BinOutput / ExcelBinOutput / Scripts / TextMap 绛夛級锛?浣撶Н绾?1.3 GB锛?*涓嶅湪鏈粨搴撳唴**锛圙itHub 涓嶉€傚悎鎵樼锛夈€?
浣犻渶瑕佽嚜琛屽噯澶?4.8 鐗堣祫婧愮洰褰曪紝鏀惧埌 `server/resources/`銆?
> 鏈増鏈凡鐭ラ渶瑕佺殑鏁版嵁淇锛堥檮鍦?patches/ 鐩綍锛夛細
> - `ExcelBinOutput/ReliquaryAffixExcelConfigData.json` 闇€瑕?`weight` 瀛楁
> - `ExcelBinOutput/EnvAnimalGatherExcelConfigData.json` 闇€瑕?`gatherItemId` 瀛楁
> - `Server/DropTableExcelConfigData.json` 鐨?`fallToGround` 璁句负 false 鍙伩鍏嶆帀钀界墿閲嶅
> - `BinOutput/Quest/*.json` 涓殑 uint64 鏁板瓧闇€瑕佽浆鎴愭湁绗﹀彿 long
> - `BinOutput/Quest/*.bak` 蹇呴』绉婚櫎锛圙C 浼氭妸澶囦唤鏂囦欢褰?JSON 璇伙級

## 宸查獙璇佸彲鐢ㄧ殑鍛戒护

```
help                       鍒楀嚭鎵€鏈夊懡浠?account create <user> <pass>
give @<uid> <itemId> x<count>
q @<uid> add <questId>     鎺ヤ换鍔?q @<uid> finish <questId>  瀹屾垚浠诲姟
prop @<uid> UnlockMap 1    瑙ｉ攣鍦板浘
tag @<uid> unlockall       瑙ｉ攣鍦烘櫙鏍囩
sc @<uid> <sceneId>        浼犻€佸埌鍦烘櫙
```

## 宸茬煡闄愬埗

- 浠诲姟杩借釜 HUD 涓嶅彲鐢紙4.8 鍗忚涓棤杩借釜瀛楁锛屽睘瀹㈡埛绔湰鍦扮姸鎬侊級
- 閮ㄥ垎 plot 绫讳换鍔′笉鏄剧ず锛堢己鍓ф儏涓婃姤瀹炵幇锛?- 涓€鍒囦緷璧栧満鏅剼鏈殑澶嶆潅浜や簰鍙兘涓嶇ǔ瀹?
## 璁稿彲涓庤嚧璋?
- 鏈嶅姟绔唴鏍革細[Grasscutter](https://github.com/Grasscutters/Grasscutter) 鈥?**AGPL-3.0**
- 4.8 鍗忚閫傞厤锛欿eiLuna 2.0.3 瀹氬埗鍒嗘敮锛堢ぞ鍖猴級
- 4.8 proto 瀹氫箟鍙傝€冿細[Auscobe/Anime-Game-Proto-Archive](https://github.com/Auscobe/Anime-Game-Proto-Archive)

> 鈿狅笍 鏈」鐩伒寰?AGPL-3.0銆傝嫢浣犲垎鍙戞湰 jar锛岃鍚屾椂鎻愪緵瀵瑰簲婧愮爜鎴栨簮鐮佽幏鍙栨柟寮忋€?
## 鍏嶈矗澹版槑

浠呬緵瀛︿範鐮旂┒浣跨敤锛岃鍕跨敤浜庡晢涓氱敤閫斻€傛父鎴忕礌鏉愮増鏉冨綊绫冲搱娓告墍鏈夈€
---

## 源码与许可（AGPL-3.0 合规声明）

本仓库分发的 `server/grasscutter-4.8.0-cn.jar` 是基于以下开源项目构建的衍生作品：

| 项目 | 地址 | 许可 |
|---|---|---|
| Grasscutter | https://github.com/Grasscutters/Grasscutter | AGPL-3.0 |
| 4.8 协议适配（KeiLuna 2.0.3 定制分支） | 社区版本 | AGPL-3.0 |

**依据 AGPL-3.0 第 13 条，获取本二进制的对应源码方式：**

1. 上游主干源码：https://github.com/Grasscutters/Grasscutter
2. 本版本相对上游的全部修改，已在 [`patches/CHANGES.md`](patches/CHANGES.md) 中逐项说明
   （包含 4 处 Java 补丁、Lua 垫片、以及全部数据修正）
3. 需要完整可构建源码包，请在 Issues 中提出，作者将提供下载链接

> 注意：`resources/`（游戏资源文件）**不属于本项目**，版权归 miHoYo / HoYoverse 所有，本仓库不提供也不分发。

## 免责声明

本项目仅用于**学习与研究**（协议逆向、服务端架构学习），请勿用于商业用途。
使用者需自行承担因使用本项目产生的一切后果。
若版权方认为本项目侵犯其权益，请通过 Issue 联系，作者将立即删除相关内容。