//Maya ASCII 2018 scene
//Name: lift.ma
//Last modified: Fri, Oct 12, 2018 07:53:15 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pCube20";
	rename -uid "AE2B0117-469D-8EB6-0F8F-E6A4CE20A548";
	setAttr ".t" -type "double3" 1.9605250832801886 -5.2994870858812968 -1.4507495618236126 ;
	setAttr ".rp" -type "double3" 0.35709471728743836 0.028782816472117112 0.12786395921958027 ;
	setAttr ".sp" -type "double3" 0.35709471728743836 0.028782816472117112 0.12786395921958027 ;
createNode transform -n "transform7" -p "pCube20";
	rename -uid "C8984C33-4C3A-6B55-3608-45BAFC2D2ECF";
	setAttr ".v" no;
createNode mesh -n "pCubeShape19" -p "transform7";
	rename -uid "16980709-4CD2-58CD-D40E-CD8FEA0A14F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2869997 0 0.59953469 2.0140371 
		2.9802322e-08 0.59953469 -1.2869997 0 0.59953469 2.0140371 2.9802322e-08 0.59953469 
		-1.2869997 0 -0.38992357 2.0140371 2.9802322e-08 -0.38992357 -1.2869997 0 -0.38992357 
		2.0140371 2.9802322e-08 -0.38992357;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1";
	rename -uid "832A26B5-433A-57F2-4800-D4A4308CF52F";
	setAttr ".t" -type "double3" 2.2833053636002547 -6.1918092234792512 -1.3289079054722028 ;
	setAttr ".s" -type "double3" 0.51939600773493555 0.51939600773493555 0.51939600773493555 ;
	setAttr ".rp" -type "double3" 0 0.86353926498315781 0 ;
	setAttr ".sp" -type "double3" 0 1.6625835626827732 0 ;
	setAttr ".spt" -type "double3" 0 -0.79904429769961594 0 ;
createNode transform -n "transform8" -p "pCylinder1";
	rename -uid "3F4F5170-417C-2D08-3636-19BAB8379A6C";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform8";
	rename -uid "31E204F1-4837-539F-3ADB-7B8A345EAB94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  0 -0.33847868 0 0 -0.33847868 
		0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 
		0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 
		-0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 0 0 -0.33847868 
		0 0 -0.33847868 0 0 -0.33847868 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 
		0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 
		-0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 
		0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 0 -0.35711145 0 
		0 -0.35711145 0 0 -0.33847868 0 0 -0.35711145 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube21";
	rename -uid "51BC3E1D-49DC-B76C-339B-9DA20FB8F753";
	setAttr ".t" -type "double3" 1.9605250832801886 -7.445417852940623 -1.4507495618236126 ;
	setAttr ".rp" -type "double3" 0.35709471728743836 0.028782816472117112 0.12786395921958027 ;
	setAttr ".sp" -type "double3" 0.35709471728743836 0.028782816472117112 0.12786395921958027 ;
createNode transform -n "transform9" -p "pCube21";
	rename -uid "9391C382-4B1A-B685-B578-4EAD96C0BB6C";
	setAttr ".v" no;
createNode mesh -n "pCubeShape21" -p "transform9";
	rename -uid "138D8FE5-4750-EA83-0DBF-C0814615745A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.2869997 0 0.59953469 2.0140371 
		2.9802322e-08 0.59953469 -1.2869997 0 0.59953469 2.0140371 2.9802322e-08 0.59953469 
		-1.2869997 0 -0.38992357 2.0140371 2.9802322e-08 -0.38992357 -1.2869997 0 -0.38992357 
		2.0140371 2.9802322e-08 -0.38992357;
	setAttr -s 8 ".vt[0:7]"  -0.35709465 -0.028783033 0.12786397 0.35709465 -0.028783033 0.12786397
		 -0.35709465 0.028783033 0.12786397 0.35709465 0.028783033 0.12786397 -0.35709465 0.028783033 -0.12786397
		 0.35709465 0.028783033 -0.12786397 -0.35709465 -0.028783033 -0.12786397 0.35709465 -0.028783033 -0.12786397;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube22";
	rename -uid "4E2F763D-4397-CD94-37F1-01A69B6ABBEC";
	setAttr ".rp" -type "double3" 2.3240438577896185 -6.3724524545097987 -1.3459440327060284 ;
	setAttr ".sp" -type "double3" 2.3240438577896185 -6.3724524545097987 -1.3459440327060284 ;
