unit EngineType;

interface
{$I PlugIn.inc}
const
  LibName = 'M2Server.exe';

  MAPNAMELEN = 30;
  ACTORNAMELEN = 30;
  ITEMNAMELEN = 30;
  ACCOUNTLEN = 30;
  IPADDRESSLEN = 15;
  DEFBLOCKSIZE = 22;
  BUFFERSIZE = 102400;

  DR_UP = 0;
  DR_UPRIGHT = 1;
  DR_RIGHT = 2;
  DR_DOWNRIGHT = 3;
  DR_DOWN = 4;
  DR_DOWNLEFT = 5;
  DR_LEFT = 6;
  DR_UPLEFT = 7;

  U_DRESS = 0; //衣服
  U_WEAPON = 1; //武器
  U_RIGHTHAND = 2;
  U_NECKLACE = 3; //项链
  U_HELMET = 4; //头盔
  U_ARMRINGL = 5; //左手镯
  U_ARMRINGR = 6; //右手镯
  U_RINGL = 7; //左戒指
  U_RINGR = 8; //右戒指
  U_BUJUK = 9; //符
  U_BELT = 10; //腰带
  U_BOOTS = 11; //鞋
  U_CHARM = 12; //宝石
  U_HAT = 13; //斗笠
  U_DRUM = 14; //鼓
  U_HORSE = 15; //马
  U_SHIELD = 16; //盾
  U_SDRESS = 17; //时装衣服
  U_SWEAPON = 18; //时装武器


  RC_PLAYOBJECT = 0;
  RC_HEROOBJECT = 1; //英雄
  RC_PLAYMOSTER = 60; //人形怪物

  RC_MOONOBJECT = 99; //月灵
  RC_GUARD = 11; //大刀守卫
  RC_PEACENPC = 15; //和平NPC
  RC_ANIMAL = 50; //攻击NPC
  RC_MONSTER = 80;
  RC_NPC = 10;
  RC_ARCHERGUARD = 112;
  RC_TRUCKOBJECT = 128; //押镖车

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
  CM_GETBACKPASSWORD = 3007; //密码找回
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
  CM_WIDEHIT = 12; //半月
  CM_FIREHIT = 13; //烈火
  CM_CRSHIT = 14; //抱月刀 双龙斩   ID=40
  CM_TWNHIT = 15; //龙影剑法     ID=42
  CM_43HIT = 16; //雷霆剑法    ID=43
  CM_SWORDHIT = 17; //逐日剑法  ID=56
  CM_60HIT = 18; //破魂斩
  CM_61HIT = 19; //劈星斩
  CM_62HIT = 20; //雷霆一击
  CM_66HIT = 21; //开天斩
  CM_100HIT = 22; //追心刺
  CM_101HIT = 23; //三绝杀
  CM_102HIT = 24; //断岳斩
  CM_103HIT = 25; //横扫千军

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
  //商铺相关
  CM_GETSHOPITEMS = 95;
  CM_BUYSHOPITEM = 96;
  //排行榜
  CM_GETRANKING = 97;
  CM_GETMYRANKING = 98;
  //开宝箱
  CM_OPENBOX = 99; //钥匙放入钥匙孔打开箱子
  CM_ROTATIONBOX = 100; //转动箱子
  CM_SENDGETSELBOXITEM = 101; //获取宝箱自己选择的物品
  CM_SENDSELLGAMEGOLDDALITEM = 102; //元宝交易装备
  CM_SENDBUYGAMEGOLDDALITEM = 103; //购买元宝交易装备
  CM_SENDCANCELGAMEGOLDDALITEM = 104; //取消元宝交易装备
  CM_OVERLAPITEM = 105; //重叠物品
  CM_HEROOVERLAPITEM = 106; //英雄包裹重叠物品
  CM_PACKAGEITEM = 107; //分开重叠物品
  CM_HEROPACKAGEITEM = 108; //分开英雄包裹重叠物品
  CM_QUERYUSERSHOPS = 109; //搜索传奇店铺
  CM_GETUSERSHOPS = 110; //传奇店铺
  CM_QUERYUSERSHOPITEMS = 111; //搜索指定用户店铺物品
  CM_GETUSERSHOPITEMS = 112; //搜索指定用户店铺物品
  CM_SEARCHSHOPITEMS = 113; //搜索用户店铺物品
  CM_SEARCHGETSHOPITEMS = 114; //
  CM_QUERYMYSHOPSELLINGITEMS = 115; //搜索我的店铺正在物品
  CM_QUERYMYSHOPSELLEDITEMS = 116; //搜索我的店铺已经物品
  CM_QUERYMYSHOPSTORAGEITEMS = 117; //搜索我的店铺仓库物品
  CM_GETMYSHOPITEMS = 118; //搜索我的店铺物品
  CM_SENDADDTOMYSHOP = 119;
  CM_SENDCHANGEMYSHOPITEM = 120;
  CM_SENDMOVEMYSHOPITEM = 121;
  CM_QUERYSELECTSHOPINFO = 122;
  CM_SENDSHOPSTALLSTATUS = 123;
  CM_SENDBUYUSERSHOPITEM = 124;
  CM_SENDDELETESELLEDITEM = 125;
  CM_SENDUSERSPEEDING = 126; //用户超速
  CM_UPGRADEDLGITEM = 127; //OK对话框物品
  CM_CANCELUPGRADEDLGITEM = 128; //取消对话框物品
  CM_CHALLENGETRY = 129; //挑战
  CM_CHALLENGEADDITEM = 130; //增加挑战物品
  CM_CHALLENGEDELITEM = 131; //删除挑战物品
  CM_CHALLENGECANCEL = 132; //取消挑战
  CM_CHALLENGECHGGOLD = 133; //修改挑战金币
  CM_CHALLENGECHGGAMEDIAMOND = 134; //修改挑战金刚石
  CM_CHALLENGEEND = 135; //开始挑战
  CM_SENDUPGRADEDIALOG = 136; //包裹宝石装备升级
  CM_HELPBUTTONCLICK = 137; //点击帮助按钮
  CM_SENDPLEASEDRINK = 138; //发送请酒
  CM_SENDGIVENPCWINE = 139; //发送斗酒
  CM_SENDSELECTFINGER = 140; //发送选择的剪刀石头布
  CM_SENDDRINK = 141; //喝酒
  CM_SENDGETBACKHERO = 142; //用户取回寄存的英雄                                  //
  CM_ASSESSMENTHERO = 143; //评定英雄
  CM_SENDHEROAUTOPRACTICE = 144; //用确定英雄自动修炼
  CM_SENDACUPOINTCLICK = 145; //点击穴位 series=0 人物 series=1 英雄
  CM_SENDTRAININGMERIDIANCLICK = 146; //修炼经络 series=0 人物 series=1 英雄
  CM_CONTINUOUSMAGIC = 147; //开始请求连击
  CM_CHANGECONTINUOUSMAGICORDER = 148; //改变连击魔法顺序  连击顺序  series=0 人物 series=1 英雄
  CM_SENDMODULEMD5 = 149; //登录器上传的模块MD5
  CM_SENDSHOPNAME = 150; //摆摊商铺名称
  CM_HEROLOGON = 151; //召唤英雄
  CM_HEROLOGOUT = 152; //英雄退出
  CM_MASTERBAGTOHEROBAG = 153; //主人包裹物品放到英雄包裹
  CM_HEROBAGTOMASTERBAG = 154; //英雄包裹物品放到主人包裹
  CM_HEROTAKEONITEM = 155; //英雄穿装备
  CM_HEROTAKEOFFITEM = 156; //英雄脱装备
  CM_HEROEAT = 157; //英雄吃药
  CM_HEROTARGET = 158; //锁定//Ident: 1105 Recog: 260806992 Param: 0 Tag: 32 Series: 0   Recog= 锁定对象   Param=X  Tag=Y
  CM_HERODROPITEM = 159; //英雄扔物品
  CM_HEROGROUPATTACK = 160; //合击
  CM_HEROMAGICKEYCHANGE = 161;
  CM_HEROPROTECT = 162;
  CM_HEROM2STARTSHOPSTALL = 163; //开始摆摊
  CM_HEROM2STOPSHOPSTALL = 164; //停止摆摊
  CM_HEROM2BUYUSERSHOPITEM = 165; //购买摆摊物品
  CM_HEROM2ADDUSERSHOPITEM = 166; //增加摆摊物品
  CM_HEROM2DELUSERSHOPITEM = 167; //删除摆摊物品
  CM_HEROM2SENDCLOSESHOP = 168; //关闭购买摆摊物品窗口


