unit ClientType;
{$I PlugIn.inc}
interface
const
  MAPNAMELEN = 30;
  ACTORNAMELEN = 30;
  ITEMNAMELEN = 30;
  ACCOUNTLEN = 30;
  IPADDRESSLEN = 15;
  DEFBLOCKSIZE = 22;
  BUFFERSIZE = 102400;
  MAXSTOREITEM = 46;
  MAXBAGITEMCL = 46;
  MAXHEROBAGITEM = 40; //Ӣ�۰���


  mtBagItem = 0;
  mtUseItem = 1;
  mtHeroBagItem = 2;
  mtHeroUseItem = 3;
  mtDealItem = 4;
  mtBagGold = 5;
  mtDealGold = 6;
  mtGameGoldDeal = 7;
  mtChallengeGold = 8;
  mtChallengeItem = 9;
  mtUpgradeItem = 10;
  mtWineMatItem = 11;

//----------------------------------����ģʽ------------------------------------
  BLEND_COLORADD = 1;
  BLEND_COLORMUL = 0;
  BLEND_ALPHABLEND = 2;
  BLEND_ALPHAADD = 0;
  BLEND_ZWRITE = 4;
  BLEND_NOZWRITE = 0;

  Blend_Default = BLEND_COLORMUL or BLEND_ALPHABLEND or BLEND_NOZWRITE;
  Blend_Default_Z = BLEND_COLORMUL or BLEND_ALPHABLEND or BLEND_ZWRITE;

  Blend_Add = 100;
  Blend_SrcAlpha = 101;
  Blend_SrcAlphaAdd = 102;
  Blend_SrcColor = 103;
  Blend_SrcColorAdd = 104;
  Blend_Invert = 105;
  Blend_SrcBright = 106;
  Blend_Multiply = 107;
  Blend_InvMultiply = 108;
  Blend_MultiplyAlpha = 109;
  Blend_InvMultiplyAlpha = 110;
  Blend_DestBright = 111;
  Blend_InvSrcBright = 112;
  Blend_InvDestBright = 113;
  Blend_Bright = 114;
  Blend_BrightAdd = 115;
  Blend_GrayScale = 116;
  Blend_Light = 117;
  Blend_LightAdd = 118;
  Blend_Add2X = 119;
  Blend_OneColor = 120;
  Blend_XOR = 121;
  Blend_Blend = 122;
//------------------------------------------------------------------------------

  DR_UP = 0;
  DR_UPRIGHT = 1;
  DR_RIGHT = 2;
  DR_DOWNRIGHT = 3;
  DR_DOWN = 4;
  DR_DOWNLEFT = 5;
  DR_LEFT = 6;
  DR_UPLEFT = 7;

  U_DRESS = 0; //�·�
  U_WEAPON = 1; //����
  U_RIGHTHAND = 2;
  U_NECKLACE = 3; //����
  U_HELMET = 4; //ͷ��
  U_ARMRINGL = 5; //������
  U_ARMRINGR = 6; //������
  U_RINGL = 7; //���ָ
  U_RINGR = 8; //�ҽ�ָ
  U_BUJUK = 9; //��
  U_BELT = 10; //����
  U_BOOTS = 11; //Ь
  U_CHARM = 12; //��ʯ
  U_HAT = 13; //����
  U_DRUM = 14; //��
  U_HORSE = 15; //��
  U_SHIELD = 16; //��
  U_SDRESS = 17; //ʱװ�·�
  U_SWEAPON = 18; //ʱװ����

  RC_PLAYOBJECT = 0;
  RC_HEROOBJECT = 1; //Ӣ��
  RC_PLAYMOSTER = 60; //���ι���

  RC_MOONOBJECT = 99; //����
  RC_GUARD = 11; //������
  RC_PEACENPC = 15; //��ƽNPC
  RC_ANIMAL = 50; //����NPC
  RC_MONSTER = 80;
  RC_NPC = 10;
  RC_ARCHERGUARD = 112;
  RC_TRUCKOBJECT = 128; //Ѻ�ڳ�


