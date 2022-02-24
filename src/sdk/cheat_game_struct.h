#ifndef __CHEAT_GAME_STRUCT_H__
#define __CHEAT_GAME_STRUCT_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>

enum nMode
{
    药品,
    食品,
    消耗,
    卷轴,
    技能书,
    武器,
    衣服男 = 10,
    衣服女,
    头盔 = 15,
    斗笠 = 16,
    项链 = 19,
    戒指 = 22,
    手镯 = 24,
    符毒 = 25,
    马牌 = 28,
    天使,
    照明,
    打捆,
    盾牌 = 48,
    聚灵珠,
    气血宝石 = 53, // 有气血石功能 Anicount=1,2,3 分别对应三种石头
    鞋子 = 62,
    宝石,
    腰带,
    军鼓,
};
enum IGRCode
{
    RC_PLAYOBJECT = 0,
    RC_HEROOBJECT = 1,		//英雄
    RC_PLAYMOSTER = 60,		//人形怪物
    RC_MOONOBJECT = 99,		//月灵
    RC_GUARD = 11,			//大刀守卫
    RC_PEACENPC = 15,		//和平NPC
    RC_ANIMAL = 50,			//攻击NPC
    RC_MONSTER = 80,
    RC_NPC = 10,
    RC_ARCHERGUARD = 112,
    RC_TRUCKOBJECT = 128,	//押镖车
};
enum wRecv
{
    等待全部 = 0,
    等待鼠标 = 1,
    等待内挂 = 2,
    等待解包 = 3,
    等待超时 = 1000
};
enum IGIdentEx
{
    选择消息 = 0x038,
    ICON消息 = 0x03F,
    动作消息 = 0x7D0,
    鼠标消息 = 0x804,
    内挂消息 = 0x87A,
    商铺消息 = 0x830,
    对话消息 = 0xAB,
    会话消息 = 0x37,
    发言消息 = 0x58,
    穿戴消息 = 0x32,
    开挂消息 = 0xFF0,
    回复消息 = 0xFF1 + 发言消息,
    上线消息 = 0xFF2,
    确认消息 = 0xF3,
    丢弃消息 = 0x800,
    刷新消息 = 0x5A,
};
enum IGState
{
    nState_冰冻 = 0x00080000,
    nState_开盾 = 0x00100000,
    nState_麻痹 = 0x04000000,
    nState_粉色 = 0x08000000,
    nState_黄色 = 0x10000000,
    nState_蓝色 = 0x20000000,
    nState_红色 = 0x40000000,
    nState_绿色 = 0x80000000
};
enum IGIdent
{
    SSPELL = 1101,		// 使用魔法
    STURN = 1102,			// 转向
    SWALK = 1103,			// 走
    SSITDOWN = 1104,		// 坐
    SRUN = 1105,			// 跑
    SHORSERUN = 1106,		// 骑
    SHIT = 1107,			// 砍
    SHEAVYHIT = 1108,		// 砍
    SBIGHIT = 1109,		// 砍
    SPOWERHIT = 1110,
    SLONGHIT = 1111,		// 刺杀
    SWIDEHIT = 1112,		// 半月
    SFIREHIT = 1113,		// 烈火
    SCRSHIT = 1114,		// 抱月刀 双龙斩   ID=40
    STWNHIT = 1115,		// 龙影剑法     ID=42
    S43HIT = 1116,		// 雷霆剑法    ID=43
    SSWORDHIT = 1117,		// 逐日剑法  ID=56
    S60HIT = 1118,		// 破魂斩
    S61HIT = 1119,		// 劈星斩
    S62HIT = 1120,		// 雷霆一击
    S66HIT = 1121,		// 开天斩
    S100HIT = 1122,		// 三绝杀
    S101HIT = 1123,		// 三绝杀
    S102HIT = 1124,		// 断岳斩
    S103HIT = 1125,		// 横扫千军
    SRUSH = 1147,			// 野蛮
    SRUSHKUNG = 1148,		// 野蛮失败
    SBACKSTEP = 1149,
    SDIGUP = 1150,
    SDIGDOWN = 1151,
    SFLYAXE = 1152,
    SLIGHTING = 1153,
    SALIVE = 1154,
    SMOVEFAIL = 1155,
    SHIDE = 1156,
    SDISAPPEAR = 1157,
    SSTRUCK = 1158,		// 弯腰
    SDEATH = 1159,
    SSKELETON = 1160,
    SNOWDEATH = 1161,		// 死亡动作
    SSPELL2 = 1162,
    SHEAR = 1163,
    SFEATURECHANGED = 1164,
    SUSERNAME = 1165,
    SWINEXP = 1166,
    SLEVELUP = 1167,
    SDAYCHANGING = 1168,
    SLOGON = 1169,
    SNEWMAP = 1170,
    SABILITY = 1171,
    SHEALTHSPELLCHANGED = 1172,
    SMAPDESCRIPTION = 1173,
    SSYSMESSAGE = 1174,
    SGROUPMESSAGE = 1175,
    SCRY = 1176,
    SWHISPER = 1177,
    SGUILDMESSAGE = 1178,
    SMOVEMESSAGE = 1179,
    SDELAYMESSAGE = 1180,
    SCENTERMESSAGE = 1181,
    STOPCHATBOARDMESSAGE = 1182,
    SADDITEM = 1183,
    SBAGITEMS = 1184,
    SDELITEM = 1185,
    SUPDATEITEM = 1186,
    SADDMAGIC = 1187,
    SSENDMYMAGIC = 1188,
    SDELMAGIC = 1189,
    SDROPITESUCCESS = 1190,
    SDROPITEFAIL = 1191,
    SITEMSHOW = 1192,
    SITEMHIDE = 1193,
    SDOOROPEN = 1194,
    SOPENDOOR_OK = 1195,
    SOPENDOOR_LOCK = 1196,
    SCLOSEDOOR = 1197,
    STAKEON_OK = 1198,
    STAKEON_FAIL = 1199,
    STAKEOFF_OK = 1200,
    STAKEOFF_FAIL = 1201,
    SSENDUSEITEMS = 1202,
    SWEIGHTCHANGED = 1203,
    SCLEAROBJECTS = 1204,
    SCHANGEMAP = 1205,
    SEAT_OK = 1206,
    SEAT_FAIL = 1207,
    SBUTCH = 1208,
    SMAGICFIRE = 1209,
    SMAGICFIRE_FAIL = 1210,
    SMAGIC_LVEXP = 1211,
    SDURACHANGE = 1212,
    SMERCHANTSAY = 1213,
    SMERCHANTDLGCLOSE = 1214,
    SSENDGOODSLIST = 1215,
    SSENDUSERSELL = 1216,
    SSENDBUYPRICE = 1217,
    SUSERSELLITEOK = 1218,
    SUSERSELLITEFAIL = 1219,
    SBUYITESUCCESS = 1220, //?
    SBUYITEFAIL = 1221, //?
    SSENDDETAILGOODSLIST = 1222,
    SGOLDCHANGED = 1223,
    SCHANGELIGHT = 1224,
    SLAMPCHANGEDURA = 1225,
    SCHANGENAMECOLOR = 1226,
    SCHARSTATUSCHANGED = 1227,
    SSENDNOTICE = 1228,
    SGROUPMODECHANGED = 1229,
    SCREATEGROUP_OK = 1230,
    SCREATEGROUP_FAIL = 1231,
    SGROUPADDMEOK = 1232,
    SGROUPDELMEOK = 1233,
    SGROUPADDMEFAIL = 1234,
    SGROUPDELMEFAIL = 1235,
    SGROUPCANCEL = 1236,
    SGROUPMEMBERS = 1237,
    SSENDUSERREPAIR = 1238,
    SUSERREPAIRITEOK = 1239,
    SUSERREPAIRITEFAIL = 1240,
    SSENDREPAIRCOST = 1241,
    SDEALMENU = 1242,
    SDEALTRY_FAIL = 1243,
    SDEALADDITEOK = 1244,
    SDEALADDITEFAIL = 1245,
    SDEALDELITEOK = 1246,
    SDEALDELITEFAIL = 1247,
    SDEALCANCEL = 1248,
    SDEALREMOTEADDITEM = 1249,
    SDEALREMOTEDELITEM = 1250,
    SDEALCHGGOLD_OK = 1251,
    SDEALCHGGOLD_FAIL = 1252,
    SDEALREMOTECHGGOLD = 1253,
    SDEALSUCCESS = 1254,
    SSENDUSERSTORAGEITEM = 1255,
    SSTORAGE_OK = 1256,
    SSTORAGE_FULL = 1257,
    SSTORAGE_FAIL = 1258,
    SSAVEITEMLIST = 1259,
    STAKEBACKSTORAGEITEOK = 1260,
    STAKEBACKSTORAGEITEFAIL = 1261,
    STAKEBACKSTORAGEITEFULLBAG = 1262,
    SAREASTATE = 1263,
    SMYSTATUS = 1264,
    SDELITEMS = 1265,
    SREADMINIMAP_OK = 1266,
    SREADMINIMAP_FAIL = 1267,
    SSENDUSERMAKEDRUGITEMLIST = 1268,
    SMAKEDRUG_SUCCESS = 1269,
    //  714
    //  716
    SMAKEDRUG_FAIL = 1270,
    SCHANGEGUILDNAME = 1271,
    SSENDUSERSTATE = 1272, //
    SSUBABILITY = 1273,
    SOPENGUILDDLG = 1274, //
    SOPENGUILDDLG_FAIL = 1275, //
    SSENDGUILDMEMBERLIST = 1276, //
    SGUILDADDMEMBER_OK = 1277, //
    SGUILDADDMEMBER_FAIL = 1278,
    SGUILDDELMEMBER_OK = 1279,
    SGUILDDELMEMBER_FAIL = 1280,
    SGUILDRANKUPDATE_FAIL = 1281,
    SBUILDGUILD_OK = 1282,
    SBUILDGUILD_FAIL = 1283,
    SDONATE_OK = 1284,
    SDONATE_FAIL = 1285,
    SMENU_OK = 1286, //?
    SGUILDMAKEALLY_OK = 1287,
    SGUILDMAKEALLY_FAIL = 1288,
    SGUILDBREAKALLY_OK = 1289, //?
    SGUILDBREAKALLY_FAIL = 1290, //?
    SDLGMSG = 1291, //Jacky
    SSPACEMOVE_HIDE = 1292,
    SSPACEMOVE_SHOW = 1293,
    SRECONNECT = 1294, //
    SGHOST = 1295,
    SSHOWEVENT = 1296,
    SHIDEEVENT = 1297,
    SSPACEMOVE_HIDE2 = 1298,
    SSPACEMOVE_SHOW2 = 1299,
    STIMECHECK_MSG = 1300,
    SADJUST_BONUS = 1301, //?
    SOPENHEALTH = 1302,
    SCLOSEHEALTH = 1303,
    SBREAKWEAPON = 1304,
    SINSTANCEHEALGUAGE = 1305, //??
    SCHANGEFACE = 1306,
    SVERSION_FAIL = 1307,
    SITEMUPDATE = 1308,
    SMONSTERSAY = 1309,
    SEXCHGTAKEON_OK = 1310,
    SEXCHGTAKEON_FAIL = 1311,
    STEST = 1312,
    STESTHERO = 1313,
    STHROW = 1314,
    S716 = 1315,
    SPASSWORD = 1316,
    SPLAYDICE = 1317,
    SPASSWORDSTATUS = 1318,
    SGAMEGOLDNAME = 1319, //游戏币名称
    SGAMEPOINTNAME = 1320, //游戏币名称2
    SGAMEGLORY = 1321, //游戏荣誉
    SSERVERCONFIG = 1322,
    SGETREGINFO = 1323,
    SMISSIONNPC = 1324, //发送任务NPC代码
    SATTATCKMODE = 1325, //发送攻击模式
    SBUYSHOPITESUCCESS = 1326,
    SBUYSHOPITEFAIL = 1327,
    SSENGSHOPITEMS = 1328,
    RSENGSHOPITEMS = 1329,
    SSENGRANKING = 1330,
    SSENGMYRANKING_FAIL = 1331,
    SSHOWBOX = 1332, //显示宝箱
    SOPENBOX_SUCCESS = 1333, //钥匙正确宝箱开启
    SOPENBOX_FAIL = 1334,
    SSENDGETBOXITEMINDEX = 1335, //获取转动后选择的物品序号
    STAKEONITEM = 1336, //自动穿装备
    STAKEOFFITEM = 1337, //自动脱装备
    SAUTOGOTOXY = 1338, //自动寻路
    SCLICKNPCLABEL = 1339, //
    SSERVERNAME = 1340,
    SHEROTAKEONITEM = 1341, //英雄自动穿装备
    SHEROTAKEOFFITEM = 1342, //英雄自动脱装备
    SSENDGAMEGOLDDALITEM = 1343, //元宝交易装备
    SSELLGAMEGOLDDALITEOK = 1344,
    SSELLGAMEGOLDDALITEFAIL = 1345,
    SBUYGAMEGOLDDALITEOK = 1346,
    SBUYGAMEGOLDDALITEFAIL = 1347,
    SCANCELGAMEGOLDDEALITEOK = 1348, //取消元宝交易装备
    SCANCELGAMEGOLDDEALITEFAIL = 1349, //取消元宝交易装备
    SCANCELGAMEGOLDSELLITEOK = 1350, //取消元宝交易装备
    SCANCELGAMEGOLDSELLITEFAIL = 1351, //取消元宝交易装备
    SUNBINDLIST = 1352,
    SEFFECTIMAGELIST = 1353, //WIL列表
    SPLAYEFFECT = 1354, //播放人物效果
    SSCREENEFFECT = 1355,
    SOVERLAPITEOK = 1356, //重叠物品 成功
    SOVERLAPITEFAIL = 1357, //重叠物品 失败
    SHEROOVERLAPITEOK = 1358, //英雄重叠物品 成功
    SHEROOVERLAPITEFAIL = 1359, //英雄重叠物品 失败
    SPACKAGEITEOK = 1360, //分开重叠物品 成功
    SPACKAGEITEFAIL = 1361, //分开重叠物品 失败
    SHEROPACKAGEITEOK = 1362, //英雄分开重叠物品 成功
    SHEROPACKAGEITEFAIL = 1363, //英雄分开重叠物品 失败
    SPLAYSOUND = 1364,
    SOPENBIGMERCHANTBIGDLG = 1365,
    SCLOSEBIGMERCHANTBIGDLG = 1366,
    SREPAIRFIRDRAGON_OK = 1367, //修理火龙之心 成功
    SREPAIRFIRDRAGON_FAIL = 1368, //修理火龙之心  失败
    SCHANGESPEED = 1369, //游戏速度
    SQUERYUSERSHOPS = 1370, //返回搜索传奇店铺结果
    SQUERYUSERSHOPITEMS = 1371, //返回指定用户店铺物品
    SSEARCHSHOPITEMS = 1372, //返回搜索传奇店铺物品结果
    SQUERYMYSHOPSELLINGITEMS = 1373, //返回我的店铺正在物品
    SQUERYMYSHOPSELLEDITEMS = 1374, //返回我的店铺已经出售物品
    SQUERYMYSHOPSTORAGEITEMS = 1375, //返回我的店铺仓库物品
    SSENDADDTOMYSHOP_OK = 1376,
    SSENDADDTOMYSHOP_FAIL = 1377,
    SSENDCHANGEMYSHOPITEOK = 1378,
    SSENDCHANGEMYSHOPITEFAIL = 1379,
    SSENDMOVEMYSHOPITEOK = 1380,
    SSENDMOVEMYSHOPITEFAIL = 1381,
    SQUERYSELECTSHOPINFO = 1382,
    SQUERYSELECTSHOPINFO_FAIL = 1383,
    SSENDBUYUSERSHOPITEOK = 1384,
    SSENDBUYUSERSHOPITEFAIL = 1385,
    SUPGRADEDLGITETAKE = 1386, //升级成功
    SUPGRADEDLGITEGIVE = 1387, //升级成功
    SOPENUPGRADEDLG = 1388, //显示OK对话框
    SSENDUSERICON = 1389,
    SSENDWEBBROWSER = 1390,
    SSENDUSEREFFECT = 1391,
    SSENDSUPERSHILEDEFFECT = 1392,
    SSENDBLASTHIT = 1393, //暴击
    SSENDFILENAME = 1394, //传送文件相关
    SSENDFILES = 1395, //传送文件相关
    SSPECIALCMD = 1396, //特殊命令
    SWEATHER = 1397,
    SCHALLENGEMENU = 1398,
    SCHALLENGETRY_FAIL = 1399,
    SCHALLENGEADDITEOK = 1400,
    SCHALLENGEADDITEFAIL = 1401,
    SCHALLENGEDELITEOK = 1402,
    SCHALLENGEDELITEFAIL = 1403,
    SCHALLENGECANCEL = 1404,
    SCHALLENGEREMOTEADDITEM = 1405,
    SCHALLENGEREMOTEDELITEM = 1406,
    SCHALLENGECHGGOLD_OK = 1407,
    SCHALLENGECHGGOLD_FAIL = 1408,
    SCHALLENGECHGGAMEDIAMOND_OK = 1409, //修改挑战金刚石成功
    SCHALLENGECHGGAMEDIAMOND_FAIL = 1410, //修改挑战金刚石失败
    SCHALLENGEREMOTECHGGOLD = 1411, //修改对方挑战金币
    SCHALLENGEREMOTECHGGAMEDIAMOND = 1412, //修改对方挑战金刚石
    SCHALLENGESUCCESS = 1413, //挑战成功
    SOPENUPGRADEDIALOG = 1414, //打开包裹宝石装备升级对话框
    SSENDUPGRADEDIALOG_OK = 1415, //包裹宝石装备升级成功
    SSENDUPGRADEDIALOG_FAIl = 1416, //包裹宝石装备升级失败
    SHEARCOLOR = 1417, //人物喊话信息颜色
    SSOFTCLOSE = 1418,
    SPLAYDRINKSAY = 1419, //酒馆NPC对话框信息
    SUSERPLAYDRINKITEOK = 1420, //请酒成功
    SUSERPLAYDRINKITEFAIl = 1421, //请酒失败
    SUSERPLAYDRINK_OK = 1422, //给NPC的酒正确 可以斗酒
    SUSERPLAYDRINK_FAIL = 1423, //给NPC的酒错误
    SOPENPLAYDRINK = 1424, //打开窗口
    SCLOSEDRINK = 1425, //关闭酒馆NPC对话框
    SDRINKUPDATEVALUE = 1426, //返回喝酒
    SPLAYDRINKTODRINK = 1427, //发送到客户端谁赢谁输
    SSENDUSERPLAYDRINK = 1428, //出现请酒对话框
    SSENDSTORAGEHEROINFO = 1429, //英雄寄存信息   召回寄存的英雄
    SSENDSTORAGEHEROINFOEX = 1430, //英雄寄存信息 评定英雄
    SASSESSMENTHERO_OK = 1431, //评定英雄车成功
    SASSESSMENTHERO_FAIL = 1432, //评定英雄车失败
    SSENDSHOWHEROAUTOPRACTICEDLG = 1433, //显示英雄自动修炼对话框
    SSENDHEROAUTOPRACTICE_OK = 1434, //英雄自动修炼成功
    SSENDHEROAUTOPRACTICE_FAIL = 1435, //英雄自动修炼失败
    SREFABILNG = 1436, //刷新内力
    SABILITYNG = 1437, //内功属性
    SABILITYALCOHOL = 1438, //酒属性
    SABILITYMERIDIANS = 1439, //经脉
    SHEROABILITYNG = 1440, //英雄内功属性
    SHEROABILITYALCOHOL = 1441, //英雄酒属性
    SHEROABILITYMERIDIANS = 1442, //英雄经脉
    SOPENCOBWEBWINDING = 1443, //蜘蛛网罩住  开启
    SCLOSECOBWEBWINDING = 1444, //蜘蛛网罩住 打开
    SLIGHTINGEX = 1445,
    SCONTINUOUSMAGICORDER = 1446, //连击顺序  series=0 人物 series=1 英雄
    SCONTINUOUSMAGIC_OK = 1447, //请求开始开始连击成功
    SCONTINUOUSMAGIC_FAIL = 1448, //请求开始开始连击失败
    SCANCONTINUOUSMAGIC = 1449, //可以连击 界面连击图片闪烁显示
    STRAININGNG = 1450, //是否修炼内功心法 界面相应显示内功心法界面  series=0 人物 series=1 英雄
    SLEVELUPNG = 1451, //内功升级
    SSTOPCONTINUOUSMAGIC = 1452, //停止连击
    SMAPCANRUN = 1453, //穿人穿怪状态
    SPLUGFILE = 1454, //客户端插件MD5 M2发送过来进行检测
    SMODULEMD5 = 1455, //白名单模块MD5
    SBLACKMODULEMD5 = 1456, //黑名单模块MD5
    SSENDSHOPNAME = 1457, //摆摊商铺名称
    SMASTERBAGTOHEROBAG_OK = 1458, //主人包裹物品放到英雄包裹成功
    SMASTERBAGTOHEROBAG_FAIL = 1459, //主人包裹物品放到英雄包裹失败
    SHEROBAGTOMASTERBAG_OK = 1460, //英雄包裹物品放到主人包裹成功
    SHEROBAGTOMASTERBAG_FAIL = 1461, //英雄包裹物品放到主人包裹失败
    SHEROBAGCOUNT = 1462, //英雄包裹数量
    SHEROLOGOUT = 1463, //获取英雄 TMessageBodyWL 产生英雄退出效果
    SHEROLOGON = 1464, //获取英雄 TMessageBodyWL 产生英雄登陆效果
    SHEROLOYAL = 1465, //获取英雄忠诚  10001(忠00.00%)
    SHEROABILITY = 1466, //获取英雄Abil
    SHEROSUBABILITY = 1467, //英雄SUBABILITY
    SHEROBAGITEMS = 1468, //获取英雄包裹     Tag:包裹物品数量 2 Series: 包裹总数量10
    SSENDHEROUSEITEMS = 1469, //获取英雄身上装备
    SSENDMYHEROMAGIC = 1470, //获取英雄魔法
    SHEROADDITEM = 1471, //英雄 Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
    SHERODELITEM = 1472, //英雄 Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
    SHEROTAKEON_OK = 1473, //英雄穿装备OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
    SHEROTAKEON_FAIL = 1474, //英雄穿装备FAIL
    SHEROTAKEOFF_OK = 1475, //英雄脱装备OK
    SHEROTAKEOFF_FAIL = 1476, //英雄脱装备FAIL
    SHEROEAT_OK = 1477, //英雄吃药OK
    SHEROEAT_FAIL = 1478, //英雄吃药FAIL
    SHEROADDMAGIC = 1479, //英雄增加魔法
    SHERODELMAGIC = 1480, //英雄删除魔法
    SHEROANGERVALUE = 1481, //英雄怒值改变 Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
    SHEROLOGOUT_OK = 1482, // 英雄退出OK
    SHERODURACHANGE = 1483, //英雄物品持久改变
    SHERODROPITESUCCESS = 1484, //英雄扔物品OK
    SHERODROPITEFAIL = 1485, //英雄扔物品FAIL
    SHEROLEVELUP = 1486, //英雄升级
    SHEROWINEXP = 1487, //英雄获取经验
    SHEROWEIGHTCHANGED = 1488,
    SHEROMAGIC_LVEXP = 1489, //英雄魔法经验
    SHEROCHANGEFACE = 1490,
    SHEROUPDATEITEM = 1491,
    SHERODELITEMS = 1492,
    SHEROCHANGEITEM = 1493,
    SHEROLOGON_OK = 1494,
    SOPENMISSIONDLG = 1495,
    SDELETEDELAYMESSAGE = 1496,
    SHEROM2ADDUSERSHOPITEOK = 1497, //增加摆摊物品成功
    SHEROM2ADDUSERSHOPITEFAIL = 1498, //增加摆摊物品失败
    SHEROM2DELUSERSHOPITEOK = 1499, //删除摆摊物品成功
    SHEROM2DELUSERSHOPITEFAIL = 1500, //删除摆摊物品失败
    SHEROM2DELUSERSHOPITEM = 1501, //删除摆摊物品
    SHEROM2DELREMOTEUSERSHOPITEM = 1502, //删除摆摊物品
    SHEROM2SENDSHOPITEM = 1503, //摆摊物品
    SHEROM2SENDCLOSESHOP = 1504, //关闭购买摆摊物品窗口
    SHEROM2SENDDRESSEFFECT = 1505,
    SSENDFILTERITEMLIST = 1506,
    SSENDITEMDESCLIST = 1507,
    SSENDTZITEMDESCLIST = 1508,
    SAUTO_OK = 1511,
    SAUTO_FAIL = 1512,
};