createNode mesh -n "pCube22Shape" -p "pCube22";
	rename -uid "51FB9FBA-4FD7-10A0-F162-E9B08710DFBA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63584423065185547 0.32836949080228806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "41A08B55-40B4-A394-AD03-7195207BC544";
	setAttr ".uopa" yes;
	setAttr -s 88 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[1]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[2]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[3]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[4]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[5]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[6]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[7]" -type "float2" -0.2539607 -0.44886082 ;
	setAttr ".uvtk[8]" -type "float2" -0.80887109 0.10942864 ;
	setAttr ".uvtk[9]" -type "float2" -0.81802189 0.10027784 ;
	setAttr ".uvtk[10]" -type "float2" -0.47851658 -0.23922746 ;
	setAttr ".uvtk[11]" -type "float2" -0.46936578 -0.23007669 ;
	setAttr ".uvtk[12]" -type "float2" -0.825284 0.09301573 ;
	setAttr ".uvtk[13]" -type "float2" -0.48577869 -0.24648957 ;
	setAttr ".uvtk[14]" -type "float2" -0.79872733 0.1195724 ;
	setAttr ".uvtk[15]" -type "float2" -0.45922202 -0.21993293 ;
	setAttr ".uvtk[16]" -type "float2" -0.78858358 0.12971616 ;
	setAttr ".uvtk[17]" -type "float2" -0.44907826 -0.20978917 ;
	setAttr ".uvtk[18]" -type "float2" -0.77943283 0.13886689 ;
	setAttr ".uvtk[19]" -type "float2" -0.43992752 -0.20063843 ;
	setAttr ".uvtk[20]" -type "float2" -0.77217072 0.146129 ;
	setAttr ".uvtk[21]" -type "float2" -0.43266541 -0.19337632 ;
	setAttr ".uvtk[22]" -type "float2" -0.67618525 0.24211453 ;
	setAttr ".uvtk[23]" -type "float2" -0.68533611 0.23296367 ;
	setAttr ".uvtk[24]" -type "float2" -0.3458308 -0.10654169 ;
	setAttr ".uvtk[25]" -type "float2" -0.33667994 -0.097390831 ;
	setAttr ".uvtk[26]" -type "float2" -0.69547981 0.22281991 ;
	setAttr ".uvtk[27]" -type "float2" -0.3559745 -0.11668541 ;
	setAttr ".uvtk[28]" -type "float2" -0.66892314 0.24937664 ;
	setAttr ".uvtk[29]" -type "float2" -0.32941782 -0.09012872 ;
	setAttr ".uvtk[30]" -type "float2" -0.70562357 0.21267615 ;
	setAttr ".uvtk[31]" -type "float2" -0.36611825 -0.12682916 ;
	setAttr ".uvtk[32]" -type "float2" -0.71477431 0.20352541 ;
	setAttr ".uvtk[33]" -type "float2" -0.375269 -0.13597991 ;
	setAttr ".uvtk[34]" -type "float2" -0.72203642 0.1962633 ;
	setAttr ".uvtk[35]" -type "float2" -0.38253111 -0.14324202 ;
	setAttr ".uvtk[36]" -type "float2" 0.28349113 -0.44886082 ;
	setAttr ".uvtk[37]" -type "float2" 0.28349113 -0.44886082 ;
	setAttr ".uvtk[38]" -type "float2" 0.28349102 -0.44886082 ;
	setAttr ".uvtk[39]" -type "float2" 0.28349102 -0.44886082 ;
	setAttr ".uvtk[40]" -type "float2" 0.28349108 -0.44886082 ;
	setAttr ".uvtk[41]" -type "float2" 0.28349108 -0.44886082 ;
	setAttr ".uvtk[42]" -type "float2" 0.28349102 -0.44886082 ;
	setAttr ".uvtk[43]" -type "float2" 0.28349102 -0.44886082 ;
	setAttr ".uvtk[44]" -type "float2" 0.017718188 0 ;
	setAttr ".uvtk[45]" -type "float2" 0.017718188 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.017718185 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.017718185 0 ;
	setAttr ".uvtk[52]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[53]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[54]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[55]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[56]" -type "float2" -0.029530298 0 ;
	setAttr ".uvtk[57]" -type "float2" -0.029530298 0 ;
	setAttr ".uvtk[58]" -type "float2" -0.029530298 0 ;
	setAttr ".uvtk[59]" -type "float2" -0.029530298 0 ;
	setAttr ".uvtk[64]" -type "float2" -0.20994882 0 ;
	setAttr ".uvtk[65]" -type "float2" -0.20994882 0 ;
	setAttr ".uvtk[66]" -type "float2" -0.20994882 0 ;
	setAttr ".uvtk[67]" -type "float2" -0.20994882 0 ;
	setAttr ".uvtk[68]" -type "float2" -0.42689264 -0.18760391 ;
	setAttr ".uvtk[69]" -type "float2" -0.41774184 -0.17845304 ;
	setAttr ".uvtk[70]" -type "float2" -0.75724715 0.16105227 ;
	setAttr ".uvtk[71]" -type "float2" -0.76639795 0.15190141 ;
	setAttr ".uvtk[72]" -type "float2" -0.40759808 -0.16830929 ;
	setAttr ".uvtk[73]" -type "float2" -0.74710339 0.17119603 ;
	setAttr ".uvtk[74]" -type "float2" -0.39745438 -0.15816565 ;
	setAttr ".uvtk[75]" -type "float2" -0.7369597 0.18133967 ;
	setAttr ".uvtk[76]" -type "float2" -0.38830352 -0.14901479 ;
	setAttr ".uvtk[77]" -type "float2" -0.72780883 0.19049053 ;
	setAttr ".uvtk[78]" -type "float2" -0.62456143 0.29373831 ;
	setAttr ".uvtk[79]" -type "float2" -0.63371223 0.2845875 ;
	setAttr ".uvtk[80]" -type "float2" -0.29420692 -0.054917816 ;
	setAttr ".uvtk[81]" -type "float2" -0.28505611 -0.045767013 ;
	setAttr ".uvtk[82]" -type "float2" -0.64385599 0.27444375 ;
	setAttr ".uvtk[83]" -type "float2" -0.30435067 -0.065061569 ;
	setAttr ".uvtk[84]" -type "float2" -0.65399975 0.26429999 ;
	setAttr ".uvtk[85]" -type "float2" -0.31449443 -0.075205326 ;
	setAttr ".uvtk[86]" -type "float2" -0.66315055 0.25514922 ;
	setAttr ".uvtk[87]" -type "float2" -0.32364523 -0.084356129 ;
	setAttr ".uvtk[88]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[89]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[90]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[91]" -type "float2" -0.011812115 0 ;
	setAttr ".uvtk[92]" -type "float2" -0.25396067 0 ;
	setAttr ".uvtk[93]" -type "float2" -0.25396067 0 ;
	setAttr ".uvtk[94]" -type "float2" -0.25396064 0 ;
	setAttr ".uvtk[95]" -type "float2" -0.25396064 0 ;