//==============================================================================
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_QUERYCHR = 3000;
  CM_NEWCHR = 3001;
  CM_DELCHR = 3002;
  CM_SELCHR = 3003;
  CM_SELECTSERVER = 3004;
  CM_QUERYDELCHR = 3005;
  CM_GETBACKDELCHR = 3006;
  CM_GETBACKPASSWORD = 3007; //�����һ�
  CM_PROTOCOL = 3008;
  CM_IDPASSWORD = 3009;
  CM_ADDNEWUSER = 3010;
  CM_CHANGEPASSWORD = 3011;
  CM_UPDATEUSER = 3012;
  CM_RANDOMCODE = 3013;
  CM_CHANGERANDOMCODE = 3014;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  CM_SPELL = 1;
  CM_TURN = 2;
  CM_WALK = 3;
  CM_SITDOWN = 4;
  CM_RUN = 5;
  CM_HORSERUN = 6;
  CM_HIT = 7;
  CM_HEAVYHIT = 8;
  CM_BIGHIT = 9;
  CM_POWERHIT = 10;
  CM_LONGHIT = 11;
  CM_WIDEHIT = 12; //����
  CM_FIREHIT = 13; //�һ�
  CM_CRSHIT = 14; //���µ� ˫��ն   ID=40
  CM_TWNHIT = 15; //��Ӱ����     ID=42
  CM_43HIT = 16; //��������    ID=43
  CM_SWORDHIT = 17; //���ս���  ID=56
  CM_60HIT = 18; //�ƻ�ն
  CM_61HIT = 19; //����ն
  CM_62HIT = 20; //����һ��
  CM_66HIT = 21; //����ն
  CM_100HIT = 22; //׷�Ĵ�
  CM_101HIT = 23; //����ɱ
  CM_102HIT = 24; //����ն
  CM_103HIT = 25; //��ɨǧ��

  CM_QUERYUSERNAME = 47;
  CM_DROPITEM = 48;
  CM_PICKUP = 49;
  CM_TAKEONITEM = 50;
  CM_TAKEOFFITEM = 51;
  CM_EAT = 52;
  CM_BUTCH = 53;
  CM_MAGICKEYCHANGE = 54;
  CM_CLICKNPC = 55;
  CM_MERCHANTDLGSELECT = 56;
  CM_MERCHANTQUERYSELLPRICE = 57;
  CM_USERSELLITEM = 58;
  CM_USERBUYITEM = 59;
  CM_USERGETDETAILITEM = 60;
  CM_DROPGOLD = 61;
  CM_LOGINNOTICEOK = 62;
  CM_GROUPMODE = 63;
  CM_CREATEGROUP = 64;
  CM_ADDGROUPMEMBER = 65;
  CM_DELGROUPMEMBER = 66;
  CM_USERREPAIRITEM = 67;
  CM_MERCHANTQUERYREPAIRCOST = 68;
  CM_DEALTRY = 69;
  CM_DEALADDITEM = 70;
  CM_DEALDELITEM = 71;
  CM_DEALCANCEL = 72;
  CM_DEALCHGGOLD = 73;
  CM_DEALEND = 74;
  CM_USERSTORAGEITEM = 75;
  CM_USERTAKEBACKSTORAGEITEM = 76;
  CM_WANTMINMAP = 77;
  CM_USERMAKEDRUGITEM = 78;
  CM_OPENGUILDDLG = 79;
  CM_GUILDHOME = 80;
  CM_GUILDMEMBERLIST = 81;
  CM_GUILDADDMEMBER = 82;
  CM_GUILDDELMEMBER = 83;
  CM_GUILDUPDATENOTICE = 84;
  CM_GUILDUPDATERANKINFO = 85;
  CM_ADJUST_BONUS = 86;
  CM_PASSWORD = 87;
  CM_SAY = 88;
  CM_QUERYUSERSTATE = 89;
  CM_QUERYBAGITEMS = 90;
  CM_OPENDOOR = 91;
  CM_SOFTCLOSE = 92;
  CM_GUILDALLY = 93;
  CM_GUILDBREAKALLY = 94;
  //�������
  CM_GETSHOPITEMS = 95;
  CM_BUYSHOPITEM = 96;
  //���а�
  CM_GETRANKING = 97;
  CM_GETMYRANKING = 98;
  //������
  CM_OPENBOX = 99; //Կ�׷���Կ�׿״�����
  CM_ROTATIONBOX = 100; //ת������
  CM_SENDGETSELBOXITEM = 101; //��ȡ�����Լ�ѡ�����Ʒ
  CM_SENDSELLGAMEGOLDDALITEM = 102; //Ԫ������װ��
  CM_SENDBUYGAMEGOLDDALITEM = 103; //����Ԫ������װ��
  CM_SENDCANCELGAMEGOLDDALITEM = 104; //ȡ��Ԫ������װ��
  CM_OVERLAPITEM = 105; //�ص���Ʒ
  CM_HEROOVERLAPITEM = 106; //Ӣ�۰����ص���Ʒ
  CM_PACKAGEITEM = 107; //�ֿ��ص���Ʒ
  CM_HEROPACKAGEITEM = 108; //�ֿ�Ӣ�۰����ص���Ʒ
  CM_QUERYUSERSHOPS = 109; //�����������
  CM_GETUSERSHOPS = 110; //�������
  CM_QUERYUSERSHOPITEMS = 111; //����ָ���û�������Ʒ
  CM_GETUSERSHOPITEMS = 112; //����ָ���û�������Ʒ
  CM_SEARCHSHOPITEMS = 113; //�����û�������Ʒ
  CM_SEARCHGETSHOPITEMS = 114; //
  CM_QUERYMYSHOPSELLINGITEMS = 115; //�����ҵĵ���������Ʒ
  CM_QUERYMYSHOPSELLEDITEMS = 116; //�����ҵĵ����Ѿ���Ʒ
  CM_QUERYMYSHOPSTORAGEITEMS = 117; //�����ҵĵ��ֿ̲���Ʒ
  CM_GETMYSHOPITEMS = 118; //�����ҵĵ�����Ʒ
  CM_SENDADDTOMYSHOP = 119;
  CM_SENDCHANGEMYSHOPITEM = 120;
  CM_SENDMOVEMYSHOPITEM = 121;
  CM_QUERYSELECTSHOPINFO = 122;
  CM_SENDSHOPSTALLSTATUS = 123;
  CM_SENDBUYUSERSHOPITEM = 124;
  CM_SENDDELETESELLEDITEM = 125;
  CM_SENDUSERSPEEDING = 126; //�û�����
  CM_UPGRADEDLGITEM = 127; //OK�Ի�����Ʒ
  CM_CANCELUPGRADEDLGITEM = 128; //ȡ���Ի�����Ʒ
  CM_CHALLENGETRY = 129; //��ս
  CM_CHALLENGEADDITEM = 130; //������ս��Ʒ
  CM_CHALLENGEDELITEM = 131; //ɾ����ս��Ʒ
  CM_CHALLENGECANCEL = 132; //ȡ����ս
  CM_CHALLENGECHGGOLD = 133; //�޸���ս���
  CM_CHALLENGECHGGAMEDIAMOND = 134; //�޸���ս���ʯ
  CM_CHALLENGEEND = 135; //��ʼ��ս
  CM_SENDUPGRADEDIALOG = 136; //������ʯװ������
  CM_HELPBUTTONCLICK = 137; //���������ť
  CM_SENDPLEASEDRINK = 138; //�������
  CM_SENDGIVENPCWINE = 139; //���Ͷ���
  CM_SENDSELECTFINGER = 140; //����ѡ��ļ���ʯͷ��
  CM_SENDDRINK = 141; //�Ⱦ�
  CM_SENDGETBACKHERO = 142; //�û�ȡ�ؼĴ��Ӣ��                                  //
  CM_ASSESSMENTHERO = 143; //����Ӣ��
  CM_SENDHEROAUTOPRACTICE = 144; //��ȷ��Ӣ���Զ�����
  CM_SENDACUPOINTCLICK = 145; //���Ѩλ series=0 ���� series=1 Ӣ��
  CM_SENDTRAININGMERIDIANCLICK = 146; //�������� series=0 ���� series=1 Ӣ��
  CM_CONTINUOUSMAGIC = 147; //��ʼ��������
  CM_CHANGECONTINUOUSMAGICORDER = 148; //�ı�����ħ��˳��  ����˳��  series=0 ���� series=1 Ӣ��
  CM_SENDMODULEMD5 = 149; //��¼���ϴ���ģ��MD5
  CM_SENDSHOPNAME = 150; //��̯��������
  CM_HEROLOGON = 151; //�ٻ�Ӣ��
  CM_HEROLOGOUT = 152; //Ӣ���˳�
  CM_MASTERBAGTOHEROBAG = 153; //���˰�����Ʒ�ŵ�Ӣ�۰���
  CM_HEROBAGTOMASTERBAG = 154; //Ӣ�۰�����Ʒ�ŵ����˰���
  CM_HEROTAKEONITEM = 155; //Ӣ�۴�װ��
  CM_HEROTAKEOFFITEM = 156; //Ӣ����װ��
  CM_HEROEAT = 157; //Ӣ�۳�ҩ
  CM_HEROTARGET = 158; //����//Ident: 1105 Recog: 260806992 Param: 0 Tag: 32 Series: 0   Recog= ��������   Param=X  Tag=Y
  CM_HERODROPITEM = 159; //Ӣ������Ʒ
  CM_HEROGROUPATTACK = 160; //�ϻ�
  CM_HEROMAGICKEYCHANGE = 161;
  CM_HEROPROTECT = 162;
  CM_HEROM2STARTSHOPSTALL = 163; //��ʼ��̯
  CM_HEROM2STOPSHOPSTALL = 164; //ֹͣ��̯
  CM_HEROM2BUYUSERSHOPITEM = 165; //�����̯��Ʒ
  CM_HEROM2ADDUSERSHOPITEM = 166; //���Ӱ�̯��Ʒ
  CM_HEROM2DELUSERSHOPITEM = 167; //ɾ����̯��Ʒ
  CM_HEROM2SENDCLOSESHOP = 168; //�رչ����̯��Ʒ����

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  SM_PASSWD_FAIL = 1000;
  SM_NEWID_SUCCESS = 1001;
  SM_NEWID_FAIL = 1002;
  SM_CHGPASSWD_SUCCESS = 1003;
  SM_CHGPASSWD_FAIL = 1004;
  SM_GETBACKPASSWD_SUCCESS = 1005; //�����һسɹ�
  SM_GETBACKPASSWD_FAIL = 1006; //�����һ�ʧ��
  SM_QUERYCHR = 1007;
  SM_NEWCHR_SUCCESS = 1008;
  SM_NEWCHR_FAIL = 1009;
  SM_DELCHR_SUCCESS = 1010;
  SM_DELCHR_FAIL = 1011;
  SM_STARTPLAY = 1012;
  SM_STARTFAIL = 1013; //SM_USERFULL
  SM_QUERYCHR_FAIL = 1014;
  SM_PASSOK_SELECTSERVER = 1015;
  SM_SELECTSERVER_OK = 1016;
  SM_NEEDUPDATE_ACCOUNT = 1017;
  SM_UPDATEID_SUCCESS = 1018;
  SM_UPDATEID_FAIL = 1019;
  SM_QUERYDELCHR = 1020;
  SM_GETBAKCHAR_SUCCESS = 1021; //�һ�����ɹ�
  SM_GETBAKCHAR_FAIL = 1022; //�һ�����ʧ��
  SM_RANDOMCODE = 1023;
  SM_NEEDPASSWORD = 1024;
  SM_CERTIFICATION_SUCCESS = 1025;
  SM_CERTIFICATION_FAIL = 1026;
  SM_OUTOFCONNECTION = 1027; //?

  SM_SPELL = 1101; //ʹ��ħ��
  SM_TURN = 1102; //ת��
  SM_WALK = 1103; //��
  SM_SITDOWN = 1104;
  SM_RUN = 1105; //��
  SM_HORSERUN = 1106;
  SM_HIT = 1107; //��
  SM_HEAVYHIT = 1108; //
  SM_BIGHIT = 1109; //
  SM_POWERHIT = 1110;
  SM_LONGHIT = 1111; //��ɱ
  SM_WIDEHIT = 1112; //����
  SM_FIREHIT = 1113; //�һ�
  SM_CRSHIT = 1114; //���µ� ˫��ն   ID=40
  SM_TWNHIT = 1115; //��Ӱ����     ID=42
  SM_43HIT = 1116; //��������    ID=43
  SM_SWORDHIT = 1117; //���ս���  ID=56
  SM_60HIT = 1118; //�ƻ�ն
  SM_61HIT = 1119; //����ն
  SM_62HIT = 1120; //����һ��
  SM_66HIT = 1121; //����ն
  SM_100HIT = 1122; //����ɱ
  SM_101HIT = 1123; //����ɱ
  SM_102HIT = 1124; //����ն
  SM_103HIT = 1125; //��ɨǧ��

  SM_RUSH = 1147;
  SM_RUSHKUNG = 1148; //
  SM_BACKSTEP = 1149;
  SM_DIGUP = 1150;
  SM_DIGDOWN = 1151;
  SM_FLYAXE = 1152;
  SM_LIGHTING = 1153;
  SM_ALIVE = 1154; //
  SM_MOVEFAIL = 1155; //
  SM_HIDE = 1156; //
  SM_DISAPPEAR = 1157;
  SM_STRUCK = 1158; //����
  SM_DEATH = 1159;
  SM_SKELETON = 1160;
  SM_NOWDEATH = 1161;
  SM_SPELL2 = 1162;
  SM_HEAR = 1163;
  SM_FEATURECHANGED = 1164;
  SM_USERNAME = 1165;
  SM_WINEXP = 1166;
  SM_LEVELUP = 1167;
  SM_DAYCHANGING = 1168;
  SM_LOGON = 1169;
  SM_NEWMAP = 1170;
  SM_ABILITY = 1171;
  SM_HEALTHSPELLCHANGED = 1172;
  SM_MAPDESCRIPTION = 1173;
  SM_SYSMESSAGE = 1174;
  SM_GROUPMESSAGE = 1175;
  SM_CRY = 1176;
  SM_WHISPER = 1177;
  SM_GUILDMESSAGE = 1178;
  SM_MOVEMESSAGE = 1179;
  SM_DELAYMESSAGE = 1180;
  SM_CENTERMESSAGE = 1181;
  SM_TOPCHATBOARDMESSAGE = 1182;
  SM_ADDITEM = 1183;
  SM_BAGITEMS = 1184;
  SM_DELITEM = 1185;
  SM_UPDATEITEM = 1186;
  SM_ADDMAGIC = 1187;
  SM_SENDMYMAGIC = 1188;
  SM_DELMAGIC = 1189;
  SM_DROPITEM_SUCCESS = 1190;
  SM_DROPITEM_FAIL = 1191;
  SM_ITEMSHOW = 1192;
  SM_ITEMHIDE = 1193;
