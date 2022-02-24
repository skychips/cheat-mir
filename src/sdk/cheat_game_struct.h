#ifndef __CHEAT_GAME_STRUCT_H__
#define __CHEAT_GAME_STRUCT_H__

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#   pragma once
#endif

#include <details/cheat_platform.h>

enum nMode
{
    ҩƷ,
    ʳƷ,
    ����,
    ����,
    ������,
    ����,
    �·��� = 10,
    �·�Ů,
    ͷ�� = 15,
    ���� = 16,
    ���� = 19,
    ��ָ = 22,
    ���� = 24,
    ���� = 25,
    ���� = 28,
    ��ʹ,
    ����,
    ����,
    ���� = 48,
    ������,
    ��Ѫ��ʯ = 53, // ����Ѫʯ���� Anicount=1,2,3 �ֱ��Ӧ����ʯͷ
    Ь�� = 62,
    ��ʯ,
    ����,
    ����,
};
enum IGRCode
{
    RC_PLAYOBJECT = 0,
    RC_HEROOBJECT = 1,		//Ӣ��
    RC_PLAYMOSTER = 60,		//���ι���
    RC_MOONOBJECT = 99,		//����
    RC_GUARD = 11,			//������
    RC_PEACENPC = 15,		//��ƽNPC
    RC_ANIMAL = 50,			//����NPC
    RC_MONSTER = 80,
    RC_NPC = 10,
    RC_ARCHERGUARD = 112,
    RC_TRUCKOBJECT = 128,	//Ѻ�ڳ�
};
enum wRecv
{
    �ȴ�ȫ�� = 0,
    �ȴ���� = 1,
    �ȴ��ڹ� = 2,
    �ȴ���� = 3,
    �ȴ���ʱ = 1000
};
enum IGIdentEx
{
    ѡ����Ϣ = 0x038,
    ICON��Ϣ = 0x03F,
    ������Ϣ = 0x7D0,
    �����Ϣ = 0x804,
    �ڹ���Ϣ = 0x87A,
    ������Ϣ = 0x830,
    �Ի���Ϣ = 0xAB,
    �Ự��Ϣ = 0x37,
    ������Ϣ = 0x58,
    ������Ϣ = 0x32,
    ������Ϣ = 0xFF0,
    �ظ���Ϣ = 0xFF1 + ������Ϣ,
    ������Ϣ = 0xFF2,
    ȷ����Ϣ = 0xF3,
    ������Ϣ = 0x800,
    ˢ����Ϣ = 0x5A,
};
enum IGState
{
    nState_���� = 0x00080000,
    nState_���� = 0x00100000,
    nState_��� = 0x04000000,
    nState_��ɫ = 0x08000000,
    nState_��ɫ = 0x10000000,
    nState_��ɫ = 0x20000000,
    nState_��ɫ = 0x40000000,
    nState_��ɫ = 0x80000000
};
enum IGIdent
{
    SSPELL = 1101,		// ʹ��ħ��
    STURN = 1102,			// ת��
    SWALK = 1103,			// ��
    SSITDOWN = 1104,		// ��
    SRUN = 1105,			// ��
    SHORSERUN = 1106,		// ��
    SHIT = 1107,			// ��
    SHEAVYHIT = 1108,		// ��
    SBIGHIT = 1109,		// ��
    SPOWERHIT = 1110,
    SLONGHIT = 1111,		// ��ɱ
    SWIDEHIT = 1112,		// ����
    SFIREHIT = 1113,		// �һ�
    SCRSHIT = 1114,		// ���µ� ˫��ն   ID=40
    STWNHIT = 1115,		// ��Ӱ����     ID=42
    S43HIT = 1116,		// ��������    ID=43
    SSWORDHIT = 1117,		// ���ս���  ID=56
    S60HIT = 1118,		// �ƻ�ն
    S61HIT = 1119,		// ����ն
    S62HIT = 1120,		// ����һ��
    S66HIT = 1121,		// ����ն
    S100HIT = 1122,		// ����ɱ
    S101HIT = 1123,		// ����ɱ
    S102HIT = 1124,		// ����ն
    S103HIT = 1125,		// ��ɨǧ��
    SRUSH = 1147,			// Ұ��
    SRUSHKUNG = 1148,		// Ұ��ʧ��
    SBACKSTEP = 1149,
    SDIGUP = 1150,
    SDIGDOWN = 1151,
    SFLYAXE = 1152,
    SLIGHTING = 1153,
    SALIVE = 1154,
    SMOVEFAIL = 1155,
    SHIDE = 1156,
    SDISAPPEAR = 1157,
    SSTRUCK = 1158,		// ����
    SDEATH = 1159,
    SSKELETON = 1160,
    SNOWDEATH = 1161,		// ��������
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
    SGAMEGOLDNAME = 1319, //��Ϸ������
    SGAMEPOINTNAME = 1320, //��Ϸ������2
    SGAMEGLORY = 1321, //��Ϸ����
    SSERVERCONFIG = 1322,
    SGETREGINFO = 1323,
    SMISSIONNPC = 1324, //��������NPC����
    SATTATCKMODE = 1325, //���͹���ģʽ
    SBUYSHOPITESUCCESS = 1326,
    SBUYSHOPITEFAIL = 1327,
    SSENGSHOPITEMS = 1328,
    RSENGSHOPITEMS = 1329,
    SSENGRANKING = 1330,
    SSENGMYRANKING_FAIL = 1331,
    SSHOWBOX = 1332, //��ʾ����
    SOPENBOX_SUCCESS = 1333, //Կ����ȷ���俪��
    SOPENBOX_FAIL = 1334,
    SSENDGETBOXITEMINDEX = 1335, //��ȡת����ѡ�����Ʒ���
    STAKEONITEM = 1336, //�Զ���װ��
    STAKEOFFITEM = 1337, //�Զ���װ��
    SAUTOGOTOXY = 1338, //�Զ�Ѱ·
    SCLICKNPCLABEL = 1339, //
    SSERVERNAME = 1340,
    SHEROTAKEONITEM = 1341, //Ӣ���Զ���װ��
    SHEROTAKEOFFITEM = 1342, //Ӣ���Զ���װ��
    SSENDGAMEGOLDDALITEM = 1343, //Ԫ������װ��
    SSELLGAMEGOLDDALITEOK = 1344,
    SSELLGAMEGOLDDALITEFAIL = 1345,
    SBUYGAMEGOLDDALITEOK = 1346,
    SBUYGAMEGOLDDALITEFAIL = 1347,
    SCANCELGAMEGOLDDEALITEOK = 1348, //ȡ��Ԫ������װ��
    SCANCELGAMEGOLDDEALITEFAIL = 1349, //ȡ��Ԫ������װ��
    SCANCELGAMEGOLDSELLITEOK = 1350, //ȡ��Ԫ������װ��
    SCANCELGAMEGOLDSELLITEFAIL = 1351, //ȡ��Ԫ������װ��
    SUNBINDLIST = 1352,
    SEFFECTIMAGELIST = 1353, //WIL�б�
    SPLAYEFFECT = 1354, //��������Ч��
    SSCREENEFFECT = 1355,
    SOVERLAPITEOK = 1356, //�ص���Ʒ �ɹ�
    SOVERLAPITEFAIL = 1357, //�ص���Ʒ ʧ��
    SHEROOVERLAPITEOK = 1358, //Ӣ���ص���Ʒ �ɹ�
    SHEROOVERLAPITEFAIL = 1359, //Ӣ���ص���Ʒ ʧ��
    SPACKAGEITEOK = 1360, //�ֿ��ص���Ʒ �ɹ�
    SPACKAGEITEFAIL = 1361, //�ֿ��ص���Ʒ ʧ��
    SHEROPACKAGEITEOK = 1362, //Ӣ�۷ֿ��ص���Ʒ �ɹ�
    SHEROPACKAGEITEFAIL = 1363, //Ӣ�۷ֿ��ص���Ʒ ʧ��
    SPLAYSOUND = 1364,
    SOPENBIGMERCHANTBIGDLG = 1365,
    SCLOSEBIGMERCHANTBIGDLG = 1366,
    SREPAIRFIRDRAGON_OK = 1367, //�������֮�� �ɹ�
    SREPAIRFIRDRAGON_FAIL = 1368, //�������֮��  ʧ��
    SCHANGESPEED = 1369, //��Ϸ�ٶ�
    SQUERYUSERSHOPS = 1370, //��������������̽��
    SQUERYUSERSHOPITEMS = 1371, //����ָ���û�������Ʒ
    SSEARCHSHOPITEMS = 1372, //�����������������Ʒ���
    SQUERYMYSHOPSELLINGITEMS = 1373, //�����ҵĵ���������Ʒ
    SQUERYMYSHOPSELLEDITEMS = 1374, //�����ҵĵ����Ѿ�������Ʒ
    SQUERYMYSHOPSTORAGEITEMS = 1375, //�����ҵĵ��ֿ̲���Ʒ
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
    SUPGRADEDLGITETAKE = 1386, //�����ɹ�
    SUPGRADEDLGITEGIVE = 1387, //�����ɹ�
    SOPENUPGRADEDLG = 1388, //��ʾOK�Ի���
    SSENDUSERICON = 1389,
    SSENDWEBBROWSER = 1390,
    SSENDUSEREFFECT = 1391,
    SSENDSUPERSHILEDEFFECT = 1392,
    SSENDBLASTHIT = 1393, //����
    SSENDFILENAME = 1394, //�����ļ����
    SSENDFILES = 1395, //�����ļ����
    SSPECIALCMD = 1396, //��������
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
    SCHALLENGECHGGAMEDIAMOND_OK = 1409, //�޸���ս���ʯ�ɹ�
    SCHALLENGECHGGAMEDIAMOND_FAIL = 1410, //�޸���ս���ʯʧ��
    SCHALLENGEREMOTECHGGOLD = 1411, //�޸ĶԷ���ս���
    SCHALLENGEREMOTECHGGAMEDIAMOND = 1412, //�޸ĶԷ���ս���ʯ
    SCHALLENGESUCCESS = 1413, //��ս�ɹ�
    SOPENUPGRADEDIALOG = 1414, //�򿪰�����ʯװ�������Ի���
    SSENDUPGRADEDIALOG_OK = 1415, //������ʯװ�������ɹ�
    SSENDUPGRADEDIALOG_FAIl = 1416, //������ʯװ������ʧ��
    SHEARCOLOR = 1417, //���ﺰ����Ϣ��ɫ
    SSOFTCLOSE = 1418,
    SPLAYDRINKSAY = 1419, //�ƹ�NPC�Ի�����Ϣ
    SUSERPLAYDRINKITEOK = 1420, //��Ƴɹ�
    SUSERPLAYDRINKITEFAIl = 1421, //���ʧ��
    SUSERPLAYDRINK_OK = 1422, //��NPC�ľ���ȷ ���Զ���
    SUSERPLAYDRINK_FAIL = 1423, //��NPC�ľƴ���
    SOPENPLAYDRINK = 1424, //�򿪴���
    SCLOSEDRINK = 1425, //�رվƹ�NPC�Ի���
    SDRINKUPDATEVALUE = 1426, //���غȾ�
    SPLAYDRINKTODRINK = 1427, //���͵��ͻ���˭Ӯ˭��
    SSENDUSERPLAYDRINK = 1428, //������ƶԻ���
    SSENDSTORAGEHEROINFO = 1429, //Ӣ�ۼĴ���Ϣ   �ٻؼĴ��Ӣ��
    SSENDSTORAGEHEROINFOEX = 1430, //Ӣ�ۼĴ���Ϣ ����Ӣ��
    SASSESSMENTHERO_OK = 1431, //����Ӣ�۳��ɹ�
    SASSESSMENTHERO_FAIL = 1432, //����Ӣ�۳�ʧ��
    SSENDSHOWHEROAUTOPRACTICEDLG = 1433, //��ʾӢ���Զ������Ի���
    SSENDHEROAUTOPRACTICE_OK = 1434, //Ӣ���Զ������ɹ�
    SSENDHEROAUTOPRACTICE_FAIL = 1435, //Ӣ���Զ�����ʧ��
    SREFABILNG = 1436, //ˢ������
    SABILITYNG = 1437, //�ڹ�����
    SABILITYALCOHOL = 1438, //������
    SABILITYMERIDIANS = 1439, //����
    SHEROABILITYNG = 1440, //Ӣ���ڹ�����
    SHEROABILITYALCOHOL = 1441, //Ӣ�۾�����
    SHEROABILITYMERIDIANS = 1442, //Ӣ�۾���
    SOPENCOBWEBWINDING = 1443, //֩������ס  ����
    SCLOSECOBWEBWINDING = 1444, //֩������ס ��
    SLIGHTINGEX = 1445,
    SCONTINUOUSMAGICORDER = 1446, //����˳��  series=0 ���� series=1 Ӣ��
    SCONTINUOUSMAGIC_OK = 1447, //����ʼ��ʼ�����ɹ�
    SCONTINUOUSMAGIC_FAIL = 1448, //����ʼ��ʼ����ʧ��
    SCANCONTINUOUSMAGIC = 1449, //�������� ��������ͼƬ��˸��ʾ
    STRAININGNG = 1450, //�Ƿ������ڹ��ķ� ������Ӧ��ʾ�ڹ��ķ�����  series=0 ���� series=1 Ӣ��
    SLEVELUPNG = 1451, //�ڹ�����
    SSTOPCONTINUOUSMAGIC = 1452, //ֹͣ����
    SMAPCANRUN = 1453, //���˴���״̬
    SPLUGFILE = 1454, //�ͻ��˲��MD5 M2���͹������м��
    SMODULEMD5 = 1455, //������ģ��MD5
    SBLACKMODULEMD5 = 1456, //������ģ��MD5
    SSENDSHOPNAME = 1457, //��̯��������
    SMASTERBAGTOHEROBAG_OK = 1458, //���˰�����Ʒ�ŵ�Ӣ�۰����ɹ�
    SMASTERBAGTOHEROBAG_FAIL = 1459, //���˰�����Ʒ�ŵ�Ӣ�۰���ʧ��
    SHEROBAGTOMASTERBAG_OK = 1460, //Ӣ�۰�����Ʒ�ŵ����˰����ɹ�
    SHEROBAGTOMASTERBAG_FAIL = 1461, //Ӣ�۰�����Ʒ�ŵ����˰���ʧ��
    SHEROBAGCOUNT = 1462, //Ӣ�۰�������
    SHEROLOGOUT = 1463, //��ȡӢ�� TMessageBodyWL ����Ӣ���˳�Ч��
    SHEROLOGON = 1464, //��ȡӢ�� TMessageBodyWL ����Ӣ�۵�½Ч��
    SHEROLOYAL = 1465, //��ȡӢ���ҳ�  10001(��00.00%)
    SHEROABILITY = 1466, //��ȡӢ��Abil
    SHEROSUBABILITY = 1467, //Ӣ��SUBABILITY
    SHEROBAGITEMS = 1468, //��ȡӢ�۰���     Tag:������Ʒ���� 2 Series: ����������10
    SSENDHEROUSEITEMS = 1469, //��ȡӢ������װ��
    SSENDMYHEROMAGIC = 1470, //��ȡӢ��ħ��
    SHEROADDITEM = 1471, //Ӣ�� Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
    SHERODELITEM = 1472, //Ӣ�� Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
    SHEROTAKEON_OK = 1473, //Ӣ�۴�װ��OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
    SHEROTAKEON_FAIL = 1474, //Ӣ�۴�װ��FAIL
    SHEROTAKEOFF_OK = 1475, //Ӣ����װ��OK
    SHEROTAKEOFF_FAIL = 1476, //Ӣ����װ��FAIL
    SHEROEAT_OK = 1477, //Ӣ�۳�ҩOK
    SHEROEAT_FAIL = 1478, //Ӣ�۳�ҩFAIL
    SHEROADDMAGIC = 1479, //Ӣ������ħ��
    SHERODELMAGIC = 1480, //Ӣ��ɾ��ħ��
    SHEROANGERVALUE = 1481, //Ӣ��ŭֵ�ı� Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
    SHEROLOGOUT_OK = 1482, // Ӣ���˳�OK
    SHERODURACHANGE = 1483, //Ӣ����Ʒ�־øı�
    SHERODROPITESUCCESS = 1484, //Ӣ������ƷOK
    SHERODROPITEFAIL = 1485, //Ӣ������ƷFAIL
    SHEROLEVELUP = 1486, //Ӣ������
    SHEROWINEXP = 1487, //Ӣ�ۻ�ȡ����
    SHEROWEIGHTCHANGED = 1488,
    SHEROMAGIC_LVEXP = 1489, //Ӣ��ħ������
    SHEROCHANGEFACE = 1490,
    SHEROUPDATEITEM = 1491,
    SHERODELITEMS = 1492,
    SHEROCHANGEITEM = 1493,
    SHEROLOGON_OK = 1494,
    SOPENMISSIONDLG = 1495,
    SDELETEDELAYMESSAGE = 1496,
    SHEROM2ADDUSERSHOPITEOK = 1497, //���Ӱ�̯��Ʒ�ɹ�
    SHEROM2ADDUSERSHOPITEFAIL = 1498, //���Ӱ�̯��Ʒʧ��
    SHEROM2DELUSERSHOPITEOK = 1499, //ɾ����̯��Ʒ�ɹ�
    SHEROM2DELUSERSHOPITEFAIL = 1500, //ɾ����̯��Ʒʧ��
    SHEROM2DELUSERSHOPITEM = 1501, //ɾ����̯��Ʒ
    SHEROM2DELREMOTEUSERSHOPITEM = 1502, //ɾ����̯��Ʒ
    SHEROM2SENDSHOPITEM = 1503, //��̯��Ʒ
    SHEROM2SENDCLOSESHOP = 1504, //�رչ����̯��Ʒ����
    SHEROM2SENDDRESSEFFECT = 1505,
    SSENDFILTERITEMLIST = 1506,
    SSENDITEMDESCLIST = 1507,
    SSENDTZITEMDESCLIST = 1508,
    SAUTO_OK = 1511,
    SAUTO_FAIL = 1512,
};