//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  RM_SPELL = 500;
  RM_TURN = 501;
  RM_WALK = 502;
  RM_SITDOWN = 503;
  RM_RUN = 504;
  RM_HORSERUN = 505;
  RM_HIT = 506;
  RM_HEAVYHIT = 507;
  RM_BIGHIT = 508;
  RM_POWERHIT = 509;
  RM_LONGHIT = 510;
  RM_WIDEHIT = 511;
  RM_FIREHIT = 512;
  RM_CRSHIT = 513;
  RM_TWNHIT = 514;
  RM_43HIT = 515;
  RM_SWORDHIT = 516;
  RM_60HIT = 517;
  RM_61HIT = 518;
  RM_62HIT = 519;
  RM_66HIT = 520;
  RM_100HIT = 521;
  RM_101HIT = 522;
  RM_102HIT = 523;
  RM_103HIT = 524;
  RM_82HIT = 525;
  RM_1001HIT = 526;
  RM_1002HIT = 527;
  RM_1003HIT = 528;
  RM_1004HIT = 529;
  RM_1005HIT = 530;
  RM_1006HIT = 531;
  RM_1007HIT = 532;
  RM_1008HIT = 533;
  RM_1009HIT = 534;
  RM_1010HIT = 535;
  RM_1011HIT = 536;
  RM_1012HIT = 537;
  RM_1013HIT = 538;
  RM_1014HIT = 539;
  RM_1015HIT = 540;
  RM_1016HIT = 541;
  RM_1017HIT = 542;
  RM_1018HIT = 543;
  RM_1019HIT = 544;
  RM_1020HIT = 545;
  RM_STRUCK = 546;
  RM_DEATH = 547;
  RM_DISAPPEAR = 548;
  RM_STRUCK_MAG = 549;
  RM_WINEXP = 550;
  RM_USERNAME = 551;
  RM_LEVELUP = 552;
  RM_CHANGENAMECOLOR = 553;
  RM_SPELL2 = 554;
  RM_SPELL3 = 555;
  RM_TURN2 = 556;
  RM_RUSH = 557;
  RM_PUSH = 558;
  RM_MOVEFAIL = 559;
  RM_RUSHKUNG = 560;
  RM_LOGON = 561;
  RM_ABILITY = 562;
  RM_HEALTHSPELLCHANGED = 563;
  RM_DAYCHANGING = 564;
  RM_HEAR = 565;
  RM_WHISPER = 566;
  RM_CRY = 567;
  RM_SYSMESSAGE = 568;
  RM_GROUPMESSAGE = 569;
  RM_GUILDMESSAGE = 570;
  RM_DELAYMESSAGE = 571;
  RM_CENTERMESSAGE = 572;
  RM_TOPCHATBOARDMESSAGE = 573;
  RM_MOVEMESSAGE = 574;
  RM_MERCHANTSAY = 575;
  RM_ITEMSHOW = 576;
  RM_ITEMHIDE = 577;
  RM_DOOROPEN = 578;
  RM_DOORCLOSE = 579;
  RM_SENDUSEITEMS = 580;
  RM_WEIGHTCHANGED = 581;
  RM_FEATURECHANGED = 582;
  RM_CLEAROBJECTS = 583;
  RM_CHANGEMAP = 584;
  RM_BUTCH = 585;
  RM_MAGICFIRE = 586;
  RM_SENDMYMAGIC = 587;
  RM_MAGIC_LVEXP = 588;
  RM_SKELETON = 589;
  RM_DURACHANGE = 590;
  RM_GOLDCHANGED = 591;
  RM_CHANGELIGHT = 592;
  RM_CHARSTATUSCHANGED = 593;
  RM_DIGUP = 594;
  RM_DIGDOWN = 595;
  RM_FLYAXE = 596;
  RM_LIGHTING = 597;
  RM_SUBABILITY = 598;
  RM_SPACEMOVE_SHOW = 599;
  RM_RECONNECTION = 600;
  RM_SPACEMOVE_SHOW2 = 601;
  RM_HIDEEVENT = 602;
  RM_SHOWEVENT = 603;
  RM_ZEN_BEE = 604;
  RM_OPENHEALTH = 605;
  RM_CLOSEHEALTH = 606;
  RM_CHANGEFACE = 607;
  RM_MONMOVE = 608;
  RM_10205 = 609;
  RM_ALIVE = 610;
  RM_CHANGEGUILDNAME = 611;
  RM_10414 = 612;
  RM_MENU_OK = 613;
  RM_MERCHANTDLGCLOSE = 614;
  RM_SENDDELITEMLIST = 615;
  RM_SENDUSERSREPAIR = 616;
  RM_SENDGOODSLIST = 617;
  RM_SENDUSERSELL = 618;
  RM_SENDUSERREPAIR = 619;
  RM_USERMAKEDRUGITEMLIST = 620;
  RM_USERSTORAGEITEM = 621;
  RM_USERGETBACKITEM = 622;
  RM_SPACEMOVE_FIRE2 = 623;
  RM_SPACEMOVE_FIRE = 624;
  RM_BUYITEM_SUCCESS = 625;
  RM_BUYITEM_FAIL = 626;
  RM_SENDDETAILGOODSLIST = 627;
  RM_SENDBUYPRICE = 628;
  RM_USERSELLITEM_OK = 629;
  RM_USERSELLITEM_FAIL = 630;
  RM_MAKEDRUG_SUCCESS = 631;
  RM_MAKEDRUG_FAIL = 632;
  RM_SENDREPAIRCOST = 633;
  RM_USERREPAIRITEM_OK = 634;
  RM_USERREPAIRITEM_FAIL = 635;
  RM_PLAYDICE = 636;
  RM_ADJUST_BONUS = 637;
  RM_BUILDGUILD_OK = 638;
  RM_BUILDGUILD_FAIL = 639;
  RM_DONATE_OK = 640;
  RM_GAMEGOLDCHANGED = 641;
  RM_GAMEPOINTCHANGED = 642;
  RM_GAMEGLORY = 643;
  RM_MYSTATUS = 644;
  RM_MAGICFIREFAIL = 645;
  RM_LAMPCHANGEDURA = 646;
  RM_GROUPCANCEL = 647;
  RM_DONATE_FAIL = 648;
  RM_BREAKWEAPON = 649;
  RM_PASSWORD = 650;
  RM_PASSWORDSTATUS = 651;
  RM_CLICKNPCLABEL = 652;
  RM_QUERYBAGITEMS = 653;
  RM_TAKEONITEM = 654;
  RM_TAKEOFFITEM = 655;
  RM_DELETEDELAYMESSAGE = 656;
  RM_HEROLOGOUT = 657;
  RM_HEROLOGON = 658;
  RM_GETREGINFO = 659;
  RM_SENDGAMEGOLDDALITEM = 660;
  RM_QUERYDEALFAIL = 661;
  RM_PLAYSOUND = 662;
  RM_PLAYEFFECT = 663;
  RM_SCREENEFFECT = 664;
  RM_CHANGESPEED = 665;
  RM_SERVERCONFIG = 666;
  RM_OPENUPGRADEDLG = 667;
  RM_SENDUSERICON = 668;
  RM_SENDWEBBROWSER = 669;
  RM_SENDUSEREFFECT = 670;
  RM_SENDSUPERSHILEDEFFECT = 671;
  RM_SENDBLASTHIT = 672;
  RM_SENDFILES = 673;
  RM_WEATHER = 674;
  RM_HEARCOLOR = 675;
  RM_PLAYDRINKSAY = 676;
  RM_OPENPLAYDRINK = 677;
  RM_CLOSEDRINK = 678;
  RM_DRINKUPDATEVALUE = 679;
  RM_PLAYDRINKTODRINK = 680;
  RM_SENDUSERPLAYDRINK = 681;
  RM_SENDSTORAGEHEROINFO = 682;
  RM_SENDSTORAGEHEROINFOEX = 683;
  RM_SENDSHOWHEROAUTOPRACTICEDLG = 684;
  RM_REFABILNG = 685;
  RM_ABILITYNG = 686;
  RM_ABILITYALCOHOL = 687;
  RM_ABILITYMERIDIANS = 688;
  RM_WINEXPNG = 689;
  RM_LEVELUPNG = 690;
  RM_OPENCOBWEBWINDING = 691;
  RM_CLOSECOBWEBWINDING = 692;
  RM_LIGHTINGEX = 693;
  RM_CONTINUOUSMAGICORDER = 694;
  RM_TRAININGNG = 695;
  RM_STOPCONTINUOUSMAGIC = 696;
  RM_SENDSHOPNAME = 697;
  RM_HEROM2SENDDRESSEFFECT = 698;

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  RM_MAGSTRUCK_MINE = 800;
  RM_MAGSTRUCK = 801;
  RM_MAGHEALING = 802;
  RM_DELAYMAGIC = 803;
  RM_10101 = 804;
  RM_10155 = 805;
  RM_POISON = 806;
  RM_DELAYPUSHED = 807;
  RM_TRANSPARENT = 808;
  RM_DOOPENHEALTH = 809;
  RM_GROUPITEMON = 810;
  RM_GROUPITEMOFF = 811;

  RM_TAKEITEMON = 812;
  RM_TAKEITEMOFF = 813;

  RM_DELAYMAGIC85 = 814;
  RM_REFHEALTHSPELLCHANGED = 815;

  RM_SENDTAKEITEMON = 816;
  RM_SENDTAKEITEMOFF = 817;

  RM_BASEOBJECTMAX = 820;


  RM_MAKEGHOST = 920;
  RM_HEROLOGON_OK = 921;
  RM_REFANGRYVALUE = 922;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
  SM_PASSWD_FAIL = 1000;
  SM_NEWID_SUCCESS = 1001;
  SM_NEWID_FAIL = 1002;
  SM_CHGPASSWD_SUCCESS = 1003;
  SM_CHGPASSWD_FAIL = 1004;
  SM_GETBACKPASSWD_SUCCESS = 1005; //密码找回成功
  SM_GETBACKPASSWD_FAIL = 1006; //密码找回失败
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
  SM_GETBAKCHAR_SUCCESS = 1021; //找回人物成功
  SM_GETBAKCHAR_FAIL = 1022; //找回人物失败
  SM_RANDOMCODE = 1023;
  SM_NEEDPASSWORD = 1024;
  SM_CERTIFICATION_SUCCESS = 1025;
  SM_CERTIFICATION_FAIL = 1026;
  SM_OUTOFCONNECTION = 1027; //?

  SM_SPELL = 1101; //使用魔法
  SM_TURN = 1102; //转向
  SM_WALK = 1103; //走
  SM_SITDOWN = 1104;
  SM_RUN = 1105; //跑
  SM_HORSERUN = 1106;
  SM_HIT = 1107; //砍
  SM_HEAVYHIT = 1108; //
  SM_BIGHIT = 1109; //
  SM_POWERHIT = 1110;
  SM_LONGHIT = 1111; //刺杀
  SM_WIDEHIT = 1112; //半月
  SM_FIREHIT = 1113; //烈火
  SM_CRSHIT = 1114; //抱月刀 双龙斩   ID=40
  SM_TWNHIT = 1115; //龙影剑法     ID=42
  SM_43HIT = 1116; //雷霆剑法    ID=43
  SM_SWORDHIT = 1117; //逐日剑法  ID=56
  SM_60HIT = 1118; //破魂斩
  SM_61HIT = 1119; //劈星斩
  SM_62HIT = 1120; //雷霆一击
  SM_66HIT = 1121; //开天斩
  SM_100HIT = 1122; //三绝杀
  SM_101HIT = 1123; //三绝杀
  SM_102HIT = 1124; //断岳斩
  SM_103HIT = 1125; //横扫千军

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
  SM_STRUCK = 1158; //弯腰
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
  SM_GAMEGOLDNAME = 1319; //游戏币名称
  SM_GAMEPOINTNAME = 1320; //游戏币名称2
  SM_GAMEGLORY = 1321; //游戏荣誉
  SM_SERVERCONFIG = 1322;
  SM_GETREGINFO = 1323;
  SM_MISSIONNPC = 1324; //发送任务NPC代码
  SM_ATTATCKMODE = 1325; //发送攻击模式
  SM_BUYSHOPITEM_SUCCESS = 1326;
  SM_BUYSHOPITEM_FAIL = 1327;
  SM_SENGSHOPITEMS = 1328;
  RM_SENGSHOPITEMS = 1329;
  SM_SENGRANKING = 1330;
  SM_SENGMYRANKING_FAIL = 1331;
  SM_SHOWBOX = 1332; //显示宝箱
  SM_OPENBOX_SUCCESS = 1333; //钥匙正确宝箱开启
  SM_OPENBOX_FAIL = 1334;
  SM_SENDGETBOXITEMINDEX = 1335; //获取转动后选择的物品序号
  SM_TAKEONITEM = 1336; //自动穿装备
  SM_TAKEOFFITEM = 1337; //自动脱装备
  SM_AUTOGOTOXY = 1338; //自动寻路
  SM_CLICKNPCLABEL = 1339; //
  SM_SERVERNAME = 1340;
  SM_HEROTAKEONITEM = 1341; //英雄自动穿装备
  SM_HEROTAKEOFFITEM = 1342; //英雄自动脱装备
  SM_SENDGAMEGOLDDALITEM = 1343; //元宝交易装备
  SM_SELLGAMEGOLDDALITEM_OK = 1344;
  SM_SELLGAMEGOLDDALITEM_FAIL = 1345;
  SM_BUYGAMEGOLDDALITEM_OK = 1346;
  SM_BUYGAMEGOLDDALITEM_FAIL = 1347;
  SM_CANCELGAMEGOLDDEALITEM_OK = 1348; //取消元宝交易装备
  SM_CANCELGAMEGOLDDEALITEM_FAIL = 1349; //取消元宝交易装备
  SM_CANCELGAMEGOLDSELLITEM_OK = 1350; //取消元宝交易装备
  SM_CANCELGAMEGOLDSELLITEM_FAIL = 1351; //取消元宝交易装备
  SM_UNBINDLIST = 1352;
  SM_EFFECTIMAGELIST = 1353; //WIL列表
  SM_PLAYEFFECT = 1354; //播放人物效果
  SM_SCREENEFFECT = 1355;
  SM_OVERLAPITEM_OK = 1356; //重叠物品 成功
  SM_OVERLAPITEM_FAIL = 1357; //重叠物品 失败
  SM_HEROOVERLAPITEM_OK = 1358; //英雄重叠物品 成功
  SM_HEROOVERLAPITEM_FAIL = 1359; //英雄重叠物品 失败
  SM_PACKAGEITEM_OK = 1360; //分开重叠物品 成功
  SM_PACKAGEITEM_FAIL = 1361; //分开重叠物品 失败
  SM_HEROPACKAGEITEM_OK = 1362; //英雄分开重叠物品 成功
  SM_HEROPACKAGEITEM_FAIL = 1363; //英雄分开重叠物品 失败
  SM_PLAYSOUND = 1364;
  SM_OPENBIGMERCHANTBIGDLG = 1365;
  SM_CLOSEBIGMERCHANTBIGDLG = 1366;
  SM_REPAIRFIRDRAGON_OK = 1367; //修理火龙之心 成功
  SM_REPAIRFIRDRAGON_FAIL = 1368; //修理火龙之心  失败
  SM_CHANGESPEED = 1369; //游戏速度
  SM_QUERYUSERSHOPS = 1370; //返回搜索传奇店铺结果
  SM_QUERYUSERSHOPITEMS = 1371; //返回指定用户店铺物品
  SM_SEARCHSHOPITEMS = 1372; //返回搜索传奇店铺物品结果
  SM_QUERYMYSHOPSELLINGITEMS = 1373; //返回我的店铺正在物品
  SM_QUERYMYSHOPSELLEDITEMS = 1374; //返回我的店铺已经出售物品
  SM_QUERYMYSHOPSTORAGEITEMS = 1375; //返回我的店铺仓库物品
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
  SM_UPGRADEDLGITEM_TAKE = 1386; //升级成功
  SM_UPGRADEDLGITEM_GIVE = 1387; //升级成功
  SM_OPENUPGRADEDLG = 1388; //显示OK对话框
  SM_SENDUSERICON = 1389;
  SM_SENDWEBBROWSER = 1390;
  SM_SENDUSEREFFECT = 1391;
  SM_SENDSUPERSHILEDEFFECT = 1392;
  SM_SENDBLASTHIT = 1393; //暴击
  SM_SENDFILENAME = 1394; //传送文件相关
  SM_SENDFILES = 1395; //传送文件相关
  SM_SPECIALCMD = 1396; //特殊命令
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
  SM_CHALLENGECHGGAMEDIAMOND_OK = 1409; //修改挑战金刚石成功
  SM_CHALLENGECHGGAMEDIAMOND_FAIL = 1410; //修改挑战金刚石失败
  SM_CHALLENGEREMOTECHGGOLD = 1411; //修改对方挑战金币
  SM_CHALLENGEREMOTECHGGAMEDIAMOND = 1412; //修改对方挑战金刚石
  SM_CHALLENGESUCCESS = 1413; //挑战成功
  SM_OPENUPGRADEDIALOG = 1414; //打开包裹宝石装备升级对话框
  SM_SENDUPGRADEDIALOG_OK = 1415; //包裹宝石装备升级成功
  SM_SENDUPGRADEDIALOG_FAIl = 1416; //包裹宝石装备升级失败
  SM_HEARCOLOR = 1417; //人物喊话信息颜色
  SM_SOFTCLOSE = 1418;
  SM_PLAYDRINKSAY = 1419; //酒馆NPC对话框信息
  SM_USERPLAYDRINKITEM_OK = 1420; //请酒成功
  SM_USERPLAYDRINKITEM_FAIl = 1421; //请酒失败
  SM_USERPLAYDRINK_OK = 1422; //给NPC的酒正确 可以斗酒
  SM_USERPLAYDRINK_FAIL = 1423; //给NPC的酒错误
  SM_OPENPLAYDRINK = 1424; //打开窗口
  SM_CLOSEDRINK = 1425; //关闭酒馆NPC对话框
  SM_DRINKUPDATEVALUE = 1426; //返回喝酒
  SM_PLAYDRINKTODRINK = 1427; //发送到客户端谁赢谁输
  SM_SENDUSERPLAYDRINK = 1428; //出现请酒对话框
  SM_SENDSTORAGEHEROINFO = 1429; //英雄寄存信息   召回寄存的英雄
  SM_SENDSTORAGEHEROINFOEX = 1430; //英雄寄存信息 评定英雄
  SM_ASSESSMENTHERO_OK = 1431; //评定英雄车成功
  SM_ASSESSMENTHERO_FAIL = 1432; //评定英雄车失败
  SM_SENDSHOWHEROAUTOPRACTICEDLG = 1433; //显示英雄自动修炼对话框
  SM_SENDHEROAUTOPRACTICE_OK = 1434; //英雄自动修炼成功
  SM_SENDHEROAUTOPRACTICE_FAIL = 1435; //英雄自动修炼失败
  SM_REFABILNG = 1436; //刷新内力
  SM_ABILITYNG = 1437; //内功属性
  SM_ABILITYALCOHOL = 1438; //酒属性
  SM_ABILITYMERIDIANS = 1439; //经脉
  SM_HEROABILITYNG = 1440; //英雄内功属性
  SM_HEROABILITYALCOHOL = 1441; //英雄酒属性
  SM_HEROABILITYMERIDIANS = 1442; //英雄经脉
  SM_OPENCOBWEBWINDING = 1443; //蜘蛛网罩住  开启
  SM_CLOSECOBWEBWINDING = 1444; //蜘蛛网罩住 打开
  SM_LIGHTINGEX = 1445;
  SM_CONTINUOUSMAGICORDER = 1446; //连击顺序  series=0 人物 series=1 英雄
  SM_CONTINUOUSMAGIC_OK = 1447; //请求开始开始连击成功
  SM_CONTINUOUSMAGIC_FAIL = 1448; //请求开始开始连击失败
  SM_CANCONTINUOUSMAGIC = 1449; //可以连击 界面连击图片闪烁显示
  SM_TRAININGNG = 1450; //是否修炼内功心法 界面相应显示内功心法界面  series=0 人物 series=1 英雄
  SM_LEVELUPNG = 1451; //内功升级
  SM_STOPCONTINUOUSMAGIC = 1452; //停止连击
  SM_MAPCANRUN = 1453; //穿人穿怪状态
  SM_PLUGFILE = 1454; //客户端插件MD5 M2发送过来进行检测
  SM_MODULEMD5 = 1455; //白名单模块MD5
  SM_BLACKMODULEMD5 = 1456; //黑名单模块MD5
  SM_SENDSHOPNAME = 1457; //摆摊商铺名称
  SM_MASTERBAGTOHEROBAG_OK = 1458; //主人包裹物品放到英雄包裹成功
  SM_MASTERBAGTOHEROBAG_FAIL = 1459; //主人包裹物品放到英雄包裹失败
  SM_HEROBAGTOMASTERBAG_OK = 1460; //英雄包裹物品放到主人包裹成功
  SM_HEROBAGTOMASTERBAG_FAIL = 1461; //英雄包裹物品放到主人包裹失败
  SM_HEROBAGCOUNT = 1462; //英雄包裹数量
  SM_HEROLOGOUT = 1463; //获取英雄 TMessageBodyWL 产生英雄退出效果
  SM_HEROLOGON = 1464; //获取英雄 TMessageBodyWL 产生英雄登陆效果
  SM_HEROLOYAL = 1465; //获取英雄忠诚  10001(忠00.00%)
  SM_HEROABILITY = 1466; //获取英雄Abil
  SM_HEROSUBABILITY = 1467; //英雄SUBABILITY
  SM_HEROBAGITEMS = 1468; //获取英雄包裹     Tag:包裹物品数量 2 Series: 包裹总数量10
  SM_SENDHEROUSEITEMS = 1469; //获取英雄身上装备
  SM_SENDMYHEROMAGIC = 1470; //获取英雄魔法
  SM_HEROADDITEM = 1471; //英雄 Ident: 905 Recog: 738569296 Param: 0 Tag: 0 Series: 1   AddItem
  SM_HERODELITEM = 1472; //英雄 Ident: 906 Recog: 738569296 Param: 0 Tag: 0 Series: 1   delItem
  SM_HEROTAKEON_OK = 1473; //英雄穿装备OK Ident: 907 Recog: 742933632 Param: 0 Tag: 0 Series: 0
  SM_HEROTAKEON_FAIL = 1474; //英雄穿装备FAIL
  SM_HEROTAKEOFF_OK = 1475; //英雄脱装备OK
  SM_HEROTAKEOFF_FAIL = 1476; //英雄脱装备FAIL
  SM_HEROEAT_OK = 1477; //英雄吃药OK
  SM_HEROEAT_FAIL = 1478; //英雄吃药FAIL
  SM_HEROADDMAGIC = 1479; //英雄增加魔法
  SM_HERODELMAGIC = 1480; //英雄删除魔法
  SM_HEROANGERVALUE = 1481; //英雄怒值改变 Ident: 916 Recog: 5 Param: 2 Tag: 102 Series: 0
  SM_HEROLOGOUT_OK = 1482; // 英雄退出OK
  SM_HERODURACHANGE = 1483; //英雄物品持久改变
  SM_HERODROPITEM_SUCCESS = 1484; //英雄扔物品OK
  SM_HERODROPITEM_FAIL = 1485; //英雄扔物品FAIL
  SM_HEROLEVELUP = 1486; //英雄升级
  SM_HEROWINEXP = 1487; //英雄获取经验
  SM_HEROWEIGHTCHANGED = 1488;
  SM_HEROMAGIC_LVEXP = 1489; //英雄魔法经验
  SM_HEROCHANGEFACE = 1490;
  SM_HEROUPDATEITEM = 1491;
  SM_HERODELITEMS = 1492;
  SM_HEROCHANGEITEM = 1493;
  SM_HEROLOGON_OK = 1494;
  SM_OPENMISSIONDLG = 1495;
  SM_DELETEDELAYMESSAGE = 1496;
  SM_HEROM2ADDUSERSHOPITEM_OK = 1497; //增加摆摊物品成功
  SM_HEROM2ADDUSERSHOPITEM_FAIL = 1498; //增加摆摊物品失败
  SM_HEROM2DELUSERSHOPITEM_OK = 1499; //删除摆摊物品成功
  SM_HEROM2DELUSERSHOPITEM_FAIL = 1500; //删除摆摊物品失败
  SM_HEROM2DELUSERSHOPITEM = 1501; //删除摆摊物品
  SM_HEROM2DELREMOTEUSERSHOPITEM = 1502; //删除摆摊物品
  SM_HEROM2SENDSHOPITEM = 1503; //摆摊物品
  SM_HEROM2SENDCLOSESHOP = 1504; //关闭购买摆摊物品窗口
  SM_HEROM2SENDDRESSEFFECT = 1505;
  SM_SENDFILTERITEMLIST = 1506;
  SM_SENDITEMDESCLIST = 1507;
  SM_SENDTZITEMDESCLIST = 1508;



  clBlack = LongWord($000000);
  clMaroon = LongWord($000080);
  clGreen = LongWord($008000);
  clOlive = LongWord($008080);
  clNavy = LongWord($800000);
  clPurple = LongWord($800080);
  clTeal = LongWord($808000);
  clGray = LongWord($808080);
  clSilver = LongWord($C0C0C0);
  clRed = LongWord($0000FF);
  clLime = LongWord($00FF00);
  clYellow = LongWord($00FFFF);
  clBlue = LongWord($FF0000);
  clFuchsia = LongWord($FF00FF);
  clAqua = LongWord($FFFF00);
  clLtGray = LongWord($C0C0C0);
  clDkGray = LongWord($808080);
  clWhite = LongWord($FFFFFF);