//  SM_DOOROPEN = 1194;
  SM_OPENDOOR_OK = 1195; //
  SM_OPENDOOR_LOCK = 1196;
  SM_CLOSEDOOR = 1197;
  SM_TAKEON_OK = 1198;
  SM_TAKEON_FAIL = 1199;
  SM_TAKEOFF_OK = 1200;
  SM_TAKEOFF_FAIL = 1201;
  SM_SENDUSEITEMS = 1202;
  SM_WEIGHTCHANGED = 1203;
  SM_CLEAROBJECTS = 1204;
  SM_CHANGEMAP = 1205;
  SM_EAT_OK = 1206;
  SM_EAT_FAIL = 1207;
  SM_BUTCH = 1208;
  SM_MAGICFIRE = 1209;
  SM_MAGICFIRE_FAIL = 1210;
  SM_MAGIC_LVEXP = 1211;
  SM_DURACHANGE = 1212;
  SM_MERCHANTSAY = 1213;
  SM_MERCHANTDLGCLOSE = 1214;
  SM_SENDGOODSLIST = 1215;
  SM_SENDUSERSELL = 1216;
  SM_SENDBUYPRICE = 1217;
  SM_USERSELLITEM_OK = 1218;
  SM_USERSELLITEM_FAIL = 1219;
  SM_BUYITEM_SUCCESS = 1220; //?
  SM_BUYITEM_FAIL = 1221; //?
  SM_SENDDETAILGOODSLIST = 1222;
  SM_GOLDCHANGED = 1223;
  SM_CHANGELIGHT = 1224;
  SM_LAMPCHANGEDURA = 1225;
  SM_CHANGENAMECOLOR = 1226;
  SM_CHARSTATUSCHANGED = 1227;
  SM_SENDNOTICE = 1228;
  SM_GROUPMODECHANGED = 1229; //
  SM_CREATEGROUP_OK = 1230;
  SM_CREATEGROUP_FAIL = 1231;
  SM_GROUPADDMEM_OK = 1232;
  SM_GROUPDELMEM_OK = 1233;
  SM_GROUPADDMEM_FAIL = 1234;
  SM_GROUPDELMEM_FAIL = 1235;
  SM_GROUPCANCEL = 1236;
  SM_GROUPMEMBERS = 1237;
  SM_SENDUSERREPAIR = 1238;
  SM_USERREPAIRITEM_OK = 1239;
  SM_USERREPAIRITEM_FAIL = 1240;
  SM_SENDREPAIRCOST = 1241;
  SM_DEALMENU = 1242;
  SM_DEALTRY_FAIL = 1243;
  SM_DEALADDITEM_OK = 1244;
  SM_DEALADDITEM_FAIL = 1245;
  SM_DEALDELITEM_OK = 1246;
  SM_DEALDELITEM_FAIL = 1247;
  SM_DEALCANCEL = 1248;
  SM_DEALREMOTEADDITEM = 1249;
  SM_DEALREMOTEDELITEM = 1250;
  SM_DEALCHGGOLD_OK = 1251;
  SM_DEALCHGGOLD_FAIL = 1252;
  SM_DEALREMOTECHGGOLD = 1253;
  SM_DEALSUCCESS = 1254;
  SM_SENDUSERSTORAGEITEM = 1255;
  SM_STORAGE_OK = 1256;
  SM_STORAGE_FULL = 1257;
  SM_STORAGE_FAIL = 1258;
  SM_SAVEITEMLIST = 1259;
  SM_TAKEBACKSTORAGEITEM_OK = 1260;
  SM_TAKEBACKSTORAGEITEM_FAIL = 1261;
  SM_TAKEBACKSTORAGEITEM_FULLBAG = 1262;
  SM_AREASTATE = 1263;
  SM_MYSTATUS = 1264;
  SM_DELITEMS = 1265;
  SM_READMINIMAP_OK = 1266;
  SM_READMINIMAP_FAIL = 1267;
  SM_SENDUSERMAKEDRUGITEMLIST = 1268;
  SM_MAKEDRUG_SUCCESS = 1269;
  //  714
  //  716
  SM_MAKEDRUG_FAIL = 1270;
  SM_CHANGEGUILDNAME = 1271;
  SM_SENDUSERSTATE = 1272; //
  SM_SUBABILITY = 1273;
  SM_OPENGUILDDLG = 1274; //
  SM_OPENGUILDDLG_FAIL = 1275; //
  SM_SENDGUILDMEMBERLIST = 1276; //
  SM_GUILDADDMEMBER_OK = 1277; //
  SM_GUILDADDMEMBER_FAIL = 1278;
  SM_GUILDDELMEMBER_OK = 1279;
  SM_GUILDDELMEMBER_FAIL = 1280;
  SM_GUILDRANKUPDATE_FAIL = 1281;
  SM_BUILDGUILD_OK = 1282;
  SM_BUILDGUILD_FAIL = 1283;
  SM_DONATE_OK = 1284;
  SM_DONATE_FAIL = 1285;
  SM_MENU_OK = 1286; //?
  SM_GUILDMAKEALLY_OK = 1287;
  SM_GUILDMAKEALLY_FAIL = 1288;
  SM_GUILDBREAKALLY_OK = 1289; //?
  SM_GUILDBREAKALLY_FAIL = 1290; //?
  SM_DLGMSG = 1291; //Jacky
  SM_SPACEMOVE_HIDE = 1292;
  SM_SPACEMOVE_SHOW = 1293;
  SM_RECONNECT = 1294; //
  SM_GHOST = 1295;
  SM_SHOWEVENT = 1296;
  SM_HIDEEVENT = 1297;
  SM_SPACEMOVE_HIDE2 = 1298;
  SM_SPACEMOVE_SHOW2 = 1299;
  SM_TIMECHECK_MSG = 1300;
  SM_ADJUST_BONUS = 1301; //?
  SM_OPENHEALTH = 1302;
  SM_CLOSEHEALTH = 1303;
  SM_BREAKWEAPON = 1304;
  SM_INSTANCEHEALGUAGE = 1305; //??
  SM_CHANGEFACE = 1306;
  SM_VERSION_FAIL = 1307;
  SM_ITEMUPDATE = 1308;
  SM_MONSTERSAY = 1309;
  SM_EXCHGTAKEON_OK = 1310;
  SM_EXCHGTAKEON_FAIL = 1311;
  SM_TEST = 1312;
  SM_TESTHERO = 1313;
  SM_THROW = 1314;
  SM_716 = 1315;
  SM_PASSWORD = 1316;
  SM_PLAYDICE = 1317;
  SM_PASSWORDSTATUS = 1318;
  SM_GAMEGOLDNAME = 1319; //��Ϸ������
  SM_GAMEPOINTNAME = 1320; //��Ϸ������2
  SM_GAMEGLORY = 1321; //��Ϸ����
  SM_SERVERCONFIG = 1322;
  SM_GETREGINFO = 1323;
  SM_MISSIONNPC = 1324; //��������NPC����
  SM_ATTATCKMODE = 1325; //���͹���ģʽ
  SM_BUYSHOPITEM_SUCCESS = 1326;
  SM_BUYSHOPITEM_FAIL = 1327;
  SM_SENGSHOPITEMS = 1328;
  RM_SENGSHOPITEMS = 1329;
  SM_SENGRANKING = 1330;
  SM_SENGMYRANKING_FAIL = 1331;
  SM_SHOWBOX = 1332; //��ʾ����
  SM_OPENBOX_SUCCESS = 1333; //Կ����ȷ���俪��
  SM_OPENBOX_FAIL = 1334;
  SM_SENDGETBOXITEMINDEX = 1335; //��ȡת����ѡ�����Ʒ���
  SM_TAKEONITEM = 1336; //�Զ���װ��
  SM_TAKEOFFITEM = 1337; //�Զ���װ��
  SM_AUTOGOTOXY = 1338; //�Զ�Ѱ·
  SM_CLICKNPCLABEL = 1339; //
  SM_SERVERNAME = 1340;
  SM_HEROTAKEONITEM = 1341; //Ӣ���Զ���װ��
  SM_HEROTAKEOFFITEM = 1342; //Ӣ���Զ���װ��
  SM_SENDGAMEGOLDDALITEM = 1343; //Ԫ������װ��
  SM_SELLGAMEGOLDDALITEM_OK = 1344;
  SM_SELLGAMEGOLDDALITEM_FAIL = 1345;
  SM_BUYGAMEGOLDDALITEM_OK = 1346;
  SM_BUYGAMEGOLDDALITEM_FAIL = 1347;
  SM_CANCELGAMEGOLDDEALITEM_OK = 1348; //ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDDEALITEM_FAIL = 1349; //ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDSELLITEM_OK = 1350; //ȡ��Ԫ������װ��
  SM_CANCELGAMEGOLDSELLITEM_FAIL = 1351; //ȡ��Ԫ������װ��
  SM_UNBINDLIST = 1352;
  SM_EFFECTIMAGELIST = 1353; //WIL�б�
  SM_PLAYEFFECT = 1354; //��������Ч��
  SM_SCREENEFFECT = 1355;
  SM_OVERLAPITEM_OK = 1356; //�ص���Ʒ �ɹ�
  SM_OVERLAPITEM_FAIL = 1357; //�ص���Ʒ ʧ��
  SM_HEROOVERLAPITEM_OK = 1358; //Ӣ���ص���Ʒ �ɹ�
  SM_HEROOVERLAPITEM_FAIL = 1359; //Ӣ���ص���Ʒ ʧ��
  SM_PACKAGEITEM_OK = 1360; //�ֿ��ص���Ʒ �ɹ�
  SM_PACKAGEITEM_FAIL = 1361; //�ֿ��ص���Ʒ ʧ��
  SM_HEROPACKAGEITEM_OK = 1362; //Ӣ�۷ֿ��ص���Ʒ �ɹ�
  SM_HEROPACKAGEITEM_FAIL = 1363; //Ӣ�۷ֿ��ص���Ʒ ʧ��
  SM_PLAYSOUND = 1364;
  SM_OPENBIGMERCHANTBIGDLG = 1365;
  SM_CLOSEBIGMERCHANTBIGDLG = 1366;
  SM_REPAIRFIRDRAGON_OK = 1367; //�������֮�� �ɹ�
  SM_REPAIRFIRDRAGON_FAIL = 1368; //�������֮��  ʧ��
  SM_CHANGESPEED = 1369; //��Ϸ�ٶ�
  SM_QUERYUSERSHOPS = 1370; //��������������̽��
  SM_QUERYUSERSHOPITEMS = 1371; //����ָ���û�������Ʒ
  SM_SEARCHSHOPITEMS = 1372; //�����������������Ʒ���
  SM_QUERYMYSHOPSELLINGITEMS = 1373; //�����ҵĵ���������Ʒ
  SM_QUERYMYSHOPSELLEDITEMS = 1374; //�����ҵĵ����Ѿ�������Ʒ
  SM_QUERYMYSHOPSTORAGEITEMS = 1375; //�����ҵĵ��ֿ̲���Ʒ
  SM_SENDADDTOMYSHOP_OK = 1376;
  SM_SENDADDTOMYSHOP_FAIL = 1377;
  SM_SENDCHANGEMYSHOPITEM_OK = 1378;
  SM_SENDCHANGEMYSHOPITEM_FAIL = 1379;
  SM_SENDMOVEMYSHOPITEM_OK = 1380;
  SM_SENDMOVEMYSHOPITEM_FAIL = 1381;
  SM_QUERYSELECTSHOPINFO = 1382;
  SM_QUERYSELECTSHOPINFO_FAIL = 1383;
  SM_SENDBUYUSERSHOPITEM_OK = 1384;
  SM_SENDBUYUSERSHOPITEM_FAIL = 1385;
  SM_UPGRADEDLGITEM_TAKE = 1386; //�����ɹ�
  SM_UPGRADEDLGITEM_GIVE = 1387; //�����ɹ�
  SM_OPENUPGRADEDLG = 1388; //��ʾOK�Ի���
  SM_SENDUSERICON = 1389;
  SM_SENDWEBBROWSER = 1390;
  SM_SENDUSEREFFECT = 1391;
  SM_SENDSUPERSHILEDEFFECT = 1392;
  SM_SENDBLASTHIT = 1393; //����
  SM_SENDFILENAME = 1394; //�����ļ����
  SM_SENDFILES = 1395; //�����ļ����
  SM_SPECIALCMD = 1396; //��������
  SM_WEATHER = 1397;
  SM_CHALLENGEMENU = 1398;
  SM_CHALLENGETRY_FAIL = 1399;
  SM_CHALLENGEADDITEM_OK = 1400;
  SM_CHALLENGEADDITEM_FAIL = 1401;
  SM_CHALLENGEDELITEM_OK = 1402;
  SM_CHALLENGEDELITEM_FAIL = 1403;
  SM_CHALLENGECANCEL = 1404;
  SM_CHALLENGEREMOTEADDITEM = 1405;
  SM_CHALLENGEREMOTEDELITEM = 1406;
  SM_CHALLENGECHGGOLD_OK = 1407;
  SM_CHALLENGECHGGOLD_FAIL = 1408;
  SM_CHALLENGECHGGAMEDIAMOND_OK = 1409; //�޸���ս���ʯ�ɹ�
  SM_CHALLENGECHGGAMEDIAMOND_FAIL = 1410; //�޸���ս���ʯʧ��
  SM_CHALLENGEREMOTECHGGOLD = 1411; //�޸ĶԷ���ս���
  SM_CHALLENGEREMOTECHGGAMEDIAMOND = 1412; //�޸ĶԷ���ս���ʯ
  SM_CHALLENGESUCCESS = 1413; //��ս�ɹ�
  SM_OPENUPGRADEDIALOG = 1414; //�򿪰�����ʯװ�������Ի���
  SM_SENDUPGRADEDIALOG_OK = 1415; //������ʯװ�������ɹ�
  SM_SENDUPGRADEDIALOG_FAIl = 1416; //������ʯװ������ʧ��
  SM_HEARCOLOR = 1417; //���ﺰ����Ϣ��ɫ
  SM_SOFTCLOSE = 1418;
  SM_PLAYDRINKSAY = 1419; //�ƹ�NPC�Ի�����Ϣ
  SM_USERPLAYDRINKITEM_OK = 1420; //��Ƴɹ�
  SM_USERPLAYDRINKITEM_FAIl = 1421; //���ʧ��
  SM_USERPLAYDRINK_OK = 1422; //��NPC�ľ���ȷ ���Զ���
  SM_USERPLAYDRINK_FAIL = 1423; //��NPC�ľƴ���
  SM_OPENPLAYDRINK = 1424; //�򿪴���
  SM_CLOSEDRINK = 1425; //�رվƹ�NPC�Ի���
  SM_DRINKUPDATEVALUE = 1426; //���غȾ�
  SM_PLAYDRINKTODRINK = 1427; //���͵��ͻ���˭Ӯ˭��
  SM_SENDUSERPLAYDRINK = 1428; //������ƶԻ���
  SM_SENDSTORAGEHEROINFO = 1429; //Ӣ�ۼĴ���Ϣ   �ٻؼĴ��Ӣ��
  SM_SENDSTORAGEHEROINFOEX = 1430; //Ӣ�ۼĴ���Ϣ ����Ӣ��
  SM_ASSESSMENTHERO_OK = 1431; //����Ӣ�۳��ɹ�
  SM_ASSESSMENTHERO_FAIL = 1432; //����Ӣ�۳�ʧ��
  SM_SENDSHOWHEROAUTOPRACTICEDLG = 1433; //��ʾӢ���Զ������Ի���
  SM_SENDHEROAUTOPRACTICE_OK = 1434; //Ӣ���Զ������ɹ�
  SM_SENDHEROAUTOPRACTICE_FAIL = 1435; //Ӣ���Զ�����ʧ��
  SM_REFABILNG = 1436; //ˢ������
  SM_ABILITYNG = 1437; //�ڹ�����
  SM_ABILITYALCOHOL = 1438; //������
  SM_ABILITYMERIDIANS = 1439; //����
  SM_HEROABILITYNG = 1440; //Ӣ���ڹ�����
  SM_HEROABILITYALCOHOL = 1441; //Ӣ�۾�����
  SM_HEROABILITYMERIDIANS = 1442; //Ӣ�۾���
  SM_OPENCOBWEBWINDING = 1443; //֩������ס  ����
  SM_CLOSECOBWEBWINDING = 1444; //֩������ס ��
  SM_LIGHTINGEX = 1445;
  SM_CONTINUOUSMAGICORDER = 1446; //����˳��  series=0 ���� series=1 Ӣ��
  SM_CONTINUOUSMAGIC_OK = 1447; //����ʼ��ʼ�����ɹ�
  SM_CONTINUOUSMAGIC_FAIL = 1448; //����ʼ��ʼ����ʧ��
  SM_CANCONTINUOUSMAGIC = 1449; //�������� ��������ͼƬ��˸��ʾ
  SM_TRAININGNG = 1450; //�Ƿ������ڹ��ķ� ������Ӧ��ʾ�ڹ��ķ�����  series=0 ���� series=1 Ӣ��
  SM_LEVELUPNG = 1451; //�ڹ�����
  SM_STOPCONTINUOUSMAGIC = 1452; //ֹͣ����
  SM_MAPCANRUN = 1453; //���˴���״̬
  SM_PLUGFILE = 1454; //�ͻ��˲��MD5 M2���͹������м��
  SM_MODULEMD5 = 1455; //������ģ��MD5
  SM_BLACKMODULEMD5 = 1456; //������ģ��MD5
  SM_SENDSHOPNAME = 1457; //��̯��������
  SM_MASTERBAGTOHEROBAG_OK = 1458; //���˰�����Ʒ�ŵ�Ӣ�۰����ɹ�
  SM_MASTERBAGTOHEROBAG_FAIL = 1459; //���˰�����Ʒ�ŵ�Ӣ�۰���ʧ��
  SM_HEROBAGTOMASTERBAG_OK = 1460; //Ӣ�۰�����Ʒ�ŵ����˰����ɹ�
  SM_HEROBAGTOMASTERBAG_FAIL = 1461; //Ӣ�۰�����Ʒ�ŵ����˰���ʧ��
  SM_HEROBAGCOUNT = 1462; //Ӣ�۰�������
  SM_HEROLOGOUT = 1463; //��ȡӢ�� TMessageBodyWL ����Ӣ���˳�Ч��
  SM_HEROLOGON = 1464; //��ȡӢ�� TMessageBodyWL ����Ӣ�۵�½Ч��
  SM_HEROLOYAL = 1465; //��ȡӢ���ҳ�  10001(��00.00%)
  SM_HEROABILITY = 1466; //��ȡӢ��Abil
  SM_HEROSUBABILITY = 1467; //Ӣ��SUBABILITY
  SM_HEROBAGITEMS = 1468; //��ȡӢ�۰���     Tag:������Ʒ���� 2 Series: ����������10
  SM_SENDHEROUSEITEMS = 1469; //��ȡӢ������װ��
  SM_SENDMYHEROMAGIC = 1470; //��ȡӢ��ħ��
  SM_HEROADDITEM = 1471; //Ӣ�� Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
  SM_HERODELITEM = 1472; //Ӣ�� Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
  SM_HEROTAKEON_OK = 1473; //Ӣ�۴�װ��OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
  SM_HEROTAKEON_FAIL = 1474; //Ӣ�۴�װ��FAIL
  SM_HEROTAKEOFF_OK = 1475; //Ӣ����װ��OK
  SM_HEROTAKEOFF_FAIL = 1476; //Ӣ����װ��FAIL
  SM_HEROEAT_OK = 1477; //Ӣ�۳�ҩOK
  SM_HEROEAT_FAIL = 1478; //Ӣ�۳�ҩFAIL
  SM_HEROADDMAGIC = 1479; //Ӣ������ħ��
  SM_HERODELMAGIC = 1480; //Ӣ��ɾ��ħ��
  SM_HEROANGERVALUE = 1481; //Ӣ��ŭֵ�ı� Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
  SM_HEROLOGOUT_OK = 1482; // Ӣ���˳�OK
  SM_HERODURACHANGE = 1483; //Ӣ����Ʒ�־øı�
  SM_HERODROPITEM_SUCCESS = 1484; //Ӣ������ƷOK
  SM_HERODROPITEM_FAIL = 1485; //Ӣ������ƷFAIL
  SM_HEROLEVELUP = 1486; //Ӣ������
  SM_HEROWINEXP = 1487; //Ӣ�ۻ�ȡ����
  SM_HEROWEIGHTCHANGED = 1488;
  SM_HEROMAGIC_LVEXP = 1489; //Ӣ��ħ������
  SM_HEROCHANGEFACE = 1490;
  SM_HEROUPDATEITEM = 1491;
  SM_HERODELITEMS = 1492;
  SM_HEROCHANGEITEM = 1493;
  SM_HEROLOGON_OK = 1494;
  SM_OPENMISSIONDLG = 1495;
  SM_DELETEDELAYMESSAGE = 1496;
  SM_HEROM2ADDUSERSHOPITEM_OK = 1497; //���Ӱ�̯��Ʒ�ɹ�
  SM_HEROM2ADDUSERSHOPITEM_FAIL = 1498; //���Ӱ�̯��Ʒʧ��
  SM_HEROM2DELUSERSHOPITEM_OK = 1499; //ɾ����̯��Ʒ�ɹ�
  SM_HEROM2DELUSERSHOPITEM_FAIL = 1500; //ɾ����̯��Ʒʧ��
  SM_HEROM2DELUSERSHOPITEM = 1501; //ɾ����̯��Ʒ
  SM_HEROM2DELREMOTEUSERSHOPITEM = 1502; //ɾ����̯��Ʒ
  SM_HEROM2SENDSHOPITEM = 1503; //��̯��Ʒ
  SM_HEROM2SENDCLOSESHOP = 1504; //�رչ����̯��Ʒ����
  SM_HEROM2SENDDRESSEFFECT = 1505;
  SM_SENDFILTERITEMLIST = 1506;
  SM_SENDITEMDESCLIST = 1507;
  SM_SENDTZITEMDESCLIST = 1508;