// 176   185   英雄版  连击版   传奇续章     外传   归来
enum IGClientVersion
{
    CV176,
    CV185,
    CVHero,
    CVSerial,
    CVMirSequel,
    CVMirs,
    CVMirReturn
};
enum IGGuiType
{
    GTNone,
    GTForm,
    GTButton,
    GTEdit,
    GTLabel,
    GTGrid,
    GTScrollBox,
    GTChatMemo,
    GTPopupMenu,
    GTComboBox,
    GTPageControl,
    GTTabSheet,
    GTTreeView,
    GTListView,
    GTLine,
    GTFormShape
};
enum IGInValue
{
    IVInteger,
    IVString
};
enum IGButtonStyle
{
    BSButton,
    BSRadio,
    BSCheckBox
};
enum IGClickSound
{
    CSNone,
    CSStone,
    CSGlass,
    CSNorm
};

struct IGHumFeature
{
    short                           wRace;
    short                           wWeapon;
    short                           wDress;
    unsigned char                   btGender;
    unsigned char                   btJob;
    unsigned char                   btHair;
    unsigned char                   btHorseType;
    unsigned char                   btCaseltGuild;
    bool                            boOpenShop;
    unsigned char                   btColor;
    unsigned char                   Reserved;
    short                           wDressEffType;
    short                           nWeaponEffectIndex;
    short                           wWeaponEffectOffSet;
    short                           nDressEffectIndex;
    short                           wDressEffectOffSet;
};

