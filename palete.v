module palete(input [11:0] entrada,input clock, output reg[10:0] Ymaximo, Yminimo);

always @ (posedge clock)
begin			
if(entrada<5)
    begin
        Ymaximo<=95;
        Yminimo<=5;
    end
else if(entrada<10)
    begin
        Ymaximo<=96;
        Yminimo<=6;
    end
else if(entrada<20)
    begin
        Ymaximo<=97;
        Yminimo<=7;
    end
else if(entrada<30)
    begin
        Ymaximo<=98;
        Yminimo<=8;
    end
else if(entrada<40)
    begin
        Ymaximo<=99;
        Yminimo<=9;
    end
else if(entrada<50)
    begin
        Ymaximo<=100;
        Yminimo<=10;
    end
else if(entrada<60)
    begin
        Ymaximo<=101;
        Yminimo<=11;
    end
else if(entrada<70)
    begin
        Ymaximo<=102;
        Yminimo<=12;
    end
else if(entrada<80)
    begin
        Ymaximo<=103;
        Yminimo<=13;
    end
else if(entrada<90)
    begin
        Ymaximo<=104;
        Yminimo<=14;
    end
else if(entrada<100)
    begin
        Ymaximo<=105;
        Yminimo<=15;
    end
else if(entrada<110)
    begin
        Ymaximo<=106;
        Yminimo<=16;
    end
else if(entrada<120)
    begin
        Ymaximo<=107;
        Yminimo<=17;
    end
else if(entrada<130)
    begin
        Ymaximo<=108;
        Yminimo<=18;
    end
else if(entrada<140)
    begin
        Ymaximo<=109;
        Yminimo<=19;
    end
else if(entrada<150)
    begin
        Ymaximo<=110;
        Yminimo<=20;
    end
else if(entrada<160)
    begin
        Ymaximo<=111;
        Yminimo<=21;
    end
else if(entrada<170)
    begin
        Ymaximo<=112;
        Yminimo<=22;
    end
else if(entrada<180)
    begin
        Ymaximo<=113;
        Yminimo<=23;
    end
else if(entrada<190)
    begin
        Ymaximo<=114;
        Yminimo<=24;
    end
else if(entrada<200)
    begin
        Ymaximo<=115;
        Yminimo<=25;
    end
else if(entrada<210)
    begin
        Ymaximo<=116;
        Yminimo<=26;
    end
else if(entrada<220)
    begin
        Ymaximo<=117;
        Yminimo<=27;
    end
else if(entrada<230)
    begin
        Ymaximo<=118;
        Yminimo<=28;
    end
else if(entrada<240)
    begin
        Ymaximo<=119;
        Yminimo<=29;
    end
else if(entrada<250)
    begin
        Ymaximo<=120;
        Yminimo<=30;
    end
else if(entrada<260)
    begin
        Ymaximo<=121;
        Yminimo<=31;
    end
else if(entrada<270)
    begin
        Ymaximo<=122;
        Yminimo<=32;
    end
else if(entrada<280)
    begin
        Ymaximo<=123;
        Yminimo<=33;
    end
else if(entrada<290)
    begin
        Ymaximo<=124;
        Yminimo<=34;
    end
else if(entrada<300)
    begin
        Ymaximo<=125;
        Yminimo<=35;
    end
else if(entrada<310)
    begin
        Ymaximo<=126;
        Yminimo<=36;
    end
else if(entrada<320)
    begin
        Ymaximo<=127;
        Yminimo<=37;
    end
else if(entrada<330)
    begin
        Ymaximo<=128;
        Yminimo<=38;
    end
else if(entrada<340)
    begin
        Ymaximo<=129;
        Yminimo<=39;
    end
else if(entrada<350)
    begin
        Ymaximo<=130;
        Yminimo<=40;
    end
else if(entrada<360)
    begin
        Ymaximo<=131;
        Yminimo<=41;
    end
else if(entrada<370)
    begin
        Ymaximo<=132;
        Yminimo<=42;
    end
else if(entrada<380)
    begin
        Ymaximo<=133;
        Yminimo<=43;
    end
else if(entrada<390)
    begin
        Ymaximo<=134;
        Yminimo<=44;
    end
else if(entrada<400)
    begin
        Ymaximo<=135;
        Yminimo<=45;
    end
else if(entrada<410)
    begin
        Ymaximo<=136;
        Yminimo<=46;
    end
else if(entrada<420)
    begin
        Ymaximo<=137;
        Yminimo<=47;
    end
else if(entrada<430)
    begin
        Ymaximo<=138;
        Yminimo<=48;
    end
else if(entrada<440)
    begin
        Ymaximo<=139;
        Yminimo<=49;
    end
else if(entrada<450)
    begin
        Ymaximo<=140;
        Yminimo<=50;
    end
else if(entrada<460)
    begin
        Ymaximo<=141;
        Yminimo<=51;
    end