//=============================================================================


type
{$IFDEF XE}
  _PCHAR = PAnsiChar;
  _STRING = AnsiString;
{$ELSE}
  _PCHAR = PChar;
  _STRING = string;
{$ENDIF}

  PPoint = ^TPoint;
  TPoint = packed record
    X: Longint;
    Y: Longint;
  end;

  PRect = ^TRect;
  TRect = packed record
    case Integer of
      0: (Left, Top, Right, Bottom: Longint);
      1: (TopLeft, BottomRight: TPoint);
  end;


  TMsgDlgBtn = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore,
    mbAll, mbNoToAll, mbYesToAll, mbHelp);
  TMsgDlgButtons = set of TMsgDlgBtn;
  TGridDrawState = set of (gdSelected, gdFocused, gdFixed);
  TGridState = (gsNormal, gsSelecting, gsRowSizing, gsColSizing, gsRowMoving, gsColMoving);

  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  TFontStyles = set of TFontStyle;
  TProgressBarOrientation = (pbHorizontal, pbVertical);
const
  mbYesNoCancel = [mbYes, mbNo, mbCancel];
  mbYesAllNoAllCancel = [mbYes, mbYesToAll, mbNo, mbNoToAll, mbCancel];
  mbOKCancel = [mbOK, mbCancel];
  mbAbortRetryIgnore = [mbAbort, mbRetry, mbIgnore];
  mbAbortIgnore = [mbAbort, mbIgnore];

