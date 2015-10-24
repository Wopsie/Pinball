//Maya ASCII 2015 scene
//Name: Tree.ma
//Last modified: Wed, Oct 14, 2015 03:11:05 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3281540843174096 6.7810822267349868 3.3692676444971577 ;
	setAttr ".r" -type "double3" -24.338352729477517 -1025.3999999996743 -2.7452598438737713e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.787294994641794;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.36545480175179534 0.63776069049883777 0.12425068162204411 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".rp" -type "double3" 10.40045260505515 -37.768379071752292 17.775469215138031 ;
	setAttr ".sp" -type "double3" 10.40045260505515 -37.768379071752292 17.775469215138031 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49526220594998449 0.49999998405110091 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "persp1";
	setAttr ".t" -type "double3" -2198.5521425411953 1132.0308625036041 1319.6158091738739 ;
	setAttr ".r" -type "double3" -23.73835272725173 -2218.9999999996799 0 ;
createNode camera -n "persp1Shape" -p "persp1";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2799.9180857820893;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.6695210425393014 6.3977024174218267 0.58785468481303838 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 2.0949134882977489;
	setAttr ".h" 12.228619678116816;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.36545479 1.1418934 0.12425068 ;
	setAttr ".rs" 58237;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4603685228363901 1.1418934381489843 -1.9706633970904193 ;
	setAttr ".cbx" -type "double3" 1.7294589193327994 1.1418934381489843 2.2191647603345075 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  0 1.14189327 0 0 1.14189327
		 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327
		 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327
		 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327 0 0 1.14189327
		 0 -1.34812653 1.14189327 0.44010633 -1.14678526 1.14189327 0.83713222 -0.83318573
		 1.14189327 1.15221453 -0.43803293 1.14189327 1.35450864 -1.6132378e-007 1.14189327
		 1.42421532 0.43803245 1.14189327 1.354509 0.83318734 1.14189327 1.15221417 1.14678419
		 1.14189327 0.83713257 1.34812534 1.14189327 0.44010609 1.41750336 1.14189327 -2.4313104e-007
		 1.34812534 1.14189327 -0.44010681 1.14678407 1.14189327 -0.83713204 0.83318758 1.14189327
		 -1.15221453 0.43803227 1.14189327 -1.35450864 -1.1907886e-007 1.14189327 -1.42421532
		 -0.43803257 1.14189327 -1.354509 -0.83318734 1.14189327 -1.15221441 -1.14678419 1.14189327
		 -0.83713233 -1.34812534 1.14189327 -0.44010669 -1.41750336 1.14189327 -2.4313104e-007
		 0 1.14189327 0 -1.6132378e-007 1.14189327 -2.4313104e-007;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5424448 0.88982707 2.3523431 ;
	setAttr ".rs" 58509;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0720710842148691 0.63776069049883777 1.8190721585583844 ;
	setAttr ".cbx" -type "double3" -1.0128185836808115 1.1418934381489843 2.8856140687298932 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".tk[13]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".tk[41]" -type "float3" 0.76898259 -0.50413263 -0.24985729 ;
	setAttr ".tk[42]" -type "float3" 0.65413558 -0.50413263 -0.4752571 ;
	setAttr ".tk[43]" -type "float3" 9.2020272e-008 -0.50413263 1.3803047e-007 ;
	setAttr ".tk[44]" -type "float3" 0.47525719 -0.50413263 -0.65413511 ;
	setAttr ".tk[45]" -type "float3" 0.24985738 -0.50413263 -0.76898152 ;
	setAttr ".tk[46]" -type "float3" 9.2020272e-008 -0.50413263 -0.80855548 ;
	setAttr ".tk[47]" -type "float3" -0.24985731 -0.50413263 -0.76898152 ;
	setAttr ".tk[48]" -type "float3" -0.47525707 -0.50413263 -0.65413505 ;
	setAttr ".tk[49]" -type "float3" -0.65413493 -0.50413263 -0.47525704 ;
	setAttr ".tk[50]" -type "float3" -0.76898146 -0.50413263 -0.2498571 ;
	setAttr ".tk[51]" -type "float3" -0.80855542 -0.50413263 1.3803047e-007 ;
	setAttr ".tk[52]" -type "float3" -0.76898146 -0.50413263 0.24985737 ;
	setAttr ".tk[53]" -type "float3" -0.65413493 -0.50413263 0.47525713 ;
	setAttr ".tk[54]" -type "float3" -0.47525704 -0.50413263 0.65413535 ;
	setAttr ".tk[55]" -type "float3" -0.24985711 -0.50413263 0.76898158 ;
	setAttr ".tk[56]" -type "float3" 6.9015236e-008 -0.50413263 0.80855548 ;
	setAttr ".tk[57]" -type "float3" 0.24985732 -0.50413263 0.76898152 ;
	setAttr ".tk[58]" -type "float3" 0.47525707 -0.50413263 0.65413511 ;
	setAttr ".tk[59]" -type "float3" 0.65413505 -0.50413263 0.4752571 ;
	setAttr ".tk[60]" -type "float3" 0.76898146 -0.50413263 0.24985735 ;
	setAttr ".tk[61]" -type "float3" 0.80855542 -0.50413263 1.3803047e-007 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.36545479 3.8377733 0.12425068 ;
	setAttr ".rs" 39127;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0428651659027963 3.837773374367246 -0.54644808031795833 ;
	setAttr ".cbx" -type "double3" 0.31195556239920563 3.837773374367246 0.79494944356204655 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk";
	setAttr ".tk[0]" -type "float3" 0.43117604 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.1170406 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.68601054 0 0 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.40316045 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.91211063 ;
	setAttr ".tk[7]" -type "float3" -0.64432776 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.284798 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.27938712 -2.9802322e-008 0 ;
	setAttr ".tk[11]" -type "float3" -0.63209683 -2.9802322e-008 0 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.46873897 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.60489708 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.084275849 ;
	setAttr ".tk[17]" -type "float3" 0.33585224 0 -0.22624189 ;
	setAttr ".tk[18]" -type "float3" -0.37799135 0 0.32758203 ;
	setAttr ".tk[19]" -type "float3" 0.72318697 0 0 ;
	setAttr ".tk[20]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[21]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[22]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[23]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[24]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[25]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[26]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[27]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[28]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[29]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[30]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[31]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[32]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[33]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[34]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[35]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[36]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[37]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[38]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[39]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[40]" -type "float3" 0 -9.5327396 0 ;
	setAttr ".tk[41]" -type "float3" -0.29667312 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.68601042 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.10255994 0 0 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.91211057 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.20672657 ;
	setAttr ".tk[49]" -type "float3" 0.1460326 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.64432955 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.63209146 2.9802322e-008 0 ;
	setAttr ".tk[53]" -type "float3" 0.14326018 2.9802322e-008 0 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.60489666 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.41619775 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.49396655 ;
	setAttr ".tk[59]" -type "float3" -0.076119743 0 -0.40143079 ;
	setAttr ".tk[60]" -type "float3" 0.041984353 0 0.16145967 ;
	setAttr ".tk[61]" -type "float3" 0.095264688 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.04089532 -0.18959874 1.7728815 ;
	setAttr ".tk[63]" -type "float3" -0.39837313 -0.18959874 1.7728815 ;
	setAttr ".tk[64]" -type "float3" 0.39837319 0.18959874 1.7728815 ;
	setAttr ".tk[65]" -type "float3" -0.21043611 0.18959874 1.7728815 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.36545479 4.5382137 0.12425068 ;
	setAttr ".rs" 48227;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0428651659027963 4.5382135427479833 -0.54644808031795833 ;
	setAttr ".cbx" -type "double3" 0.31195556239920563 4.5382135427479833 0.79494944356204655 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[65:85]" -type "float3"  0 0.70044023 0 0 0.70044023
		 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023
		 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023
		 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023 0 0 0.70044023
		 0 0 0.70044023 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26078904 4.2998223 0.64900386 ;
	setAttr ".rs" 64099;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36545476635492946 3.837773374367246 0.50305831573726323 ;
	setAttr ".cbx" -type "double3" -0.15612328930062347 4.7618710315709203 0.79494944356204655 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk[65:105]" -type "float3"  -0.26165757 0.22365725 0.084175393
		 -0.22257911 0.22365725 0.16011116 -0.16171423 0.22365725 0.22037384 -0.085017733
		 0.22365725 0.25906521 -3.6311658e-008 0.22365725 0.27239701 0.085017733 0.22365725
		 0.25906506 0.16171321 0.22365725 0.22037384 0.22257911 0.22365725 0.16011088 0.26165757
		 0.22365725 0.084175393 0.27512282 0.22365725 -4.5389584e-008 0.26165757 0.22365725
		 -0.084175393 0.22257911 0.22365725 -0.16011134 0.16171308 0.22365725 -0.22037384
		 0.085017733 0.22365725 -0.25906521 -2.4207781e-008 0.22365725 -0.27239701 -0.085017733
		 0.22365725 -0.25906506 -0.16171321 0.22365725 -0.22037384 -0.22257911 0.22365725
		 -0.16011119 -0.26165757 0.22365725 -0.084175393 -0.27512282 0.22365725 -4.5389584e-008
		 -0.26165757 0.87772542 0.084175393 -0.22257911 0.87772542 0.16011116 -3.6311658e-008
		 0.87772542 -4.5389584e-008 -0.16171423 0.87772542 0.22037384 -0.085017733 0.87772542
		 0.25906521 -3.6311658e-008 0.87772542 0.27239701 0.085017733 0.87772542 0.25906506
		 0.16171321 0.87772542 0.22037384 0.22257911 0.87772542 0.16011088 0.26165757 0.87772542
		 0.084175393 0.27512282 0.87772542 -4.5389584e-008 0.26165757 0.87772542 -0.084175393
		 0.22257911 0.87772542 -0.16011134 0.16171308 0.87772542 -0.22037384 0.085017733 0.87772542
		 -0.25906521 -2.4207781e-008 0.87772542 -0.27239701 -0.085017733 0.87772542 -0.25906506
		 -0.16171321 0.87772542 -0.22037384 -0.22257911 0.87772542 -0.16011119 -0.26165757
		 0.87772542 -0.084175393 -0.27512282 0.87772542 -4.5389584e-008;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26078904 4.2998223 1.3540921 ;
	setAttr ".rs" 45554;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31161993501943641 4.0754282987599462 1.2832135274243512 ;
	setAttr ".cbx" -type "double3" -0.20995811505478912 4.5242159879689305 1.4249707772565046 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[106:109]" -type "float3"  0.053834829 0.23765489 0.63002127
		 -0.053834826 0.23765489 0.6469053 -0.010105952 -0.23765489 0.78015518 0.053834837
		 -0.23765489 0.77012831;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 3 "f[98]" "f[126]" "f[130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.39346638 4.5092201 1.2303501 ;
	setAttr ".rs" 52744;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.58746848387879425 4.2565691984181493 0.50305831573726323 ;
	setAttr ".cbx" -type "double3" -0.19946430010956817 4.7618709123616307 1.957641990406529 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[34]" -type "float3" -0.22201362 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.22201368 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.22201371 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.041676726 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.10782088 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.10782095 0 0 ;
	setAttr ".tk[108]" -type "float3" 0.020240266 0 0 ;
	setAttr ".tk[109]" -type "float3" -0.10782095 0 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.18362729 0.53267115 ;
	setAttr ".tk[111]" -type "float3" 0 0.18114108 0.53551149 ;
	setAttr ".tk[112]" -type "float3" 0 -0.18630643 0.30224144 ;
	setAttr ".tk[113]" -type "float3" 0 -0.18482995 0.30055466 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.10421068 4.2998223 -0.35580233 ;
	setAttr ".rs" 51951;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24114103002709442 4.0128334081654637 -0.51362249113796565 ;
	setAttr ".cbx" -type "double3" 0.032719662950810857 4.586810878563413 -0.19798219062565181 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0.12266888 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.17506002 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.17506002 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.11874897 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.11874897 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.11954993 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.11954993 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.18759957 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.18759957 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.12266888 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.12266885 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.17506002 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.17506002 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.11874896 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.11874896 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.11954992 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.11954992 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.18759954 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.18759954 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.12266885 0 ;
	setAttr ".tk[114]" -type "float3" -0.053685673 0.10010609 0 ;
	setAttr ".tk[115]" -type "float3" -0.12036888 0.10010609 0 ;
	setAttr ".tk[116]" -type "float3" -0.093286201 0.10010609 0 ;
	setAttr ".tk[117]" -type "float3" -0.053685665 0.10010609 0 ;
	setAttr ".tk[118]" -type "float3" 0.12725209 0.10010609 0 ;
	setAttr ".tk[119]" -type "float3" -0.12725209 0.10010609 0 ;
	setAttr ".tk[120]" -type "float3" 0.017037489 0.10010609 0 ;
	setAttr ".tk[121]" -type "float3" -0.10656241 0.10010609 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.041759558 4.2998223 -0.94404507 ;
	setAttr ".rs" 35054;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.020743080808344416 4.1446822202687352 -1.1018652603792987 ;
	setAttr ".cbx" -type "double3" 0.10426219420271821 4.4549625432972997 -0.78622493006466243 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[122:125]" -type "float3"  0.071542531 0.13184863 -0.58824277
		 0.17418706 0.13184863 -0.58824277 0.22039796 -0.13184863 -0.58824277 0.1594414 -0.13184863
		 -0.58824277;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.041759558 4.6156554 -1.278757 ;
	setAttr ".rs" 54826;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.03485999388855987 4.460515073585996 -1.316279022471889 ;
	setAttr ".cbx" -type "double3" 0.11837910728293366 4.7707958734517186 -1.2412348673510394 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[126:129]" -type "float3"  0.014116928 0.31583309 -0.28703049
		 -0.0053519774 0.31583309 -0.21441379 -0.014116926 0.31583309 -0.41188583 -0.0025551273
		 0.31583309 -0.45501;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.75770259 4.2998223 -0.26411057 ;
	setAttr ".rs" 54320;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.91349149627846771 4.2593260324483007 -0.41835602976559016 ;
	setAttr ".cbx" -type "double3" -0.60191369934243255 4.340318254280576 -0.10986511267898891 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0.4215526 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.31248051 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.4215526 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.31248078 0 ;
	setAttr ".tk[126]" -type "float3" 0.029614795 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.043822624 0 0 ;
	setAttr ".tk[128]" -type "float3" 0.050216619 0 0 ;
	setAttr ".tk[129]" -type "float3" 0.041778415 0 0 ;
	setAttr ".tk[130]" -type "float3" 0.5435797 0.83537102 -0.55122137 ;
	setAttr ".tk[131]" -type "float3" 0.55778217 0.83537102 -0.55122137 ;
	setAttr ".tk[132]" -type "float3" 0.56418568 0.60467219 -0.55122215 ;
	setAttr ".tk[133]" -type "float3" 0.55574781 0.60467219 -0.55122262 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0750293 4.2998223 -0.26411057 ;
	setAttr ".rs" 64153;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2308181612030893 4.2593260324483007 -0.41835602976559016 ;
	setAttr ".cbx" -type "double3" -0.91924036426705413 4.340318254280576 -0.10986511267898891 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[134:137]" -type "float3"  -0.31732669 0 0 -0.31732669
		 0 0 -0.31732669 0 0 -0.31732669 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5764663 4.5752988 -0.26411057 ;
	setAttr ".rs" 47753;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6584683744446664 4.5539827859883397 -0.34530022598980281 ;
	setAttr ".cbx" -type "double3" -1.4944642869965463 4.5966144121174901 -0.18292090155361507 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[138:141]" -type "float3"  -0.49863115 0.29465678 0.073055804
		 -0.42765021 0.28969404 0.0027780589 -0.53307122 0.26125896 -0.073055804 -0.57522392
		 0.25629619 -0.031320617;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 3 "f[154]" "f[158]" "f[162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.591844 4.7728949 -0.16958395 ;
	setAttr ".rs" 49451;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5817741243378549 4.3298402345662206 -0.22930279232738826 ;
	setAttr ".cbx" -type "double3" -0.60191369934243255 5.2159494078641027 -0.10986511267898891 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[142:145]" -type "float3"  -1.040463805 0.619335 0 -1.040463805
		 0.619335 0 -1.040463805 0.619335 0 -1.040463805 0.619335 0;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3866432 0.88982707 2.0482709 ;
	setAttr ".rs" 47016;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.86590479926901764 0.63776069049883777 1.1293684556317487 ;
	setAttr ".cbx" -type "double3" 1.9073816450102896 1.1418934381489843 2.9671734883618512 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[16]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[17]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[57]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[58]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[146]" -type "float3" 0 0.015103416 0.029080549 ;
	setAttr ".tk[147]" -type "float3" 0 0.015103416 -0.022511646 ;
	setAttr ".tk[148]" -type "float3" 0 0.015103416 0.029080549 ;
	setAttr ".tk[149]" -type "float3" 0 0.015103416 -0.022511646 ;
	setAttr ".tk[150]" -type "float3" 0 0.015103416 0.047418699 ;
	setAttr ".tk[151]" -type "float3" 0 0.015103416 0.020262269 ;
	setAttr ".tk[152]" -type "float3" 0 0.015103416 0.047418699 ;
	setAttr ".tk[153]" -type "float3" 0 0.015103416 0.020262269 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8434139 0.88982707 1.2643168 ;
	setAttr ".rs" 60147;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.248935333059606 0.63776069049883777 1.0991969420743146 ;
	setAttr ".cbx" -type "double3" 2.4378925474150748 1.1418934381489843 1.4294365956616559 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[154:157]" -type "float3"  1.859267 -0.17029798 2.04737401
		 1.3192451 -0.17029798 2.45640635 1.53818035 0.17029798 1.21477044 1.15563798 0.17029798
		 2.25367808;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.36545479 5.4159393 0.12425068 ;
	setAttr ".rs" 58377;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.76774234457177215 5.4159393823628514 -0.27405106879947994 ;
	setAttr ".cbx" -type "double3" 0.036832741068181463 5.4159393823628514 0.52255243204356816 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk";
	setAttr ".tk[0]" -type "float3" -0.8863048 0.53803927 0.44201267 ;
	setAttr ".tk[1]" -type "float3" -0.53942931 0.53803927 0.68152452 ;
	setAttr ".tk[2]" -type "float3" -0.11600276 0.53803927 0.87160128 ;
	setAttr ".tk[3]" -type "float3" -0.15784161 0.53803927 0.99363923 ;
	setAttr ".tk[4]" -type "float3" 0.10765902 0.53803927 1.0356897 ;
	setAttr ".tk[5]" -type "float3" 0.37315983 0.53803927 0.82829273 ;
	setAttr ".tk[6]" -type "float3" 0.61267149 0.53803927 0.4975217 ;
	setAttr ".tk[7]" -type "float3" 1.0670042 0.53803927 0.68152446 ;
	setAttr ".tk[8]" -type "float3" 1.0415894 0.53803927 0.44201264 ;
	setAttr ".tk[9]" -type "float3" 0.96683675 0.53803927 0.17651205 ;
	setAttr ".tk[10]" -type "float3" 1.0393691 0.53803927 -0.08898858 ;
	setAttr ".tk[11]" -type "float3" 1.0619876 0.53803927 -0.32850021 ;
	setAttr ".tk[12]" -type "float3" 0.61267161 0.53803927 -0.5185774 ;
	setAttr ".tk[13]" -type "float3" 0.37315977 0.53803927 -0.64061457 ;
	setAttr ".tk[14]" -type "float3" 0.107659 0.53803927 -0.8749072 ;
	setAttr ".tk[15]" -type "float3" -0.15784144 0.53803927 -0.8886981 ;
	setAttr ".tk[16]" -type "float3" -0.39735293 0.53803927 -0.484014 ;
	setAttr ".tk[17]" -type "float3" -0.72517174 0.53803927 -0.23571226 ;
	setAttr ".tk[18]" -type "float3" -0.55444282 0.53803927 -0.22333825 ;
	setAttr ".tk[19]" -type "float3" -1.0481161 0.53803927 0.17651205 ;
	setAttr ".tk[20]" -type "float3" -0.15656669 -0.61791974 0.26151374 ;
	setAttr ".tk[21]" -type "float3" -0.11710468 -0.56761026 0.33819515 ;
	setAttr ".tk[22]" -type "float3" -0.055642411 -0.63940662 0.39904916 ;
	setAttr ".tk[23]" -type "float3" 0.021806959 -0.63940662 0.43812034 ;
	setAttr ".tk[24]" -type "float3" 0.10765906 -0.61631185 0.45158273 ;
	setAttr ".tk[25]" -type "float3" 0.19351143 -0.61631185 0.43812031 ;
	setAttr ".tk[26]" -type "float3" 0.27095973 -0.74049956 0.39904916 ;
	setAttr ".tk[27]" -type "float3" 0.3324233 -0.74479669 0.33819467 ;
	setAttr ".tk[28]" -type "float3" 0.3718853 -0.40942353 0.25232047 ;
	setAttr ".tk[29]" -type "float3" 0.38548228 -0.33875498 0.12650971 ;
	setAttr ".tk[30]" -type "float3" 0.33865753 -0.40225184 0.091510564 ;
	setAttr ".tk[31]" -type "float3" 0.22865416 -0.40225184 0.014829199 ;
	setAttr ".tk[32]" -type "float3" 0.27095962 -0.56761026 -0.046024788 ;
	setAttr ".tk[33]" -type "float3" 0.19351143 -0.56761026 -0.085096002 ;
	setAttr ".tk[34]" -type "float3" 0.19871272 -0.56761026 -0.09855862 ;
	setAttr ".tk[35]" -type "float3" -0.069246553 -0.27483231 0.036416464 ;
	setAttr ".tk[36]" -type "float3" -0.055641461 -0.27483231 0.075487427 ;
	setAttr ".tk[37]" -type "float3" -0.11710412 -0.28118467 0.014829548 ;
	setAttr ".tk[38]" -type "float3" -0.15656625 -0.28118467 0.091510676 ;
	setAttr ".tk[39]" -type "float3" -0.17016414 -0.61791974 0.17651215 ;
	setAttr ".tk[40]" -type "float3" -0.90317476 0.74479675 0.54448569 ;
	setAttr ".tk[41]" -type "float3" -1.137059 0.74479675 0.87643981 ;
	setAttr ".tk[42]" -type "float3" 0.10765899 0.74479675 0.17651205 ;
	setAttr ".tk[43]" -type "float3" -0.55020577 0.74479675 1.1398787 ;
	setAttr ".tk[44]" -type "float3" -0.26031464 0.74479675 1.3090187 ;
	setAttr ".tk[45]" -type "float3" 0.10765899 0.74479675 1.3672997 ;
	setAttr ".tk[46]" -type "float3" 0.47563267 0.74479675 1.6830982 ;
	setAttr ".tk[47]" -type "float3" 0.80758679 0.74479675 1.2246628 ;
	setAttr ".tk[48]" -type "float3" 1.0111347 0.74479675 0.87643975 ;
	setAttr ".tk[49]" -type "float3" 0.97590822 0.74479675 0.54448533 ;
	setAttr ".tk[50]" -type "float3" 1.2984465 0.74479675 0.17651205 ;
	setAttr ".tk[51]" -type "float3" 0.98092836 0.74479675 -0.19146146 ;
	setAttr ".tk[52]" -type "float3" 1.0122707 0.74479675 -0.52341497 ;
	setAttr ".tk[53]" -type "float3" 0.80758661 0.74479675 -0.7868554 ;
	setAttr ".tk[54]" -type "float3" 0.47563231 0.74479675 -0.95599371 ;
	setAttr ".tk[55]" -type "float3" 0.10765902 0.74479675 -0.76619148 ;
	setAttr ".tk[56]" -type "float3" -0.26031446 0.74479675 -0.78530008 ;
	setAttr ".tk[57]" -type "float3" -0.59226781 0.74479675 -0.98944372 ;
	setAttr ".tk[58]" -type "float3" -0.82448936 0.74479675 -0.358778 ;
	setAttr ".tk[59]" -type "float3" -1.0420657 0.74479675 -0.2576803 ;
	setAttr ".tk[60]" -type "float3" -1.1221986 0.74479675 0.17651202 ;
	setAttr ".tk[61]" -type "float3" 0.59589911 0.61579859 -1.2456822 ;
	setAttr ".tk[62]" -type "float3" 0.53654271 0.61579859 -1.3677182 ;
	setAttr ".tk[63]" -type "float3" 0.64420307 0.66703802 -1.5139598 ;
	setAttr ".tk[64]" -type "float3" 0.56193781 0.66703802 -1.6830982 ;
	setAttr ".tk[73]" -type "float3" 0 -0.19217302 0.050002422 ;
	setAttr ".tk[74]" -type "float3" 0 -0.22885524 0.0089174807 ;
	setAttr ".tk[75]" -type "float3" 0.10376914 -0.24229795 0 ;
	setAttr ".tk[76]" -type "float3" 0.032751016 -0.24229795 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.29277799 0.12151221 ;
	setAttr ".tk[81]" -type "float3" 0 -0.29277799 0.12151221 ;
	setAttr ".tk[82]" -type "float3" 0 -0.28642559 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.28642559 0 ;
	setAttr ".tk[154]" -type "float3" -1.159886 0.60788316 -1.3236945 ;
	setAttr ".tk[155]" -type "float3" -1.2662282 0.60788316 -1.2431475 ;
	setAttr ".tk[156]" -type "float3" -1.2231156 0.67495352 -1.4876513 ;
	setAttr ".tk[157]" -type "float3" -1.2984467 0.67495352 -1.2830691 ;
	setAttr ".tk[158]" -type "float3" -0.72517234 0.53803933 -0.23571247 ;
	setAttr ".tk[159]" -type "float3" -0.55444348 0.53803933 -0.22333835 ;
	setAttr ".tk[160]" -type "float3" -0.82448936 0.74479675 -0.35877806 ;
	setAttr ".tk[161]" -type "float3" -1.042066 0.74479675 -0.25768033 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.68753922 5.5028071 0.06270963 ;
	setAttr ".rs" 49381;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.76774234457177215 5.4159393823628514 0.0011685057711758873 ;
	setAttr ".cbx" -type "double3" -0.60733606798810058 5.5896751201634496 0.12425074867726948 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[85]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.22033806 0 ;
	setAttr ".tk[161]" -type "float3" -0.14071725 0.17373577 0.045268834 ;
	setAttr ".tk[162]" -type "float3" -0.11970115 0.17373577 0.086106427 ;
	setAttr ".tk[163]" -type "float3" -2.2351742e-008 0.015366666 -2.4662475e-008 ;
	setAttr ".tk[164]" -type "float3" -0.086968511 0.17373577 0.11851515 ;
	setAttr ".tk[165]" -type "float3" -0.045721792 0.17373577 0.13932307 ;
	setAttr ".tk[166]" -type "float3" -2.1922197e-008 0.17373577 0.14649282 ;
	setAttr ".tk[167]" -type "float3" 0.045721792 0.17373577 0.13932301 ;
	setAttr ".tk[168]" -type "float3" 0.086968042 0.17373577 0.11851515 ;
	setAttr ".tk[169]" -type "float3" 0.11970115 0.17373577 0.086106263 ;
	setAttr ".tk[170]" -type "float3" 0.14071725 0.17373577 0.045268834 ;
	setAttr ".tk[171]" -type "float3" 0.14795871 0.17373577 -2.4662475e-008 ;
	setAttr ".tk[172]" -type "float3" 0.14071725 0.17373577 -0.045268834 ;
	setAttr ".tk[173]" -type "float3" 0.11970115 0.17373577 -0.086106524 ;
	setAttr ".tk[174]" -type "float3" 0.086967938 0.17373577 -0.11851515 ;
	setAttr ".tk[175]" -type "float3" 0.045721792 0.17373577 -0.13932309 ;
	setAttr ".tk[176]" -type "float3" -1.0961099e-008 0.17373577 -0.14649282 ;
	setAttr ".tk[177]" -type "float3" -0.045721792 0.17373577 -0.13932301 ;
	setAttr ".tk[178]" -type "float3" -0.086968049 0.17373577 -0.11851515 ;
	setAttr ".tk[179]" -type "float3" -0.11970115 0.17373577 -0.086106412 ;
	setAttr ".tk[180]" -type "float3" -0.14071725 0.17373577 -0.045268834 ;
	setAttr ".tk[181]" -type "float3" -0.14795871 0.17373577 -2.4662475e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[188]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6023823 6.2040863 0.58785468 ;
	setAttr ".rs" 50865;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6825853673951059 6.1760128057484716 0.52631357453586247 ;
	setAttr ".cbx" -type "double3" -1.5221791355149179 6.2321596658711522 0.64939579509021428 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[182:185]" -type "float3"  -0.91484308 0.76007342 0.52514505
		 -0.91484308 0.76007342 0.52514505 -0.91484308 0.64248466 0.52514505 -0.91484308 0.64248466
		 0.52514505;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[201]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1511846 5.8240495 0.3868233 ;
	setAttr ".rs" 33227;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6825853673951059 5.4159393823628514 0.12425072632552769 ;
	setAttr ".cbx" -type "double3" -0.61978364868325286 6.2321596658711522 0.64939585469485905 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[186:189]" -type "float3"  0.03954573 0.21196185 0.040216837
		 0.052412376 0.21196185 -0.040216882 -0.044277884 0.17527027 -0.040216882 -0.052412331
		 0.17527027 0.010633833;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.12798057 5.2772059 0.35937199 ;
	setAttr ".rs" 57515;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21596392376584106 5.1474510348324864 0.27226042888881352 ;
	setAttr ".cbx" -type "double3" -0.039997228814783625 5.4069609559064 0.44648352406741765 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[34]" -type "float3" 0 0.55018669 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.46158487 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.22515112 2.9802322e-008 ;
	setAttr ".tk[68]" -type "float3" 0 0.22515112 -2.9802322e-008 ;
	setAttr ".tk[69]" -type "float3" 0 0.20224956 -5.9604645e-008 ;
	setAttr ".tk[70]" -type "float3" 0 0.20224956 -2.9802322e-008 ;
	setAttr ".tk[71]" -type "float3" 0 0.32539985 2.9802322e-008 ;
	setAttr ".tk[76]" -type "float3" 0 0.22885682 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.09875913 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.09875913 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.09875913 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.18736099 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.18736099 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.032498419 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.17732303 2.9802322e-008 ;
	setAttr ".tk[88]" -type "float3" 0 -0.17732303 -2.9802322e-008 ;
	setAttr ".tk[89]" -type "float3" 0 -0.17732303 -5.9604645e-008 ;
	setAttr ".tk[90]" -type "float3" 0 -0.17732303 -2.9802322e-008 ;
	setAttr ".tk[91]" -type "float3" 0 -0.17732303 2.9802322e-008 ;
	setAttr ".tk[92]" -type "float3" 0 -0.09917812 0 ;
	setAttr ".tk[93]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[94]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.09917812 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.09917812 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.17732303 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.17732303 5.9604645e-008 ;
	setAttr ".tk[100]" -type "float3" 0 -0.17732303 2.9802322e-008 ;
	setAttr ".tk[101]" -type "float3" 0 -0.048150465 -2.9802322e-008 ;
	setAttr ".tk[102]" -type "float3" 0 -0.022444189 1.4901161e-008 ;
	setAttr ".tk[103]" -type "float3" 0 -0.022444189 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.022444189 7.1054274e-015 ;
	setAttr ".tk[105]" -type "float3" 0 0.3064937 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.3064937 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.17067945 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.17067945 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.25092357 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.25167596 0 ;
	setAttr ".tk[111]" -type "float3" 0 0.22706039 0 ;
	setAttr ".tk[112]" -type "float3" 0 0.22661348 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.19676578 0 ;
	setAttr ".tk[116]" -type "float3" 0 0.19631886 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.068464525 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.068464525 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.14038482 0 ;
	setAttr ".tk[120]" -type "float3" 0 0.14038482 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[164]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[165]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[166]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[167]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[168]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[169]" -type "float3" 0 -0.15175481 0 ;
	setAttr ".tk[170]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[171]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[175]" -type "float3" 0 -0.18271405 1.4901161e-008 ;
	setAttr ".tk[176]" -type "float3" 0 -0.18271405 0 ;
	setAttr ".tk[177]" -type "float3" 0 -0.18271405 0 ;
	setAttr ".tk[178]" -type "float3" 0 -0.18271405 -1.4901161e-008 ;
	setAttr ".tk[179]" -type "float3" 0 -0.18271405 0 ;
	setAttr ".tk[180]" -type "float3" 0 -0.18271405 7.4505806e-009 ;
	setAttr ".tk[181]" -type "float3" 0 -0.18271405 -7.1054274e-015 ;
	setAttr ".tk[182]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[183]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[184]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[185]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[186]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[187]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[188]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[189]" -type "float3" -0.18344395 0.39712852 0 ;
	setAttr ".tk[190]" -type "float3" -0.40674511 0.50558203 0.27025321 ;
	setAttr ".tk[191]" -type "float3" -0.46574697 0.40529934 0.2889322 ;
	setAttr ".tk[192]" -type "float3" -0.10679781 0.27403921 -0.0050469106 ;
	setAttr ".tk[193]" -type "float3" -0.031141575 0.31824085 -0.023726001 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.4611446 5.2772059 0.35937196 ;
	setAttr ".rs" 49683;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.37316124753790803 5.2026448762898534 0.27226041398765233 ;
	setAttr ".cbx" -type "double3" 0.54912792758780427 5.3517671144490331 0.44648352406741765 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[194:197]" -type "float3"  0.58912516 0.05519392 -1.4901161e-008
		 0.58912516 0.044259224 0 0.58912516 -0.05519392 -1.4901161e-008 0.58912516 -0.05519392
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 1 "f[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2966138 6.2516551 0.35937199 ;
	setAttr ".rs" 33950;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2086305530531973 6.1770938551907628 0.27226042888881352 ;
	setAttr ".cbx" -type "double3" 1.3845971734984488 6.3262160933499425 0.44648352406741765 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[198:201]" -type "float3"  0.83546931 0.97444898 0 0.83546931
		 0.97444898 0 0.83546931 0.97444898 0 0.83546931 0.97444898 0;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4983033 6.3109751 0.2637164 ;
	setAttr ".rs" 43956;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.264896026418981 6.1918654954915135 0.16906593881370213 ;
	setAttr ".cbx" -type "double3" 1.7317105443938345 6.4300844288354009 0.35836684845210698 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[202:205]" -type "float3"  0.3471134 0.10386816 -0.10319449
		 0.3471134 0.10386816 -0.10319449 0.3471134 0.10386816 -0.10319449 0.3471134 0.10386816
		 -0.10319449;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6437272 6.3555231 0.25617748 ;
	setAttr ".rs" 55897;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5557439239485831 6.2809620416646093 0.16906593881370213 ;
	setAttr ".cbx" -type "double3" 1.7317105443938345 6.4300842798237889 0.34328901909114506 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[206:209]" -type "float3"  0.29395717 0.23862149 -0.41445476
		 0.36250472 0.16168521 -0.36514577 0.1637295 0.10220503 -0.30605111 0.095182411 0.17914122
		 -0.35536018;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[223]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4256712 6.3035893 0.33562872 ;
	setAttr ".rs" 39193;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2086305530531973 6.1770940340046971 0.2247739299369016 ;
	setAttr ".cbx" -type "double3" 1.6427119882567496 6.4300842798237889 0.44648352406741765 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[210:213]" -type "float3"  0.25778723 0.29590669 -0.051542424
		 0.20512837 0.28716671 0.00059470412 0.27595359 0.20767371 0.051542424 0.30924472
		 0.20767371 0.018580951;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[223]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4256707 6.4646873 1.0689858 ;
	setAttr ".rs" 60835;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.354912272260961 6.4496155894284337 1.0162633969617048 ;
	setAttr ".cbx" -type "double3" 1.4964293153746695 6.4797592974190801 1.121708185894505 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[214:217]" -type "float3"  0.087666474 0.27252156 0.67522466
		 0.14628172 0.14331754 0.73492092 -0.14628266 0.17887905 0.73179322 -0.087666474 0.049675014
		 0.79148948;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 1 "f[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.623196 6.4813881 -0.074828364 ;
	setAttr ".rs" 51993;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.5806556852324576 6.4304867303853124 -0.11103978611706111 ;
	setAttr ".cbx" -type "double3" 1.6657363088591666 6.5322895563130468 -0.038616938965304826 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[198]" -type "float3" 0.085175812 0.066876628 0.10020831 ;
	setAttr ".tk[199]" -type "float3" 0.092506394 0 -0.025945369 ;
	setAttr ".tk[200]" -type "float3" 0.16115679 0 -0.016925268 ;
	setAttr ".tk[201]" -type "float3" 0.14212535 0.00097680662 0.15258224 ;
	setAttr ".tk[202]" -type "float3" -0.14212535 0.020975478 0.14581181 ;
	setAttr ".tk[203]" -type "float3" -0.10656825 0 -0.015135217 ;
	setAttr ".tk[204]" -type "float3" -0.037917871 0 -0.0061151162 ;
	setAttr ".tk[205]" -type "float3" -0.085175812 -0.044924367 0.19818573 ;
	setAttr ".tk[206]" -type "float3" -0.076082423 0 0.017470976 ;
	setAttr ".tk[207]" -type "float3" -0.046745036 0 0.021325691 ;
	setAttr ".tk[208]" -type "float3" -0.1318191 0 0.025945369 ;
	setAttr ".tk[209]" -type "float3" -0.16115677 0 0.022090649 ;
	setAttr ".tk[214]" -type "float3" 0.027768929 -0.053555556 -0.19818574 ;
	setAttr ".tk[215]" -type "float3" 0.046335302 -0.062357876 -0.17219269 ;
	setAttr ".tk[216]" -type "float3" -0.046334676 -0.058074512 -0.17758097 ;
	setAttr ".tk[217]" -type "float3" -0.027768929 -0.066876628 -0.15158783 ;
	setAttr ".tk[218]" -type "float3" -0.19245343 0.3360509 0.17896308 ;
	setAttr ".tk[219]" -type "float3" -0.17548551 0.28815052 0.17896308 ;
	setAttr ".tk[220]" -type "float3" -0.26017725 0.31146088 0.17896308 ;
	setAttr ".tk[221]" -type "float3" -0.24320985 0.26356098 0.17896308 ;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 1 "f[218]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.899607 5.8394804 0.36794293 ;
	setAttr ".rs" 64982;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.37316124753790803 5.3517671144490331 0.25533515356303838 ;
	setAttr ".cbx" -type "double3" 1.4260527999861807 6.327193311501035 0.48055067799808171 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[222:225]" -type "float3"  -0.16751537 0 -0.26197299
		 -0.16751537 0 -0.26197299 -0.16751537 0 -0.26197299 -0.16751537 0 -0.26197299;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:247]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.36545456333321624 6.1143098390584081 0.12425103924991276 1;
	setAttr ".s" -type "double3" 7.1560481786727905 7.1560481786727905 7.1560481786727905 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 230 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327
		 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0
		 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0
		 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327 0 0 -1.11933327
		 0 0 -1.11933327 0 0 -0.61366272 0 0 -0.63567066 0 0 -0.60426331 0 0 -0.60426331 0
		 0 -0.61436582 0 0 -0.61436582 0 0 -0.56004047 0 0 -0.55816054 0 0 -0.55119789 0 0
		 -0.56606495 0 0 -0.52831972 0 0 -0.52831972 0 0 -0.63567066 0 0 -0.63567066 0 0 -0.46833348
		 0 0 -0.40623412 0 0 -0.54662311 0 0 -0.54855514 0 0 -0.54855514 0 0 -0.61366272 0
		 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0
		 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497
		 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0
		 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0
		 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -0.21928233 0 0 -0.18197319
		 0 0 -0.166738 0 0 -0.166738 0 0 -0.15657672 0 0 -0.15657672 0 0 -0.21121758 0 0 -0.31337371
		 0 0 -0.27678254 0 0 -0.2515786 0 0 -0.3127251 0 0 -0.24311891 0 0 -0.15193582 0 0
		 -0.15193582 0 0 -0.15193582 0 0 -0.21403509 0 0 -0.21403509 0 0 -0.26908854 0 0 -0.26908854
		 0 0 -0.21928233 0 0 -0.050055437 0 0 -0.059939675 0 0 -0.036972575 0 0 -0.036972575
		 0 0 -0.036972575 0 0 -0.036972575 0 0 -0.036972575 0 0 -0.013205116 0 0 0.13774472
		 0 0 0.13774472 0 0 0.016959483 0 0 -0.013205116 0 0 -0.013205116 0 0 -0.036972575
		 0 0 -0.036972575 0 0 -0.036972575 0 0 -0.064700164 0 0 -0.056881718 0 0 -0.056881718
		 0 0 -0.056881718 0 0 -0.2975333 0 0 -0.2975333 0 0 -0.20234355 0 0 -0.20234355 0
		 0 -0.25858524 0 0 -0.25911251 0 0 -0.24185994 0 0 -0.24154666 0 0 -0.30445579 0 0
		 -0.30521205 0 0 -0.22062689 0 0 -0.22031385 0 0 -0.13070282 0 0 -0.13070282 0 0 -0.18111059
		 0 0 -0.18111059 0 0 -0.36968893 0 0 -0.36968893 0 0 -0.27531818 0 0 -0.27531818 0
		 0 -0.27362946 0 0 -0.27362946 0 0 -0.17925856 0 0 -0.17925856 0 0 -0.019554203 0
		 0 -0.019554203 0 0 0.0046502901 0 0 0.0046502901 0 0 -0.33482042 0 0 -0.33163348
		 0 0 -0.31337371 0 0 -0.31018689 0 0 -0.24520162 0 0 -0.24352422 0 0 -0.23391265 0
		 0 -0.23223525 0 0 -0.056832843 0 0 -0.055155449 0 0 -0.045543961 0 0 -0.043866567
		 0 0 -0.30559328 0 0 -0.3087801 0 0 -0.30559328 0 0 -0.3087801 0 0 -0.22764164 0 0
		 -0.22931904 0 0 -0.039272957 0 0 -0.04095035 0 0 -1.29474497 0 0 -1.29474497 0 0
		 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497 0 0 -1.29474497
		 0 0 0.069800563 0 0 0.023644859 0 0 0.021633202 0 0 0.023644859 0 0 0.023644859 0;
	setAttr ".tk[166:229]" 0 0.023644859 0 0 0.023644859 0 0 0.023644859 0 0 0.023644859
		 0 0 0.19058552 0 0 0.19058552 0 0 0.069800563 0 0 0.069800563 0 0 0.069800563 0 0
		 0.014228757 0 0 0.014228757 0 0 0.014228757 0 0 0.014228757 0 0 0.014228757 0 0 0.014228757
		 0 0 0.014228757 0 0 0.36891794 0 0 0.36891794 0 0 0.38599479 0 0 0.38599479 0 0 0.43338525
		 0 0 0.43338525 0 0 0.43930233 0 0 0.43930233 0 0 0.1707302 0 0 0.19307068 0 0 0.34855744
		 0 0 0.34492439 0 0 -0.047913246 0 0 -0.043420486 0 0 -0.0025582956 0 0 -0.0025582956
		 0 0 0.26880187 0 0 0.25295439 0 0 0.29381654 0 0 0.29411373 0 0 0.28643224 0 0 0.28454548
		 0 0 0.32540756 0 0 0.31174406 0 0 0.32552987 0 0 0.34299248 0 0 0.356493 0 0 0.33903021
		 0 0 0.3700515 0 0 0.3718859 0 0 0.38857067 0 0 0.38857067 0 0 0.31505927 0 0 0.31844005
		 0 0 0.31679496 0 0 0.32017574 0 0 0.43355644 0 0 0.42504609 0 0 0.42918766 0 0 0.42067719
		 0 0 0.32552987 0 0 0.34299248 0 0 0.356493 0 0 0.33903021 0 0.088885739 0.20837697
		 0.018967304 0.07938578 0.20837697 0.045399915 -0.076172501 0.2902666 -0.053430725
		 -0.088885732 0.29018459 0.053430721;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 100 0 0 0 0 100 0 0 0 0 100 0 -0.36545456333321624 564.88135733266677 0.12425103924996961 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry1.og" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace10.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace11.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace12.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace13.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace14.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace15.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace17.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace18.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace19.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace20.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace21.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace22.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace23.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace24.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace25.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace26.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace27.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace28.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace29.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polyAutoProj1.ip";
connectAttr "pCylinderShape1.wm" "polyAutoProj1.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak30.ip";
connectAttr "polyAutoProj1.out" "transformGeometry1.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Tree.ma