struct IGMonFeature
{
    short                           wRaceImg;
    short                           wWeapon;
    short                           wAppr;
    unsigned char                   btColor;
    unsigned char                   Reserved;
};

struct IGFeature
{
    int                             Feature;
    char                            Buffer[256];
};

struct IGPackHeader
{
    unsigned long long              nRecog;
    short                           wIdent;
    short                           wParam;
    short                           wTag;
    short                           wSeries;
};

struct IGAbility
{
    int                             Weight;         //0x1B8   //0x54 0x20
    int                             MaxWeight;      //0x1BA   //0x56 0x22  背包
    int                             WearWeight;     //0x1BC   //0x58 0x24
    int                             MaxWearWeight;  //0x1BD   //0x59 0x25  负重
    int                             HandWeight;     //0x1BE   //0x5A 0x26
    int                             MaxHandWeight;  //0x1BF   //0x5B 0x27  腕力
    int                             CreditPoint;    //声望
    unsigned char                   NewValue[20/*# range 0..20-1*/];// 0暴击几率增加 1增加攻击伤害  2物理伤害减少 3魔法伤害减少  4忽视目标防御  5所有伤害反弹 6人物体力增加  7人物魔力增加 8怒气恢复增加 9合击攻击增加  10增加目标暴率
    unsigned int                    Level;
    unsigned int                    HP;
    unsigned int                    MP;
    unsigned int                    MaxHP;
    unsigned int                    MaxMP;
    unsigned int                    Exp;
    unsigned int                    MaxExp;
    /*# case Integer */
    union
    {
        /*# 0 */
        struct
        {
            unsigned long long      AC;
            unsigned long long      MAC;
            unsigned long long      DC;
            unsigned long long      SC;
            unsigned long long      MC;
        };
        /*# 1 */
        struct
        {
            unsigned int            LAC;
            unsigned int            HAC;
            unsigned int            LMAC;
            unsigned int            HMAC;
            unsigned int            LDC;
            unsigned int            HDC;
            unsigned int            LMC;
            unsigned int            HMC;
            unsigned int            LSC;
            unsigned int            HSC;
        };
    }; //union
};