type
  TModalResult = Low(Integer)..High(Integer);

  TAlignment = (taLeftJustify, taRightJustify, taCenter);
  TShiftState = set of (ssShift, ssAlt, ssCtrl,
    ssLeft, ssRight, ssMiddle, ssDouble);
  TMouseButton = (mbLeft, mbRight, mbMiddle);

  PColor = ^TColor;
  TColor = -$7FFFFFFF - 1..$7FFFFFFF;

const
  IDOK = 1; ID_OK = IDOK;
  IDCANCEL = 2; ID_CANCEL = IDCANCEL;
  IDABORT = 3; ID_ABORT = IDABORT;
  IDRETRY = 4; ID_RETRY = IDRETRY;
  IDIGNORE = 5; ID_IGNORE = IDIGNORE;
  IDYES = 6; ID_YES = IDYES;
  IDNO = 7; ID_NO = IDNO;
  IDCLOSE = 8; ID_CLOSE = IDCLOSE;
  IDHELP = 9; ID_HELP = IDHELP;
  IDTRYAGAIN = 10;
  IDCONTINUE = 11;

  mrNone = 0;
  mrOk = idOk;
  mrCancel = idCancel;
  mrAbort = idAbort;
  mrRetry = idRetry;
  mrIgnore = idIgnore;
  mrYes = idYes;
  mrNo = idNo;
  mrAll = mrNo + 1;
  mrNoToAll = mrAll + 1;
  mrYesToAll = mrNoToAll + 1;