else if(entrada<470)
    begin
        Ymaximo<=142;
        Yminimo<=52;
    end
else if(entrada<480)
    begin
        Ymaximo<=143;
        Yminimo<=53;
    end
else if(entrada<490)
    begin
        Ymaximo<=144;
        Yminimo<=54;
    end
else if(entrada<500)
    begin
        Ymaximo<=145;
        Yminimo<=55;
    end
else if(entrada<510)
    begin
        Ymaximo<=146;
        Yminimo<=56;
    end
else if(entrada<520)
    begin
        Ymaximo<=147;
        Yminimo<=57;
    end
else if(entrada<530)
    begin
        Ymaximo<=148;
        Yminimo<=58;
    end
else if(entrada<540)
    begin
        Ymaximo<=149;
        Yminimo<=59;
    end
else if(entrada<550)
    begin
        Ymaximo<=150;
        Yminimo<=60;
    end
else if(entrada<560)
    begin
        Ymaximo<=151;
        Yminimo<=61;
    end
else if(entrada<570)
    begin
        Ymaximo<=152;
        Yminimo<=62;
    end
else if(entrada<580)
    begin
        Ymaximo<=153;
        Yminimo<=63;
    end
else if(entrada<590)
    begin
        Ymaximo<=154;
        Yminimo<=64;
    end
else if(entrada<600)
    begin
        Ymaximo<=155;
        Yminimo<=65;
    end
else if(entrada<610)
    begin
        Ymaximo<=156;
        Yminimo<=66;
    end
else if(entrada<620)
    begin
        Ymaximo<=157;
        Yminimo<=67;
    end
else if(entrada<630)
    begin
        Ymaximo<=158;
        Yminimo<=68;
    end
else if(entrada<640)
    begin
        Ymaximo<=159;
        Yminimo<=69;
    end
else if(entrada<650)
    begin
        Ymaximo<=160;
        Yminimo<=70;
    end
else if(entrada<660)
    begin
        Ymaximo<=161;
        Yminimo<=71;
    end
else if(entrada<670)
    begin
        Ymaximo<=162;
        Yminimo<=72;
    end
else if(entrada<680)
    begin
        Ymaximo<=163;
        Yminimo<=73;
    end
else if(entrada<690)
    begin
        Ymaximo<=164;
        Yminimo<=74;
    end
else if(entrada<700)
    begin
        Ymaximo<=165;
        Yminimo<=75;
    end
else if(entrada<710)
    begin
        Ymaximo<=166;
        Yminimo<=76;
    end
else if(entrada<720)
    begin
        Ymaximo<=167;
        Yminimo<=77;
    end
else if(entrada<730)
    begin
        Ymaximo<=168;
        Yminimo<=78;
    end
else if(entrada<740)
    begin
        Ymaximo<=169;
        Yminimo<=79;
    end
else if(entrada<750)
    begin
        Ymaximo<=170;
        Yminimo<=80;
    end
else if(entrada<760)
    begin
        Ymaximo<=171;
        Yminimo<=81;
    end
else if(entrada<770)
    begin
        Ymaximo<=172;
        Yminimo<=82;
    end
else if(entrada<780)
    begin
        Ymaximo<=173;
        Yminimo<=83;
    end
else if(entrada<790)
    begin
        Ymaximo<=174;
        Yminimo<=84;
    end
else if(entrada<800)
    begin
        Ymaximo<=175;
        Yminimo<=85;
    end
else if(entrada<810)
    begin
        Ymaximo<=176;
        Yminimo<=86;
    end
else if(entrada<820)
    begin
        Ymaximo<=177;
        Yminimo<=87;
    end
else if(entrada<830)
    begin
        Ymaximo<=178;
        Yminimo<=88;
    end
else if(entrada<840)
    begin
        Ymaximo<=179;
        Yminimo<=89;
    end
else if(entrada<850)
    begin
        Ymaximo<=180;
        Yminimo<=90;
    end
else if(entrada<860)
    begin
        Ymaximo<=181;
        Yminimo<=91;
    end
else if(entrada<870)
    begin
        Ymaximo<=182;
        Yminimo<=92;
    end
else if(entrada<880)
    begin
        Ymaximo<=183;
        Yminimo<=93;
    end
else if(entrada<890)
    begin
        Ymaximo<=184;
        Yminimo<=94;
    end
else if(entrada<900)
    begin
        Ymaximo<=185;
        Yminimo<=95;
    end
else if(entrada<910)
    begin
        Ymaximo<=186;
        Yminimo<=96;
    end
else if(entrada<921)
    begin
        Ymaximo<=187;
        Yminimo<=97;
    end
else if(entrada<932)
    begin
        Ymaximo<=188;
        Yminimo<=98;
    end
else if(entrada<943)
    begin
        Ymaximo<=189;
        Yminimo<=99;
    end
else if(entrada<954)
    begin
        Ymaximo<=190;
        Yminimo<=100;
    end