struct IGStdItem
{
    unsigned char                   Size;
    char                            Name[30];
    unsigned char                   DBSize;
    char                            DBName[30];
    unsigned char                   StdMode;
    short                           Shape;
    unsigned char                   Weight;
    int                             AniCount;
    signed char                     Source;
    unsigned char                   Reserved;
    unsigned char                   NeedIdentify;
    int                             Looks;
    int                             DuraMax;
    int                             Reserved1;
    int                             Need;
    int                             NeedLevel;
    int                             Price;
    short                           OverLap;                                    // 是否是重叠物品
    unsigned char                   Color;                                      // 物品名称颜色
    int                             Stock;
    unsigned int                    btValue[7/*# range 0..6*/];                 // 附加属性
    unsigned char                   btAddValue[9/*# range 5..13*/];             // 附加属性
    unsigned char                   btUpgradeCount;                             // 升级次数
    unsigned char                   btHeroM2Light;                              // HeroM2 SetItemsLight
    unsigned char                   NewValue[20/*# range 0..20-1*/];
    bool                            IsBind; //是否绑定
    unsigned char                   Reserved2[418/*# range 0..418-1*/];
    short int                       EffectFileIndex;                            // 包裹中的物品发光效果 文件编号 0
    short                           EffectStartOffSet;                          // 包裹中的物品发光效果 读取位置
    unsigned char                   EffectImageCount;                           // 包裹中的物品发光效果 读取张数
    short                           EffectOffsetX;                              // 包裹中的物品发光效果 微调X
    short                           EffectOffsetY;                              // 包裹中的物品发光效果 微调Y
    short                           EffectTime;                                 // 播放速度
    bool                            EffectNotCheckSize;
    short                           BodyEffectFileIndex;                        // 内观物品发光效果 文件编号 0
    short                           BodyEffectStartOffSet;                      // 内观物品发光效果 读取位置
    unsigned char                   BodyEffectImageCount;                       // 内观物品发光效果 读取张数
    short                           BodyEffectOffsetX;                          // 内观物品发光效果 微调X
    short                           BodyEffectOffsetY;                          // 内观物品发光效果 微调Y
    short                           BodyEffectTime;                             // 播放速度
    bool                            BodyEffectNotCheckSize;
    void*                           Effect;
    int                             Reserved3;
    unsigned int                    HP;
    unsigned int                    MP;
    /*# case Integer */