type
{$IFDEF XE}
  _PCHAR = PAnsiChar;
  _STRING = AnsiString;
{$ELSE}
  _PCHAR = PChar;
  _STRING = string;
{$ENDIF}

{$IFDEF CPUX64}
  _INTEGER = NativeInt;
{$ELSE}
  _INTEGER = Integer;
{$ENDIF}

  TMenuItem = TObject;
  TNotifyEvent = procedure(Sender: TObject) of object;

  pTBaseObject = ^TBaseObject;
  pTPlayObject = ^TPlayObject;
  pTEnvirnoment = ^TEnvirnoment;
  pTGuild = ^TGuild;
  pTUserCastle = ^TUserCastle;

  TList = TObject;
  TStringList = TObject;
  TMemoryStream = TObject;
  TBaseObject = TObject;
  TSmartObject = TObject;
  THeroObject = TObject;
  TPlayObject = TObject;
  TNormNpc = TObject;
  TMerchant = TObject;
  TEnvirnoment = TObject;
  TUserCastle = TObject;
  TGuild = TObject;

  TMsgType = (t_Notice, t_Hint, t_System, t_Say, t_Mon, t_GM, t_Cust, t_Castle, t_Char);
  _TDEFAULTMESSAGE = record
    nRecog: Int64;
    wIdent: word;
    wParam: word;
    wTag: word;
    wSeries: word;
  end;
  _LPTDEFAULTMESSAGE = ^_TDEFAULTMESSAGE;

  _TABILITY = packed record
    Weight: LongInt; //0x1B8   //0x54 0x20
    MaxWeight: LongInt; //0x1BA   //0x56 0x22  背包
    WearWeight: LongInt; //0x1BC   //0x58 0x24
    MaxWearWeight: LongInt; //0x1BD   //0x59 0x25  负重
    HandWeight: LongInt; //0x1BE   //0x5A 0x26
    MaxHandWeight: LongInt; //0x1BF   //0x5B 0x27  腕力
    CreditPoint: Integer; //声望
    NewValue: array[0..20 - 1] of Byte;