else if(entrada<965)
    begin
        Ymaximo<=191;
        Yminimo<=101;
    end
else if(entrada<976)
    begin
        Ymaximo<=192;
        Yminimo<=102;
    end
else if(entrada<987)
    begin
        Ymaximo<=193;
        Yminimo<=103;
    end
else if(entrada<998)
    begin
        Ymaximo<=194;
        Yminimo<=104;
    end
else if(entrada<1009)
    begin
        Ymaximo<=195;
        Yminimo<=105;
    end
else if(entrada<1020)
    begin
        Ymaximo<=196;
        Yminimo<=106;
    end
else if(entrada<1031)
    begin
        Ymaximo<=197;
        Yminimo<=107;
    end
else if(entrada<1042)
    begin
        Ymaximo<=198;
        Yminimo<=108;
    end
else if(entrada<1053)
    begin
        Ymaximo<=199;
        Yminimo<=109;
    end
else if(entrada<1064)
    begin
        Ymaximo<=200;
        Yminimo<=110;
    end
else if(entrada<1075)
    begin
        Ymaximo<=201;
        Yminimo<=111;
    end
else if(entrada<1086)
    begin
        Ymaximo<=202;
        Yminimo<=112;
    end
else if(entrada<1097)
    begin
        Ymaximo<=203;
        Yminimo<=113;
    end
else if(entrada<1108)
    begin
        Ymaximo<=204;
        Yminimo<=114;
    end
else if(entrada<1119)
    begin
        Ymaximo<=205;
        Yminimo<=115;
    end
else if(entrada<1130)
    begin
        Ymaximo<=206;
        Yminimo<=116;
    end
else if(entrada<1141)
    begin
        Ymaximo<=207;
        Yminimo<=117;
    end
else if(entrada<1152)
    begin
        Ymaximo<=208;
        Yminimo<=118;
    end
else if(entrada<1163)
    begin
        Ymaximo<=209;
        Yminimo<=119;
    end
else if(entrada<1174)
    begin
        Ymaximo<=210;
        Yminimo<=120;
    end
else if(entrada<1185)
    begin
        Ymaximo<=211;
        Yminimo<=121;
    end
else if(entrada<1196)
    begin
        Ymaximo<=212;
        Yminimo<=122;
    end
else if(entrada<1207)
    begin
        Ymaximo<=213;
        Yminimo<=123;
    end
else if(entrada<1218)
    begin
        Ymaximo<=214;
        Yminimo<=124;
    end
else if(entrada<1229)
    begin
        Ymaximo<=215;
        Yminimo<=125;
    end
else if(entrada<1240)
    begin
        Ymaximo<=216;
        Yminimo<=126;
    end
else if(entrada<1251)
    begin
        Ymaximo<=217;
        Yminimo<=127;
    end
else if(entrada<1262)
    begin
        Ymaximo<=218;
        Yminimo<=128;
    end
else if(entrada<1273)
    begin
        Ymaximo<=219;
        Yminimo<=129;
    end
else if(entrada<1284)
    begin
        Ymaximo<=220;
        Yminimo<=130;
    end
else if(entrada<1295)
    begin
        Ymaximo<=221;
        Yminimo<=131;
    end
else if(entrada<1306)
    begin
        Ymaximo<=222;
        Yminimo<=132;
    end
else if(entrada<1317)
    begin
        Ymaximo<=223;
        Yminimo<=133;
    end
else if(entrada<1328)
    begin
        Ymaximo<=224;
        Yminimo<=134;
    end
else if(entrada<1339)
    begin
        Ymaximo<=225;
        Yminimo<=135;
    end
else if(entrada<1350)
    begin
        Ymaximo<=226;
        Yminimo<=136;
    end
else if(entrada<1361)
    begin
        Ymaximo<=227;
        Yminimo<=137;
    end
else if(entrada<1372)
    begin
        Ymaximo<=228;
        Yminimo<=138;
    end
else if(entrada<1383)
    begin
        Ymaximo<=229;
        Yminimo<=139;
    end
else if(entrada<1394)
    begin
        Ymaximo<=230;
        Yminimo<=140;
    end
else if(entrada<1405)
    begin
        Ymaximo<=231;
        Yminimo<=141;
    end
else if(entrada<1416)
    begin
        Ymaximo<=232;
        Yminimo<=142;
    end
else if(entrada<1427)
    begin
        Ymaximo<=233;
        Yminimo<=143;
    end
else if(entrada<1438)
    begin
        Ymaximo<=234;
        Yminimo<=144;
    end
else if(entrada<1449)
    begin
        Ymaximo<=235;
        Yminimo<=145;
    end
else if(entrada<1460)
    begin
        Ymaximo<=236;
        Yminimo<=146;
    end
else if(entrada<1471)
    begin
        Ymaximo<=237;
        Yminimo<=147;
    end
