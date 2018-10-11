//Maya ASCII 2018 scene
//Name: club_kid.ma
//Last modified: Thu, Oct 11, 2018 01:02:12 AM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "39EE0ACC-465B-2BCA-E30E-E3827F0E10F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3390565844241538 20.411153200276448 19.290629375346466 ;
	setAttr ".r" -type "double3" -6.3383527296348259 366.59999999992397 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "774E3691-4AB8-70F7-A1EC-59BAC410D4E9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.504612717155531;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F9ED03D1-4E44-0F7A-CD3A-61BCA633AFF8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "10150EBD-4A97-9D28-1F64-CCB11F1BA324";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3A09A675-4147-A180-E5D8-089C3DB7EEF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5F4841D1-4628-A724-FD0F-EBA1EB88FB99";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "8D3A6089-43D5-DE1A-1DF9-ED84DC5BEC11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "48BC1545-4A70-70BE-AA40-93BE80C64923";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "CCD18C7F-426F-3103-868B-B180732F3F28";
	setAttr ".t" -type "double3" 2.5 2.25 0 ;
	setAttr ".rp" -type "double3" 0 -2.25 0 ;
	setAttr ".sp" -type "double3" 0 -2.25 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "1B0D2F68-4394-3C4E-0DEB-DE89C7F80019";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.77083343267440796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "77DCAF2A-4B81-9CB3-0EC7-EF90662B9427";
	setAttr ".t" -type "double3" -2.5 2.25 0 ;
	setAttr ".rp" -type "double3" 0 -2.25 0 ;
	setAttr ".sp" -type "double3" 0 -2.25 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "2E1B4ED5-4E5A-299E-D042-0F92CE995B93";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 223 ".uvst[0].uvsp[0:222]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.27083334 0.4375 0.27083334 0.5 0.27083334 0.5625 0.27083334 0.625 0.27083334 0.375
		 0.29166669 0.4375 0.29166669 0.5 0.29166669 0.5625 0.29166669 0.625 0.29166669 0.375
		 0.31250003 0.4375 0.31250003 0.5 0.31250003 0.5625 0.31250003 0.625 0.31250003 0.375
		 0.33333337 0.4375 0.33333337 0.5 0.33333337 0.5625 0.33333337 0.625 0.33333337 0.375
		 0.35416672 0.4375 0.35416672 0.5 0.35416672 0.5625 0.35416672 0.625 0.35416672 0.375
		 0.37500006 0.4375 0.37500006 0.5 0.37500006 0.5625 0.37500006 0.625 0.37500006 0.375
		 0.3958334 0.4375 0.3958334 0.5 0.3958334 0.5625 0.3958334 0.625 0.3958334 0.375 0.41666675
		 0.4375 0.41666675 0.5 0.41666675 0.5625 0.41666675 0.625 0.41666675 0.375 0.43750009
		 0.4375 0.43750009 0.5 0.43750009 0.5625 0.43750009 0.625 0.43750009 0.375 0.45833343
		 0.4375 0.45833343 0.5 0.45833343 0.5625 0.45833343 0.625 0.45833343 0.375 0.47916678
		 0.4375 0.47916678 0.5 0.47916678 0.5625 0.47916678 0.625 0.47916678 0.375 0.50000012
		 0.4375 0.50000012 0.5 0.50000012 0.5625 0.50000012 0.625 0.50000012 0.375 0.75000012
		 0.4375 0.75000012 0.5 0.75000012 0.5625 0.75000012 0.625 0.75000012 0.375 0.77083343
		 0.4375 0.77083343 0.5 0.77083343 0.5625 0.77083343 0.625 0.77083343 0.375 0.79166675
		 0.4375 0.79166675 0.5 0.79166675 0.5625 0.79166675 0.625 0.79166675 0.375 0.81250006
		 0.4375 0.81250006 0.5 0.81250006 0.5625 0.81250006 0.625 0.81250006 0.375 0.83333337
		 0.4375 0.83333337 0.5 0.83333337 0.5625 0.83333337 0.625 0.83333337 0.375 0.85416669
		 0.4375 0.85416669 0.5 0.85416669 0.5625 0.85416669 0.625 0.85416669 0.375 0.875 0.4375
		 0.875 0.5 0.875 0.5625 0.875 0.625 0.875 0.375 0.89583331 0.4375 0.89583331 0.5 0.89583331
		 0.5625 0.89583331 0.625 0.89583331 0.375 0.91666663 0.4375 0.91666663 0.5 0.91666663
		 0.5625 0.91666663 0.625 0.91666663 0.375 0.93749994 0.4375 0.93749994 0.5 0.93749994
		 0.5625 0.93749994 0.625 0.93749994 0.375 0.95833325 0.4375 0.95833325 0.5 0.95833325
		 0.5625 0.95833325 0.625 0.95833325 0.375 0.97916657 0.4375 0.97916657 0.5 0.97916657
		 0.5625 0.97916657 0.625 0.97916657 0.375 0.99999988 0.4375 0.99999988 0.5 0.99999988
		 0.5625 0.99999988 0.625 0.99999988 0.875 0 0.85416669 0 0.83333337 0 0.81250006 0
		 0.79166675 0 0.77083343 0 0.75000012 0 0.72916681 0 0.70833349 0 0.68750018 0 0.66666687
		 0 0.64583355 0 0.875 0.25 0.85416669 0.25 0.83333337 0.25 0.81250006 0.25 0.79166675
		 0.25 0.77083343 0.25 0.75000012 0.25 0.72916681 0.25 0.70833349 0.25 0.68750018 0.25
		 0.66666687 0.25 0.64583355 0.25 0.125 0 0.14583333 0 0.16666666 0 0.18749999 0 0.20833331
		 0 0.22916664 0 0.24999997 0 0.27083331 0 0.29166666 0 0.3125 0 0.33333334 0 0.35416669
		 0 0.125 0.25 0.14583333 0.25 0.16666666 0.25 0.18749999 0.25 0.20833331 0.25 0.22916664
		 0.25 0.24999997 0.25 0.27083331 0.25 0.29166666 0.25 0.3125 0.25 0.33333334 0.25
		 0.35416669 0.25 0.375 0.75000012 0.4375 0.75000012 0.375 0.77083343 0.5 0.75000012
		 0.5625 0.75000012 0.625 0.75000012 0.4375 0.79166675 0.375 0.79166675 0.5 0.79166675
		 0.5625 0.79166675 0.625 0.77083343 0.625 0.79166675 0.875 0 0.875 0.25 0.85416669
		 0.25 0.85416669 0 0.375 0.75000012 0.4375 0.75000012 0.375 0.77083343 0.5 0.75000012
		 0.5625 0.75000012 0.625 0.75000012 0.625 0.77083343 0.4375 0.79166675 0.375 0.79166675
		 0.5 0.79166675 0.5625 0.79166675 0.625 0.79166675 0.375 0.79166675 0.4375 0.79166675
		 0.5 0.79166675 0.5625 0.79166675 0.625 0.79166675 0.625 0.77083343 0.625 0.75000012
		 0.5625 0.75000012 0.5 0.75000012 0.4375 0.75000012 0.375 0.75000012 0.375 0.77083343;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -0.50682688 -2.25 3.75 -0.25341344 -2.25 3.75 0 -2.25 3.75
		 0.25341344 -2.25 3.75 0.50682688 -2.25 3.75 -0.50682688 -1.472651 3.75 -0.25341344 -1.472651 3.75
		 0 -1.472651 3.75 0.25341344 -1.472651 3.75 0.50682688 -1.472651 3.75 -1 -1.078207493 3.125
		 -0.5 -1.078207493 3.125 0 -1.078207493 3.125 0.5 -1.078207493 3.125 1 -1.078207493 3.125
		 -1 -0.8885262 2.5 -0.5 -0.8885262 2.5 0 -0.8885262 2.5 0.5 -0.8885262 2.5 1 -0.8885262 2.5
		 -1 -0.5623405 1.87500012 -0.5 -0.5623405 1.87500012 0 -0.5623405 1.87500012 0.5 -0.5623405 1.87500012
		 1 -0.5623405 1.87500012 -1 0.039683342 1.25 -0.5 0.039683342 1.25 0 0.039683342 1.25
		 0.5 0.039683342 1.25 1 0.039683342 1.25 -1 0.84730244 0.625 -0.5 0.84730244 0.625
		 0 0.84730244 0.625 0.5 0.84730244 0.625 1 0.84730244 0.625 -1 1.50819945 0 -0.5 1.50819945 0
		 0 1.50819945 0 0.5 1.50819945 0 1 1.50819945 0 -1 2.17029309 -0.625 -0.5 2.17029309 -0.625
		 0 2.17029309 -0.625 0.5 2.17029309 -0.625 1 2.17029309 -0.625 -1 3.74633288 -1.25
		 -0.5 3.74633288 -1.25 0 3.74633288 -1.25 0.5 3.74633288 -1.25 1 3.74633288 -1.25
		 -1 3.74633288 -1.875 -0.5 3.74633288 -1.875 0 3.74633288 -1.875 0.5 3.74633288 -1.875
		 1 3.74633288 -1.875 -1 3.74633288 -2.5 -0.5 3.74633288 -2.5 0 3.74633288 -2.5 0.5 3.74633288 -2.5
		 1 3.74633288 -2.5 -1 3.74633288 -3.125 -0.5 3.74633288 -3.125 0 3.74633288 -3.125
		 0.5 3.74633288 -3.125 1 3.74633288 -3.125 -1 3.74633288 -3.75 -0.5 3.74633288 -3.75
		 0 3.74633288 -3.75 0.5 3.74633288 -3.75 1 3.74633288 -3.75 -1 0.054543018 -3.75 -0.5 0.054543018 -3.75
		 0 0.054543018 -3.75 0.5 0.054543018 -3.75 1 0.054543018 -3.75 -1 0.054543018 -3.125
		 1 0.054543018 -3.125 -1 0.054543018 -2.5 -0.5 0.054543018 -2.5 0 0.054543018 -2.5
		 0.5 0.054543018 -2.5 1 0.054543018 -2.5 -1 0.054543018 -1.875 -0.5 0.054543018 -1.875
		 0 0.054543018 -1.875 0.5 0.054543018 -1.875 1 0.054543018 -1.875 -1 0.054543018 -1.25
		 -0.5 0.054543018 -1.25 0 0.054543018 -1.25 0.5 0.054543018 -1.25 1 0.054543018 -1.25
		 -1 -0.36009455 -0.625 -0.5 -0.36009455 -0.625 0 -0.36009455 -0.625 0.5 -0.36009455 -0.625
		 1 -0.36009455 -0.625 -1 -0.94920218 0 -0.5 -0.94920218 0 0 -0.94920218 0 0.5 -0.94920218 0
		 1 -0.94920218 0 -1 -1.83743715 0.625 -0.5 -1.83743715 0.625 0 -1.83743715 0.625 0.5 -1.83743715 0.625
		 1 -1.83743715 0.625 -1 -2.25 1.25 -0.5 -2.25 1.25 0 -2.25 1.25 0.5 -2.25 1.25 1 -2.25 1.25
		 -1 -2.25 1.87500012 -0.5 -2.25 1.87500012 0 -2.25 1.87500012 0.5 -2.25 1.87500012
		 1 -2.25 1.87500012 -1 -2.25 2.5 -0.5 -2.25 2.5 0 -2.25 2.5 0.5 -2.25 2.5 1 -2.25 2.5
		 -1 -2.25 3.125 -0.5 -2.25 3.125 0 -2.25 3.125 0.5 -2.25 3.125 1 -2.25 3.125 -1 0.054543018 -3.75
		 -0.5 0.054543018 -3.75 -1 0.054543018 -3.125 0 0.054543018 -3.75 0.5 0.054543018 -3.75
		 1 0.054543018 -3.75 1 0.054543018 -3.125 -0.5 0.054543018 -2.5 -1 0.054543018 -2.5
		 0 0.054543018 -2.5 0.5 0.054543018 -2.5 1 0.054543018 -2.5 1 3.74633288 -3.75 1 3.74633288 -3.125
		 -1 -2.25 -3.75 -0.5 -2.25 -3.75 -0.5 -2.25 -3.125 -1 -2.25 -3.125 0 -2.25 -3.75 0 -2.25 -3.125
		 0.5 -2.25 -3.75 0.5 -2.25 -3.125 1 -2.25 -3.75 1 -2.25 -3.125 -0.5 -2.25 -2.5 -1 -2.25 -2.5
		 0 -2.25 -2.5 0.5 -2.25 -2.5 1 -2.25 -2.5 -1 -2.067794323 -2.5 -0.5 -2.067794323 -2.5
		 0 -2.067794323 -2.5 0.5 -2.067794323 -2.5 1 -2.067794323 -2.5 1 -2.067794323 -3.125
		 1 -2.067794323 -3.75 0.5 -2.067794323 -3.75 0 -2.067794323 -3.75 -0.5 -2.067794323 -3.75;
	setAttr ".vt[166:167]" -1 -2.067794323 -3.75 -1 -2.067794323 -3.125;
	setAttr -s 332 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0 8 9 0 10 11 1
		 11 12 1 12 13 1 13 14 1 15 16 1 16 17 1 17 18 1 18 19 1 20 21 1 21 22 1 22 23 1 23 24 1
		 25 26 1 26 27 1 27 28 1 28 29 1 30 31 1 31 32 1 32 33 1 33 34 1 35 36 1 36 37 1 37 38 1
		 38 39 1 40 41 1 41 42 1 42 43 1 43 44 1 45 46 1 46 47 1 47 48 1 48 49 1 50 51 1 51 52 1
		 52 53 1 53 54 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 1 61 62 1 62 63 1 63 64 1 65 66 0
		 66 67 0 67 68 0 68 69 0 70 71 0 71 72 0 72 73 0 73 74 0 77 78 0 78 79 0 79 80 0 80 81 0
		 82 83 1 83 84 1 84 85 1 85 86 1 87 88 1 88 89 1 89 90 1 90 91 1 92 93 1 93 94 1 94 95 1
		 95 96 1 97 98 1 98 99 1 99 100 1 100 101 1 102 103 1 103 104 1 104 105 1 105 106 1
		 107 108 1 108 109 1 109 110 1 110 111 1 112 113 1 113 114 1 114 115 1 115 116 1 117 118 1
		 118 119 1 119 120 1 120 121 1 122 123 1 123 124 1 124 125 1 125 126 1 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 20 0 16 21 1 17 22 1 18 23 1 19 24 0 20 25 0 21 26 1 22 27 1 23 28 1 24 29 0
		 25 30 0 26 31 1 27 32 1 28 33 1 29 34 0 30 35 0 31 36 1 32 37 1 33 38 1 34 39 0 35 40 0
		 36 41 1 37 42 1 38 43 1 39 44 0 40 45 0 41 46 1 42 47 1 43 48 1 44 49 0 45 50 0 46 51 1
		 47 52 1 48 53 1 49 54 0 50 55 0 51 56 1 52 57 1 53 58 1 54 59 0 55 60 0 56 61 1 57 62 1
		 58 63 1 59 64 0 60 65 0 61 66 1 62 67 1 63 68 1 64 69 0 65 70 0;
	setAttr ".ed[166:331]" 66 71 1 67 72 1 68 73 1 69 74 0 70 75 0 75 77 0 76 81 0
		 77 82 0 78 83 1 79 84 1 80 85 1 81 86 0 82 87 0 83 88 1 84 89 1 85 90 1 86 91 0 87 92 0
		 88 93 1 89 94 1 90 95 1 91 96 0 92 97 0 93 98 1 94 99 1 95 100 1 96 101 0 97 102 0
		 98 103 1 99 104 1 100 105 1 101 106 0 102 107 0 103 108 1 104 109 1 105 110 1 106 111 0
		 107 112 0 108 113 1 109 114 1 110 115 1 111 116 0 112 117 0 113 118 1 114 119 1 115 120 1
		 116 121 0 117 122 0 118 123 1 119 124 1 120 125 1 121 126 0 122 0 0 123 1 1 124 2 1
		 125 3 1 126 4 0 76 64 0 81 59 1 86 54 1 91 49 1 96 44 1 101 39 1 106 34 1 111 29 1
		 116 24 1 121 19 1 126 14 1 75 60 1 77 55 1 82 50 1 87 45 1 92 40 1 97 35 1 102 30 1
		 107 25 1 112 20 1 117 15 1 122 10 1 70 127 0 71 128 0 127 128 0 75 129 0 127 129 0
		 72 130 0 128 130 0 73 131 0 130 131 0 74 132 0 131 132 0 76 133 0 132 133 1 78 134 0
		 77 135 0 135 134 0 129 135 0 79 136 0 134 136 0 80 137 0 136 137 0 81 138 0 133 138 0
		 137 138 0 69 139 0 139 132 0 64 140 0 140 139 0 133 140 0 127 166 0 128 165 1 141 142 0
		 142 143 1 129 167 1 144 143 1 141 144 0 130 164 1 142 145 0 145 146 1 143 146 1 131 163 1
		 145 147 0 147 148 1 146 148 1 132 162 0 147 149 0 133 161 1 149 150 0 148 150 1 134 157 1
		 143 151 1 135 156 0 152 151 0 144 152 0 136 158 1 146 153 1 151 153 0 137 159 1 148 154 1
		 153 154 0 138 160 0 150 155 0 154 155 0 156 152 0 157 151 1 156 157 1 158 153 1 157 158 1
		 159 154 1 158 159 1 160 155 0 159 160 1 161 150 1 160 161 1 162 149 0 161 162 1 163 147 1
		 162 163 1 164 145 1 163 164 1 165 142 1 164 165 1 166 141 0 165 166 1 167 144 1 166 167 1
		 167 156 1;
	setAttr -s 166 -ch 664 ".fc[0:165]" -type "polyFaces" 
		f 4 0 101 -5 -101
		mu 0 4 0 1 6 5
		f 4 1 102 -6 -102
		mu 0 4 1 2 7 6
		f 4 2 103 -7 -103
		mu 0 4 2 3 8 7
		f 4 3 104 -8 -104
		mu 0 4 3 4 9 8
		f 4 4 106 -9 -106
		mu 0 4 5 6 11 10
		f 4 5 107 -10 -107
		mu 0 4 6 7 12 11
		f 4 6 108 -11 -108
		mu 0 4 7 8 13 12
		f 4 7 109 -12 -109
		mu 0 4 8 9 14 13
		f 4 8 111 -13 -111
		mu 0 4 10 11 16 15
		f 4 9 112 -14 -112
		mu 0 4 11 12 17 16
		f 4 10 113 -15 -113
		mu 0 4 12 13 18 17
		f 4 11 114 -16 -114
		mu 0 4 13 14 19 18
		f 4 12 116 -17 -116
		mu 0 4 15 16 21 20
		f 4 13 117 -18 -117
		mu 0 4 16 17 22 21
		f 4 14 118 -19 -118
		mu 0 4 17 18 23 22
		f 4 15 119 -20 -119
		mu 0 4 18 19 24 23
		f 4 16 121 -21 -121
		mu 0 4 20 21 26 25
		f 4 17 122 -22 -122
		mu 0 4 21 22 27 26
		f 4 18 123 -23 -123
		mu 0 4 22 23 28 27
		f 4 19 124 -24 -124
		mu 0 4 23 24 29 28
		f 4 20 126 -25 -126
		mu 0 4 25 26 31 30
		f 4 21 127 -26 -127
		mu 0 4 26 27 32 31
		f 4 22 128 -27 -128
		mu 0 4 27 28 33 32
		f 4 23 129 -28 -129
		mu 0 4 28 29 34 33
		f 4 24 131 -29 -131
		mu 0 4 30 31 36 35
		f 4 25 132 -30 -132
		mu 0 4 31 32 37 36
		f 4 26 133 -31 -133
		mu 0 4 32 33 38 37
		f 4 27 134 -32 -134
		mu 0 4 33 34 39 38
		f 4 28 136 -33 -136
		mu 0 4 35 36 41 40
		f 4 29 137 -34 -137
		mu 0 4 36 37 42 41
		f 4 30 138 -35 -138
		mu 0 4 37 38 43 42
		f 4 31 139 -36 -139
		mu 0 4 38 39 44 43
		f 4 32 141 -37 -141
		mu 0 4 40 41 46 45
		f 4 33 142 -38 -142
		mu 0 4 41 42 47 46
		f 4 34 143 -39 -143
		mu 0 4 42 43 48 47
		f 4 35 144 -40 -144
		mu 0 4 43 44 49 48
		f 4 36 146 -41 -146
		mu 0 4 45 46 51 50
		f 4 37 147 -42 -147
		mu 0 4 46 47 52 51
		f 4 38 148 -43 -148
		mu 0 4 47 48 53 52
		f 4 39 149 -44 -149
		mu 0 4 48 49 54 53
		f 4 40 151 -45 -151
		mu 0 4 50 51 56 55
		f 4 41 152 -46 -152
		mu 0 4 51 52 57 56
		f 4 42 153 -47 -153
		mu 0 4 52 53 58 57
		f 4 43 154 -48 -154
		mu 0 4 53 54 59 58
		f 4 44 156 -49 -156
		mu 0 4 55 56 61 60
		f 4 45 157 -50 -157
		mu 0 4 56 57 62 61
		f 4 46 158 -51 -158
		mu 0 4 57 58 63 62
		f 4 47 159 -52 -159
		mu 0 4 58 59 64 63
		f 4 48 161 -53 -161
		mu 0 4 60 61 66 65
		f 4 49 162 -54 -162
		mu 0 4 61 62 67 66
		f 4 50 163 -55 -163
		mu 0 4 62 63 68 67
		f 4 51 164 -56 -164
		mu 0 4 63 64 69 68
		f 4 52 166 -57 -166
		mu 0 4 65 66 71 70
		f 4 53 167 -58 -167
		mu 0 4 66 67 72 71
		f 4 54 168 -59 -168
		mu 0 4 67 68 73 72
		f 4 55 169 -60 -169
		mu 0 4 68 69 74 73
		f 4 276 277 -280 -281
		mu 0 4 199 200 76 201
		f 4 282 283 -285 -278
		mu 0 4 200 202 77 76
		f 4 286 287 -289 -284
		mu 0 4 202 203 78 77
		f 4 290 292 -294 -288
		mu 0 4 203 204 205 78
		f 4 279 295 -298 -299
		mu 0 4 201 76 206 207
		f 4 284 300 -302 -296
		mu 0 4 76 77 208 206
		f 4 288 303 -305 -301
		mu 0 4 77 78 209 208
		f 4 293 306 -308 -304
		mu 0 4 78 205 210 209
		f 4 60 174 -65 -174
		mu 0 4 80 81 86 85
		f 4 61 175 -66 -175
		mu 0 4 81 82 87 86
		f 4 62 176 -67 -176
		mu 0 4 82 83 88 87
		f 4 63 177 -68 -177
		mu 0 4 83 84 89 88
		f 4 64 179 -69 -179
		mu 0 4 85 86 91 90
		f 4 65 180 -70 -180
		mu 0 4 86 87 92 91
		f 4 66 181 -71 -181
		mu 0 4 87 88 93 92
		f 4 67 182 -72 -182
		mu 0 4 88 89 94 93
		f 4 68 184 -73 -184
		mu 0 4 90 91 96 95
		f 4 69 185 -74 -185
		mu 0 4 91 92 97 96
		f 4 70 186 -75 -186
		mu 0 4 92 93 98 97
		f 4 71 187 -76 -187
		mu 0 4 93 94 99 98
		f 4 72 189 -77 -189
		mu 0 4 95 96 101 100
		f 4 73 190 -78 -190
		mu 0 4 96 97 102 101
		f 4 74 191 -79 -191
		mu 0 4 97 98 103 102
		f 4 75 192 -80 -192
		mu 0 4 98 99 104 103
		f 4 76 194 -81 -194
		mu 0 4 100 101 106 105
		f 4 77 195 -82 -195
		mu 0 4 101 102 107 106
		f 4 78 196 -83 -196
		mu 0 4 102 103 108 107
		f 4 79 197 -84 -197
		mu 0 4 103 104 109 108
		f 4 80 199 -85 -199
		mu 0 4 105 106 111 110
		f 4 81 200 -86 -200
		mu 0 4 106 107 112 111
		f 4 82 201 -87 -201
		mu 0 4 107 108 113 112
		f 4 83 202 -88 -202
		mu 0 4 108 109 114 113
		f 4 84 204 -89 -204
		mu 0 4 110 111 116 115
		f 4 85 205 -90 -205
		mu 0 4 111 112 117 116
		f 4 86 206 -91 -206
		mu 0 4 112 113 118 117
		f 4 87 207 -92 -207
		mu 0 4 113 114 119 118
		f 4 88 209 -93 -209
		mu 0 4 115 116 121 120
		f 4 89 210 -94 -210
		mu 0 4 116 117 122 121
		f 4 90 211 -95 -211
		mu 0 4 117 118 123 122
		f 4 91 212 -96 -212
		mu 0 4 118 119 124 123
		f 4 92 214 -97 -214
		mu 0 4 120 121 126 125
		f 4 93 215 -98 -215
		mu 0 4 121 122 127 126
		f 4 94 216 -99 -216
		mu 0 4 122 123 128 127
		f 4 95 217 -100 -217
		mu 0 4 123 124 129 128
		f 4 96 219 -1 -219
		mu 0 4 125 126 131 130
		f 4 97 220 -2 -220
		mu 0 4 126 127 132 131
		f 4 98 221 -3 -221
		mu 0 4 127 128 133 132
		f 4 99 222 -4 -222
		mu 0 4 128 129 134 133
		f 4 -258 -271 -273 -274
		mu 0 4 198 195 196 197
		f 4 -173 223 -160 -225
		mu 0 4 137 136 148 149
		f 4 -178 224 -155 -226
		mu 0 4 138 137 149 150
		f 4 -183 225 -150 -227
		mu 0 4 139 138 150 151
		f 4 -188 226 -145 -228
		mu 0 4 140 139 151 152
		f 4 -193 227 -140 -229
		mu 0 4 141 140 152 153
		f 4 -198 228 -135 -230
		mu 0 4 142 141 153 154
		f 4 -203 229 -130 -231
		mu 0 4 143 142 154 155
		f 4 -208 230 -125 -232
		mu 0 4 144 143 155 156
		f 4 -213 231 -120 -233
		mu 0 4 145 144 156 157
		f 4 -218 232 -115 -234
		mu 0 4 146 145 157 158
		f 4 -223 233 -110 -105
		mu 0 4 4 146 158 9
		f 4 170 234 160 165
		mu 0 4 159 160 172 171
		f 4 171 235 155 -235
		mu 0 4 160 161 173 172
		f 4 173 236 150 -236
		mu 0 4 161 162 174 173
		f 4 178 237 145 -237
		mu 0 4 162 163 175 174
		f 4 183 238 140 -238
		mu 0 4 163 164 176 175
		f 4 188 239 135 -239
		mu 0 4 164 165 177 176
		f 4 193 240 130 -240
		mu 0 4 165 166 178 177
		f 4 198 241 125 -241
		mu 0 4 166 167 179 178
		f 4 203 242 120 -242
		mu 0 4 167 168 180 179
		f 4 208 243 115 -243
		mu 0 4 168 169 181 180
		f 4 213 244 110 -244
		mu 0 4 169 170 182 181
		f 4 218 100 105 -245
		mu 0 4 170 0 5 182
		f 4 56 246 -248 -246
		mu 0 4 70 71 184 183
		f 4 -171 245 249 -249
		mu 0 4 75 70 183 185
		f 4 57 250 -252 -247
		mu 0 4 71 72 186 184
		f 4 58 252 -254 -251
		mu 0 4 72 73 187 186
		f 4 59 254 -256 -253
		mu 0 4 73 74 188 187
		f 4 -61 259 260 -259
		mu 0 4 81 80 190 189
		f 4 -172 248 261 -260
		mu 0 4 80 75 185 190
		f 4 -62 258 263 -263
		mu 0 4 82 81 189 191
		f 4 -63 262 265 -265
		mu 0 4 83 82 191 192
		f 4 172 266 -268 -257
		mu 0 4 79 84 194 193
		f 4 -64 264 268 -267
		mu 0 4 84 83 192 194
		f 4 -170 269 270 -255
		mu 0 4 135 147 196 195
		f 4 -165 271 272 -270
		mu 0 4 147 148 197 196
		f 4 -224 256 273 -272
		mu 0 4 148 136 198 197
		f 4 247 275 328 -275
		mu 0 4 183 184 220 221
		f 4 -250 274 330 -279
		mu 0 4 185 183 221 222
		f 4 251 281 326 -276
		mu 0 4 184 186 219 220
		f 4 253 285 324 -282
		mu 0 4 186 187 218 219
		f 4 255 289 322 -286
		mu 0 4 187 188 217 218
		f 4 257 291 320 -290
		mu 0 4 188 193 216 217
		f 4 -261 296 310 -295
		mu 0 4 189 190 211 212
		f 4 -262 278 331 -297
		mu 0 4 190 185 222 211
		f 4 -264 294 312 -300
		mu 0 4 191 189 212 213
		f 4 -266 299 314 -303
		mu 0 4 192 191 213 214
		f 4 267 305 318 -292
		mu 0 4 193 194 215 216
		f 4 -269 302 316 -306
		mu 0 4 194 192 214 215
		f 4 -311 308 297 -310
		mu 0 4 212 211 207 206
		f 4 -313 309 301 -312
		mu 0 4 213 212 206 208
		f 4 -315 311 304 -314
		mu 0 4 214 213 208 209
		f 4 -317 313 307 -316
		mu 0 4 215 214 209 210
		f 4 -319 315 -307 -318
		mu 0 4 216 215 210 205
		f 4 -321 317 -293 -320
		mu 0 4 217 216 205 204
		f 4 -323 319 -291 -322
		mu 0 4 218 217 204 203
		f 4 -325 321 -287 -324
		mu 0 4 219 218 203 202
		f 4 -327 323 -283 -326
		mu 0 4 220 219 202 200
		f 4 -329 325 -277 -328
		mu 0 4 221 220 200 199
		f 4 -331 327 280 -330
		mu 0 4 222 221 199 201
		f 4 -332 329 298 -309
		mu 0 4 211 222 201 207;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "C91E8E7E-4AB7-FB9B-39D3-D994DA5A03E2";
	setAttr ".t" -type "double3" -0.02997751367732171 20.963591160972314 -2.5744428009483187 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "9E65296D-4603-DFCA-4527-34A322D9E4A6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50000005960464478 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "47F68F7B-4342-73A5-9D04-E9A210097BE3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8F9D5B14-4170-6E34-6EE9-3ABC756B9C54";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "437DE029-4BDF-0113-E535-E796B695CF8B";