createNode polyMapDel -n "polyMapDel10";
	rename -uid "DFABB67C-40E8-5BC4-CC4F-BEA13D5B20E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[26:65]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "223FD788-4CF5-A344-04A9-4891AB1318DA";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[94]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[97]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[98]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[99]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[100]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[101]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[130]" -type "float2" 0.076778807 0 ;
	setAttr ".uvtk[131]" -type "float2" 0.076778807 0 ;
	setAttr ".uvtk[132]" -type "float2" 0.076778807 0 ;
	setAttr ".uvtk[133]" -type "float2" 0.076778807 0 ;
	setAttr ".uvtk[134]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[135]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[136]" -type "float2" 0.076778837 0 ;
	setAttr ".uvtk[137]" -type "float2" 0.076778837 0 ;
createNode polyAutoProj -n "polyAutoProj10";
	rename -uid "147396D1-414E-0CDF-0041-E38334188A79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 4.0152262449264526 4.0152262449264526 4.0152262449264526 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupParts -n "groupParts13";
	rename -uid "417B0A76-4538-B4A5-1805-49A58827B9B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:71]";
createNode polyUnite -n "polyUnite3";
	rename -uid "958B3088-4AAC-0B89-B195-3990DB0DF3EE";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId24";
	rename -uid "E92DB9C0-4E41-BDCD-826F-21A290EC4F9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "BD021319-4476-4449-00A1-1F8C6DF6763E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "0D9FECAD-4DBA-1B6C-802F-A18D58EF44E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyCylinder -n "polyCylinder2";
	rename -uid "8B09EBB8-4C23-82E7-6D68-6BA534A97274";
	setAttr ".r" 0.38875570708492641;
	setAttr ".h" 4.0393891866311842;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId26";
	rename -uid "93D4B52D-4609-BD71-8D9C-4CA9E229958F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "3E526533-46E6-3074-F6A7-DB9F59456FED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "E4DDD1DF-47BF-7620-9E55-78B39A01A1F6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "polyCube7";
	rename -uid "F6427FB9-4F70-1AB1-EAC1-FA9E001E8D01";
	setAttr ".w" 0.71418926198681199;
	setAttr ".h" 0.057566063906242144;
	setAttr ".d" 0.25572795692519534;
	setAttr ".cuv" 4;