else if(entrada<1482)
    begin
        Ymaximo<=238;
        Yminimo<=148;
    end
else if(entrada<1493)
    begin
        Ymaximo<=239;
        Yminimo<=149;
    end
else if(entrada<1504)
    begin
        Ymaximo<=240;
        Yminimo<=150;
    end
else if(entrada<1515)
    begin
        Ymaximo<=241;
        Yminimo<=151;
    end
else if(entrada<1526)
    begin
        Ymaximo<=242;
        Yminimo<=152;
    end
else if(entrada<1537)
    begin
        Ymaximo<=243;
        Yminimo<=153;
    end
else if(entrada<1548)
    begin
        Ymaximo<=244;
        Yminimo<=154;
    end
else if(entrada<1559)
    begin
        Ymaximo<=245;
        Yminimo<=155;
    end
else if(entrada<1570)
    begin
        Ymaximo<=246;
        Yminimo<=156;
    end
else if(entrada<1581)
    begin
        Ymaximo<=247;
        Yminimo<=157;
    end
else if(entrada<1592)
    begin
        Ymaximo<=248;
        Yminimo<=158;
    end
else if(entrada<1603)
    begin
        Ymaximo<=249;
        Yminimo<=159;
    end
else if(entrada<1614)
    begin
        Ymaximo<=250;
        Yminimo<=160;
    end
else if(entrada<1625)
    begin
        Ymaximo<=251;
        Yminimo<=161;
    end
else if(entrada<1636)
    begin
        Ymaximo<=252;
        Yminimo<=162;
    end
else if(entrada<1647)
    begin
        Ymaximo<=253;
        Yminimo<=163;
    end
else if(entrada<1658)
    begin
        Ymaximo<=254;
        Yminimo<=164;
    end
else if(entrada<1669)
    begin
        Ymaximo<=255;
        Yminimo<=165;
    end
else if(entrada<1680)
    begin
        Ymaximo<=256;
        Yminimo<=166;
    end
else if(entrada<1691)
    begin
        Ymaximo<=257;
        Yminimo<=167;
    end
else if(entrada<1702)
    begin
        Ymaximo<=258;
        Yminimo<=168;
    end
else if(entrada<1713)
    begin
        Ymaximo<=259;
        Yminimo<=169;
    end
else if(entrada<1724)
    begin
        Ymaximo<=260;
        Yminimo<=170;
    end
else if(entrada<1735)
    begin
        Ymaximo<=261;
        Yminimo<=171;
    end
else if(entrada<1746)
    begin
        Ymaximo<=262;
        Yminimo<=172;
    end
else if(entrada<1757)
    begin
        Ymaximo<=263;
        Yminimo<=173;
    end
else if(entrada<1768)
    begin
        Ymaximo<=264;
        Yminimo<=174;
    end
else if(entrada<1779)
    begin
        Ymaximo<=265;
        Yminimo<=175;
    end
else if(entrada<1790)
    begin
        Ymaximo<=266;
        Yminimo<=176;
    end
else if(entrada<1801)
    begin
        Ymaximo<=267;
        Yminimo<=177;
    end
else if(entrada<1812)
    begin
        Ymaximo<=268;
        Yminimo<=178;
    end
else if(entrada<1823)
    begin
        Ymaximo<=269;
        Yminimo<=179;
    end
else if(entrada<1834)
    begin
        Ymaximo<=270;
        Yminimo<=180;
    end
else if(entrada<1845)
    begin
        Ymaximo<=271;
        Yminimo<=181;
    end
else if(entrada<1856)
    begin
        Ymaximo<=272;
        Yminimo<=182;
    end
else if(entrada<1867)
    begin
        Ymaximo<=273;
        Yminimo<=183;
    end
else if(entrada<1878)
    begin
        Ymaximo<=274;
        Yminimo<=184;
    end
else if(entrada<1889)
    begin
        Ymaximo<=275;
        Yminimo<=185;
    end
else if(entrada<1900)
    begin
        Ymaximo<=276;
        Yminimo<=186;
    end
else if(entrada<1911)
    begin
        Ymaximo<=277;
        Yminimo<=187;
    end
else if(entrada<1922)
    begin
        Ymaximo<=278;
        Yminimo<=188;
    end
else if(entrada<1933)
    begin
        Ymaximo<=279;
        Yminimo<=189;
    end
else if(entrada<1944)
    begin
        Ymaximo<=280;
        Yminimo<=190;
    end
else if(entrada<1955)
    begin
        Ymaximo<=281;
        Yminimo<=191;
    end
else if(entrada<1966)
    begin
        Ymaximo<=282;
        Yminimo<=192;
    end
else if(entrada<1977)
    begin
        Ymaximo<=283;
        Yminimo<=193;
    end
else if(entrada<1988)
    begin
        Ymaximo<=284;
        Yminimo<=194;
    end
else if(entrada<1999)
    begin
        Ymaximo<=285;
        Yminimo<=195;
    end