//0暴击几率增加 1增加攻击伤害  2物理伤害减少 3魔法伤害减少  4忽视目标防御  5所有伤害反弹 6人物体力增加  7人物魔力增加 8怒气恢复增加 9合击攻击增加  10增加目标暴率
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
  _LPTABILITY = ^_TABILITY;

  _TSTDITEM = packed record
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
    OverLap: Word; //是否是重叠物品
    Color: Byte; //物品名称颜色
    Stock: Integer;
    btValue: array[0..6] of LongWord; //附加属性
    btAddValue: array[5..13] of Byte; //附加属性

    btUpgradeCount: Byte; //升级次数
    btHeroM2Light: Byte; //HeroM2 SetItemsLight
    NewValue: array[0..20 - 1] of Byte;

    IsBind: Boolean; //是否绑定

    Reserved2: array[0..418 - 1] of Byte;

    EffectFileIndex: SmallInt; //包裹中的物品发光效果 文件编号 0
    EffectStartOffSet: Word; // 包裹中的物品发光效果 读取位置
    EffectImageCount: Byte; // 包裹中的物品发光效果 读取张数
    EffectOffsetX: SmallInt; // 包裹中的物品发光效果 微调X
    EffectOffsetY: SmallInt; // 包裹中的物品发光效果 微调Y
    EffectTime: Word; //播放速度
    EffectNotCheckSize: Boolean;

    BodyEffectFileIndex: SmallInt; //内观物品发光效果 文件编号 0
    BodyEffectStartOffSet: Word; // 内观物品发光效果 读取位置
    BodyEffectImageCount: Byte; // 内观物品发光效果 读取张数
    BodyEffectOffsetX: SmallInt; // 内观物品发光效果 微调X
    BodyEffectOffsetY: SmallInt; // 内观物品发光效果 微调Y
    BodyEffectTime: Word; //播放速度
    BodyEffectNotCheckSize: Boolean;