// 176   185   Ӣ�۰�  ������   ��������     �⴫   ����
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
    int                             MaxWeight;      //0x1BA   //0x56 0x22  ����
    int                             WearWeight;     //0x1BC   //0x58 0x24
    int                             MaxWearWeight;  //0x1BD   //0x59 0x25  ����
    int                             HandWeight;     //0x1BE   //0x5A 0x26
    int                             MaxHandWeight;  //0x1BF   //0x5B 0x27  ����
    int                             CreditPoint;    //����
    unsigned char                   NewValue[20/*# range 0..20-1*/];// 0������������ 1���ӹ����˺�  2�����˺����� 3ħ���˺�����  4����Ŀ�����  5�����˺����� 6������������  7����ħ������ 8ŭ���ָ����� 9�ϻ���������  10����Ŀ�걩��
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
    short                           OverLap;                                    // �Ƿ����ص���Ʒ
    unsigned char                   Color;                                      // ��Ʒ������ɫ
    int                             Stock;
    unsigned int                    btValue[7/*# range 0..6*/];                 // ��������
    unsigned char                   btAddValue[9/*# range 5..13*/];             // ��������
    unsigned char                   btUpgradeCount;                             // ��������
    unsigned char                   btHeroM2Light;                              // HeroM2 SetItemsLight
    unsigned char                   NewValue[20/*# range 0..20-1*/];
    bool                            IsBind; //�Ƿ��
    unsigned char                   Reserved2[418/*# range 0..418-1*/];
    short int                       EffectFileIndex;                            // �����е���Ʒ����Ч�� �ļ���� 0
    short                           EffectStartOffSet;                          // �����е���Ʒ����Ч�� ��ȡλ��
    unsigned char                   EffectImageCount;                           // �����е���Ʒ����Ч�� ��ȡ����
    short                           EffectOffsetX;                              // �����е���Ʒ����Ч�� ΢��X
    short                           EffectOffsetY;                              // �����е���Ʒ����Ч�� ΢��Y
    short                           EffectTime;                                 // �����ٶ�
    bool                            EffectNotCheckSize;
    short                           BodyEffectFileIndex;                        // �ڹ���Ʒ����Ч�� �ļ���� 0
    short                           BodyEffectStartOffSet;                      // �ڹ���Ʒ����Ч�� ��ȡλ��
    unsigned char                   BodyEffectImageCount;                       // �ڹ���Ʒ����Ч�� ��ȡ����
    short                           BodyEffectOffsetX;                          // �ڹ���Ʒ����Ч�� ΢��X
    short                           BodyEffectOffsetY;                          // �ڹ���Ʒ����Ч�� ΢��Y
    short                           BodyEffectTime;                             // �����ٶ�
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
    unsigned char                   btTrainLv;                                              //��߿������ȼ�
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

struct IGImages // WIL�ļ���ȡ���API
{
    int                             GetHandle;
    int                             Count;
    int                             Read;
    int                             Clear;
};

struct IGTexture // �������API
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
    int                             Items;						//TItemMenuListAPI ����
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