else if(entrada<2010)
    begin
        Ymaximo<=286;
        Yminimo<=196;
    end
else if(entrada<2021)
    begin
        Ymaximo<=287;
        Yminimo<=197;
    end
else if(entrada<2032)
    begin
        Ymaximo<=288;
        Yminimo<=198;
    end
else if(entrada<2043)
    begin
        Ymaximo<=289;
        Yminimo<=199;
    end
else if(entrada<2054)
    begin
        Ymaximo<=290;
        Yminimo<=200;
    end
else if(entrada<2065)
    begin
        Ymaximo<=291;
        Yminimo<=201;
    end
else if(entrada<2076)
    begin
        Ymaximo<=292;
        Yminimo<=202;
    end
else if(entrada<2087)
    begin
        Ymaximo<=293;
        Yminimo<=203;
    end
else if(entrada<2098)
    begin
        Ymaximo<=294;
        Yminimo<=204;
    end
else if(entrada<2109)
    begin
        Ymaximo<=295;
        Yminimo<=205;
    end
else if(entrada<2120)
    begin
        Ymaximo<=296;
        Yminimo<=206;
    end
else if(entrada<2131)
    begin
        Ymaximo<=297;
        Yminimo<=207;
    end
else if(entrada<2142)
    begin
        Ymaximo<=298;
        Yminimo<=208;
    end
else if(entrada<2153)
    begin
        Ymaximo<=299;
        Yminimo<=209;
    end
else if(entrada<2164)
    begin
        Ymaximo<=300;
        Yminimo<=210;
    end
else if(entrada<2175)
    begin
        Ymaximo<=301;
        Yminimo<=211;
    end
else if(entrada<2186)
    begin
        Ymaximo<=302;
        Yminimo<=212;
    end
else if(entrada<2197)
    begin
        Ymaximo<=303;
        Yminimo<=213;
    end
else if(entrada<2208)
    begin
        Ymaximo<=304;
        Yminimo<=214;
    end
else if(entrada<2219)
    begin
        Ymaximo<=305;
        Yminimo<=215;
    end
else if(entrada<2230)
    begin
        Ymaximo<=306;
        Yminimo<=216;
    end
else if(entrada<2241)
    begin
        Ymaximo<=307;
        Yminimo<=217;
    end
else if(entrada<2252)
    begin
        Ymaximo<=308;
        Yminimo<=218;
    end
else if(entrada<2263)
    begin
        Ymaximo<=309;
        Yminimo<=219;
    end
else if(entrada<2274)
    begin
        Ymaximo<=310;
        Yminimo<=220;
    end
else if(entrada<2285)
    begin
        Ymaximo<=311;
        Yminimo<=221;
    end
else if(entrada<2296)
    begin
        Ymaximo<=312;
        Yminimo<=222;
    end
else if(entrada<2307)
    begin
        Ymaximo<=313;
        Yminimo<=223;
    end
else if(entrada<2318)
    begin
        Ymaximo<=314;
        Yminimo<=224;
    end
else if(entrada<2329)
    begin
        Ymaximo<=315;
        Yminimo<=225;
    end
else if(entrada<2340)
    begin
        Ymaximo<=316;
        Yminimo<=226;
    end
else if(entrada<2351)
    begin
        Ymaximo<=317;
        Yminimo<=227;
    end
else if(entrada<2362)
    begin
        Ymaximo<=318;
        Yminimo<=228;
    end
else if(entrada<2373)
    begin
        Ymaximo<=319;
        Yminimo<=229;
    end
else if(entrada<2384)
    begin
        Ymaximo<=320;
        Yminimo<=230;
    end
else if(entrada<2395)
    begin
        Ymaximo<=321;
        Yminimo<=231;
    end
else if(entrada<2406)
    begin
        Ymaximo<=322;
        Yminimo<=232;
    end
else if(entrada<2417)
    begin
        Ymaximo<=323;
        Yminimo<=233;
    end
else if(entrada<2428)
    begin
        Ymaximo<=324;
        Yminimo<=234;
    end
else if(entrada<2439)
    begin
        Ymaximo<=325;
        Yminimo<=235;
    end
else if(entrada<2450)
    begin
        Ymaximo<=326;
        Yminimo<=236;
    end
else if(entrada<2461)
    begin
        Ymaximo<=327;
        Yminimo<=237;
    end
else if(entrada<2472)
    begin
        Ymaximo<=328;
        Yminimo<=238;
    end
else if(entrada<2483)
    begin
        Ymaximo<=329;
        Yminimo<=239;
    end
else if(entrada<2494)
    begin
        Ymaximo<=330;
        Yminimo<=240;
    end
else if(entrada<2505)
    begin
        Ymaximo<=331;
        Yminimo<=241;
    end
else if(entrada<2516)
    begin
        Ymaximo<=332;
        Yminimo<=242;
    end