createNode groupId -n "groupId28";
	rename -uid "0C152E4C-4BE9-1EB3-EA47-7996BDF26A4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "8276F21B-4A1C-23EE-38FF-93AB3C6AC99A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "69960702-426C-AC4C-A0F2-779D0E525CE3";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 34 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 20 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupParts12.og" "pCubeShape19.i";
connectAttr "groupId28.id" "pCubeShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape19.iog.og[0].gco";
connectAttr "groupId29.id" "pCubeShape19.ciog.cog[0].cgid";
connectAttr "groupParts11.og" "pCylinderShape1.i";
connectAttr "groupId26.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId27.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId24.id" "pCubeShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape21.iog.og[0].gco";
connectAttr "groupId25.id" "pCubeShape21.ciog.cog[0].cgid";
connectAttr "polyTweakUV13.out" "pCube22Shape.i";
connectAttr "groupId30.id" "pCube22Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube22Shape.iog.og[0].gco";
connectAttr "polyTweakUV13.uvtk[0]" "pCube22Shape.uvst[0].uvtw";
connectAttr "polyMapDel10.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV12.out" "polyMapDel10.ip";
connectAttr "polyAutoProj10.out" "polyTweakUV12.ip";
connectAttr "groupParts13.og" "polyAutoProj10.ip";
connectAttr "pCube22Shape.wm" "polyAutoProj10.mp";
connectAttr "polyUnite3.out" "groupParts13.ig";
connectAttr "groupId30.id" "groupParts13.gi";
connectAttr "pCubeShape21.o" "polyUnite3.ip[0]";
connectAttr "pCylinderShape1.o" "polyUnite3.ip[1]";
connectAttr "pCubeShape19.o" "polyUnite3.ip[2]";
connectAttr "pCubeShape21.wm" "polyUnite3.im[0]";
connectAttr "pCylinderShape1.wm" "polyUnite3.im[1]";
connectAttr "pCubeShape19.wm" "polyUnite3.im[2]";
connectAttr "polyCylinder2.out" "groupParts11.ig";
connectAttr "groupId26.id" "groupParts11.gi";
connectAttr "polyCube7.out" "groupParts12.ig";
connectAttr "groupId28.id" "groupParts12.gi";
connectAttr "pCubeShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube22Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
// End of lift.ma