createNode displayLayerManager -n "layerManager";
	rename -uid "CA149B6D-41EA-7DD5-5721-7EBE7D835C84";
createNode displayLayer -n "defaultLayer";
	rename -uid "C194A960-4DFE-BF84-B174-2C865045C5D8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "921C93F6-4E2C-B41C-82BE-8C98E085F9E0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "31358518-4D6F-CD90-78FA-5992D3DE1BE4";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "7067FBD1-42DC-DF1C-8B57-72A51DC35100";
	setAttr ".w" 2;
	setAttr ".h" 4.5;
	setAttr ".d" 7.5;
	setAttr ".sw" 4;
	setAttr ".sd" 12;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "DF7D23F4-4C10-3926-0DB0-13BE5A4F8F45";
	setAttr ".ics" -type "componentList" 2 "f[56:63]" "f[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.26170289473205832 2.2732374363329479 0.35468522492967658 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2617029 4.1736751 -2.7703147 ;
	setAttr ".rs" 35469;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.73829710526794168 2.3277804546740124 -3.3953147750703234 ;
	setAttr ".cbx" -type "double3" 1.2617028947320583 6.0195700817492082 -2.1453147750703234 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "F476CFE2-4128-C91C-3FC0-92A695CF97B3";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[0]" -type "float3" 0.49317315 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.24658658 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.24658658 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.49317315 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.49317315 -3.722651 0 ;
	setAttr ".tk[6]" -type "float3" 0.24658658 -3.722651 0 ;
	setAttr ".tk[7]" -type "float3" 0 -3.722651 0 ;
	setAttr ".tk[8]" -type "float3" -0.24658658 -3.722651 0 ;
	setAttr ".tk[9]" -type "float3" -0.49317315 -3.722651 0 ;
	setAttr ".tk[10]" -type "float3" 1.0477379e-09 -3.3282075 0 ;
	setAttr ".tk[11]" -type "float3" 5.2386895e-10 -3.3282075 0 ;
	setAttr ".tk[12]" -type "float3" 0 -3.3282075 0 ;
	setAttr ".tk[13]" -type "float3" -5.2386895e-10 -3.3282075 0 ;
	setAttr ".tk[14]" -type "float3" -1.0477379e-09 -3.3282075 0 ;
	setAttr ".tk[15]" -type "float3" 1.0477379e-09 -3.1385262 0 ;
	setAttr ".tk[16]" -type "float3" 5.2386895e-10 -3.1385262 0 ;
	setAttr ".tk[17]" -type "float3" 0 -3.1385262 0 ;
	setAttr ".tk[18]" -type "float3" -5.2386895e-10 -3.1385262 0 ;
	setAttr ".tk[19]" -type "float3" -1.0477379e-09 -3.1385262 0 ;
	setAttr ".tk[20]" -type "float3" 0 -2.8123405 0 ;
	setAttr ".tk[21]" -type "float3" 0 -2.8123405 0 ;
	setAttr ".tk[22]" -type "float3" 0 -2.8123405 0 ;
	setAttr ".tk[23]" -type "float3" 0 -2.8123405 0 ;
	setAttr ".tk[24]" -type "float3" 0 -2.8123405 0 ;
	setAttr ".tk[25]" -type "float3" 0 -2.2103167 0 ;
	setAttr ".tk[26]" -type "float3" 0 -2.2103167 0 ;
	setAttr ".tk[27]" -type "float3" 0 -2.2103167 0 ;
	setAttr ".tk[28]" -type "float3" 0 -2.2103167 0 ;
	setAttr ".tk[29]" -type "float3" 0 -2.2103167 0 ;
	setAttr ".tk[30]" -type "float3" 0 -1.4026976 0 ;
	setAttr ".tk[31]" -type "float3" 0 -1.4026976 0 ;
	setAttr ".tk[32]" -type "float3" 0 -1.4026976 0 ;
	setAttr ".tk[33]" -type "float3" 0 -1.4026976 0 ;
	setAttr ".tk[34]" -type "float3" 0 -1.4026976 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.74180049 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.74180049 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.74180049 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.74180049 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.74180049 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.079707004 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.079707004 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.079707004 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.079707004 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.079707004 0 ;
	setAttr ".tk[45]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[46]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[47]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[48]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[49]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[50]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[51]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[52]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[53]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[54]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[55]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[56]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[57]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[58]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[59]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[60]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[61]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[62]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[63]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[65]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[66]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[68]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[69]" -type "float3" 0 1.4963326 0 ;
	setAttr ".tk[70]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[71]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[72]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[73]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[74]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[75]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[76]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[77]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[78]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[79]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[80]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[81]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[82]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[83]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[84]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[85]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[86]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[87]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[88]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[89]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[90]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[91]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[92]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[93]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[94]" -type "float3" 0 2.304543 0 ;
	setAttr ".tk[95]" -type "float3" 0 1.8899055 0 ;
	setAttr ".tk[96]" -type "float3" 0 1.8899055 0 ;
	setAttr ".tk[97]" -type "float3" 0 1.8899055 0 ;
	setAttr ".tk[98]" -type "float3" 0 1.8899055 0 ;
	setAttr ".tk[99]" -type "float3" 0 1.8899055 0 ;
	setAttr ".tk[100]" -type "float3" 0 1.3007978 0 ;
	setAttr ".tk[101]" -type "float3" 0 1.3007978 0 ;
	setAttr ".tk[102]" -type "float3" 0 1.3007978 0 ;
	setAttr ".tk[103]" -type "float3" 0 1.3007978 0 ;
	setAttr ".tk[104]" -type "float3" 0 1.3007978 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.41256282 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.41256282 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.41256282 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.41256282 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.41256285 0 ;
	setAttr ".tk[120]" -type "float3" 1.0477379e-09 0 0 ;
	setAttr ".tk[121]" -type "float3" 5.2386895e-10 0 0 ;
	setAttr ".tk[123]" -type "float3" -5.2386895e-10 0 0 ;
	setAttr ".tk[124]" -type "float3" -1.0477379e-09 0 0 ;
	setAttr ".tk[125]" -type "float3" 1.0477379e-09 0 0 ;
	setAttr ".tk[126]" -type "float3" 5.2386895e-10 0 0 ;
	setAttr ".tk[128]" -type "float3" -5.2386895e-10 0 0 ;
	setAttr ".tk[129]" -type "float3" -1.0477379e-09 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "F187CEC7-4C7E-49D2-B646-B49078A5451B";
	setAttr ".ics" -type "componentList" 1 "f[56:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.26170289473205832 2.2732374363329479 0.35468522492967658 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2617029 2.3277805 -2.7703147 ;
	setAttr ".rs" 60208;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 5.2577577793671222e-16 1.63211640240379 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.73829710526794168 2.3277804546740124 -3.3953147750703234 ;
	setAttr ".cbx" -type "double3" 1.2617028947320583 2.3277804546740124 -2.1453147750703234 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "75FA5745-45A7-24BC-ED42-CEAE0A470532";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[274:275]" "e[278]" "e[281]" "e[285]" "e[289]" "e[291]" "e[294]" "e[296]" "e[299]" "e[302]" "e[305]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.26170289473205832 2.2732374363329479 0.35468522492967658 1;
	setAttr ".wt" 0.9209362268447876;
	setAttr ".dr" no;
	setAttr ".re" 296;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "6775B2DD-43C3-3CEE-C5CF-22B34296A1FB";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[141:155]" -type "float3"  0 -0.67242658 0 0 -0.67242658
		 0 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0
		 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0 0
		 -0.67242658 0 0 -0.67242658 0 0 -0.67242658 0;