else if(entrada<2527)
    begin
        Ymaximo<=333;
        Yminimo<=243;
    end
else if(entrada<2538)
    begin
        Ymaximo<=334;
        Yminimo<=244;
    end
else if(entrada<2549)
    begin
        Ymaximo<=335;
        Yminimo<=245;
    end
else if(entrada<2560)
    begin
        Ymaximo<=336;
        Yminimo<=246;
    end
else if(entrada<2571)
    begin
        Ymaximo<=337;
        Yminimo<=247;
    end
else if(entrada<2582)
    begin
        Ymaximo<=338;
        Yminimo<=248;
    end
else if(entrada<2593)
    begin
        Ymaximo<=339;
        Yminimo<=249;
    end
else if(entrada<2604)
    begin
        Ymaximo<=340;
        Yminimo<=250;
    end
else if(entrada<2615)
    begin
        Ymaximo<=341;
        Yminimo<=251;
    end
else if(entrada<2626)
    begin
        Ymaximo<=342;
        Yminimo<=252;
    end
else if(entrada<2637)
    begin
        Ymaximo<=343;
        Yminimo<=253;
    end
else if(entrada<2648)
    begin
        Ymaximo<=344;
        Yminimo<=254;
    end
else if(entrada<2659)
    begin
        Ymaximo<=345;
        Yminimo<=255;
    end
else if(entrada<2670)
    begin
        Ymaximo<=346;
        Yminimo<=256;
    end
else if(entrada<2681)
    begin
        Ymaximo<=347;
        Yminimo<=257;
    end
else if(entrada<2692)
    begin
        Ymaximo<=348;
        Yminimo<=258;
    end
else if(entrada<2703)
    begin
        Ymaximo<=349;
        Yminimo<=259;
    end
else if(entrada<2714)
    begin
        Ymaximo<=350;
        Yminimo<=260;
    end
else if(entrada<2725)
    begin
        Ymaximo<=351;
        Yminimo<=261;
    end
else if(entrada<2736)
    begin
        Ymaximo<=352;
        Yminimo<=262;
    end
else if(entrada<2747)
    begin
        Ymaximo<=353;
        Yminimo<=263;
    end
else if(entrada<2758)
    begin
        Ymaximo<=354;
        Yminimo<=264;
    end
else if(entrada<2769)
    begin
        Ymaximo<=355;
        Yminimo<=265;
    end
else if(entrada<2780)
    begin
        Ymaximo<=356;
        Yminimo<=266;
    end
else if(entrada<2791)
    begin
        Ymaximo<=357;
        Yminimo<=267;
    end
else if(entrada<2802)
    begin
        Ymaximo<=358;
        Yminimo<=268;
    end
else if(entrada<2813)
    begin
        Ymaximo<=359;
        Yminimo<=269;
    end
else if(entrada<2824)
    begin
        Ymaximo<=360;
        Yminimo<=270;
    end
else if(entrada<2835)
    begin
        Ymaximo<=361;
        Yminimo<=271;
    end
else if(entrada<2846)
    begin
        Ymaximo<=362;
        Yminimo<=272;
    end
else if(entrada<2857)
    begin
        Ymaximo<=363;
        Yminimo<=273;
    end
else if(entrada<2868)
    begin
        Ymaximo<=364;
        Yminimo<=274;
    end
else if(entrada<2879)
    begin
        Ymaximo<=365;
        Yminimo<=275;
    end
else if(entrada<2890)
    begin
        Ymaximo<=366;
        Yminimo<=276;
    end
else if(entrada<2901)
    begin
        Ymaximo<=367;
        Yminimo<=277;
    end
else if(entrada<2912)
    begin
        Ymaximo<=368;
        Yminimo<=278;
    end
else if(entrada<2923)
    begin
        Ymaximo<=369;
        Yminimo<=279;
    end
else if(entrada<2934)
    begin
        Ymaximo<=370;
        Yminimo<=280;
    end
else if(entrada<2945)
    begin
        Ymaximo<=371;
        Yminimo<=281;
    end
else if(entrada<2956)
    begin
        Ymaximo<=372;
        Yminimo<=282;
    end
else if(entrada<2967)
    begin
        Ymaximo<=373;
        Yminimo<=283;
    end
else if(entrada<2978)
    begin
        Ymaximo<=374;
        Yminimo<=284;
    end
else if(entrada<2989)
    begin
        Ymaximo<=375;
        Yminimo<=285;
    end
else if(entrada<3000)
    begin
        Ymaximo<=376;
        Yminimo<=286;
    end
else if(entrada<3011)
    begin
        Ymaximo<=377;
        Yminimo<=287;
    end
else if(entrada<3022)
    begin
        Ymaximo<=378;
        Yminimo<=288;
    end
else if(entrada<3033)
    begin
        Ymaximo<=379;
        Yminimo<=289;
    end
else if(entrada<3044)
    begin
        Ymaximo<=380;
        Yminimo<=290;
    end