    union
    {
        /*# 0 */
        struct
        {
            unsigned long long      AC;
            unsigned long long      MAC;
            unsigned long long      DC;
            unsigned long long      SC;
            unsigned long long      MC;
        };
        /*# 1 */
        struct
        {
            unsigned int            LAC;
            unsigned int            HAC;
            unsigned int            LMAC;
            unsigned int            HMAC;
            unsigned int            LDC;
            unsigned int            HDC;
            unsigned int            LMC;
            unsigned int            HMC;
            unsigned int            LSC;
            unsigned int            HSC;
        };
    }; //union
};

struct IGMagic
{
    unsigned char                   Type;
    short                           wMagicId;
    unsigned char                   Size;
    char                            Name[30];
    unsigned char                   btEffectType;
    unsigned char                   btEffect;
    unsigned char                   bt11;
    short                           wSpell;
    short                           wPower;
    unsigned char                   TrainLevel[16/*# range 0..15*/];
    short                           w02;
    int                             MaxTrain[16/*# range 0..15*/];
    unsigned char                   btTrainLv;                                              //最高可升级等级
    unsigned char                   btJob;
    short                           wMagicIdx;
    unsigned int                    dwDelayTime;
    unsigned char                   btDefSpell;
    unsigned char                   btDefPower;
    short                           wMaxPower;
    unsigned char                   btDefMaxPower;
    unsigned char                   DescrSize;
    char                            Descr[18];
};

struct IGMagicExterior
{
    unsigned char                   Key;
    unsigned char                   Level;
    unsigned char                   NewLevel;
    int                             CurTrain;

    union
    {
        IGMagic                     Magic;
    };
};

struct IGUserItem
{
    IGStdItem                       Item[18];
};

struct IGPackagesItem
{
    IGStdItem                       Item[46];
};

struct IGClientItem
{
    IGStdItem                       Item;
    int                             MakeIndex;
    int                             Dura;
    int                             DuraMax;
};

struct IGUserStateInfo
{
    int                             RaceServer;
    IGFeature                       Feature;
    unsigned char                   UserSize;
    char                            UserName[30];
    int                             NameColor;
    unsigned char                   GuildSize;
    char                            GuildName[30];
    unsigned char                   GuildRankSize;
    char                            GuildRankName[30];
    IGClientItem                    UseItems[19/*# range 0..U_SWEAPON*/];
    bool                            boSndaItemBoxOpen;
    IGClientItem                    UseBoxItems[12/*# range 0..11*/];
    unsigned char                   HumTitleCount;
    short int                       UseTitleIndex;
    IGClientItem                    HumTitles[30/*# range 0..29*/];
};

struct IGMovingItem
{
    int                             Index;
    int                             ItemType;
    IGClientItem                    Item;
    int                             Id;
};

struct IGPoint
{
    int                             x;
    int                             y;
};

