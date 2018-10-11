//Maya ASCII 2018 scene
//Name: ramp_coll.ma
//Last modified: Thu, Oct 04, 2018 04:14:59 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pCube13";
	rename -uid "CD39ED85-4C32-9460-8F96-8F999D532D75";
	setAttr ".t" -type "double3" -7.2466484985610284 -1.5275100077437678 4.9452325012434883 ;
createNode mesh -n "pCubeShape11" -p "pCube13";
	rename -uid "BDA8D453-4E2F-0744-2D6A-13AF81F57096";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.19087791 -0.66411608 
		0 -0.19087791 -0.66411608 0 0.82853484 -6.2411151 0 0.82853484 -6.2411151 0 0.82853484 
		-0.82155967 0 0.82853484 -0.82155967 0 -0.19087791 -0.82155967 0 -0.19087791 -0.82155967;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode polyCube -n "polyCube1";
	rename -uid "E35B9DC2-4FD1-63D6-062C-108491D7DFE0";
	setAttr ".w" 0.89597951478310378;
	setAttr ".h" 2.9231834935404604;
	setAttr ".d" 5.8471592511180717;
	setAttr ".cuv" 4;
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
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyCube1.out" "pCubeShape11.i";
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
// End of ramp_coll.ma