const
  clBlack = TColor($000000);
  clMaroon = TColor($000080);
  clGreen = TColor($008000);
  clOlive = TColor($008080);
  clNavy = TColor($800000);
  clPurple = TColor($800080);
  clTeal = TColor($808000);
  clGray = TColor($808080);
  clSilver = TColor($C0C0C0);
  clRed = TColor($0000FF);
  clLime = TColor($00FF00);
  clYellow = TColor($00FFFF);
  clBlue = TColor($FF0000);
  clFuchsia = TColor($FF00FF);
  clAqua = TColor($FFFF00);
  clLtGray = TColor($C0C0C0);
  clDkGray = TColor($808080);
  clWhite = TColor($FFFFFF);
  StandardColorsCount = 16;

  clMoneyGreen = TColor($C0DCC0);
  clSkyBlue = TColor($F0CAA6);
  clCream = TColor($F0FBFF);
  clMedGray = TColor($A4A0A0);

  clNone = TColor($1FFFFFFF);
  clDefault = TColor($20000000);
type
  TList = TObject;
  TStringList = TObject;
  TActor = TObject;
  TTexture = TObject;
  TDxControl = TObject;
  THGEFont = TObject;

  pTActor = ^TActor;
  pTList = ^TList;
  pTStringList = ^TStringList;
  //176   185   Ӣ�۰�  ������   ��������     �⴫   ����
  TClientVersion = (cv176, cv185, cvHero, cvSerial, cvMirSequel, cvMirs, cvMirReturn);
  TGuiType = (t_None, t_Form, t_Button, t_Edit, t_Label, t_Grid,
    t_ScrollBox, t_ChatMemo, t_PopupMenu, t_ComboBox, t_PageControl, t_TabSheet,
    t_TreeView, t_ListView, t_Line, t_FormShape);
  TInValue = (vInteger, vString);
  TButtonStyle = (bsButton, bsRadio, bsCheckBox);
  TClickSound = (csNone, csStone, csGlass, csNorm);

  TOnClickEx = procedure(Sender: TObject; X, Y: Integer) of object; stdcall;
  TOnInRealArea = procedure(Sender: TObject; X, Y: Integer; var IsRealArea: Boolean) of object; stdcall;
  TOnGridMove = procedure(Sender: TObject; ACol, ARow: Integer; Shift: TShiftState) of object; stdcall;
  TOnGridSelect = procedure(Sender: TObject; ACol, ARow: Integer; Button: TMouseButton; Shift: TShiftState) of object; stdcall;
  TOnGridPaint = procedure(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState) of object; stdcall;

  TDefaultMessage = record
    nRecog: Int64;
    wIdent: word;
    wParam: word;
    wTag: word;
    wSeries: word;
  end;
  pTDefaultMessage = ^TDefaultMessage;

  TAbility = packed record
    Weight: LongInt; //0x1B8   //0x54 0x20
    MaxWeight: LongInt; //0x1BA   //0x56 0x22  ����
    WearWeight: LongInt; //0x1BC   //0x58 0x24
    MaxWearWeight: LongInt; //0x1BD   //0x59 0x25  ����
    HandWeight: LongInt; //0x1BE   //0x5A 0x26
    MaxHandWeight: LongInt; //0x1BF   //0x5B 0x27  ����
    CreditPoint: Integer; //����
    NewValue: array[0..20 - 1] of Byte;