else if(entrada<3055)
    begin
        Ymaximo<=381;
        Yminimo<=291;
    end
else if(entrada<3066)
    begin
        Ymaximo<=382;
        Yminimo<=292;
    end
else if(entrada<3077)
    begin
        Ymaximo<=383;
        Yminimo<=293;
    end
else if(entrada<3088)
    begin
        Ymaximo<=384;
        Yminimo<=294;
    end
else if(entrada<3099)
    begin
        Ymaximo<=385;
        Yminimo<=295;
    end
else if(entrada<3110)
    begin
        Ymaximo<=386;
        Yminimo<=296;
    end
else if(entrada<3121)
    begin
        Ymaximo<=387;
        Yminimo<=297;
    end
else if(entrada<3132)
    begin
        Ymaximo<=388;
        Yminimo<=298;
    end
else if(entrada<3143)
    begin
        Ymaximo<=389;
        Yminimo<=299;
    end
else if(entrada<3154)
    begin
        Ymaximo<=390;
        Yminimo<=300;
    end
else if(entrada<3165)
    begin
        Ymaximo<=391;
        Yminimo<=301;
    end
else if(entrada<3176)
    begin
        Ymaximo<=392;
        Yminimo<=302;
    end
else if(entrada<3187)
    begin
        Ymaximo<=393;
        Yminimo<=303;
    end
else if(entrada<3198)
    begin
        Ymaximo<=394;
        Yminimo<=304;
    end
else if(entrada<3209)
    begin
        Ymaximo<=395;
        Yminimo<=305;
    end
else if(entrada<3220)
    begin
        Ymaximo<=396;
        Yminimo<=306;
    end
else if(entrada<3231)
    begin
        Ymaximo<=397;
        Yminimo<=307;
    end
else if(entrada<3242)
    begin
        Ymaximo<=398;
        Yminimo<=308;
    end
else if(entrada<3253)
    begin
        Ymaximo<=399;
        Yminimo<=309;
    end
else if(entrada<3264)
    begin
        Ymaximo<=400;
        Yminimo<=310;
    end
else if(entrada<3275)
    begin
        Ymaximo<=401;
        Yminimo<=311;
    end
else if(entrada<3286)
    begin
        Ymaximo<=402;
        Yminimo<=312;
    end
else if(entrada<3297)
    begin
        Ymaximo<=403;
        Yminimo<=313;
    end
else if(entrada<3308)
    begin
        Ymaximo<=404;
        Yminimo<=314;
    end
else if(entrada<3319)
    begin
        Ymaximo<=405;
        Yminimo<=315;
    end
else if(entrada<3330)
    begin
        Ymaximo<=406;
        Yminimo<=316;
    end
else if(entrada<3341)
    begin
        Ymaximo<=407;
        Yminimo<=317;
    end
else if(entrada<3352)
    begin
        Ymaximo<=408;
        Yminimo<=318;
    end
else if(entrada<3363)
    begin
        Ymaximo<=409;
        Yminimo<=319;
    end
else if(entrada<3374)
    begin
        Ymaximo<=410;
        Yminimo<=320;
    end
else if(entrada<3385)
    begin
        Ymaximo<=411;
        Yminimo<=321;
    end
else if(entrada<3396)
    begin
        Ymaximo<=412;
        Yminimo<=322;
    end
else if(entrada<3407)
    begin
        Ymaximo<=413;
        Yminimo<=323;
    end
else if(entrada<3418)
    begin
        Ymaximo<=414;
        Yminimo<=324;
    end
else if(entrada<3429)
    begin
        Ymaximo<=415;
        Yminimo<=325;
    end
else if(entrada<3440)
    begin
        Ymaximo<=416;
        Yminimo<=326;
    end
else if(entrada<3451)
    begin
        Ymaximo<=417;
        Yminimo<=327;
    end
else if(entrada<3462)
    begin
        Ymaximo<=418;
        Yminimo<=328;
    end
else if(entrada<3473)
    begin
        Ymaximo<=419;
        Yminimo<=329;
    end
else if(entrada<3484)
    begin
        Ymaximo<=420;
        Yminimo<=330;
    end
else if(entrada<3495)
    begin
        Ymaximo<=421;
        Yminimo<=331;
    end
else if(entrada<3506)
    begin
        Ymaximo<=422;
        Yminimo<=332;
    end
else if(entrada<3517)
    begin
        Ymaximo<=423;
        Yminimo<=333;
    end
else if(entrada<3528)
    begin
        Ymaximo<=424;
        Yminimo<=334;
    end
else if(entrada<3539)
    begin
        Ymaximo<=425;
        Yminimo<=335;
    end
else if(entrada<3550)
    begin
        Ymaximo<=426;
        Yminimo<=336;
    end
else if(entrada<3561)
    begin
        Ymaximo<=427;
        Yminimo<=337;
    end