struct IGImages // WIL文件读取相关API
{
    int                             GetHandle;
    int                             Count;
    int                             Read;
    int                             Clear;
};

struct IGTexture // 纹理相关API
{
    int                             Width;
    int                             Height;
    int                             Pixels;
    int                             Lock;
    int                             Unlock;
};

struct IGDControl
{
    int                             Create;
    int                             InterfaceType;
    int                             Name;
    int                             Left;
    int                             Top;
    int                             Width;
    int                             Height;
    int                             Tag;
    int                             Visible;
    int                             Enabled;
    int                             Floating;
    int                             ParentMove;
    int                             EnableFocus;
    int                             AutoSize;
    int                             DrawBorder;
    int                             Caption;
    int                             Alignment;
    int                             Transparent;
    int                             BackgroundColor;
    int                             PopupMenu;
    int                             VisibleRect;
    int                             VirtualRect;
    int                             OnShow;
    int                             OnHide;
    int                             OnKeyDown;
    int                             OnKeyPress;
    int                             OnKeyUp;
    int                             OnClick;
    int                             OnDblClick;
    int                             OnMouseDown;
    int                             OnMouseMove;
    int                             OnMouseUp;
    int                             OnMouseEnter;
    int                             OnMouseLeave;
    int                             OnInRealArea;
    int                             OnPaint;
    int                             OnStartPaint;
    int                             OnStartSubPaint;
    int                             OnStopPaint;
    int                             OnPress;
    int                             SetName;
    int                             SetLeft;
    int                             SetTop;
    int                             SetWidth;
    int                             SetHeight;
    int                             SetTag;
    int                             SetVisible;
    int                             SetEnabled;
    int                             SetFloating;
    int                             SetParentMove;
    int                             SetEnableFocus;
    int                             SetAutoSize;
    int                             SetDrawBorder;
    int                             SetCaption;
    int                             SetAlignment;
    int                             SetTransparent;
    int                             SetBackgroundColor;
    int                             SetPopupMenu;
    int                             SetDefaultBorderColor;
    int                             SetDefaultBorderBold;
    int                             SetMouseMoveBorderColor;
    int                             SetMouseMoveBorderBold;
    int                             SetMouseDownBorderColor;
    int                             SetMouseDownBorderBold;
    int                             SetDisabledBorderColor;
    int                             SetDisabledBorderBold;
    int                             SetImages;
    int                             SetDefaultImageIndex;
    int                             SetMouseMoveImageIndex;
    int                             SetMouseDownImageIndex;
    int                             SetDisabledImageIndex;
    int                             SetOnShow;
    int                             SetOnHide;
    int                             SetOnKeyDown;
    int                             SetOnKeyPress;
    int                             SetOnKeyUp;
    int                             SetOnClick;
    int                             SetOnDblClick;
    int                             SetOnMouseDown;
    int                             SetOnMouseMove;
    int                             SetOnMouseUp;
    int                             SetOnMouseEnter;
    int                             SetOnMouseLeave;
    int                             SetOnInRealArea;
    int                             SetOnPaint;
    int                             SetOnStartPaint;
    int                             SetOnStartSubPaint;
    int                             SetOnStopPaint;
    int                             SetOnPress;
    int                             Parent;
    int                             SetParent;
    int                             ControlCount;
    int                             Controls;
    int                             SetFocus;
    int                             BringToFront;
    int                             InRange;
};

struct IGDWindow
{
    int                             SetIsBringToFront;
    int                             ShowModalEx;
    int                             ShowModalA;
    int                             ShowModalB;
};

struct IGDButton
{
    int                             Style;
    int                             Checked;
    int                             SetDefaultCaptionFontFColor;
    int                             SetDefaultCaptionFontBColor;
    int                             SetDefaultCaptionFontStyle;
    int                             SetDefaultCaptionFontSize;
    int                             SetDefaultCaptionFontBold;
    int                             SetDefaultCaptionFontName;
    int                             SetMouseMoveCaptionFontFColor;
    int                             SetMouseMoveCaptionFontBColor;
    int                             SetMouseMoveCaptionFontStyle;
    int                             SetMouseMoveCaptionFontSize;
    int                             SetMouseMoveCaptionFontBold;
    int                             SetMouseMoveCaptionFontName;
    int                             SetMouseDownCaptionFontFColor;
    int                             SetMouseDownCaptionFontBColor;
    int                             SetMouseDownCaptionFontStyle;
    int                             SetMouseDownCaptionFontSize;
    int                             SetMouseDownCaptionFontBold;
    int                             SetMouseDownCaptionFontName;
    int                             SetDisabledCaptionFontFColor;
    int                             SetDisabledCaptionFontBColor;
    int                             SetDisabledCaptionFontStyle;
    int                             SetDisabledCaptionFontSize;
    int                             SetDisabledCaptionFontBold;
    int                             SetDisabledCaptionFontName;
    int                             SetCheckedCaptionFontFColor;
    int                             SetCheckedCaptionFontBColor;
    int                             SetCheckedCaptionFontStyle;
    int                             SetCheckedCaptionFontSize;
    int                             SetCheckedCaptionFontBold;
    int                             SetCheckedCaptionFontName;
    int                             SetStyle;
    int                             SetChecked;
    int                             SetCaptionDownOffsetX;
    int                             SetCaptionDownOffsetY;
    int                             SetButtonDownOffsetX;
    int                             SetButtonDownOffsetY;
    int                             SetClickCount;
};

struct IGDEdit
{
    int                             Text;
    int                             Value;
    int                             ReadOnly;
    int                             MaxLength;
    int                             SelectedColor;
    int                             SelBackColor;
    int                             SelFontColor;
    int                             PasswordChar;
    int                             AllowSelect;
    int                             AllowPaste;
    int                             InValue;
    int                             TabOrder;
    int                             OnChange;
    int                             SetText;
    int                             SetValue;
    int                             SetReadOnly;
    int                             SetMaxLength;
    int                             SetSelectedColor;
    int                             SetSelBackColor;
    int                             SetSelFontColor;
    int                             SetPasswordChar;
    int                             SetAllowSelect;
    int                             SetAllowPaste;
    int                             SetInValue;
    int                             SetTabOrder;
    int                             SetOnChange;
};

struct IGDGrid
{
    int                             ColCount;
    int                             RowCount;
    int                             ColWidth;
    int                             RowHeight;
    int                             OnGridSelect;
    int                             OnGridMouseMove;
    int                             OnGridPaint;
    int                             SetColCount;
    int                             SetRowCount;
    int                             SetColWidth;
    int                             SetRowHeight;
    int                             SetOnGridSelect;
    int                             SetOnGridMouseMove;
    int                             SetOnGridPaint;
    int                             DrawGridItem;
};