{$IFDEF CPUX64}
    Effect: Pointer;
{$ELSE}
    Effect: Pointer;
    Reserved3: Integer;
{$ENDIF}

    HP: LongWord;
    MP: LongWord;
    case Integer of
      0: (AC, MAC, DC, SC, MC: Int64);
      1: (LAC, HAC, LMAC, HMAC, LDC, HDC, LMC, HMC, LSC, HSC: Integer);
  end;
  _LPTSTDITEM = ^_TSTDITEM;

  _TCLIENTITEM = packed record
    S: _TSTDITEM;
    MakeIndex: Integer;
    Dura: LongWord;
    DuraMax: LongWord;
  end;
  _LPTCLIENTITEM = ^_TCLIENTITEM;

  _TUSERITEM = packed record
    MakeIndex: Integer;
    wIndex: Word; //物品id
    Dura: LongWord; //当前持久值
    DuraMax: LongWord; //最大持久值
    btValue: array[0..6] of LongWord;
    btAddValue: array[5..13] of Byte;
    btUpgradeCount: Byte; //升级次数
    boStartTime: Boolean; //是否开始计时
    nLimitTime: Integer; //限时物品 分钟
    btHeroM2Light: Byte; //HeroM2 SetItemsLight
    btNewValue: array[0..20 - 1] of Byte;