else if(entrada<3572)
    begin
        Ymaximo<=428;
        Yminimo<=338;
    end
else if(entrada<3583)
    begin
        Ymaximo<=429;
        Yminimo<=339;
    end
else if(entrada<3594)
    begin
        Ymaximo<=430;
        Yminimo<=340;
    end
else if(entrada<3605)
    begin
        Ymaximo<=431;
        Yminimo<=341;
    end
else if(entrada<3616)
    begin
        Ymaximo<=432;
        Yminimo<=342;
    end
else if(entrada<3627)
    begin
        Ymaximo<=433;
        Yminimo<=343;
    end
else if(entrada<3638)
    begin
        Ymaximo<=434;
        Yminimo<=344;
    end
else if(entrada<3649)
    begin
        Ymaximo<=435;
        Yminimo<=345;
    end
else if(entrada<3660)
    begin
        Ymaximo<=436;
        Yminimo<=346;
    end
else if(entrada<3671)
    begin
        Ymaximo<=437;
        Yminimo<=347;
    end
else if(entrada<3682)
    begin
        Ymaximo<=438;
        Yminimo<=348;
    end
else if(entrada<3693)
    begin
        Ymaximo<=439;
        Yminimo<=349;
    end
else if(entrada<3704)
    begin
        Ymaximo<=440;
        Yminimo<=350;
    end
else if(entrada<3715)
    begin
        Ymaximo<=441;
        Yminimo<=351;
    end
else if(entrada<3726)
    begin
        Ymaximo<=442;
        Yminimo<=352;
    end
else if(entrada<3737)
    begin
        Ymaximo<=443;
        Yminimo<=353;
    end
else if(entrada<3748)
    begin
        Ymaximo<=444;
        Yminimo<=354;
    end
else if(entrada<3759)
    begin
        Ymaximo<=445;
        Yminimo<=355;
    end
else if(entrada<3770)
    begin
        Ymaximo<=446;
        Yminimo<=356;
    end
else if(entrada<3781)
    begin
        Ymaximo<=447;
        Yminimo<=357;
    end
else if(entrada<3792)
    begin
        Ymaximo<=448;
        Yminimo<=358;
    end
else if(entrada<3803)
    begin
        Ymaximo<=449;
        Yminimo<=359;
    end
else if(entrada<3814)
    begin
        Ymaximo<=450;
        Yminimo<=360;
    end
else if(entrada<3825)
    begin
        Ymaximo<=451;
        Yminimo<=361;
    end
else if(entrada<3836)
    begin
        Ymaximo<=452;
        Yminimo<=362;
    end
else if(entrada<3847)
    begin
        Ymaximo<=453;
        Yminimo<=363;
    end
else if(entrada<3858)
    begin
        Ymaximo<=454;
        Yminimo<=364;
    end
else if(entrada<3869)
    begin
        Ymaximo<=455;
        Yminimo<=365;
    end
else if(entrada<3880)
    begin
        Ymaximo<=456;
        Yminimo<=366;
    end
else if(entrada<3891)
    begin
        Ymaximo<=457;
        Yminimo<=367;
    end
else if(entrada<3902)
    begin
        Ymaximo<=458;
        Yminimo<=368;
    end
else if(entrada<3913)
    begin
        Ymaximo<=459;
        Yminimo<=369;
    end
else if(entrada<3924)
    begin
        Ymaximo<=460;
        Yminimo<=370;
    end
else if(entrada<3935)
    begin
        Ymaximo<=461;
        Yminimo<=371;
    end
else if(entrada<3946)
    begin
        Ymaximo<=462;
        Yminimo<=372;
    end
else if(entrada<3957)
    begin
        Ymaximo<=463;
        Yminimo<=373;
    end
else if(entrada<3968)
    begin
        Ymaximo<=464;
        Yminimo<=374;
    end
else if(entrada<3979)
    begin
        Ymaximo<=465;
        Yminimo<=375;
    end
else if(entrada<3990)
    begin
        Ymaximo<=466;
        Yminimo<=376;
    end
else if(entrada<4001)
    begin
        Ymaximo<=467;
        Yminimo<=377;
    end
else if(entrada<4012)
    begin
        Ymaximo<=468;
        Yminimo<=378;
    end
else if(entrada<4023)
    begin
        Ymaximo<=469;
        Yminimo<=379;
    end
else if(entrada<4034)
    begin
        Ymaximo<=470;
        Yminimo<=380;
    end
else if(entrada<4045)
    begin
        Ymaximo<=471;
        Yminimo<=381;
    end
else if(entrada<4056)
    begin
        Ymaximo<=472;
        Yminimo<=382;
    end
else if(entrada<4067)
    begin
        Ymaximo<=473;
        Yminimo<=383;
    end
else if(entrada<4078)
    begin
        Ymaximo<=474;
        Yminimo<=384;
    end
else
    begin
        Ymaximo<=475;
        Yminimo<=385;
    end



end
endmodule