createNode polyCube -n "polyCube2";
	rename -uid "419F95D3-4BC9-02E1-2D56-CCB2703CD982";
	setAttr ".w" 9.3215028162552755;
	setAttr ".h" 3;
	setAttr ".d" 3.1072483201161702;
	setAttr ".sw" 8;
	setAttr ".sh" 6;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "9D7BAC96-474A-EC80-F298-A6A957DABB6B";
	setAttr ".ics" -type "componentList" 2 "f[104:106]" "f[109:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.029977513 19.463591 -2.5744429 ;
	setAttr ".rs" 54535;
	setAttr ".lt" -type "double3" -1.7763568394002505e-15 1.0427721887914294e-16 13.53037715591266 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6907288564507592 19.463591160972314 -4.1280669540855257 ;
	setAttr ".cbx" -type "double3" 4.6307738290961158 19.463591160972314 -1.0208186478111116 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7FECA699-4EFA-2CC2-EB55-1F83A4A24F6B";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[3]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[48]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[95]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[102]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[104]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[111]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[113]" -type "float3" -0.44859558 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.44854456 0 0 ;
	setAttr ".tk[122]" -type "float3" -0.44859558 0 0 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "C72E3E6C-47AE-4490-2727-89841FAEE32F";
	setAttr ".uopa" yes;
	setAttr -s 64 ".tk";
	setAttr ".tk[1]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[61]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[69]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[70]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[82]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[87]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[88]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[92]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[97]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[100]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[101]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[115]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[118]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[124]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.09176337 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.36823171 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[136]" -type "float3" -0.36757264 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.091975369 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.091975369 0 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "2757CD08-4D7C-CAA3-9C53-669FA09674FE";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483369 -2147483372;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "6DFB903F-4A0F-DD68-4A80-C09C68F738D1";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483398 -2147483402;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "416C65FD-48D5-7E67-5857-839525A9B391";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483387 -2147483390;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "08B0FB89-434E-00D9-640C-AB975558B716";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483380 -2147483384;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "72DC306C-4EEE-B51A-0EE1-A7BE5FE9A780";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[166:174]" "e[229:243]" "e[248]" "e[251]" "e[255]" "e[260]" "e[266]" "e[269]" "e[273]" "e[278]" "e[282]" "e[285]" "e[288]" "e[291]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.271807461977005;
	setAttr ".dr" no;
	setAttr ".re" 233;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "DF229EE7-46D4-70BC-31FB-44A4BC760432";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 26 "e[166:174]" "e[282]" "e[285]" "e[288]" "e[291:293]" "e[297]" "e[299]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[315]" "e[317]" "e[321]" "e[323]" "e[325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.55398458242416382;
	setAttr ".dr" no;
	setAttr ".re" 292;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "CFF786D7-4971-456B-C23B-A6A8261C26AE";
	setAttr ".ics" -type "componentList" 12 "e[282]" "e[285]" "e[288]" "e[291]" "e[295]" "e[301]" "e[313]" "e[319]" "e[367]" "e[373]" "e[385]" "e[391]";
	setAttr ".cv" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "76F8D35D-4777-2925-1052-AAA1DCC84B3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[260:262]" "e[264]" "e[267]" "e[269]" "e[272:273]" "e[282]" "e[290]" "e[346]" "e[354]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.073968015611171722;
	setAttr ".re" 273;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "598F0E82-4153-B922-6416-5C965BB4E45E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[244:246]" "e[248]" "e[251]" "e[253]" "e[256:257]" "e[296]" "e[304]" "e[360]" "e[368]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.073968015611171722;
	setAttr ".re" 248;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "527FA275-4454-5957-E2F9-EA9F5D06048F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[408:409]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419]" "e[425]" "e[427]" "e[429]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.077004328370094299;
	setAttr ".re" 408;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "C139F757-4E45-699B-9E32-CFA990F466BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[432:433]" "e[435]" "e[437]" "e[439]" "e[441]" "e[443]" "e[445]" "e[447]" "e[449]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.077004328370094299;
	setAttr ".re" 432;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "FA432C0D-474F-E32B-8CF6-8CAE20B9694C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[456:457]" "e[459]" "e[461]" "e[463]" "e[465]" "e[467]" "e[473]" "e[475]" "e[477]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.092581436038017273;
	setAttr ".re" 456;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "6C17F6F0-475E-BC8A-1093-9CABAC03BF36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[480:481]" "e[483]" "e[485]" "e[487]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.092581436038017273;
	setAttr ".re" 480;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "188A1156-40AE-9ABA-5E42-74851EF7BFDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[504:505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[521]" "e[523]" "e[525]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.11315035820007324;
	setAttr ".re" 504;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "2E3B5FE0-426C-D4F1-1DA2-8F8DA91A8F42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[528:529]" "e[531]" "e[533]" "e[535]" "e[537]" "e[539]" "e[541]" "e[543]" "e[545]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.11315035820007324;
	setAttr ".re" 528;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "35B09E1A-4AE1-76B6-050F-08B8CA579DED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[552:553]" "e[555]" "e[557]" "e[559]" "e[561]" "e[563]" "e[569]" "e[571]" "e[573]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.12981648743152618;
	setAttr ".re" 552;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "9BF5031D-49BC-5478-050F-11B70A5EE881";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[576:577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.12981648743152618;
	setAttr ".re" 576;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "70BCDABE-499C-CFAE-98CC-72A887CFC31F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[600:601]" "e[603]" "e[605]" "e[607]" "e[609]" "e[611]" "e[617]" "e[619]" "e[621]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.13905949890613556;
	setAttr ".re" 600;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "50D0C76C-41CA-B3F5-504E-E793FF817C3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[624:625]" "e[627]" "e[629]" "e[631]" "e[633]" "e[635]" "e[637]" "e[639]" "e[641]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.13905949890613556;
	setAttr ".re" 624;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "58BDAFAC-4DC1-3A8A-DC00-39909AF655A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[648:649]" "e[651]" "e[653]" "e[655]" "e[657]" "e[659]" "e[665]" "e[667]" "e[669]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.1945081353187561;
	setAttr ".re" 648;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "5B85E16A-4686-A23D-1116-2480982C191C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[672:673]" "e[675]" "e[677]" "e[679]" "e[681]" "e[683]" "e[685]" "e[687]" "e[689]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.1945081353187561;
	setAttr ".re" 672;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "56820EA4-430A-A704-7C38-A8B498EC3747";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[696:697]" "e[699]" "e[701]" "e[703]" "e[705]" "e[707]" "e[713]" "e[715]" "e[717]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.22683300077915192;
	setAttr ".re" 696;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "3152C0A1-4C34-D933-0948-44A5AA34FA81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[720:721]" "e[723]" "e[725]" "e[727]" "e[729]" "e[731]" "e[733]" "e[735]" "e[737]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.22683300077915192;
	setAttr ".re" 720;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "C0434577-427F-AE71-2608-58A8281B0EF7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[744:745]" "e[747]" "e[749]" "e[751]" "e[753]" "e[755]" "e[761]" "e[763]" "e[765]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.29869502782821655;
	setAttr ".re" 744;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "29F1128D-468F-83D6-71CA-CDAED2FC70A3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[768:769]" "e[771]" "e[773]" "e[775]" "e[777]" "e[779]" "e[781]" "e[783]" "e[785]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.29869502782821655;
	setAttr ".re" 768;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "83120DD8-44D1-7EB9-9A74-3C8A12BF70C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[290]" "e[354]" "e[792:793]" "e[795]" "e[797]" "e[799]" "e[801]" "e[803]" "e[809]" "e[811]" "e[813]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.39784142374992371;
	setAttr ".dr" no;
	setAttr ".re" 792;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "EE077FBC-4064-0D02-3723-6686EADB0FC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[304]" "e[368]" "e[816:817]" "e[819]" "e[821]" "e[823]" "e[825]" "e[827]" "e[829]" "e[831]" "e[833]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".wt" 0.39784142374992371;
	setAttr ".dr" no;
	setAttr ".re" 816;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 12;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "E0B88E66-4D0C-710D-F220-0687F1CF2615";
	setAttr ".ics" -type "componentList" 4 "vtx[3]" "vtx[5]" "vtx[215]" "vtx[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".d" 0;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "E9CF3889-4C72-7710-39C0-E9B0B2D7CD43";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[3]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[4]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[120]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[121]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[122]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[147]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[148]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[149]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[179]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[180]" -type "float3" 0 -1.0008149 0 ;
	setAttr ".tk[181]" -type "float3" 0 -1.0008149 0 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "0EA864E0-4218-EE2A-59B4-EBA1464A14B4";
	setAttr ".ics" -type "componentList" 4 "vtx[120]" "vtx[122]" "vtx[212]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".d" 0;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "538780F2-4982-C7A1-FDFC-928FD520034D";
	setAttr ".ics" -type "componentList" 3 "vtx[179]" "vtx[181]" "vtx[222]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".d" 0;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "36A732B2-4A6E-DFD8-83AD-4EA51383A1DB";
	setAttr ".ics" -type "componentList" 3 "vtx[147]" "vtx[149]" "vtx[223]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.02997751367732171 20.963591160972314 -2.5744428009483187 1;
	setAttr ".d" 0;
	setAttr ".am" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "36BF124B-4E63-AE31-033A-E6A5C4FAE3D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1899\n            -height 1033\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1899\\n    -height 1033\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1899\\n    -height 1033\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "91A85FEE-4DA0-A034-9BF2-88936A71BA9C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 3 ".dsm";
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
connectAttr "polySplitRing1.out" "pCubeShape1.i";
connectAttr "polyMergeVert4.out" "pCubeShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak2.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyCube2.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplitRing2.ip";
connectAttr "pCubeShape3.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape3.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape3.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape3.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape3.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape3.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape3.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape3.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape3.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape3.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape3.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape3.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape3.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape3.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCubeShape3.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCubeShape3.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape3.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCubeShape3.wm" "polySplitRing23.mp";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert1.mp";
connectAttr "polySplitRing23.out" "polyTweak5.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert4.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
// End of club_kid.ma