struct IGDComboBox
{
    int                             ItemIndex;
    int                             Items;
    int                             Text;
    int                             OnSelect;
    int                             SetShowButton;
    int                             SetItemIndex;
    int                             SetButtonColor;
    int                             SetItems;
    int                             SetText;
    int                             SetOnSelect;
    int                             SetDefaultTextFontFColor;
    int                             SetDefaultTextFontBColor;
    int                             SetDefaultTextFontStyle;
    int                             SetDefaultTextFontSize;
    int                             SetDefaultTextFontBold;
    int                             SetDefaultTextFontName;
    int                             SetMouseMoveTextFontFColor;
    int                             SetMouseMoveTextFontBColor;
    int                             SetMouseMoveTextFontStyle;
    int                             SetMouseMoveTextFontSize;
    int                             SetMouseMoveTextFontBold;
    int                             SetMouseMoveTextFontName;
    int                             SetMouseDownTextFontFColor;
    int                             SetMouseDownTextFontBColor;
    int                             SetMouseDownTextFontStyle;
    int                             SetMouseDownTextFontSize;
    int                             SetMouseDownTextFontBold;
    int                             SetMouseDownTextFontName;
    int                             SetDisabledTextFontFColor;
    int                             SetDisabledTextFontBColor;
    int                             SetDisabledTextFontStyle;
    int                             SetDisabledTextFontSize;
    int                             SetDisabledTextFontBold;
    int                             SetDisabledTextFontName;
};

struct IGDPopupMenu
{
    int                             ItemIndex;
    int                             ItemHeight;
    int                             Items;						//TItemMenuListAPI 操作
    int                             SetSelectColor;
    int                             SetItemIndex;
    int                             SetItemHeight;
    int                             SetAlpha;
    int                             SetDefaultItemFontFColor;
    int                             SetDefaultItemFontBColor;
    int                             SetDefaultItemFontStyle;
    int                             SetDefaultItemFontSize;
    int                             SetDefaultItemFontBold;
    int                             SetDefaultItemFontName;
    int                             SetMouseMoveItemFontFColor;
    int                             SetMouseMoveItemFontBColor;
    int                             SetMouseMoveItemFontStyle;
    int                             SetMouseMoveItemFontSize;
    int                             SetMouseMoveItemFontBold;
    int                             SetMouseMoveItemFontName;
    int                             SetMouseDownItemFontFColor;
    int                             SetMouseDownItemFontBColor;
    int                             SetMouseDownItemFontStyle;
    int                             SetMouseDownItemFontSize;
    int                             SetMouseDownItemFontBold;
    int                             SetMouseDownItemFontName;
    int                             SetDisabledItemFontFColor;
    int                             SetDisabledItemFontBColor;
    int                             SetDisabledItemFontStyle;
    int                             SetDisabledItemFontSize;
    int                             SetDisabledItemFontBold;
    int                             SetDisabledItemFontName;
};

struct IGDPageControl
{
    int                             PageCount;
    int                             ShowButton;
    int                             ActivePageIndex;
    int                             ButtonWidth;
    int                             ButtonHeight;
    int                             TabSheetLeft;
    int                             TabSheetTop;
    int                             TabSheetWidth;
    int                             TabSheetHeight;
    int                             AddTabSheet;
    int                             SetShowButton;
    int                             SetActivePageIndex;
    int                             SetButtonWidth;
    int                             SetButtonHeight;
    int                             SetOffSetX;
    int                             SetOffSetY;
    int                             SetTabSheetLeft;
    int                             SetTabSheetTop;
    int                             SetTabSheetWidth;
    int                             SetTabSheetHeight;
};

struct IGDProgressBar
{
    int                             Orientation;
    int                             Position;
    int                             Max;
    int                             SetShowCapTion;
    int                             SetPosition;
    int                             SetMax;
    int                             SetBarImages;
    int                             SetBarImageIndex;
};

struct IGDraw
{
    int                             Draw;
    int                             DrawColor;
    int                             StretchDraw;
    int                             DrawAlpha;
    int                             DrawColorAlpha;
    int                             DrawBlend;
    int                             DrawEffect;
    int                             FrameRect;
    int                             FillRect;
    int                             FillRectAlpha;
    int                             Line;
    int                             FillTri;
    int                             Circle;
    int                             CurrentFont;
    int                             FindFont;
    int                             TextRect;
    int                             TextOut;
    int                             BoldTextOut;
    int                             TextWidth;
    int                             TextHeight;
};

struct IGActor
{
    int                             wAppearance;
    int                             nRecogId;
    int                             nCurrX;
    int                             nCurrY;
    int                             btDir;
    int                             btSex;
    int                             btRace;
    int                             btHair;
    int                             wDress;
    int                             wWeapon;
    int                             btJob;
    int                             btCaseltGuild;
    int                             sDescUserName;
    int                             sUserName;
    int                             nNameColor;
    int                             Abil;
    int                             boOpenShop;
    int                             nSayX;
    int                             nSayY;
    int                             nShiftX;
    int                             nShiftY;
    int                             nTargetX;
    int                             nTargetY;
    int                             nTargetRecog;
    int                             boCobweb;
    int                             boCanDraw;
    int                             nBagCount;
    int                             btColor;
    int                             nState;
    int                             nBodyOffset;
    int                             boUseMagic;
    int                             nCurrentFrame;
    int                             nStartFrame;
    int                             nEndFrame;
    int                             dwFrameTime;
    int                             dwStartTime;
    int                             Reserveds[100];
};

struct IGSocket
{
    int                             SendSocket;
    int                             SendClientMessage;
    int                             SendLogin;
    int                             SendSelectServer;
    int                             SendQueryChr;
    int                             SendSelChr;
    int                             SendSay;
    int                             Close;
};
struct IGHook
{
    int                             GetHookInitialize;
    int                             GetHookFinalize;
    int                             GetHookFormKeyDown;
    int                             GetHookFormKeyPress;
    int                             GetHookFormMouseDown;
    int                             GetHookFormMouseMove;
    int                             GetHookDecodeMessagePacketStart;
    int                             GetHookDecodeMessagePacketStop;
    int                             GetHookDecodeMessagePacket;
    int                             GetHookDrawScene1;
    int                             GetHookDrawScene2;
    int                             GetHookDrawScene3;
    int                             GetHookDrawScene4;
    int                             GetHookTActor_FeatureChanged;
    int                             GetHookTActor_CalcActorFrame;
    int                             GetHookTActor_DrawChr1;
    int                             GetHookTActor_DrawChr2;
    int                             GetHookTHumActor_CalcActorFrame;
    int                             GetHookTHumActor_DrawChr1;
    int                             GetHookTHumActor_DrawChr2;
    int                             GetHookTHumActor_DrawChr3;
    int                             GetHookTHumActor_DrawChr4;
    int                             SetHookInitialize;
    int                             SetHookFinalize;
    int                             SetHookFormKeyDown;
    int                             SetHookFormKeyPress;
    int                             SetHookFormMouseDown;
    int                             SetHookFormMouseMove;
    int                             SetHookDecodeMessagePacketStart;
    int                             SetHookDecodeMessagePacketStop;
    int                             SetHookDecodeMessagePacket;
    int                             SetHookDrawScene1;
    int                             SetHookDrawScene2;
    int                             SetHookDrawScene3;
    int                             SetHookDrawScene4;
    int                             SetHookTActor_FeatureChanged;
    int                             SetHookTActor_CalcActorFrame;
    int                             SetHookTActor_DrawChr1;
    int                             SetHookTActor_DrawChr2;
    int                             SetHookTHumActor_CalcActorFrame;
    int                             SetHookTHumActor_DrawChr1;
    int                             SetHookTHumActor_DrawChr2;
    int                             SetHookTHumActor_DrawChr3;
    int                             SetHookTHumActor_DrawChr4;
    int                             Reserveds[100];
};