//0������������ 1���ӹ����˺�  2�����˺����� 3ħ���˺�����  4����Ŀ�����  5�����˺����� 6������������  7����ħ������ 8ŭ���ָ����� 9�ϻ���������  10����Ŀ�걩��
    Level: LongWord;
    HP: LongWord;
    MP: LongWord;
    MaxHP: LongWord;
    MaxMP: LongWord;
    Exp: LongWord;
    MaxExp: LongWord;
    case Integer of
      0: (AC, MAC, DC, SC, MC: Int64);
      1: (LAC, HAC, LMAC, HMAC, LDC, HDC, LMC, HMC, LSC, HSC: Integer);
  end;
  pTAbility = ^TAbility;

  TStdItem = packed record
    Name: string[ITEMNAMELEN];
    DBName: string[ITEMNAMELEN];
    StdMode: Byte;
    Shape: Word;
    Weight: Byte;
    AniCount: Integer;
    Source: ShortInt;
    Reserved: Byte;
    NeedIdentify: Byte;
    Looks: Integer;
    DuraMax: Integer;
    Reserved1: Integer;
    Need: Integer;
    NeedLevel: Integer;
    Price: Integer;
    OverLap: Word; //�Ƿ����ص���Ʒ
    Color: Byte; //��Ʒ������ɫ
    Stock: Integer;
    btValue: array[0..6] of LongWord; //��������
    btAddValue: array[5..13] of Byte; //��������

    btUpgradeCount: Byte; //��������
    btHeroM2Light: Byte; //HeroM2 SetItemsLight
    NewValue: array[0..20 - 1] of Byte;

    IsBind: Boolean; //�Ƿ��

    Reserved2: array[0..418 - 1] of Byte;

    EffectFileIndex: SmallInt; //�����е���Ʒ����Ч�� �ļ���� 0
    EffectStartOffSet: Word; // �����е���Ʒ����Ч�� ��ȡλ��
    EffectImageCount: Byte; // �����е���Ʒ����Ч�� ��ȡ����
    EffectOffsetX: SmallInt; // �����е���Ʒ����Ч�� ΢��X
    EffectOffsetY: SmallInt; // �����е���Ʒ����Ч�� ΢��Y
    EffectTime: Word; //�����ٶ�
    EffectNotCheckSize: Boolean;

    BodyEffectFileIndex: SmallInt; //�ڹ���Ʒ����Ч�� �ļ���� 0
    BodyEffectStartOffSet: Word; // �ڹ���Ʒ����Ч�� ��ȡλ��
    BodyEffectImageCount: Byte; // �ڹ���Ʒ����Ч�� ��ȡ����
    BodyEffectOffsetX: SmallInt; // �ڹ���Ʒ����Ч�� ΢��X
    BodyEffectOffsetY: SmallInt; // �ڹ���Ʒ����Ч�� ΢��Y
    BodyEffectTime: Word; //�����ٶ�
    BodyEffectNotCheckSize: Boolean;

    Effect: Pointer;
    Reserved3: Integer;

    HP: LongWord;
    MP: LongWord;
    case Integer of
      0: (AC, MAC, DC, SC, MC: Int64);
      1: (LAC, HAC, LMAC, HMAC, LDC, HDC, LMC, HMC, LSC, HSC: Integer);
  end;
  pTStdItem = ^TStdItem;

  TClientItem = packed record
    S: TStdItem;
    MakeIndex: Integer;
    Dura: Integer;
    DuraMax: Integer;
  end;
  pTClientItem = ^TClientItem;

                 //���＼�� Ӣ�ۼ��� �������� �ڹ��������ӷ��� �ڹ��������ӹ���
  TMagicAttr = (mtHum, mtHero, mtContinuous, mtDefense, mtAttack);

  TMagic = packed record
    MagicAttr: TMagicAttr;
    wMagicId: Word;
    sMagicName: string[ITEMNAMELEN];
    btEffectType: Byte;
    btEffect: Byte;
    bt11: Byte;
    wSpell: Word;
    wPower: Word;
    TrainLevel: array[0..15] of Byte;
    w02: Word;
    MaxTrain: array[0..15] of Integer;
    btTrainLv: Byte; //��߿������ȼ�
    btJob: Byte;
    wMagicIdx: Word;
    dwDelayTime: LongWord;
    btDefSpell: Byte;
    btDefPower: Byte;
    wMaxPower: Word;
    btDefMaxPower: Byte;
    sDescr: string[18];
  end;
  pTMagic = ^TMagic;

  TClientMagic = packed record //���Ϳͻ��˵�ħ���ṹ
    Key: Char;
    Level: Byte;
    NewLevel: Byte; // ǿ���ȼ�
    CurTrain: Integer;
    Def: TMagic;
  end;
  pTClientMagic = ^TClientMagic;

  TMovingItem = packed record
    Index: Integer;
    ItemType: Integer; //TMoveItemType;
    Item: TClientItem;
    Idx: Integer;
  end;
  pTMovingItem = ^TMovingItem;


  TUseItems = array[0..U_SWEAPON] of TClientItem;
  
  TFeature = packed record
    Feature: Integer;
    Buffer: array[0..255] of Byte;
  end;
  pTFeature = ^TFeature;

  TUserStateInfo = packed record
    RaceServer: Integer;
    Feature: TFeature;
    UserName: string[ACTORNAMELEN];
    NAMECOLOR: Integer;
    GuildName: string[ACTORNAMELEN];
    GuildRankName: string[ACTORNAMELEN];
    UseItems: array[0..U_SWEAPON] of TClientItem;

    boSndaItemBoxOpen: Boolean;
    UseBoxItems: array[0..11] of TClientItem;
    HumTitleCount: Byte;
    UseTitleIndex: SmallInt;
    HumTitles: array[0..29] of TClientItem;
  end;
  pTUserStateInfo = ^TUserStateInfo;


  TItemArr = array[0..MAXBAGITEMCL - 1] of TClientItem;
  THeroItemArr = array[0..MAXHEROBAGITEM - 1] of TClientItem;
  pTUseItems = ^TUseItems;
  pTItemArr = ^TItemArr;
  pTHeroItemArr = ^THeroItemArr;


  TDrawItemEffect = record
    DrawCount: Integer;
    DrawTick: LongWord;
  end;
  pTDrawItemEffect = ^TDrawItemEffect;

  TClientGoods = record //NPC��ǰ������Ʒ�б�
    Name: string[30];
    SubMenu: Integer;
    Price: Integer;
    Stock: Integer;
    Grade: Integer;
    Count: Integer;
  end;
  PTClientGoods = ^TClientGoods;

  TDropItem = record //������Ʒ
    x: Integer;
    y: Integer;
    id: Integer;
    Looks: Integer;
    Color: Integer;
    Name: string[30];
    DBName: string[30];
  end;
  pTDropItem = ^TDropItem;

implementation

end.