//暴击几率增加 增加攻击伤害  物理伤害减少 魔法伤害减少  忽视目标防御  所有伤害反弹 人物体力增加  人物魔力增加 怒气恢复增加 合击攻击增加   增加目标暴率
    btColor: Byte;
    boIsBind: Boolean; //是否绑定

    boCanotUserDropBindItem: Boolean; //禁止扔                  ]
    boCanotUserDealBindItem: Boolean; //禁止交易
    boCanotUserStorageBindItem: Boolean; //禁止存
    boCanotUserRepairBindItem: Boolean; //禁止修
    boCanotUserSellBindItem: Boolean; //禁止出售
    boCanotUserScatterBindItem: Boolean; //禁止爆出

    wEffect: Word; //特效编号 新

    Reserved: array[0..460 - 1] of Byte;
  end;
  _LPTUSERITEM = ^_TUSERITEM;

  _TUSEITEMS = array[0..U_SWEAPON] of _TUSERITEM; //身上装备
  _LPTUSEITEMS = ^_TUSEITEMS;

                 //人物技能 英雄技能 连击技能 内功技能增加防御 内功技能增加攻击
  TMagicAttr = (mtHum, mtHero, mtContinuous, mtDefense, mtAttack);

  _TMAGIC = packed record
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
    btTrainLv: Byte; //最高可升级等级
    btJob: Byte;
    wMagicIdx: Word;
    dwDelayTime: LongWord;
    btDefSpell: Byte;
    btDefPower: Byte;
    wMaxPower: Word;
    btDefMaxPower: Byte;
    sDescr: string[18];
  end;
  _LPTMAGIC = ^_TMAGIC;

  _TUSERMAGIC = packed record //用户魔法
    MagicInfo: _LPTMAGIC;
    MagicAttr: TMagicAttr;
    wMagIdx: Word;
    btLevel: Byte;
    btNewLevel: Byte;
    btKey: Byte;
    nTranPoint: Integer;
  end;
  _LPTUSERMAGIC = ^_TUSERMAGIC;

  _TCLIENTMAGIC = packed record //发送客户端的魔法结构
    Key: Char;
    Level: Byte;
    NewLevel: Byte; // 强化等级
    CurTrain: Integer;
    Def: _TMAGIC;
  end;
  _LPTCLIENTMAGIC = ^_TCLIENTMAGIC;


  _TACTORICON = packed record //顶戴花翎
    nFileIndex: SmallInt; //WIL资源编号
    nIconIndex: Word; //图片编号
    nIconCount: Byte; //播放张数
    nX: SmallInt;
    nY: SmallInt;
    boBlend: Boolean; //绘制模式
  end;
  _LPTACTORICON = ^_TACTORICON;
  _TACTORICONARRAY = array[0..9] of _TACTORICON;
  _LPTACTORICONARRAY = ^_TACTORICONARRAY;


  TShareMemoryManage = record
    GetMem: function(Size: Integer): Pointer; stdcall;
    FreeMem: procedure(P: Pointer); stdcall;
    AllocMem: function(Size: Integer): Pointer; stdcall;
    ReallocMem: function(P: Pointer; Size: Integer): Pointer; stdcall;
  end;
  pTShareMemoryManage = ^TShareMemoryManage;

  TStart = procedure(); stdcall;
  TObjectAction = procedure(PlayObject: TObject); stdcall;
  TObjectActionEx = function(PlayObject: TObject): Boolean; stdcall;
  TObjectActionXY = procedure(AObject, BObject: TObject; nX, nY: Integer); stdcall;
  TObjectActionXYD = procedure(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte); stdcall;
  TObjectActionXYDM = procedure(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte; wMagicID: Word); stdcall;
  TObjectActionXYDMEx = function(AObject, BObject: TObject; nX, nY: Integer; btDir: Byte; wMagicID: Word; nDamage: Integer): Integer; stdcall;
  TObjectActionIndex = procedure(BaseObject: TObject; Index: Integer); stdcall;
  TObjectControl = procedure(BaseObject: TObject; var Value: Integer); stdcall; // Value需要申请的内存大小
  TObjectUserSelect = procedure(Merchant: TMerchant; PlayObject: TPlayObject; pszLabel, pszData: PChar); stdcall;
  TProcessUserCmd = function(AObject: TObject; pszCmd, pszParam1, pszParam2, pszParam3, pszParam4, pszParam5, pszParam6, pszParam7: _PCHAR): Boolean; stdcall;

  TLoadScriptCmd = function(pszCmd: _PCHAR): Integer; stdcall;
  TLoadScriptFile = function(sFileName: _PCHAR; Stream: TMemoryStream): Boolean; stdcall; //数据需要使用ZIP压缩然后使用M2Server_EncryBuffer加密后才能写入Stream
  TScriptProcess = function(Npc: TObject;
    PlayObject: TObject;
    BaseObject: TObject;
    nCMDCode: Integer;
    sRawParam1: _PCHAR;
    sRawParam2: _PCHAR;
    sRawParam3: _PCHAR;
    sRawParam4: _PCHAR;
    sRawParam5: _PCHAR;
    sRawParam6: _PCHAR;
    sRawParam7: _PCHAR;
    sRawParam8: _PCHAR;
    sRawParam9: _PCHAR;
    sRawParam10: _PCHAR;

    sParam1: _PCHAR;
    nParam1: Integer;
    sParam2: _PCHAR;
    nParam2: Integer;
    sParam3: _PCHAR;
    nParam3: Integer;
    sParam4: _PCHAR;
    nParam4: Integer;
    sParam5: _PCHAR;
    nParam5: Integer;
    sParam6: _PCHAR;
    nParam6: Integer;
    sParam7: _PCHAR;
    nParam7: Integer;
    sParam8: _PCHAR;
    nParam8: Integer;
    sParam9: _PCHAR;
    nParam9: Integer;
    sParam10: _PCHAR;
    nParam10: Integer
    ): Boolean; stdcall;

  TGetVariableText = function(NPC: TNormNpc; PlayObject: TPlayObject; sVariable: _PCHAR; sValue: _PCHAR; var nLen: Integer): Boolean; stdcall;

  TObjectOperateMessage = function(BaseObject: TObject;
    wIdent: Word;
    wParam: Integer;
    nParam1: Integer;
    nParam2: Integer;
    nParam3: Integer;
    MsgObject: TObject;
    dwDeliveryTime: LongWord;
    pszMsg: _PCHAR;
    var boReturn: Boolean): Boolean; stdcall;

  TDoSpell = function(BaseObject: TSmartObject;
    UserMagic: _LPTUSERMAGIC; nTargetX, nTargetY: Integer;
    var TargeTBaseObject: TBaseObject; var boSpellFail: Boolean): Boolean; stdcall;

  TEncodeBuffer = procedure(buf: _PCHAR; bufsize: Integer; OutBuf: _PCHAR); stdcall;
  TDecodeBuffer = procedure(Str, buf: _PCHAR; bufsize: Integer); stdcall;
implementation

end.