struct IGGame
{
    int                             ClientPath;
    int                             ClientName;
    int                             MySelf;
    int                             MyHero;
    int                             MagicList;
    int                             MagicNGList;
    int                             ContinuousMagicList;
    int                             HeroMagicList;
    int                             HeroMagicNGList;
    int                             HeroContinuousMagicList;
    int                             GroupMembers;
    int                             DropedItemList;
    int                             MenuItemList;
    int                             ActorList;
    int                             ScreenXYfromMCXY;
    int                             CXYfromMouseXY;
    int                             FindActor1;
    int                             FindActor2;
    int                             FindActorXY1;
    int                             FindActorXY2;
    int                             CanWalk;
    int                             CanRun;
    int                             CanHorseRun;
    int                             GetRGB;
    int                             DebugOutStr;
    int                             AppLogout;
    int                             AppExit;
    int                             DMessageDlg;
    int                             AddChatBoardString;
    int                             AddTopChatBoardString;
    int                             AddMoveMsg;
    int                             ShowHint;
    int                             ShowMouseItemInfo;
    int                             ClearHint;
    int                             DlgEditText;
    int                             PlaySound;
    int                             PlaySoundV;
    int                             ItemClickSound;
    int                             ItemBag;
    int                             HeroItemBag;
    int                             UseItems;
    int                             HeroUseItems;
    int                             UserState1;
    int                             boItemMoving;
    int                             MovingItem;
    int                             WaitingUseItem;
    int                             SellDlgItem;
    int                             nTargetX;
    int                             nTargetY;
    int                             TargetCret;
    int                             FocusCret;
    int                             MagicTarget;
    int                             Gold;
    int                             GameGold;
    int                             GamePoint;
    int                             GloryPoint;
    int                             GameDiamond;
    int                             GameGird;
    int                             GameGlory;
    int                             LoyaltyPoint;
    int                             GameGoldName;
    int                             GamePointName;
    int                             GameDiamondName;
    int                             GameGirdName;
    int                             EncodeBuffer;
    int                             DecodeBuffer;
    int                             FullScreenDrawScene;
    int                             AreaStateValue;
    int                             MapTitle;
    int                             EatItem;
    int                             HeroEatItem;
    int                             ServerImageList;
    int                             ClassDlg;
    int                             SetMovingItem;
    int                             SetWaitingUseItem;
    int                             SetSellDlgItem;
    int                             SetItemBag;
    int                             SetHeroItemBag;
    int                             SetUseItems;
    int                             SetHeroUseItems;
    int                             SetUserState1;
    int                             SetItemMoving;
    int                             Reserveds[100];
};

struct IGDialog
{
    int                             DMainMenu;
    int                             DLoginDlg;
    int                             DRandomCodeDlg;
    int                             DLogin;
    int                             DNewAccount;
    int                             DChgPw;
    int                             DSelServerDlg;
    int                             DServerDlg;
    int                             DDoorDlg;
    int                             DSelectChr;
    int                             DCreateChr;
    int                             DDeleteHumanDlg;
    int                             DNoticeDlg;
    int                             DMerchantDlg;
    int                             DBottomLeft;
    int                             DBottomCenter;
    int                             DBottomRight;
    int                             DItemBag;
    int                             DStateWin;
    int                             DUserState1;
    int                             DHeroStateWin;
    int                             DHeroStateDlg;
    int                             DHeroItemBag;
    int                             DMenuDlg;
    int                             DSellDlg;
    int                             DDealDlg;
    int                             DDealRemoteDlg;
    int                             DShopDlg;
    int                             DGroupDlg;
    int                             DRankingDlg;
    int                             DGuildDlg;
    int                             DGuildEditNotice;
    int                             DAdjustAbility;
    int                             DMissionDlg;
};

struct IGList
{
    int                             Create;
    int                             Free;
    int                             Count;
    int                             Add;
    int                             Insert;
    int                             Get;
    int                             Delete;
    int                             Clear;
};

struct IGStringList
{
    int                             Create;
    int                             Free;
    int                             Count;
    int                             Add;
    int                             AddObject;
    int                             Insert;
    int                             Get;
    int                             GetObject;
    int                             Delete;
    int                             Clear;
};

struct IGItemMenuList
{
    int                             Count;
    int                             Add;
    int                             AddObject;
    int                             Get;
    int                             GetObject;
    int                             Delete;
    int                             Clear;
};

struct IGInterface
{
    IGDControl		                DControl;
    IGDWindow		                DWindow;
    IGDButton		                DButton;
    IGDEdit                         DEdit;
    IGDGrid                         DGrid;
    IGDComboBox		                DComboBox;
    IGDPopupMenu                    DPopupMenu;
    IGDPageControl	                DPageControl;
    IGDProgressBar	                DProgressBar;
};

struct IGClient
{
    IGList                          List;
    IGStringList                    StringList;
    IGItemMenuList	                ItemMenuList;
    IGTexture                       Texture;
    IGImages                        Images;
    IGInterface                     Interface;
    IGDraw                          Draw;
    IGActor                         Actor;
    IGSocket                        Socket;
    IGHook                          Hook;
    IGGame                          Game;
    IGDialog                        Dialog;
    int                             Reserveds[72];
};

struct IGClientGoods
{
    unsigned char                   Size;
    char                            Name[30];
    int                             SubMenu;
    int                             Price;
    int                             Stock;
    int                             Grade;
    int                             Count;
};

struct IGSpeed
{
    short                           Move;
    short                           Attack;
    short                           Magic;
};

struct IGDropItem
{
    int                             x;
    int                             y;
    int                             id;
    int                             Unassigned;
    int                             Looks;
    unsigned int                    Color;			// RGB
    unsigned char                   Size;
    char                            Name[30];
    unsigned char                   DBSize;
    char                            DBName[30];
    //unsigned char unknown[4];
    //unsigned int nFlags;
};

#endif // __CHEAT_GAME_STRUCT_H__