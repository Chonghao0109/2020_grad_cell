/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Sun Mar  3 18:37:03 2024
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   n1562, n1563, n1564, n1565, n1566, \string_data[31][7] ,
         \string_data[31][6] , \string_data[31][5] , \string_data[31][4] ,
         \string_data[31][3] , \string_data[31][2] , \string_data[31][1] ,
         \string_data[31][0] , \string_data[30][7] , \string_data[30][6] ,
         \string_data[30][5] , \string_data[30][4] , \string_data[30][3] ,
         \string_data[30][2] , \string_data[30][1] , \string_data[30][0] ,
         \string_data[29][7] , \string_data[29][6] , \string_data[29][5] ,
         \string_data[29][4] , \string_data[29][3] , \string_data[29][2] ,
         \string_data[29][1] , \string_data[29][0] , \string_data[28][7] ,
         \string_data[28][6] , \string_data[28][5] , \string_data[28][4] ,
         \string_data[28][3] , \string_data[28][2] , \string_data[28][1] ,
         \string_data[28][0] , \string_data[27][7] , \string_data[27][6] ,
         \string_data[27][5] , \string_data[27][4] , \string_data[27][3] ,
         \string_data[27][2] , \string_data[27][1] , \string_data[27][0] ,
         \string_data[26][7] , \string_data[26][6] , \string_data[26][5] ,
         \string_data[26][4] , \string_data[26][3] , \string_data[26][2] ,
         \string_data[26][1] , \string_data[26][0] , \string_data[25][7] ,
         \string_data[25][6] , \string_data[25][5] , \string_data[25][4] ,
         \string_data[25][3] , \string_data[25][2] , \string_data[25][1] ,
         \string_data[25][0] , \string_data[24][7] , \string_data[24][6] ,
         \string_data[24][5] , \string_data[24][4] , \string_data[24][3] ,
         \string_data[24][2] , \string_data[24][1] , \string_data[24][0] ,
         \string_data[23][7] , \string_data[23][6] , \string_data[23][5] ,
         \string_data[23][4] , \string_data[23][3] , \string_data[23][2] ,
         \string_data[23][1] , \string_data[23][0] , \string_data[22][7] ,
         \string_data[22][6] , \string_data[22][5] , \string_data[22][4] ,
         \string_data[22][3] , \string_data[22][2] , \string_data[22][1] ,
         \string_data[22][0] , \string_data[21][7] , \string_data[21][6] ,
         \string_data[21][5] , \string_data[21][4] , \string_data[21][3] ,
         \string_data[21][2] , \string_data[21][1] , \string_data[21][0] ,
         \string_data[20][7] , \string_data[20][6] , \string_data[20][5] ,
         \string_data[20][4] , \string_data[20][3] , \string_data[20][2] ,
         \string_data[20][1] , \string_data[20][0] , \string_data[19][7] ,
         \string_data[19][6] , \string_data[19][5] , \string_data[19][4] ,
         \string_data[19][3] , \string_data[19][2] , \string_data[19][1] ,
         \string_data[19][0] , \string_data[18][7] , \string_data[18][6] ,
         \string_data[18][5] , \string_data[18][4] , \string_data[18][3] ,
         \string_data[18][2] , \string_data[18][1] , \string_data[18][0] ,
         \string_data[17][7] , \string_data[17][6] , \string_data[17][5] ,
         \string_data[17][4] , \string_data[17][3] , \string_data[17][2] ,
         \string_data[17][1] , \string_data[17][0] , \string_data[16][7] ,
         \string_data[16][6] , \string_data[16][5] , \string_data[16][4] ,
         \string_data[16][3] , \string_data[16][2] , \string_data[16][1] ,
         \string_data[16][0] , \string_data[15][7] , \string_data[15][6] ,
         \string_data[15][5] , \string_data[15][4] , \string_data[15][3] ,
         \string_data[15][2] , \string_data[15][1] , \string_data[15][0] ,
         \string_data[14][7] , \string_data[14][6] , \string_data[14][5] ,
         \string_data[14][4] , \string_data[14][3] , \string_data[14][2] ,
         \string_data[14][1] , \string_data[14][0] , \string_data[13][7] ,
         \string_data[13][6] , \string_data[13][5] , \string_data[13][4] ,
         \string_data[13][3] , \string_data[13][2] , \string_data[13][1] ,
         \string_data[13][0] , \string_data[12][7] , \string_data[12][6] ,
         \string_data[12][5] , \string_data[12][4] , \string_data[12][3] ,
         \string_data[12][2] , \string_data[12][1] , \string_data[12][0] ,
         \string_data[11][7] , \string_data[11][6] , \string_data[11][5] ,
         \string_data[11][4] , \string_data[11][3] , \string_data[11][2] ,
         \string_data[11][1] , \string_data[11][0] , \string_data[10][7] ,
         \string_data[10][6] , \string_data[10][5] , \string_data[10][4] ,
         \string_data[10][3] , \string_data[10][2] , \string_data[10][1] ,
         \string_data[10][0] , \string_data[9][7] , \string_data[9][6] ,
         \string_data[9][5] , \string_data[9][4] , \string_data[9][3] ,
         \string_data[9][2] , \string_data[9][1] , \string_data[9][0] ,
         \string_data[8][7] , \string_data[8][6] , \string_data[8][5] ,
         \string_data[8][4] , \string_data[8][3] , \string_data[8][2] ,
         \string_data[8][1] , \string_data[8][0] , \string_data[7][7] ,
         \string_data[7][6] , \string_data[7][5] , \string_data[7][4] ,
         \string_data[7][3] , \string_data[7][2] , \string_data[7][1] ,
         \string_data[7][0] , \string_data[6][7] , \string_data[6][6] ,
         \string_data[6][5] , \string_data[6][4] , \string_data[6][3] ,
         \string_data[6][2] , \string_data[6][1] , \string_data[6][0] ,
         \string_data[5][7] , \string_data[5][6] , \string_data[5][5] ,
         \string_data[5][4] , \string_data[5][3] , \string_data[5][2] ,
         \string_data[5][1] , \string_data[5][0] , \string_data[4][7] ,
         \string_data[4][6] , \string_data[4][5] , \string_data[4][4] ,
         \string_data[4][3] , \string_data[4][2] , \string_data[4][1] ,
         \string_data[4][0] , \string_data[3][7] , \string_data[3][6] ,
         \string_data[3][5] , \string_data[3][4] , \string_data[3][3] ,
         \string_data[3][2] , \string_data[3][1] , \string_data[3][0] ,
         \string_data[2][7] , \string_data[2][6] , \string_data[2][5] ,
         \string_data[2][4] , \string_data[2][3] , \string_data[2][2] ,
         \string_data[2][1] , \string_data[2][0] , \string_data[1][7] ,
         \string_data[1][6] , \string_data[1][5] , \string_data[1][4] ,
         \string_data[1][3] , \string_data[1][2] , \string_data[1][1] ,
         \string_data[1][0] , \string_data[0][7] , \string_data[0][6] ,
         \string_data[0][5] , \string_data[0][4] , \string_data[0][3] ,
         \string_data[0][2] , \string_data[0][1] , \string_data[0][0] ,
         \pattern_data[7][7] , \pattern_data[7][6] , \pattern_data[7][5] ,
         \pattern_data[7][4] , \pattern_data[7][3] , \pattern_data[7][2] ,
         \pattern_data[7][1] , \pattern_data[7][0] , \pattern_data[6][7] ,
         \pattern_data[6][6] , \pattern_data[6][5] , \pattern_data[6][4] ,
         \pattern_data[6][3] , \pattern_data[6][2] , \pattern_data[6][1] ,
         \pattern_data[6][0] , \pattern_data[5][7] , \pattern_data[5][6] ,
         \pattern_data[5][5] , \pattern_data[5][4] , \pattern_data[5][3] ,
         \pattern_data[5][2] , \pattern_data[5][1] , \pattern_data[5][0] ,
         \pattern_data[4][7] , \pattern_data[4][6] , \pattern_data[4][5] ,
         \pattern_data[4][4] , \pattern_data[4][3] , \pattern_data[4][2] ,
         \pattern_data[4][1] , \pattern_data[4][0] , \pattern_data[3][7] ,
         \pattern_data[3][6] , \pattern_data[3][5] , \pattern_data[3][4] ,
         \pattern_data[3][3] , \pattern_data[3][2] , \pattern_data[3][1] ,
         \pattern_data[3][0] , \pattern_data[2][7] , \pattern_data[2][6] ,
         \pattern_data[2][5] , \pattern_data[2][4] , \pattern_data[2][3] ,
         \pattern_data[2][2] , \pattern_data[2][1] , \pattern_data[2][0] ,
         \pattern_data[1][7] , \pattern_data[1][6] , \pattern_data[1][5] ,
         \pattern_data[1][4] , \pattern_data[1][3] , \pattern_data[1][2] ,
         \pattern_data[1][1] , \pattern_data[1][0] , \pattern_data[0][7] ,
         \pattern_data[0][6] , \pattern_data[0][5] , \pattern_data[0][4] ,
         \pattern_data[0][3] , \pattern_data[0][2] , \pattern_data[0][1] ,
         \pattern_data[0][0] , back_chance, direction, N410, N411, N412, N413,
         N418, N419, N420, N421, N422, N522, N523, N525, N526, N527, N528,
         N529, N530, N531, N532, N533, N534, N535, N536, N537, N539, N540,
         N541, N542, N543, N544, N545, N546, N547, N548, N549, N550, N552,
         N553, N554, N555, N557, N558, N559, N560, N561, N562, N563, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n764,
         n765, n766, n767, n768, \DP_OP_154J1_126_6304/n12 ,
         \DP_OP_154J1_126_6304/n11 , \DP_OP_154J1_126_6304/n6 ,
         \DP_OP_154J1_126_6304/n5 , \DP_OP_154J1_126_6304/n4 ,
         \DP_OP_154J1_126_6304/n3 , \DP_OP_154J1_126_6304/n2 , \intadd_0/A[3] ,
         \intadd_0/A[2] , \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/B[1] ,
         \intadd_0/CI , \intadd_0/SUM[3] , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n4 , \intadd_0/n3 ,
         \intadd_0/n2 , \intadd_0/n1 , \intadd_1/n4 , \intadd_1/n3 ,
         \intadd_1/n2 , \intadd_1/n1 , n772, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1548, n1551, n1552, n1553, n1554, n1555,
         n1556, n1557, n1558, n1559, n1560, n1561;
  wire   [1:0] state;
  wire   [5:0] string_length;
  wire   [4:0] pattern_length;
  wire   [5:0] pattern_counter;
  wire   [5:0] string_counter;

  DFFRX1 back_chance_reg ( .D(n768), .CK(clk), .RN(n719), .Q(back_chance), 
        .QN(n1545) );
  DFFRX1 \pattern_length_reg[4]  ( .D(n762), .CK(clk), .RN(n719), .Q(
        pattern_length[4]), .QN(n1546) );
  DFFRX1 \pattern_length_reg[3]  ( .D(n761), .CK(clk), .RN(n719), .Q(
        pattern_length[3]), .QN(n1542) );
  DFFRX1 \pattern_length_reg[2]  ( .D(n760), .CK(clk), .RN(n719), .Q(
        pattern_length[2]), .QN(n1544) );
  DFFRX1 \string_length_reg[5]  ( .D(n766), .CK(clk), .RN(n719), .Q(
        string_length[5]), .QN(n1540) );
  DFFRX1 \string_length_reg[4]  ( .D(n749), .CK(clk), .RN(n719), .Q(
        string_length[4]), .QN(n1536) );
  DFFQX1 \pattern_data_reg[0][0]  ( .D(n758), .CK(clk), .Q(
        \pattern_data[0][0] ) );
  DFFQX1 \pattern_data_reg[0][1]  ( .D(n757), .CK(clk), .Q(
        \pattern_data[0][1] ) );
  DFFQX1 \pattern_data_reg[0][2]  ( .D(n756), .CK(clk), .Q(
        \pattern_data[0][2] ) );
  DFFQX1 \pattern_data_reg[0][3]  ( .D(n755), .CK(clk), .Q(
        \pattern_data[0][3] ) );
  DFFQX1 \pattern_data_reg[0][4]  ( .D(n754), .CK(clk), .Q(
        \pattern_data[0][4] ) );
  DFFQX1 \pattern_data_reg[0][5]  ( .D(n753), .CK(clk), .Q(
        \pattern_data[0][5] ) );
  DFFQX1 \pattern_data_reg[0][6]  ( .D(n752), .CK(clk), .Q(
        \pattern_data[0][6] ) );
  DFFQX1 \pattern_data_reg[0][7]  ( .D(n751), .CK(clk), .Q(
        \pattern_data[0][7] ) );
  DFFQX1 \string_data_reg[0][0]  ( .D(n745), .CK(clk), .Q(\string_data[0][0] )
         );
  DFFQX1 \string_data_reg[0][1]  ( .D(n744), .CK(clk), .Q(\string_data[0][1] )
         );
  DFFQX1 \string_data_reg[0][2]  ( .D(n743), .CK(clk), .Q(\string_data[0][2] )
         );
  DFFQX1 \string_data_reg[0][3]  ( .D(n742), .CK(clk), .Q(\string_data[0][3] )
         );
  DFFQX1 \string_data_reg[0][4]  ( .D(n741), .CK(clk), .Q(\string_data[0][4] )
         );
  DFFQX1 \string_data_reg[0][5]  ( .D(n740), .CK(clk), .Q(\string_data[0][5] )
         );
  DFFQX1 \string_data_reg[0][6]  ( .D(n739), .CK(clk), .Q(\string_data[0][6] )
         );
  DFFQX1 \string_data_reg[0][7]  ( .D(n738), .CK(clk), .Q(\string_data[0][7] )
         );
  ADDFXL \DP_OP_154J1_126_6304/U7  ( .A(string_counter[0]), .B(n1548), .CI(
        \DP_OP_154J1_126_6304/n12 ), .CO(\DP_OP_154J1_126_6304/n6 ), .S(N418)
         );
  ADDFXL \DP_OP_154J1_126_6304/U6  ( .A(\DP_OP_154J1_126_6304/n11 ), .B(
        string_counter[1]), .CI(\DP_OP_154J1_126_6304/n6 ), .CO(
        \DP_OP_154J1_126_6304/n5 ), .S(N419) );
  ADDFXL \DP_OP_154J1_126_6304/U5  ( .A(n1548), .B(string_counter[2]), .CI(
        \DP_OP_154J1_126_6304/n5 ), .CO(\DP_OP_154J1_126_6304/n4 ), .S(N420)
         );
  ADDFXL \DP_OP_154J1_126_6304/U4  ( .A(n1548), .B(string_counter[3]), .CI(
        \DP_OP_154J1_126_6304/n4 ), .CO(\DP_OP_154J1_126_6304/n3 ), .S(N421)
         );
  ADDFXL \DP_OP_154J1_126_6304/U3  ( .A(n1548), .B(string_counter[4]), .CI(
        \DP_OP_154J1_126_6304/n3 ), .CO(\DP_OP_154J1_126_6304/n2 ), .S(N422)
         );
  ADDFXL \intadd_0/U5  ( .A(n1537), .B(pattern_length[1]), .CI(\intadd_0/CI ), 
        .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[0] ) );
  ADDFXL \intadd_0/U4  ( .A(n1532), .B(\intadd_0/B[1] ), .CI(\intadd_0/n4 ), 
        .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[1] ) );
  ADDFXL \intadd_1/U5  ( .A(pattern_counter[0]), .B(pattern_counter[1]), .CI(
        n1548), .CO(\intadd_1/n4 ), .S(N410) );
  DFFRX1 \match_index_reg[0]  ( .D(n737), .CK(clk), .RN(n719), .Q(n1534), .QN(
        n1539) );
  DFFRX1 \match_index_reg[2]  ( .D(n736), .CK(clk), .RN(n719), .Q(n1565), .QN(
        n1533) );
  DFFRX1 \state_reg[0]  ( .D(n764), .CK(clk), .RN(n719), .Q(state[0]), .QN(
        n1531) );
  DFFQX1 \pattern_counter_reg[5]  ( .D(n721), .CK(clk), .Q(pattern_counter[5])
         );
  DFFQX1 \pattern_counter_reg[4]  ( .D(n722), .CK(clk), .Q(pattern_counter[4])
         );
  DFFQX1 \pattern_counter_reg[3]  ( .D(n723), .CK(clk), .Q(pattern_counter[3])
         );
  DFFQX1 \string_counter_reg[5]  ( .D(n726), .CK(clk), .Q(string_counter[5])
         );
  DFFQX1 \string_counter_reg[1]  ( .D(n730), .CK(clk), .Q(string_counter[1])
         );
  DFFQX1 \pattern_counter_reg[1]  ( .D(n732), .CK(clk), .Q(pattern_counter[1])
         );
  DFFQX1 \pattern_counter_reg[2]  ( .D(n724), .CK(clk), .Q(pattern_counter[2])
         );
  DFFRX1 match_reg ( .D(n733), .CK(clk), .RN(n719), .Q(n1562), .QN(n772) );
  DFFRX1 \match_index_reg[1]  ( .D(n765), .CK(clk), .RN(n719), .Q(n1566), .QN(
        n1537) );
  ADDFXL \intadd_1/U4  ( .A(n1548), .B(pattern_counter[2]), .CI(\intadd_1/n4 ), 
        .CO(\intadd_1/n3 ), .S(N411) );
  ADDFXL \intadd_1/U2  ( .A(n1548), .B(pattern_counter[4]), .CI(\intadd_1/n2 ), 
        .CO(\intadd_1/n1 ), .S(N413) );
  ADDFXL \intadd_1/U3  ( .A(n1548), .B(pattern_counter[3]), .CI(\intadd_1/n3 ), 
        .CO(\intadd_1/n2 ), .S(N412) );
  ADDFXL \intadd_0/U3  ( .A(\intadd_0/A[2] ), .B(\intadd_0/B[2] ), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[2] ) );
  ADDFXL \intadd_0/U2  ( .A(\intadd_0/A[3] ), .B(\intadd_0/B[3] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[3] ) );
  DFFX1 direction_reg ( .D(n720), .CK(clk), .Q(direction), .QN(n1559) );
  DFFSX1 \pattern_length_reg[0]  ( .D(n1560), .CK(clk), .SN(n719), .Q(n1538), 
        .QN(pattern_length[0]) );
  EDFFXL \pattern_data_reg[5][1]  ( .D(chardata[1]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][1] ) );
  EDFFXL \pattern_data_reg[2][0]  ( .D(chardata[0]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][0] ) );
  EDFFXL \pattern_data_reg[4][7]  ( .D(n1558), .E(N560), .CK(clk), .Q(
        \pattern_data[4][7] ) );
  DFFRX1 \match_index_reg[4]  ( .D(n734), .CK(clk), .RN(n719), .Q(n1563), .QN(
        n1529) );
  DFFRX1 \match_index_reg[3]  ( .D(n735), .CK(clk), .RN(n719), .Q(n1564), .QN(
        n1528) );
  EDFFXL \string_data_reg[29][2]  ( .D(n1553), .E(N553), .CK(clk), .Q(
        \string_data[29][2] ) );
  EDFFXL \string_data_reg[29][3]  ( .D(n1554), .E(N553), .CK(clk), .Q(
        \string_data[29][3] ) );
  EDFFXL \string_data_reg[29][4]  ( .D(n1555), .E(N553), .CK(clk), .Q(
        \string_data[29][4] ) );
  EDFFXL \string_data_reg[29][5]  ( .D(n1556), .E(N553), .CK(clk), .Q(
        \string_data[29][5] ) );
  EDFFXL \string_data_reg[29][6]  ( .D(n1557), .E(N553), .CK(clk), .Q(
        \string_data[29][6] ) );
  EDFFXL \string_data_reg[29][7]  ( .D(chardata[7]), .E(N553), .CK(clk), .Q(
        \string_data[29][7] ) );
  EDFFXL \string_data_reg[10][2]  ( .D(chardata[2]), .E(N532), .CK(clk), .Q(
        \string_data[10][2] ) );
  EDFFXL \string_data_reg[10][3]  ( .D(chardata[3]), .E(N532), .CK(clk), .Q(
        \string_data[10][3] ) );
  EDFFXL \string_data_reg[10][4]  ( .D(chardata[4]), .E(N532), .CK(clk), .Q(
        \string_data[10][4] ) );
  EDFFXL \string_data_reg[10][5]  ( .D(chardata[5]), .E(N532), .CK(clk), .Q(
        \string_data[10][5] ) );
  EDFFXL \string_data_reg[10][6]  ( .D(chardata[6]), .E(N532), .CK(clk), .Q(
        \string_data[10][6] ) );
  EDFFXL \string_data_reg[10][7]  ( .D(chardata[7]), .E(N532), .CK(clk), .Q(
        \string_data[10][7] ) );
  EDFFXL \pattern_data_reg[7][6]  ( .D(chardata[6]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][6] ) );
  EDFFXL \pattern_data_reg[7][5]  ( .D(chardata[5]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][5] ) );
  EDFFXL \pattern_data_reg[7][4]  ( .D(chardata[4]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][4] ) );
  EDFFXL \pattern_data_reg[7][3]  ( .D(chardata[3]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][3] ) );
  EDFFXL \pattern_data_reg[7][2]  ( .D(chardata[2]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][2] ) );
  EDFFXL \pattern_data_reg[7][1]  ( .D(chardata[1]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][1] ) );
  EDFFXL \pattern_data_reg[1][2]  ( .D(chardata[2]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][2] ) );
  EDFFXL \pattern_data_reg[1][3]  ( .D(chardata[3]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][3] ) );
  EDFFXL \pattern_data_reg[1][4]  ( .D(chardata[4]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][4] ) );
  EDFFXL \pattern_data_reg[1][5]  ( .D(chardata[5]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][5] ) );
  EDFFXL \pattern_data_reg[1][6]  ( .D(chardata[6]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][6] ) );
  EDFFXL \pattern_data_reg[1][7]  ( .D(n1558), .E(N557), .CK(clk), .Q(
        \pattern_data[1][7] ) );
  EDFFXL \string_data_reg[1][2]  ( .D(n1553), .E(N522), .CK(clk), .Q(
        \string_data[1][2] ) );
  EDFFXL \string_data_reg[1][3]  ( .D(n1554), .E(N522), .CK(clk), .Q(
        \string_data[1][3] ) );
  EDFFXL \string_data_reg[1][4]  ( .D(n1555), .E(N522), .CK(clk), .Q(
        \string_data[1][4] ) );
  EDFFXL \string_data_reg[1][5]  ( .D(n1556), .E(N522), .CK(clk), .Q(
        \string_data[1][5] ) );
  EDFFXL \string_data_reg[1][6]  ( .D(n1557), .E(N522), .CK(clk), .Q(
        \string_data[1][6] ) );
  EDFFXL \string_data_reg[1][7]  ( .D(chardata[7]), .E(N522), .CK(clk), .Q(
        \string_data[1][7] ) );
  EDFFXL \string_data_reg[19][2]  ( .D(n1553), .E(N542), .CK(clk), .Q(
        \string_data[19][2] ) );
  EDFFXL \string_data_reg[19][3]  ( .D(n1554), .E(N542), .CK(clk), .Q(
        \string_data[19][3] ) );
  EDFFXL \string_data_reg[19][4]  ( .D(n1555), .E(N542), .CK(clk), .Q(
        \string_data[19][4] ) );
  EDFFXL \string_data_reg[19][5]  ( .D(n1556), .E(N542), .CK(clk), .Q(
        \string_data[19][5] ) );
  EDFFXL \string_data_reg[19][6]  ( .D(n1557), .E(N542), .CK(clk), .Q(
        \string_data[19][6] ) );
  EDFFXL \string_data_reg[19][7]  ( .D(n1558), .E(N542), .CK(clk), .Q(
        \string_data[19][7] ) );
  DFFRX2 \state_reg[1]  ( .D(n767), .CK(clk), .RN(n719), .Q(state[1]), .QN(
        n1561) );
  DFFQX2 \string_counter_reg[3]  ( .D(n728), .CK(clk), .Q(string_counter[3])
         );
  DFFQX2 \pattern_counter_reg[0]  ( .D(n725), .CK(clk), .Q(pattern_counter[0])
         );
  DFFRX2 \pattern_length_reg[1]  ( .D(n759), .CK(clk), .RN(n719), .Q(
        pattern_length[1]), .QN(n1532) );
  DFFRX2 \string_length_reg[0]  ( .D(n750), .CK(clk), .RN(n719), .Q(
        string_length[0]), .QN(n1530) );
  EDFFXL \string_data_reg[22][2]  ( .D(n1553), .E(N545), .CK(clk), .Q(
        \string_data[22][2] ) );
  EDFFXL \string_data_reg[22][3]  ( .D(n1554), .E(N545), .CK(clk), .Q(
        \string_data[22][3] ) );
  EDFFXL \string_data_reg[22][4]  ( .D(n1555), .E(N545), .CK(clk), .Q(
        \string_data[22][4] ) );
  EDFFXL \string_data_reg[22][5]  ( .D(chardata[5]), .E(N545), .CK(clk), .Q(
        \string_data[22][5] ) );
  EDFFXL \string_data_reg[22][6]  ( .D(n1557), .E(N545), .CK(clk), .Q(
        \string_data[22][6] ) );
  EDFFXL \string_data_reg[22][7]  ( .D(n1558), .E(N545), .CK(clk), .Q(
        \string_data[22][7] ) );
  EDFFXL \string_data_reg[21][2]  ( .D(n1553), .E(N544), .CK(clk), .Q(
        \string_data[21][2] ) );
  EDFFXL \string_data_reg[21][3]  ( .D(n1554), .E(N544), .CK(clk), .Q(
        \string_data[21][3] ) );
  EDFFXL \string_data_reg[21][4]  ( .D(n1555), .E(N544), .CK(clk), .Q(
        \string_data[21][4] ) );
  EDFFXL \string_data_reg[21][5]  ( .D(n1556), .E(N544), .CK(clk), .Q(
        \string_data[21][5] ) );
  EDFFXL \string_data_reg[21][6]  ( .D(n1557), .E(N544), .CK(clk), .Q(
        \string_data[21][6] ) );
  EDFFXL \string_data_reg[21][7]  ( .D(n1558), .E(N544), .CK(clk), .Q(
        \string_data[21][7] ) );
  EDFFXL \string_data_reg[17][2]  ( .D(n1553), .E(N540), .CK(clk), .Q(
        \string_data[17][2] ) );
  EDFFXL \string_data_reg[17][3]  ( .D(n1554), .E(N540), .CK(clk), .Q(
        \string_data[17][3] ) );
  EDFFXL \string_data_reg[17][4]  ( .D(n1555), .E(N540), .CK(clk), .Q(
        \string_data[17][4] ) );
  EDFFXL \string_data_reg[17][5]  ( .D(n1556), .E(N540), .CK(clk), .Q(
        \string_data[17][5] ) );
  EDFFXL \string_data_reg[17][6]  ( .D(n1557), .E(N540), .CK(clk), .Q(
        \string_data[17][6] ) );
  EDFFXL \string_data_reg[17][7]  ( .D(n1558), .E(N540), .CK(clk), .Q(
        \string_data[17][7] ) );
  EDFFXL \string_data_reg[20][2]  ( .D(n1553), .E(N543), .CK(clk), .Q(
        \string_data[20][2] ) );
  EDFFXL \string_data_reg[20][3]  ( .D(n1554), .E(N543), .CK(clk), .Q(
        \string_data[20][3] ) );
  EDFFXL \string_data_reg[20][4]  ( .D(n1555), .E(N543), .CK(clk), .Q(
        \string_data[20][4] ) );
  EDFFXL \string_data_reg[20][5]  ( .D(n1556), .E(N543), .CK(clk), .Q(
        \string_data[20][5] ) );
  EDFFXL \string_data_reg[20][6]  ( .D(n1557), .E(N543), .CK(clk), .Q(
        \string_data[20][6] ) );
  EDFFXL \string_data_reg[20][7]  ( .D(n1558), .E(N543), .CK(clk), .Q(
        \string_data[20][7] ) );
  EDFFXL \string_data_reg[18][2]  ( .D(n1553), .E(N541), .CK(clk), .Q(
        \string_data[18][2] ) );
  EDFFXL \string_data_reg[18][3]  ( .D(n1554), .E(N541), .CK(clk), .Q(
        \string_data[18][3] ) );
  EDFFXL \string_data_reg[18][4]  ( .D(n1555), .E(N541), .CK(clk), .Q(
        \string_data[18][4] ) );
  EDFFXL \string_data_reg[18][5]  ( .D(n1556), .E(N541), .CK(clk), .Q(
        \string_data[18][5] ) );
  EDFFXL \string_data_reg[18][6]  ( .D(n1557), .E(N541), .CK(clk), .Q(
        \string_data[18][6] ) );
  EDFFXL \string_data_reg[18][7]  ( .D(n1558), .E(N541), .CK(clk), .Q(
        \string_data[18][7] ) );
  EDFFXL \string_data_reg[23][2]  ( .D(n1553), .E(N546), .CK(clk), .Q(
        \string_data[23][2] ) );
  EDFFXL \string_data_reg[23][3]  ( .D(n1554), .E(N546), .CK(clk), .Q(
        \string_data[23][3] ) );
  EDFFXL \string_data_reg[23][4]  ( .D(n1555), .E(N546), .CK(clk), .Q(
        \string_data[23][4] ) );
  EDFFXL \string_data_reg[23][5]  ( .D(chardata[5]), .E(N546), .CK(clk), .Q(
        \string_data[23][5] ) );
  EDFFXL \string_data_reg[23][6]  ( .D(n1557), .E(N546), .CK(clk), .Q(
        \string_data[23][6] ) );
  EDFFXL \string_data_reg[23][7]  ( .D(n1558), .E(N546), .CK(clk), .Q(
        \string_data[23][7] ) );
  EDFFXL \string_data_reg[11][6]  ( .D(chardata[6]), .E(N533), .CK(clk), .Q(
        \string_data[11][6] ) );
  EDFFXL \string_data_reg[11][5]  ( .D(chardata[5]), .E(N533), .CK(clk), .Q(
        \string_data[11][5] ) );
  EDFFXL \string_data_reg[11][4]  ( .D(chardata[4]), .E(N533), .CK(clk), .Q(
        \string_data[11][4] ) );
  EDFFXL \string_data_reg[11][3]  ( .D(chardata[3]), .E(N533), .CK(clk), .Q(
        \string_data[11][3] ) );
  EDFFXL \string_data_reg[11][2]  ( .D(chardata[2]), .E(N533), .CK(clk), .Q(
        \string_data[11][2] ) );
  EDFFXL \string_data_reg[11][1]  ( .D(chardata[1]), .E(N533), .CK(clk), .Q(
        \string_data[11][1] ) );
  EDFFXL \string_data_reg[9][2]  ( .D(chardata[2]), .E(N531), .CK(clk), .Q(
        \string_data[9][2] ) );
  EDFFXL \string_data_reg[9][3]  ( .D(chardata[3]), .E(N531), .CK(clk), .Q(
        \string_data[9][3] ) );
  EDFFXL \string_data_reg[9][4]  ( .D(chardata[4]), .E(N531), .CK(clk), .Q(
        \string_data[9][4] ) );
  EDFFXL \string_data_reg[9][5]  ( .D(chardata[5]), .E(N531), .CK(clk), .Q(
        \string_data[9][5] ) );
  EDFFXL \string_data_reg[9][6]  ( .D(chardata[6]), .E(N531), .CK(clk), .Q(
        \string_data[9][6] ) );
  EDFFXL \string_data_reg[9][7]  ( .D(chardata[7]), .E(N531), .CK(clk), .Q(
        \string_data[9][7] ) );
  EDFFXL \string_data_reg[14][2]  ( .D(n1553), .E(N536), .CK(clk), .Q(
        \string_data[14][2] ) );
  EDFFXL \string_data_reg[14][3]  ( .D(n1554), .E(N536), .CK(clk), .Q(
        \string_data[14][3] ) );
  EDFFXL \string_data_reg[14][4]  ( .D(n1555), .E(N536), .CK(clk), .Q(
        \string_data[14][4] ) );
  EDFFXL \string_data_reg[14][5]  ( .D(n1556), .E(N536), .CK(clk), .Q(
        \string_data[14][5] ) );
  EDFFXL \string_data_reg[14][6]  ( .D(n1557), .E(N536), .CK(clk), .Q(
        \string_data[14][6] ) );
  EDFFXL \string_data_reg[14][7]  ( .D(chardata[7]), .E(N536), .CK(clk), .Q(
        \string_data[14][7] ) );
  EDFFXL \string_data_reg[13][2]  ( .D(n1553), .E(N535), .CK(clk), .Q(
        \string_data[13][2] ) );
  EDFFXL \string_data_reg[13][3]  ( .D(n1554), .E(N535), .CK(clk), .Q(
        \string_data[13][3] ) );
  EDFFXL \string_data_reg[13][4]  ( .D(n1555), .E(N535), .CK(clk), .Q(
        \string_data[13][4] ) );
  EDFFXL \string_data_reg[13][5]  ( .D(n1556), .E(N535), .CK(clk), .Q(
        \string_data[13][5] ) );
  EDFFXL \string_data_reg[13][6]  ( .D(n1557), .E(N535), .CK(clk), .Q(
        \string_data[13][6] ) );
  EDFFXL \string_data_reg[13][7]  ( .D(chardata[7]), .E(N535), .CK(clk), .Q(
        \string_data[13][7] ) );
  EDFFXL \string_data_reg[15][2]  ( .D(n1553), .E(N537), .CK(clk), .Q(
        \string_data[15][2] ) );
  EDFFXL \string_data_reg[15][3]  ( .D(n1554), .E(N537), .CK(clk), .Q(
        \string_data[15][3] ) );
  EDFFXL \string_data_reg[15][4]  ( .D(n1555), .E(N537), .CK(clk), .Q(
        \string_data[15][4] ) );
  EDFFXL \string_data_reg[15][5]  ( .D(n1556), .E(N537), .CK(clk), .Q(
        \string_data[15][5] ) );
  EDFFXL \string_data_reg[15][6]  ( .D(n1557), .E(N537), .CK(clk), .Q(
        \string_data[15][6] ) );
  EDFFXL \string_data_reg[15][7]  ( .D(n1558), .E(N537), .CK(clk), .Q(
        \string_data[15][7] ) );
  EDFFXL \string_data_reg[27][6]  ( .D(n1557), .E(N550), .CK(clk), .Q(
        \string_data[27][6] ) );
  EDFFXL \string_data_reg[27][5]  ( .D(n1556), .E(N550), .CK(clk), .Q(
        \string_data[27][5] ) );
  EDFFXL \string_data_reg[27][4]  ( .D(n1555), .E(N550), .CK(clk), .Q(
        \string_data[27][4] ) );
  EDFFXL \string_data_reg[27][3]  ( .D(n1554), .E(N550), .CK(clk), .Q(
        \string_data[27][3] ) );
  EDFFXL \string_data_reg[27][2]  ( .D(n1553), .E(N550), .CK(clk), .Q(
        \string_data[27][2] ) );
  EDFFXL \string_data_reg[27][1]  ( .D(n1552), .E(N550), .CK(clk), .Q(
        \string_data[27][1] ) );
  EDFFXL \string_data_reg[28][6]  ( .D(n1557), .E(N552), .CK(clk), .Q(
        \string_data[28][6] ) );
  EDFFXL \string_data_reg[28][7]  ( .D(chardata[7]), .E(N552), .CK(clk), .Q(
        \string_data[28][7] ) );
  EDFFXL \string_data_reg[28][3]  ( .D(n1554), .E(N552), .CK(clk), .Q(
        \string_data[28][3] ) );
  EDFFXL \string_data_reg[28][2]  ( .D(n1553), .E(N552), .CK(clk), .Q(
        \string_data[28][2] ) );
  EDFFXL \string_data_reg[28][1]  ( .D(n1552), .E(N552), .CK(clk), .Q(
        \string_data[28][1] ) );
  EDFFXL \string_data_reg[28][0]  ( .D(n1551), .E(N552), .CK(clk), .Q(
        \string_data[28][0] ) );
  EDFFXL \string_data_reg[31][2]  ( .D(n1553), .E(N555), .CK(clk), .Q(
        \string_data[31][2] ) );
  EDFFXL \string_data_reg[31][3]  ( .D(n1554), .E(N555), .CK(clk), .Q(
        \string_data[31][3] ) );
  EDFFXL \string_data_reg[31][4]  ( .D(n1555), .E(N555), .CK(clk), .Q(
        \string_data[31][4] ) );
  EDFFXL \string_data_reg[31][5]  ( .D(n1556), .E(N555), .CK(clk), .Q(
        \string_data[31][5] ) );
  EDFFXL \string_data_reg[31][6]  ( .D(n1557), .E(N555), .CK(clk), .Q(
        \string_data[31][6] ) );
  EDFFXL \string_data_reg[31][7]  ( .D(chardata[7]), .E(N555), .CK(clk), .Q(
        \string_data[31][7] ) );
  EDFFXL \string_data_reg[26][2]  ( .D(n1553), .E(N549), .CK(clk), .Q(
        \string_data[26][2] ) );
  EDFFXL \string_data_reg[26][3]  ( .D(n1554), .E(N549), .CK(clk), .Q(
        \string_data[26][3] ) );
  EDFFXL \string_data_reg[26][4]  ( .D(n1555), .E(N549), .CK(clk), .Q(
        \string_data[26][4] ) );
  EDFFXL \string_data_reg[26][5]  ( .D(n1556), .E(N549), .CK(clk), .Q(
        \string_data[26][5] ) );
  EDFFXL \string_data_reg[26][6]  ( .D(n1557), .E(N549), .CK(clk), .Q(
        \string_data[26][6] ) );
  EDFFXL \string_data_reg[26][7]  ( .D(n1558), .E(N549), .CK(clk), .Q(
        \string_data[26][7] ) );
  EDFFXL \string_data_reg[25][2]  ( .D(n1553), .E(N548), .CK(clk), .Q(
        \string_data[25][2] ) );
  EDFFXL \string_data_reg[25][3]  ( .D(n1554), .E(N548), .CK(clk), .Q(
        \string_data[25][3] ) );
  EDFFXL \string_data_reg[25][4]  ( .D(n1555), .E(N548), .CK(clk), .Q(
        \string_data[25][4] ) );
  EDFFXL \string_data_reg[25][5]  ( .D(n1556), .E(N548), .CK(clk), .Q(
        \string_data[25][5] ) );
  EDFFXL \string_data_reg[25][6]  ( .D(n1557), .E(N548), .CK(clk), .Q(
        \string_data[25][6] ) );
  EDFFXL \string_data_reg[25][7]  ( .D(n1558), .E(N548), .CK(clk), .Q(
        \string_data[25][7] ) );
  EDFFXL \string_data_reg[5][2]  ( .D(chardata[2]), .E(N527), .CK(clk), .Q(
        \string_data[5][2] ) );
  EDFFXL \string_data_reg[5][3]  ( .D(chardata[3]), .E(N527), .CK(clk), .Q(
        \string_data[5][3] ) );
  EDFFXL \string_data_reg[5][4]  ( .D(chardata[4]), .E(N527), .CK(clk), .Q(
        \string_data[5][4] ) );
  EDFFXL \string_data_reg[5][5]  ( .D(n1556), .E(N527), .CK(clk), .Q(
        \string_data[5][5] ) );
  EDFFXL \string_data_reg[5][6]  ( .D(chardata[6]), .E(N527), .CK(clk), .Q(
        \string_data[5][6] ) );
  EDFFXL \string_data_reg[5][7]  ( .D(chardata[7]), .E(N527), .CK(clk), .Q(
        \string_data[5][7] ) );
  EDFFXL \string_data_reg[6][2]  ( .D(chardata[2]), .E(N528), .CK(clk), .Q(
        \string_data[6][2] ) );
  EDFFXL \string_data_reg[6][3]  ( .D(chardata[3]), .E(N528), .CK(clk), .Q(
        \string_data[6][3] ) );
  EDFFXL \string_data_reg[6][4]  ( .D(chardata[4]), .E(N528), .CK(clk), .Q(
        \string_data[6][4] ) );
  EDFFXL \string_data_reg[6][5]  ( .D(chardata[5]), .E(N528), .CK(clk), .Q(
        \string_data[6][5] ) );
  EDFFXL \string_data_reg[6][6]  ( .D(chardata[6]), .E(N528), .CK(clk), .Q(
        \string_data[6][6] ) );
  EDFFXL \string_data_reg[6][7]  ( .D(chardata[7]), .E(N528), .CK(clk), .Q(
        \string_data[6][7] ) );
  EDFFXL \string_data_reg[2][2]  ( .D(n1553), .E(N523), .CK(clk), .Q(
        \string_data[2][2] ) );
  EDFFXL \string_data_reg[2][3]  ( .D(n1554), .E(N523), .CK(clk), .Q(
        \string_data[2][3] ) );
  EDFFXL \string_data_reg[2][4]  ( .D(n1555), .E(N523), .CK(clk), .Q(
        \string_data[2][4] ) );
  EDFFXL \string_data_reg[2][5]  ( .D(n1556), .E(N523), .CK(clk), .Q(
        \string_data[2][5] ) );
  EDFFXL \string_data_reg[2][6]  ( .D(n1557), .E(N523), .CK(clk), .Q(
        \string_data[2][6] ) );
  EDFFXL \string_data_reg[2][7]  ( .D(chardata[7]), .E(N523), .CK(clk), .Q(
        \string_data[2][7] ) );
  EDFFXL \string_data_reg[4][2]  ( .D(chardata[2]), .E(N526), .CK(clk), .Q(
        \string_data[4][2] ) );
  EDFFXL \string_data_reg[4][3]  ( .D(chardata[3]), .E(N526), .CK(clk), .Q(
        \string_data[4][3] ) );
  EDFFXL \string_data_reg[4][4]  ( .D(chardata[4]), .E(N526), .CK(clk), .Q(
        \string_data[4][4] ) );
  EDFFXL \string_data_reg[4][5]  ( .D(n1556), .E(N526), .CK(clk), .Q(
        \string_data[4][5] ) );
  EDFFXL \string_data_reg[4][6]  ( .D(chardata[6]), .E(N526), .CK(clk), .Q(
        \string_data[4][6] ) );
  EDFFXL \string_data_reg[4][7]  ( .D(chardata[7]), .E(N526), .CK(clk), .Q(
        \string_data[4][7] ) );
  EDFFXL \string_data_reg[3][1]  ( .D(chardata[1]), .E(N525), .CK(clk), .Q(
        \string_data[3][1] ) );
  EDFFXL \string_data_reg[3][2]  ( .D(chardata[2]), .E(N525), .CK(clk), .Q(
        \string_data[3][2] ) );
  EDFFXL \string_data_reg[3][3]  ( .D(chardata[3]), .E(N525), .CK(clk), .Q(
        \string_data[3][3] ) );
  EDFFXL \string_data_reg[3][4]  ( .D(chardata[4]), .E(N525), .CK(clk), .Q(
        \string_data[3][4] ) );
  EDFFXL \string_data_reg[3][5]  ( .D(n1556), .E(N525), .CK(clk), .Q(
        \string_data[3][5] ) );
  EDFFXL \string_data_reg[3][0]  ( .D(chardata[0]), .E(N525), .CK(clk), .Q(
        \string_data[3][0] ) );
  EDFFXL \string_data_reg[8][2]  ( .D(chardata[2]), .E(N530), .CK(clk), .Q(
        \string_data[8][2] ) );
  EDFFXL \string_data_reg[8][3]  ( .D(chardata[3]), .E(N530), .CK(clk), .Q(
        \string_data[8][3] ) );
  EDFFXL \string_data_reg[8][4]  ( .D(chardata[4]), .E(N530), .CK(clk), .Q(
        \string_data[8][4] ) );
  EDFFXL \string_data_reg[8][5]  ( .D(chardata[5]), .E(N530), .CK(clk), .Q(
        \string_data[8][5] ) );
  EDFFXL \string_data_reg[8][6]  ( .D(chardata[6]), .E(N530), .CK(clk), .Q(
        \string_data[8][6] ) );
  EDFFXL \string_data_reg[8][7]  ( .D(chardata[7]), .E(N530), .CK(clk), .Q(
        \string_data[8][7] ) );
  EDFFXL \string_data_reg[24][2]  ( .D(n1553), .E(N547), .CK(clk), .Q(
        \string_data[24][2] ) );
  EDFFXL \string_data_reg[24][3]  ( .D(n1554), .E(N547), .CK(clk), .Q(
        \string_data[24][3] ) );
  EDFFXL \string_data_reg[24][4]  ( .D(n1555), .E(N547), .CK(clk), .Q(
        \string_data[24][4] ) );
  EDFFXL \string_data_reg[24][5]  ( .D(chardata[5]), .E(N547), .CK(clk), .Q(
        \string_data[24][5] ) );
  EDFFXL \string_data_reg[24][6]  ( .D(n1557), .E(N547), .CK(clk), .Q(
        \string_data[24][6] ) );
  EDFFXL \string_data_reg[24][7]  ( .D(n1558), .E(N547), .CK(clk), .Q(
        \string_data[24][7] ) );
  DFFRX2 \string_length_reg[3]  ( .D(n748), .CK(clk), .RN(n719), .Q(
        string_length[3]), .QN(n1541) );
  DFFRX2 \string_length_reg[1]  ( .D(n746), .CK(clk), .RN(n719), .Q(
        string_length[1]), .QN(n1535) );
  DFFQX2 \string_counter_reg[0]  ( .D(n731), .CK(clk), .Q(string_counter[0])
         );
  DFFRX2 \string_length_reg[2]  ( .D(n747), .CK(clk), .RN(n719), .Q(
        string_length[2]), .QN(n1543) );
  DFFQX2 \string_counter_reg[2]  ( .D(n729), .CK(clk), .Q(string_counter[2])
         );
  DFFQX2 \string_counter_reg[4]  ( .D(n727), .CK(clk), .Q(string_counter[4])
         );
  EDFFXL \pattern_data_reg[1][0]  ( .D(chardata[0]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][0] ) );
  EDFFXL \pattern_data_reg[1][1]  ( .D(chardata[1]), .E(N557), .CK(clk), .Q(
        \pattern_data[1][1] ) );
  EDFFXL \pattern_data_reg[3][0]  ( .D(chardata[0]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][0] ) );
  EDFFXL \pattern_data_reg[3][1]  ( .D(chardata[1]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][1] ) );
  EDFFXL \pattern_data_reg[3][2]  ( .D(chardata[2]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][2] ) );
  EDFFXL \pattern_data_reg[3][3]  ( .D(chardata[3]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][3] ) );
  EDFFXL \pattern_data_reg[3][4]  ( .D(chardata[4]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][4] ) );
  EDFFXL \pattern_data_reg[3][5]  ( .D(chardata[5]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][5] ) );
  EDFFXL \pattern_data_reg[3][6]  ( .D(chardata[6]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][6] ) );
  EDFFXL \pattern_data_reg[3][7]  ( .D(chardata[7]), .E(N559), .CK(clk), .Q(
        \pattern_data[3][7] ) );
  EDFFXL \pattern_data_reg[5][0]  ( .D(chardata[0]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][0] ) );
  EDFFXL \pattern_data_reg[5][2]  ( .D(chardata[2]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][2] ) );
  EDFFXL \pattern_data_reg[5][3]  ( .D(chardata[3]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][3] ) );
  EDFFXL \pattern_data_reg[5][4]  ( .D(chardata[4]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][4] ) );
  EDFFXL \pattern_data_reg[5][5]  ( .D(chardata[5]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][5] ) );
  EDFFXL \pattern_data_reg[5][6]  ( .D(chardata[6]), .E(N561), .CK(clk), .Q(
        \pattern_data[5][6] ) );
  EDFFXL \pattern_data_reg[5][7]  ( .D(n1558), .E(N561), .CK(clk), .Q(
        \pattern_data[5][7] ) );
  EDFFXL \pattern_data_reg[7][0]  ( .D(chardata[0]), .E(N563), .CK(clk), .Q(
        \pattern_data[7][0] ) );
  EDFFXL \pattern_data_reg[7][7]  ( .D(n1558), .E(N563), .CK(clk), .Q(
        \pattern_data[7][7] ) );
  EDFFXL \pattern_data_reg[2][1]  ( .D(chardata[1]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][1] ) );
  EDFFXL \pattern_data_reg[2][2]  ( .D(chardata[2]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][2] ) );
  EDFFXL \pattern_data_reg[2][3]  ( .D(chardata[3]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][3] ) );
  EDFFXL \pattern_data_reg[2][4]  ( .D(chardata[4]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][4] ) );
  EDFFXL \pattern_data_reg[2][5]  ( .D(chardata[5]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][5] ) );
  EDFFXL \pattern_data_reg[2][6]  ( .D(chardata[6]), .E(N558), .CK(clk), .Q(
        \pattern_data[2][6] ) );
  EDFFXL \pattern_data_reg[2][7]  ( .D(n1558), .E(N558), .CK(clk), .Q(
        \pattern_data[2][7] ) );
  EDFFXL \pattern_data_reg[4][0]  ( .D(chardata[0]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][0] ) );
  EDFFXL \pattern_data_reg[4][1]  ( .D(chardata[1]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][1] ) );
  EDFFXL \pattern_data_reg[4][2]  ( .D(chardata[2]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][2] ) );
  EDFFXL \pattern_data_reg[4][3]  ( .D(chardata[3]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][3] ) );
  EDFFXL \pattern_data_reg[4][4]  ( .D(chardata[4]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][4] ) );
  EDFFXL \pattern_data_reg[4][5]  ( .D(chardata[5]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][5] ) );
  EDFFXL \pattern_data_reg[4][6]  ( .D(chardata[6]), .E(N560), .CK(clk), .Q(
        \pattern_data[4][6] ) );
  EDFFXL \pattern_data_reg[6][0]  ( .D(chardata[0]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][0] ) );
  EDFFXL \pattern_data_reg[6][1]  ( .D(chardata[1]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][1] ) );
  EDFFXL \pattern_data_reg[6][2]  ( .D(chardata[2]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][2] ) );
  EDFFXL \pattern_data_reg[6][3]  ( .D(chardata[3]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][3] ) );
  EDFFXL \pattern_data_reg[6][4]  ( .D(chardata[4]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][4] ) );
  EDFFXL \pattern_data_reg[6][5]  ( .D(chardata[5]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][5] ) );
  EDFFXL \pattern_data_reg[6][6]  ( .D(chardata[6]), .E(N562), .CK(clk), .Q(
        \pattern_data[6][6] ) );
  EDFFXL \pattern_data_reg[6][7]  ( .D(n1558), .E(N562), .CK(clk), .Q(
        \pattern_data[6][7] ) );
  EDFFXL \string_data_reg[8][0]  ( .D(chardata[0]), .E(N530), .CK(clk), .Q(
        \string_data[8][0] ) );
  EDFFXL \string_data_reg[8][1]  ( .D(chardata[1]), .E(N530), .CK(clk), .Q(
        \string_data[8][1] ) );
  EDFFXL \string_data_reg[9][0]  ( .D(chardata[0]), .E(N531), .CK(clk), .Q(
        \string_data[9][0] ) );
  EDFFXL \string_data_reg[9][1]  ( .D(chardata[1]), .E(N531), .CK(clk), .Q(
        \string_data[9][1] ) );
  EDFFXL \string_data_reg[10][0]  ( .D(chardata[0]), .E(N532), .CK(clk), .Q(
        \string_data[10][0] ) );
  EDFFXL \string_data_reg[10][1]  ( .D(chardata[1]), .E(N532), .CK(clk), .Q(
        \string_data[10][1] ) );
  EDFFXL \string_data_reg[11][0]  ( .D(chardata[0]), .E(N533), .CK(clk), .Q(
        \string_data[11][0] ) );
  EDFFXL \string_data_reg[11][7]  ( .D(chardata[7]), .E(N533), .CK(clk), .Q(
        \string_data[11][7] ) );
  EDFFXL \string_data_reg[12][0]  ( .D(chardata[0]), .E(N534), .CK(clk), .Q(
        \string_data[12][0] ) );
  EDFFXL \string_data_reg[12][1]  ( .D(chardata[1]), .E(N534), .CK(clk), .Q(
        \string_data[12][1] ) );
  EDFFXL \string_data_reg[12][2]  ( .D(chardata[2]), .E(N534), .CK(clk), .Q(
        \string_data[12][2] ) );
  EDFFXL \string_data_reg[12][3]  ( .D(chardata[3]), .E(N534), .CK(clk), .Q(
        \string_data[12][3] ) );
  EDFFXL \string_data_reg[12][4]  ( .D(chardata[4]), .E(N534), .CK(clk), .Q(
        \string_data[12][4] ) );
  EDFFXL \string_data_reg[12][5]  ( .D(chardata[5]), .E(N534), .CK(clk), .Q(
        \string_data[12][5] ) );
  EDFFXL \string_data_reg[12][6]  ( .D(chardata[6]), .E(N534), .CK(clk), .Q(
        \string_data[12][6] ) );
  EDFFXL \string_data_reg[12][7]  ( .D(chardata[7]), .E(N534), .CK(clk), .Q(
        \string_data[12][7] ) );
  EDFFXL \string_data_reg[13][0]  ( .D(n1551), .E(N535), .CK(clk), .Q(
        \string_data[13][0] ) );
  EDFFXL \string_data_reg[13][1]  ( .D(n1552), .E(N535), .CK(clk), .Q(
        \string_data[13][1] ) );
  EDFFXL \string_data_reg[14][0]  ( .D(n1551), .E(N536), .CK(clk), .Q(
        \string_data[14][0] ) );
  EDFFXL \string_data_reg[14][1]  ( .D(n1552), .E(N536), .CK(clk), .Q(
        \string_data[14][1] ) );
  EDFFXL \string_data_reg[15][0]  ( .D(n1551), .E(N537), .CK(clk), .Q(
        \string_data[15][0] ) );
  EDFFXL \string_data_reg[15][1]  ( .D(n1552), .E(N537), .CK(clk), .Q(
        \string_data[15][1] ) );
  EDFFXL \string_data_reg[16][1]  ( .D(n1552), .E(N539), .CK(clk), .Q(
        \string_data[16][1] ) );
  EDFFXL \string_data_reg[16][2]  ( .D(n1553), .E(N539), .CK(clk), .Q(
        \string_data[16][2] ) );
  EDFFXL \string_data_reg[16][3]  ( .D(n1554), .E(N539), .CK(clk), .Q(
        \string_data[16][3] ) );
  EDFFXL \string_data_reg[16][4]  ( .D(n1555), .E(N539), .CK(clk), .Q(
        \string_data[16][4] ) );
  EDFFXL \string_data_reg[16][5]  ( .D(n1556), .E(N539), .CK(clk), .Q(
        \string_data[16][5] ) );
  EDFFXL \string_data_reg[16][6]  ( .D(n1557), .E(N539), .CK(clk), .Q(
        \string_data[16][6] ) );
  EDFFXL \string_data_reg[16][7]  ( .D(n1558), .E(N539), .CK(clk), .Q(
        \string_data[16][7] ) );
  EDFFXL \string_data_reg[16][0]  ( .D(n1551), .E(N539), .CK(clk), .Q(
        \string_data[16][0] ) );
  EDFFXL \string_data_reg[17][0]  ( .D(n1551), .E(N540), .CK(clk), .Q(
        \string_data[17][0] ) );
  EDFFXL \string_data_reg[17][1]  ( .D(n1552), .E(N540), .CK(clk), .Q(
        \string_data[17][1] ) );
  EDFFXL \string_data_reg[18][0]  ( .D(n1551), .E(N541), .CK(clk), .Q(
        \string_data[18][0] ) );
  EDFFXL \string_data_reg[18][1]  ( .D(n1552), .E(N541), .CK(clk), .Q(
        \string_data[18][1] ) );
  EDFFXL \string_data_reg[19][0]  ( .D(n1551), .E(N542), .CK(clk), .Q(
        \string_data[19][0] ) );
  EDFFXL \string_data_reg[19][1]  ( .D(n1552), .E(N542), .CK(clk), .Q(
        \string_data[19][1] ) );
  EDFFXL \string_data_reg[20][0]  ( .D(n1551), .E(N543), .CK(clk), .Q(
        \string_data[20][0] ) );
  EDFFXL \string_data_reg[20][1]  ( .D(n1552), .E(N543), .CK(clk), .Q(
        \string_data[20][1] ) );
  EDFFXL \string_data_reg[21][0]  ( .D(n1551), .E(N544), .CK(clk), .Q(
        \string_data[21][0] ) );
  EDFFXL \string_data_reg[21][1]  ( .D(n1552), .E(N544), .CK(clk), .Q(
        \string_data[21][1] ) );
  EDFFXL \string_data_reg[22][0]  ( .D(n1551), .E(N545), .CK(clk), .Q(
        \string_data[22][0] ) );
  EDFFXL \string_data_reg[22][1]  ( .D(n1552), .E(N545), .CK(clk), .Q(
        \string_data[22][1] ) );
  EDFFXL \string_data_reg[23][0]  ( .D(n1551), .E(N546), .CK(clk), .Q(
        \string_data[23][0] ) );
  EDFFXL \string_data_reg[23][1]  ( .D(n1552), .E(N546), .CK(clk), .Q(
        \string_data[23][1] ) );
  EDFFXL \string_data_reg[24][0]  ( .D(n1551), .E(N547), .CK(clk), .Q(
        \string_data[24][0] ) );
  EDFFXL \string_data_reg[24][1]  ( .D(n1552), .E(N547), .CK(clk), .Q(
        \string_data[24][1] ) );
  EDFFXL \string_data_reg[25][0]  ( .D(n1551), .E(N548), .CK(clk), .Q(
        \string_data[25][0] ) );
  EDFFXL \string_data_reg[25][1]  ( .D(n1552), .E(N548), .CK(clk), .Q(
        \string_data[25][1] ) );
  EDFFXL \string_data_reg[26][0]  ( .D(n1551), .E(N549), .CK(clk), .Q(
        \string_data[26][0] ) );
  EDFFXL \string_data_reg[26][1]  ( .D(n1552), .E(N549), .CK(clk), .Q(
        \string_data[26][1] ) );
  EDFFXL \string_data_reg[27][0]  ( .D(n1551), .E(N550), .CK(clk), .Q(
        \string_data[27][0] ) );
  EDFFXL \string_data_reg[27][7]  ( .D(chardata[7]), .E(N550), .CK(clk), .Q(
        \string_data[27][7] ) );
  EDFFXL \string_data_reg[28][4]  ( .D(n1555), .E(N552), .CK(clk), .Q(
        \string_data[28][4] ) );
  EDFFXL \string_data_reg[28][5]  ( .D(n1556), .E(N552), .CK(clk), .Q(
        \string_data[28][5] ) );
  EDFFXL \string_data_reg[29][0]  ( .D(n1551), .E(N553), .CK(clk), .Q(
        \string_data[29][0] ) );
  EDFFXL \string_data_reg[29][1]  ( .D(n1552), .E(N553), .CK(clk), .Q(
        \string_data[29][1] ) );
  EDFFXL \string_data_reg[30][0]  ( .D(n1551), .E(N554), .CK(clk), .Q(
        \string_data[30][0] ) );
  EDFFXL \string_data_reg[30][1]  ( .D(n1552), .E(N554), .CK(clk), .Q(
        \string_data[30][1] ) );
  EDFFXL \string_data_reg[30][2]  ( .D(n1553), .E(N554), .CK(clk), .Q(
        \string_data[30][2] ) );
  EDFFXL \string_data_reg[30][3]  ( .D(n1554), .E(N554), .CK(clk), .Q(
        \string_data[30][3] ) );
  EDFFXL \string_data_reg[30][4]  ( .D(n1555), .E(N554), .CK(clk), .Q(
        \string_data[30][4] ) );
  EDFFXL \string_data_reg[30][5]  ( .D(n1556), .E(N554), .CK(clk), .Q(
        \string_data[30][5] ) );
  EDFFXL \string_data_reg[30][6]  ( .D(n1557), .E(N554), .CK(clk), .Q(
        \string_data[30][6] ) );
  EDFFXL \string_data_reg[30][7]  ( .D(chardata[7]), .E(N554), .CK(clk), .Q(
        \string_data[30][7] ) );
  EDFFXL \string_data_reg[31][0]  ( .D(n1551), .E(N555), .CK(clk), .Q(
        \string_data[31][0] ) );
  EDFFXL \string_data_reg[31][1]  ( .D(n1552), .E(N555), .CK(clk), .Q(
        \string_data[31][1] ) );
  EDFFXL \string_data_reg[1][0]  ( .D(n1551), .E(N522), .CK(clk), .Q(
        \string_data[1][0] ) );
  EDFFXL \string_data_reg[1][1]  ( .D(n1552), .E(N522), .CK(clk), .Q(
        \string_data[1][1] ) );
  EDFFXL \string_data_reg[2][0]  ( .D(n1551), .E(N523), .CK(clk), .Q(
        \string_data[2][0] ) );
  EDFFXL \string_data_reg[2][1]  ( .D(n1552), .E(N523), .CK(clk), .Q(
        \string_data[2][1] ) );
  EDFFXL \string_data_reg[3][6]  ( .D(chardata[6]), .E(N525), .CK(clk), .Q(
        \string_data[3][6] ) );
  EDFFXL \string_data_reg[3][7]  ( .D(chardata[7]), .E(N525), .CK(clk), .Q(
        \string_data[3][7] ) );
  EDFFXL \string_data_reg[4][0]  ( .D(chardata[0]), .E(N526), .CK(clk), .Q(
        \string_data[4][0] ) );
  EDFFXL \string_data_reg[4][1]  ( .D(chardata[1]), .E(N526), .CK(clk), .Q(
        \string_data[4][1] ) );
  EDFFXL \string_data_reg[5][0]  ( .D(chardata[0]), .E(N527), .CK(clk), .Q(
        \string_data[5][0] ) );
  EDFFXL \string_data_reg[5][1]  ( .D(chardata[1]), .E(N527), .CK(clk), .Q(
        \string_data[5][1] ) );
  EDFFXL \string_data_reg[6][0]  ( .D(chardata[0]), .E(N528), .CK(clk), .Q(
        \string_data[6][0] ) );
  EDFFXL \string_data_reg[6][1]  ( .D(chardata[1]), .E(N528), .CK(clk), .Q(
        \string_data[6][1] ) );
  EDFFXL \string_data_reg[7][0]  ( .D(chardata[0]), .E(N529), .CK(clk), .Q(
        \string_data[7][0] ) );
  EDFFXL \string_data_reg[7][1]  ( .D(chardata[1]), .E(N529), .CK(clk), .Q(
        \string_data[7][1] ) );
  EDFFXL \string_data_reg[7][2]  ( .D(chardata[2]), .E(N529), .CK(clk), .Q(
        \string_data[7][2] ) );
  EDFFXL \string_data_reg[7][3]  ( .D(chardata[3]), .E(N529), .CK(clk), .Q(
        \string_data[7][3] ) );
  EDFFXL \string_data_reg[7][4]  ( .D(chardata[4]), .E(N529), .CK(clk), .Q(
        \string_data[7][4] ) );
  EDFFXL \string_data_reg[7][5]  ( .D(chardata[5]), .E(N529), .CK(clk), .Q(
        \string_data[7][5] ) );
  EDFFXL \string_data_reg[7][6]  ( .D(chardata[6]), .E(N529), .CK(clk), .Q(
        \string_data[7][6] ) );
  EDFFXL \string_data_reg[7][7]  ( .D(n1558), .E(N529), .CK(clk), .Q(
        \string_data[7][7] ) );
  OR2X1 U812 ( .A(n1521), .B(n1523), .Y(n1439) );
  OR2X1 U813 ( .A(n1443), .B(n1384), .Y(n1388) );
  INVX6 U814 ( .A(n823), .Y(n973) );
  NOR2XL U815 ( .A(string_length[4]), .B(n1394), .Y(n1395) );
  INVXL U816 ( .A(isstring), .Y(n1461) );
  INVX1 U817 ( .A(n1488), .Y(n1400) );
  INVX1 U818 ( .A(n1487), .Y(n1473) );
  AO21X1 U819 ( .A0(n1561), .A1(n1438), .B0(n1531), .Y(n1450) );
  INVX2 U820 ( .A(n1498), .Y(n1499) );
  INVX2 U821 ( .A(n1518), .Y(n1520) );
  BUFX2 U822 ( .A(n790), .Y(n1369) );
  NOR2X1 U823 ( .A(n1536), .B(n1394), .Y(n1396) );
  INVX1 U824 ( .A(n1423), .Y(n1442) );
  BUFX2 U825 ( .A(n780), .Y(n1004) );
  INVX1 U826 ( .A(n1513), .Y(n1500) );
  INVX1 U827 ( .A(n1493), .Y(n1463) );
  INVX1 U828 ( .A(string_counter[4]), .Y(n1381) );
  INVX1 U829 ( .A(pattern_counter[1]), .Y(n1399) );
  INVX1 U830 ( .A(n1565), .Y(n777) );
  NOR2X1 U831 ( .A(n1461), .B(reset), .Y(n1512) );
  NOR2XL U832 ( .A(n1533), .B(n1483), .Y(n785) );
  BUFX2 U833 ( .A(n926), .Y(n968) );
  BUFX2 U834 ( .A(n875), .Y(n947) );
  BUFX2 U835 ( .A(n952), .Y(n971) );
  BUFX2 U836 ( .A(n972), .Y(n960) );
  AOI22XL U837 ( .A0(n947), .A1(\string_data[18][7] ), .B0(n926), .B1(
        \string_data[26][7] ), .Y(n812) );
  BUFX2 U838 ( .A(n954), .Y(n967) );
  BUFX2 U839 ( .A(n856), .Y(n953) );
  NOR4XL U840 ( .A(n892), .B(n891), .C(n890), .D(n889), .Y(n893) );
  NOR4XL U841 ( .A(n888), .B(n887), .C(n886), .D(n885), .Y(n894) );
  NOR4XL U842 ( .A(n883), .B(n882), .C(n881), .D(n880), .Y(n884) );
  AOI22XL U843 ( .A0(n926), .A1(\string_data[24][2] ), .B0(n967), .B1(
        \string_data[20][2] ), .Y(n877) );
  AOI22XL U844 ( .A0(n970), .A1(\string_data[12][2] ), .B0(n875), .B1(
        \string_data[16][2] ), .Y(n878) );
  AOI22XL U845 ( .A0(n961), .A1(\string_data[28][2] ), .B0(n973), .B1(
        \string_data[0][2] ), .Y(n876) );
  NOR4XL U846 ( .A(n977), .B(n976), .C(n975), .D(n974), .Y(n978) );
  NOR4XL U847 ( .A(n965), .B(n964), .C(n963), .D(n962), .Y(n979) );
  NOR4XL U848 ( .A(n958), .B(n957), .C(n956), .D(n955), .Y(n959) );
  AOI22XL U849 ( .A0(n960), .A1(\string_data[8][3] ), .B0(n971), .B1(
        \string_data[4][3] ), .Y(n951) );
  AOI22XL U850 ( .A0(n926), .A1(\string_data[24][3] ), .B0(n967), .B1(
        \string_data[20][3] ), .Y(n949) );
  AOI22XL U851 ( .A0(n970), .A1(\string_data[12][3] ), .B0(n947), .B1(
        \string_data[16][3] ), .Y(n950) );
  AOI22XL U852 ( .A0(n961), .A1(\string_data[28][3] ), .B0(n973), .B1(
        \string_data[0][3] ), .Y(n948) );
  NOR4XL U853 ( .A(n916), .B(n915), .C(n914), .D(n913), .Y(n917) );
  NOR4XL U854 ( .A(n912), .B(n911), .C(n910), .D(n909), .Y(n918) );
  NOR4XL U855 ( .A(n905), .B(n904), .C(n903), .D(n902), .Y(n906) );
  AOI22XL U856 ( .A0(n960), .A1(\string_data[8][6] ), .B0(n971), .B1(
        \string_data[4][6] ), .Y(n901) );
  AOI22XL U857 ( .A0(n926), .A1(\string_data[24][6] ), .B0(n937), .B1(
        \string_data[20][6] ), .Y(n899) );
  AOI22XL U858 ( .A0(n970), .A1(\string_data[12][6] ), .B0(n947), .B1(
        \string_data[16][6] ), .Y(n900) );
  AOI22XL U859 ( .A0(n961), .A1(\string_data[28][6] ), .B0(n973), .B1(
        \string_data[0][6] ), .Y(n898) );
  NOR4XL U860 ( .A(n941), .B(n940), .C(n939), .D(n938), .Y(n942) );
  NOR4XL U861 ( .A(n935), .B(n934), .C(n933), .D(n932), .Y(n943) );
  NOR4XL U862 ( .A(n930), .B(n929), .C(n928), .D(n927), .Y(n931) );
  AOI22XL U863 ( .A0(n960), .A1(\string_data[8][1] ), .B0(n971), .B1(
        \string_data[4][1] ), .Y(n925) );
  AOI22XL U864 ( .A0(n926), .A1(\string_data[24][1] ), .B0(n967), .B1(
        \string_data[20][1] ), .Y(n923) );
  AOI22XL U865 ( .A0(n961), .A1(\string_data[28][1] ), .B0(n973), .B1(
        \string_data[0][1] ), .Y(n922) );
  NOR4XL U866 ( .A(n846), .B(n845), .C(n844), .D(n843), .Y(n847) );
  NOR4XL U867 ( .A(n842), .B(n841), .C(n840), .D(n839), .Y(n848) );
  AOI22XL U868 ( .A0(n968), .A1(\string_data[24][4] ), .B0(n937), .B1(
        \string_data[20][4] ), .Y(n831) );
  AOI22XL U869 ( .A0(n960), .A1(\string_data[8][4] ), .B0(n936), .B1(
        \string_data[4][4] ), .Y(n833) );
  AOI22XL U870 ( .A0(n970), .A1(\string_data[12][4] ), .B0(n947), .B1(
        \string_data[16][4] ), .Y(n832) );
  AOI22XL U871 ( .A0(n961), .A1(\string_data[28][4] ), .B0(n973), .B1(
        \string_data[0][4] ), .Y(n830) );
  NOR4XL U872 ( .A(n837), .B(n836), .C(n835), .D(n834), .Y(n838) );
  NOR4XL U873 ( .A(n869), .B(n868), .C(n867), .D(n866), .Y(n870) );
  NOR4XL U874 ( .A(n865), .B(n864), .C(n863), .D(n862), .Y(n871) );
  NOR4XL U875 ( .A(n860), .B(n859), .C(n858), .D(n857), .Y(n861) );
  AOI22XL U876 ( .A0(n960), .A1(\string_data[8][0] ), .B0(n971), .B1(
        \string_data[4][0] ), .Y(n855) );
  AOI22XL U877 ( .A0(n926), .A1(\string_data[24][0] ), .B0(n937), .B1(
        \string_data[20][0] ), .Y(n853) );
  AOI22XL U878 ( .A0(n970), .A1(\string_data[12][0] ), .B0(n947), .B1(
        \string_data[16][0] ), .Y(n854) );
  AOI22XL U879 ( .A0(n973), .A1(\string_data[0][0] ), .B0(n961), .B1(
        \string_data[28][0] ), .Y(n852) );
  NOR4XL U880 ( .A(n795), .B(n794), .C(n793), .D(n792), .Y(n802) );
  NOR4XL U881 ( .A(n789), .B(n788), .C(n787), .D(n786), .Y(n791) );
  AOI22XL U882 ( .A0(n968), .A1(\string_data[24][5] ), .B0(n937), .B1(
        \string_data[20][5] ), .Y(n782) );
  AOI22XL U883 ( .A0(n960), .A1(\string_data[8][5] ), .B0(n936), .B1(
        \string_data[4][5] ), .Y(n784) );
  AOI22XL U884 ( .A0(n970), .A1(\string_data[12][5] ), .B0(n947), .B1(
        \string_data[16][5] ), .Y(n783) );
  AOI22XL U885 ( .A0(n961), .A1(\string_data[28][5] ), .B0(n973), .B1(
        \string_data[0][5] ), .Y(n781) );
  NOR4XL U886 ( .A(n817), .B(n816), .C(n815), .D(n814), .Y(n818) );
  NAND4XL U887 ( .A(n813), .B(n812), .C(n811), .D(n810), .Y(n819) );
  AOI22XL U888 ( .A0(n967), .A1(\string_data[22][7] ), .B0(n961), .B1(
        \string_data[30][7] ), .Y(n813) );
  AOI22XL U889 ( .A0(n971), .A1(\string_data[6][7] ), .B0(n970), .B1(
        \string_data[14][7] ), .Y(n811) );
  AOI22XL U890 ( .A0(n973), .A1(\string_data[2][7] ), .B0(n960), .B1(
        \string_data[10][7] ), .Y(n810) );
  INVXL U891 ( .A(n1375), .Y(n820) );
  OAI211XL U892 ( .A0(n823), .A1(n1517), .B0(n822), .C0(n821), .Y(n824) );
  AOI22XL U893 ( .A0(n926), .A1(\string_data[24][7] ), .B0(n967), .B1(
        \string_data[20][7] ), .Y(n822) );
  NOR2XL U894 ( .A(n884), .B(n1369), .Y(n896) );
  NAND4XL U895 ( .A(n951), .B(n950), .C(n949), .D(n948), .Y(n982) );
  NOR2XL U896 ( .A(n959), .B(n1369), .Y(n981) );
  NAND4XL U897 ( .A(n901), .B(n900), .C(n899), .D(n898), .Y(n921) );
  NOR2XL U898 ( .A(n906), .B(n1369), .Y(n920) );
  NAND4XL U899 ( .A(n925), .B(n924), .C(n923), .D(n922), .Y(n946) );
  NOR2XL U900 ( .A(n931), .B(n1369), .Y(n945) );
  NOR2XL U901 ( .A(n838), .B(n1369), .Y(n850) );
  NAND4XL U902 ( .A(n833), .B(n832), .C(n831), .D(n830), .Y(n851) );
  NAND4XL U903 ( .A(n855), .B(n854), .C(n853), .D(n852), .Y(n874) );
  NOR2XL U904 ( .A(n861), .B(n1369), .Y(n873) );
  INVXL U905 ( .A(n985), .Y(n987) );
  NAND4XL U906 ( .A(n784), .B(n783), .C(n782), .D(n781), .Y(n805) );
  NOR2XL U907 ( .A(n791), .B(n1369), .Y(n804) );
  OAI211XL U908 ( .A0(n829), .A1(n1369), .B0(n828), .C0(n827), .Y(n985) );
  NOR4XL U909 ( .A(n809), .B(n808), .C(n807), .D(n806), .Y(n829) );
  NAND4XL U910 ( .A(n990), .B(n994), .C(n993), .D(n996), .Y(n983) );
  BUFX2 U911 ( .A(n796), .Y(n1375) );
  INVXL U912 ( .A(n1452), .Y(n1367) );
  NOR2XL U913 ( .A(n1006), .B(n1471), .Y(n1415) );
  INVXL U914 ( .A(n1369), .Y(n1370) );
  AND3X1 U915 ( .A(\pattern_data[0][4] ), .B(\pattern_data[0][2] ), .C(n779), 
        .Y(n1446) );
  AOI211XL U916 ( .A0(\pattern_data[0][2] ), .A1(n1006), .B0(n1003), .C0(n1002), .Y(n1452) );
  NOR4XL U917 ( .A(n988), .B(n985), .C(n984), .D(n983), .Y(n1003) );
  NAND3XL U918 ( .A(n1446), .B(n991), .C(n997), .Y(n984) );
  AOI31XL U919 ( .A0(n1364), .A1(n1363), .A2(n1362), .B0(n1361), .Y(n1386) );
  INVXL U920 ( .A(n1410), .Y(n1471) );
  INVXL U921 ( .A(n1507), .Y(n1501) );
  AOI31XL U922 ( .A0(n1446), .A1(n973), .A2(n1004), .B0(n1367), .Y(n1410) );
  NOR2XL U923 ( .A(n1528), .B(n1484), .Y(n1379) );
  AND3X1 U924 ( .A(n1513), .B(ispattern), .C(n1461), .Y(n1495) );
  AOI211XL U925 ( .A0(n1559), .A1(n1389), .B0(n1477), .C0(n1423), .Y(n1390) );
  INVXL U926 ( .A(n1460), .Y(n1489) );
  NAND2XL U927 ( .A(n1400), .B(n1442), .Y(n1460) );
  AOI211XL U928 ( .A0(state[0]), .A1(n1438), .B0(n1418), .C0(n1417), .Y(n1422)
         );
  NOR3XL U929 ( .A(isstring), .B(ispattern), .C(n1453), .Y(n1417) );
  NOR2XL U930 ( .A(pattern_length[2]), .B(n1469), .Y(n1496) );
  INVXL U931 ( .A(n1468), .Y(n1467) );
  BUFX2 U932 ( .A(n1516), .Y(n1518) );
  NOR2XL U933 ( .A(n1503), .B(n1504), .Y(n1434) );
  NAND2XL U934 ( .A(n1463), .B(n1542), .Y(n1465) );
  NOR2XL U935 ( .A(n1443), .B(n1386), .Y(n1441) );
  AOI211XL U936 ( .A0(n1561), .A1(n1535), .B0(n1508), .C0(n1507), .Y(n1506) );
  NOR2XL U937 ( .A(n1508), .B(n1507), .Y(n1511) );
  NOR2XL U938 ( .A(n1491), .B(n1490), .Y(n1494) );
  AOI21XL U939 ( .A0(pattern_counter[0]), .A1(n1488), .B0(n1411), .Y(n1412) );
  NAND2XL U940 ( .A(string_length[5]), .B(n1435), .Y(n1436) );
  AOI211XL U941 ( .A0(n1463), .A1(n1532), .B0(n1490), .C0(n1491), .Y(n1413) );
  NAND3XL U942 ( .A(n1445), .B(n1443), .C(n1442), .Y(n1444) );
  NOR2X1 U943 ( .A(match_index[4]), .B(pattern_length[4]), .Y(n1478) );
  AOI211X2 U944 ( .A0(n1307), .A1(n1306), .B0(n1305), .C0(n1304), .Y(n1351) );
  AOI211X2 U945 ( .A0(n1307), .A1(n1254), .B0(n1253), .C0(n1252), .Y(n1352) );
  AOI211X2 U946 ( .A0(n1307), .A1(n1077), .B0(n1076), .C0(n1075), .Y(n1353) );
  AOI211XL U947 ( .A0(n1357), .A1(n1346), .B0(n1345), .C0(n1344), .Y(n1362) );
  NAND4BX1 U948 ( .AN(n1357), .B(n1356), .C(n1355), .D(n1354), .Y(n1359) );
  AOI211X2 U949 ( .A0(n1307), .A1(n1051), .B0(n1050), .C0(n1049), .Y(n1357) );
  OAI211X4 U950 ( .A0(n1452), .A1(n1451), .B0(n1450), .C0(n1449), .Y(n1459) );
  INVXL U951 ( .A(n1448), .Y(n1449) );
  NAND2X1 U952 ( .A(pattern_length[0]), .B(n1532), .Y(n1492) );
  AOI222XL U953 ( .A0(string_length[2]), .A1(n1317), .B0(string_length[2]), 
        .B1(n1372), .C0(n1317), .C1(n1372), .Y(n1319) );
  NAND2X2 U954 ( .A(string_counter[1]), .B(string_counter[0]), .Y(n1275) );
  OR2X2 U955 ( .A(string_counter[0]), .B(n1378), .Y(n1300) );
  NAND2X2 U956 ( .A(string_counter[0]), .B(n1378), .Y(n1302) );
  NAND2XL U957 ( .A(n1423), .B(n1470), .Y(n1453) );
  NOR3X1 U958 ( .A(n1415), .B(n1470), .C(n1447), .Y(n1525) );
  NOR2XL U959 ( .A(n1470), .B(n1487), .Y(n1368) );
  NAND2X2 U960 ( .A(state[0]), .B(n1561), .Y(n1470) );
  NOR2X2 U961 ( .A(n1515), .B(n1401), .Y(N547) );
  NOR2X2 U962 ( .A(n1515), .B(n1402), .Y(N530) );
  NOR2X2 U963 ( .A(n1505), .B(n1514), .Y(N525) );
  NOR2X2 U964 ( .A(n1514), .B(n1405), .Y(N526) );
  NOR2X2 U965 ( .A(n1514), .B(n1404), .Y(N523) );
  NOR2X2 U966 ( .A(n1514), .B(n1408), .Y(N528) );
  NOR2X2 U967 ( .A(n1514), .B(n1407), .Y(N527) );
  NOR2X2 U968 ( .A(n1406), .B(n1401), .Y(N548) );
  NOR2X2 U969 ( .A(n1404), .B(n1401), .Y(N549) );
  NOR2X2 U970 ( .A(n1403), .B(n1401), .Y(N555) );
  NOR2X2 U971 ( .A(n1405), .B(n1401), .Y(N552) );
  NOR2X2 U972 ( .A(n1505), .B(n1401), .Y(N550) );
  NOR2X2 U973 ( .A(n1403), .B(n1402), .Y(N537) );
  NOR2X2 U974 ( .A(n1407), .B(n1402), .Y(N535) );
  NOR2X2 U975 ( .A(n1408), .B(n1402), .Y(N536) );
  NOR2X2 U976 ( .A(n1406), .B(n1402), .Y(N531) );
  NOR2X2 U977 ( .A(n1505), .B(n1402), .Y(N533) );
  NOR2X2 U978 ( .A(n1403), .B(n1409), .Y(N546) );
  NOR2X2 U979 ( .A(n1409), .B(n1404), .Y(N541) );
  NOR2X2 U980 ( .A(n1409), .B(n1405), .Y(N543) );
  NOR2X2 U981 ( .A(n1409), .B(n1406), .Y(N540) );
  NOR2X2 U982 ( .A(n1409), .B(n1407), .Y(N544) );
  NOR2X2 U983 ( .A(n1409), .B(n1408), .Y(N545) );
  INVX4 U984 ( .A(reset), .Y(n719) );
  NAND2X2 U985 ( .A(match_index[0]), .B(n1537), .Y(n1376) );
  INVX16 U986 ( .A(n1539), .Y(match_index[0]) );
  NOR2X1 U987 ( .A(n1531), .B(n1561), .Y(n1513) );
  AOI22XL U988 ( .A0(n1012), .A1(n1540), .B0(\intadd_0/n1 ), .B1(n1478), .Y(
        n1013) );
  NOR2XL U989 ( .A(n1012), .B(n1540), .Y(n1014) );
  NOR3X1 U990 ( .A(match_index[2]), .B(match_index[4]), .C(n1528), .Y(n907) );
  INVX16 U991 ( .A(n777), .Y(match_index[2]) );
  NAND2XL U992 ( .A(n1481), .B(n1480), .Y(n1482) );
  NAND2XL U993 ( .A(n1480), .B(N418), .Y(n1474) );
  NOR2X2 U994 ( .A(n1423), .B(n1487), .Y(n1480) );
  AOI211X2 U995 ( .A0(n1307), .A1(n1197), .B0(n1196), .C0(n1195), .Y(n1355) );
  NOR2X2 U996 ( .A(n1505), .B(n1409), .Y(N542) );
  NOR2X2 U997 ( .A(n1514), .B(n1406), .Y(N522) );
  NOR2X2 U998 ( .A(n1492), .B(n1397), .Y(N557) );
  NOR2X2 U999 ( .A(n1414), .B(n1397), .Y(N559) );
  NAND2XL U1000 ( .A(n1468), .B(n1544), .Y(n1397) );
  NOR2X2 U1001 ( .A(n1467), .B(n1432), .Y(N563) );
  NOR2X2 U1002 ( .A(n1404), .B(n1402), .Y(N532) );
  NOR2X2 U1003 ( .A(n1405), .B(n1402), .Y(N534) );
  NAND2X2 U1004 ( .A(string_length[3]), .B(n1395), .Y(n1402) );
  NOR2X2 U1005 ( .A(n1515), .B(n1409), .Y(N539) );
  NAND2X2 U1006 ( .A(n1396), .B(n1541), .Y(n1409) );
  NOR2X2 U1007 ( .A(n1407), .B(n1401), .Y(N553) );
  NOR2X2 U1008 ( .A(n1408), .B(n1401), .Y(N554) );
  NAND2X2 U1009 ( .A(string_length[3]), .B(n1396), .Y(n1401) );
  NOR2X2 U1010 ( .A(n1403), .B(n1514), .Y(N529) );
  NAND2X2 U1011 ( .A(n1395), .B(n1541), .Y(n1514) );
  INVX12 U1012 ( .A(n772), .Y(match) );
  AOI2BB1X1 U1013 ( .A0N(n1524), .A1N(n1523), .B0(n1562), .Y(n1527) );
  BUFX16 U1014 ( .A(n1564), .Y(match_index[3]) );
  NOR2XL U1015 ( .A(match_index[3]), .B(pattern_length[3]), .Y(\intadd_0/B[3] ) );
  NOR3XL U1016 ( .A(match_index[2]), .B(match_index[3]), .C(n1529), .Y(n875)
         );
  NOR3XL U1017 ( .A(match_index[3]), .B(n1529), .C(n1533), .Y(n954) );
  AOI21XL U1018 ( .A0(pattern_length[3]), .A1(match_index[3]), .B0(
        \intadd_0/B[3] ), .Y(\intadd_0/A[2] ) );
  BUFX16 U1019 ( .A(n1563), .Y(match_index[4]) );
  NOR3XL U1020 ( .A(match_index[4]), .B(match_index[3]), .C(n1533), .Y(n952)
         );
  NOR3XL U1021 ( .A(match_index[4]), .B(n1533), .C(n1528), .Y(n856) );
  NAND2XL U1022 ( .A(match_index[4]), .B(match_index[3]), .Y(n1483) );
  AOI21XL U1023 ( .A0(pattern_length[4]), .A1(match_index[4]), .B0(n1478), .Y(
        \intadd_0/A[3] ) );
  INVX12 U1024 ( .A(n1537), .Y(match_index[1]) );
  NOR2XL U1025 ( .A(n1534), .B(n1566), .Y(n780) );
  NAND2XL U1026 ( .A(match_index[0]), .B(n1566), .Y(n790) );
  NAND2XL U1027 ( .A(n1566), .B(n1539), .Y(n796) );
  INVXL U1028 ( .A(chardata[7]), .Y(n1519) );
  NOR4XL U1029 ( .A(n1239), .B(n1238), .C(n1237), .D(n1236), .Y(n1240) );
  AOI22XL U1030 ( .A0(\string_data[16][0] ), .A1(n1281), .B0(
        \string_data[24][0] ), .B1(n1241), .Y(n1203) );
  AOI211XL U1031 ( .A0(n1262), .A1(\pattern_data[2][7] ), .B0(n1261), .C0(
        n1260), .Y(n1263) );
  AOI22XL U1032 ( .A0(n1256), .A1(\pattern_data[7][1] ), .B0(n1255), .B1(
        \pattern_data[6][1] ), .Y(n1174) );
  NOR2XL U1033 ( .A(n1534), .B(pattern_length[0]), .Y(\intadd_0/CI ) );
  AOI22XL U1034 ( .A0(n970), .A1(\string_data[12][1] ), .B0(n947), .B1(
        \string_data[16][1] ), .Y(n924) );
  AOI22XL U1035 ( .A0(n960), .A1(\string_data[8][2] ), .B0(n971), .B1(
        \string_data[4][2] ), .Y(n879) );
  NAND2XL U1036 ( .A(n961), .B(\string_data[28][7] ), .Y(n821) );
  NOR4XL U1037 ( .A(n1046), .B(n1045), .C(n1044), .D(n1043), .Y(n1047) );
  NOR2XL U1038 ( .A(n1211), .B(n1275), .Y(n1223) );
  NAND3XL U1039 ( .A(n1533), .B(n1529), .C(n1528), .Y(n823) );
  NAND2XL U1040 ( .A(n1231), .B(n1230), .Y(n1310) );
  NOR2XL U1041 ( .A(\intadd_0/SUM[2] ), .B(string_length[3]), .Y(n1009) );
  NAND4XL U1042 ( .A(n879), .B(n878), .C(n877), .D(n876), .Y(n897) );
  NOR4XL U1043 ( .A(n800), .B(n799), .C(n798), .D(n797), .Y(n801) );
  NOR3XL U1044 ( .A(pattern_counter[1]), .B(n1325), .C(n1322), .Y(n1016) );
  AOI22XL U1045 ( .A0(n1256), .A1(\pattern_data[6][5] ), .B0(n1255), .B1(
        \pattern_data[5][5] ), .Y(n1100) );
  NAND4XL U1046 ( .A(n1353), .B(n1352), .C(n1351), .D(n1420), .Y(n1360) );
  NAND2XL U1047 ( .A(n1442), .B(n1424), .Y(n1425) );
  INVXL U1048 ( .A(n1470), .Y(n1428) );
  INVXL U1049 ( .A(n1386), .Y(n1426) );
  AOI211XL U1050 ( .A0(n1442), .A1(n1477), .B0(n1428), .C0(n1427), .Y(n1429)
         );
  NOR2XL U1051 ( .A(string_length[0]), .B(n1510), .Y(n1508) );
  NOR2XL U1052 ( .A(reset), .B(n1429), .Y(n1431) );
  NAND3XL U1053 ( .A(n1400), .B(N410), .C(n1442), .Y(n1398) );
  INVXL U1054 ( .A(pattern_counter[5]), .Y(n1392) );
  OAI211XL U1055 ( .A0(n1485), .A1(match_index[0]), .B0(n1475), .C0(n1474), 
        .Y(n731) );
  AOI32XL U1056 ( .A0(n1466), .A1(pattern_length[4]), .A2(n1465), .B0(n1464), 
        .B1(n1546), .Y(n762) );
  INVXL U1057 ( .A(\pattern_data[0][7] ), .Y(n1497) );
  NAND4BX1 U1058 ( .AN(\pattern_data[0][0] ), .B(\pattern_data[0][1] ), .C(
        \pattern_data[0][3] ), .D(n1497), .Y(n778) );
  NOR4BX1 U1059 ( .AN(\pattern_data[0][5] ), .B(\pattern_data[0][6] ), .C(
        \pattern_data[0][4] ), .D(n778), .Y(n1006) );
  NOR3BX1 U1060 ( .AN(\pattern_data[0][6] ), .B(\pattern_data[0][5] ), .C(n778), .Y(n779) );
  CLKBUFX3 U1061 ( .A(n907), .Y(n972) );
  CLKBUFX3 U1062 ( .A(n971), .Y(n936) );
  CLKBUFX3 U1063 ( .A(n953), .Y(n970) );
  NOR2X1 U1064 ( .A(match_index[2]), .B(n1483), .Y(n908) );
  CLKBUFX3 U1065 ( .A(n908), .Y(n926) );
  CLKBUFX3 U1066 ( .A(n967), .Y(n937) );
  CLKBUFX3 U1067 ( .A(n785), .Y(n961) );
  AO22X1 U1068 ( .A0(\string_data[11][5] ), .A1(n972), .B0(\string_data[7][5] ), .B1(n936), .Y(n789) );
  CLKBUFX3 U1069 ( .A(n947), .Y(n969) );
  AO22X1 U1070 ( .A0(\string_data[15][5] ), .A1(n953), .B0(
        \string_data[19][5] ), .B1(n969), .Y(n788) );
  AO22X1 U1071 ( .A0(\string_data[27][5] ), .A1(n968), .B0(
        \string_data[23][5] ), .B1(n967), .Y(n787) );
  CLKBUFX3 U1072 ( .A(n785), .Y(n966) );
  AO22X1 U1073 ( .A0(n973), .A1(\string_data[3][5] ), .B0(\string_data[31][5] ), .B1(n966), .Y(n786) );
  AO22X1 U1074 ( .A0(n972), .A1(\string_data[10][5] ), .B0(n936), .B1(
        \string_data[6][5] ), .Y(n795) );
  AO22X1 U1075 ( .A0(n953), .A1(\string_data[14][5] ), .B0(n969), .B1(
        \string_data[18][5] ), .Y(n794) );
  AO22X1 U1076 ( .A0(n926), .A1(\string_data[26][5] ), .B0(n967), .B1(
        \string_data[22][5] ), .Y(n793) );
  AO22X1 U1077 ( .A0(n973), .A1(\string_data[2][5] ), .B0(n966), .B1(
        \string_data[30][5] ), .Y(n792) );
  AO22X1 U1078 ( .A0(n972), .A1(\string_data[9][5] ), .B0(n936), .B1(
        \string_data[5][5] ), .Y(n800) );
  AO22X1 U1079 ( .A0(n970), .A1(\string_data[13][5] ), .B0(n969), .B1(
        \string_data[17][5] ), .Y(n799) );
  AO22X1 U1080 ( .A0(n926), .A1(\string_data[25][5] ), .B0(n937), .B1(
        \string_data[21][5] ), .Y(n798) );
  AO22X1 U1081 ( .A0(n973), .A1(\string_data[1][5] ), .B0(n961), .B1(
        \string_data[29][5] ), .Y(n797) );
  OAI22XL U1082 ( .A0(n802), .A1(n1375), .B0(n801), .B1(n1376), .Y(n803) );
  AOI211X1 U1083 ( .A0(n1004), .A1(n805), .B0(n804), .C0(n803), .Y(n988) );
  AO22X1 U1084 ( .A0(n972), .A1(\string_data[11][7] ), .B0(n936), .B1(
        \string_data[7][7] ), .Y(n809) );
  AO22X1 U1085 ( .A0(n953), .A1(\string_data[15][7] ), .B0(n969), .B1(
        \string_data[19][7] ), .Y(n808) );
  AO22X1 U1086 ( .A0(n926), .A1(\string_data[27][7] ), .B0(n937), .B1(
        \string_data[23][7] ), .Y(n807) );
  AO22X1 U1087 ( .A0(n973), .A1(\string_data[3][7] ), .B0(n961), .B1(
        \string_data[31][7] ), .Y(n806) );
  AO22X1 U1088 ( .A0(n972), .A1(\string_data[9][7] ), .B0(n936), .B1(
        \string_data[5][7] ), .Y(n817) );
  AO22X1 U1089 ( .A0(n970), .A1(\string_data[13][7] ), .B0(n969), .B1(
        \string_data[17][7] ), .Y(n816) );
  AO22X1 U1090 ( .A0(n926), .A1(\string_data[25][7] ), .B0(n937), .B1(
        \string_data[21][7] ), .Y(n815) );
  AO22X1 U1091 ( .A0(n973), .A1(\string_data[1][7] ), .B0(n966), .B1(
        \string_data[29][7] ), .Y(n814) );
  AOI2BB2X1 U1092 ( .B0(n820), .B1(n819), .A0N(n818), .A1N(n1376), .Y(n828) );
  AO22X1 U1093 ( .A0(n953), .A1(\string_data[12][7] ), .B0(n969), .B1(
        \string_data[16][7] ), .Y(n826) );
  AO22X1 U1094 ( .A0(n972), .A1(\string_data[8][7] ), .B0(n936), .B1(
        \string_data[4][7] ), .Y(n825) );
  INVXL U1095 ( .A(\string_data[0][7] ), .Y(n1517) );
  OAI31XL U1096 ( .A0(n826), .A1(n825), .A2(n824), .B0(n1004), .Y(n827) );
  AO22X1 U1097 ( .A0(n972), .A1(\string_data[11][4] ), .B0(n936), .B1(
        \string_data[7][4] ), .Y(n837) );
  AO22X1 U1098 ( .A0(n953), .A1(\string_data[15][4] ), .B0(n969), .B1(
        \string_data[19][4] ), .Y(n836) );
  AO22X1 U1099 ( .A0(n926), .A1(\string_data[27][4] ), .B0(n937), .B1(
        \string_data[23][4] ), .Y(n835) );
  AO22X1 U1100 ( .A0(n973), .A1(\string_data[3][4] ), .B0(n966), .B1(
        \string_data[31][4] ), .Y(n834) );
  AO22X1 U1101 ( .A0(n972), .A1(\string_data[9][4] ), .B0(n971), .B1(
        \string_data[5][4] ), .Y(n842) );
  AO22X1 U1102 ( .A0(n953), .A1(\string_data[13][4] ), .B0(n947), .B1(
        \string_data[17][4] ), .Y(n841) );
  AO22X1 U1103 ( .A0(n908), .A1(\string_data[25][4] ), .B0(n937), .B1(
        \string_data[21][4] ), .Y(n840) );
  AO22X1 U1104 ( .A0(n973), .A1(\string_data[1][4] ), .B0(n966), .B1(
        \string_data[29][4] ), .Y(n839) );
  AO22X1 U1105 ( .A0(n967), .A1(\string_data[22][4] ), .B0(n966), .B1(
        \string_data[30][4] ), .Y(n846) );
  AO22X1 U1106 ( .A0(n947), .A1(\string_data[18][4] ), .B0(n968), .B1(
        \string_data[26][4] ), .Y(n845) );
  AO22X1 U1107 ( .A0(n971), .A1(\string_data[6][4] ), .B0(n953), .B1(
        \string_data[14][4] ), .Y(n844) );
  AO22X1 U1108 ( .A0(n973), .A1(\string_data[2][4] ), .B0(n972), .B1(
        \string_data[10][4] ), .Y(n843) );
  OAI22XL U1109 ( .A0(n848), .A1(n1376), .B0(n847), .B1(n1375), .Y(n849) );
  AOI211X1 U1110 ( .A0(n1004), .A1(n851), .B0(n850), .C0(n849), .Y(n991) );
  AO22X1 U1111 ( .A0(n972), .A1(\string_data[11][0] ), .B0(n936), .B1(
        \string_data[7][0] ), .Y(n860) );
  AO22X1 U1112 ( .A0(n856), .A1(\string_data[15][0] ), .B0(n969), .B1(
        \string_data[19][0] ), .Y(n859) );
  AO22X1 U1113 ( .A0(n926), .A1(\string_data[27][0] ), .B0(n937), .B1(
        \string_data[23][0] ), .Y(n858) );
  AO22X1 U1114 ( .A0(n973), .A1(\string_data[3][0] ), .B0(n966), .B1(
        \string_data[31][0] ), .Y(n857) );
  AO22X1 U1115 ( .A0(n907), .A1(\string_data[9][0] ), .B0(n936), .B1(
        \string_data[5][0] ), .Y(n865) );
  AO22X1 U1116 ( .A0(n970), .A1(\string_data[13][0] ), .B0(n969), .B1(
        \string_data[17][0] ), .Y(n864) );
  AO22X1 U1117 ( .A0(n908), .A1(\string_data[25][0] ), .B0(n937), .B1(
        \string_data[21][0] ), .Y(n863) );
  AO22X1 U1118 ( .A0(n973), .A1(\string_data[1][0] ), .B0(n966), .B1(
        \string_data[29][0] ), .Y(n862) );
  AO22X1 U1119 ( .A0(n967), .A1(\string_data[22][0] ), .B0(n966), .B1(
        \string_data[30][0] ), .Y(n869) );
  AO22X1 U1120 ( .A0(n947), .A1(\string_data[18][0] ), .B0(n968), .B1(
        \string_data[26][0] ), .Y(n868) );
  AO22X1 U1121 ( .A0(n971), .A1(\string_data[6][0] ), .B0(n953), .B1(
        \string_data[14][0] ), .Y(n867) );
  AO22X1 U1122 ( .A0(n973), .A1(\string_data[2][0] ), .B0(n972), .B1(
        \string_data[10][0] ), .Y(n866) );
  OAI22XL U1123 ( .A0(n871), .A1(n1376), .B0(n870), .B1(n1375), .Y(n872) );
  AOI211X1 U1124 ( .A0(n1004), .A1(n874), .B0(n873), .C0(n872), .Y(n997) );
  AO22X1 U1125 ( .A0(n972), .A1(\string_data[11][2] ), .B0(n936), .B1(
        \string_data[7][2] ), .Y(n883) );
  AO22X1 U1126 ( .A0(n953), .A1(\string_data[15][2] ), .B0(n969), .B1(
        \string_data[19][2] ), .Y(n882) );
  AO22X1 U1127 ( .A0(n926), .A1(\string_data[27][2] ), .B0(n937), .B1(
        \string_data[23][2] ), .Y(n881) );
  AO22X1 U1128 ( .A0(n973), .A1(\string_data[3][2] ), .B0(n966), .B1(
        \string_data[31][2] ), .Y(n880) );
  AO22X1 U1129 ( .A0(n972), .A1(\string_data[9][2] ), .B0(n936), .B1(
        \string_data[5][2] ), .Y(n888) );
  AO22X1 U1130 ( .A0(n953), .A1(\string_data[13][2] ), .B0(n969), .B1(
        \string_data[17][2] ), .Y(n887) );
  AO22X1 U1131 ( .A0(n926), .A1(\string_data[25][2] ), .B0(n937), .B1(
        \string_data[21][2] ), .Y(n886) );
  AO22X1 U1132 ( .A0(n973), .A1(\string_data[1][2] ), .B0(n966), .B1(
        \string_data[29][2] ), .Y(n885) );
  AO22X1 U1133 ( .A0(n967), .A1(\string_data[22][2] ), .B0(n966), .B1(
        \string_data[30][2] ), .Y(n892) );
  AO22X1 U1134 ( .A0(n947), .A1(\string_data[18][2] ), .B0(n968), .B1(
        \string_data[26][2] ), .Y(n891) );
  AO22X1 U1135 ( .A0(n971), .A1(\string_data[6][2] ), .B0(n953), .B1(
        \string_data[14][2] ), .Y(n890) );
  AO22X1 U1136 ( .A0(n973), .A1(\string_data[2][2] ), .B0(n972), .B1(
        \string_data[10][2] ), .Y(n889) );
  OAI22XL U1137 ( .A0(n894), .A1(n1376), .B0(n893), .B1(n1375), .Y(n895) );
  AOI211X1 U1138 ( .A0(n1004), .A1(n897), .B0(n896), .C0(n895), .Y(n990) );
  AO22X1 U1139 ( .A0(n960), .A1(\string_data[11][6] ), .B0(n936), .B1(
        \string_data[7][6] ), .Y(n905) );
  AO22X1 U1140 ( .A0(n970), .A1(\string_data[15][6] ), .B0(n969), .B1(
        \string_data[19][6] ), .Y(n904) );
  AO22X1 U1141 ( .A0(n926), .A1(\string_data[27][6] ), .B0(n937), .B1(
        \string_data[23][6] ), .Y(n903) );
  AO22X1 U1142 ( .A0(n973), .A1(\string_data[3][6] ), .B0(n966), .B1(
        \string_data[31][6] ), .Y(n902) );
  AO22X1 U1143 ( .A0(n907), .A1(\string_data[10][6] ), .B0(n936), .B1(
        \string_data[6][6] ), .Y(n912) );
  AO22X1 U1144 ( .A0(n953), .A1(\string_data[14][6] ), .B0(n969), .B1(
        \string_data[18][6] ), .Y(n911) );
  AO22X1 U1145 ( .A0(n908), .A1(\string_data[26][6] ), .B0(n937), .B1(
        \string_data[22][6] ), .Y(n910) );
  AO22X1 U1146 ( .A0(n973), .A1(\string_data[2][6] ), .B0(n966), .B1(
        \string_data[30][6] ), .Y(n909) );
  AO22X1 U1147 ( .A0(n972), .A1(\string_data[9][6] ), .B0(n936), .B1(
        \string_data[5][6] ), .Y(n916) );
  AO22X1 U1148 ( .A0(n970), .A1(\string_data[13][6] ), .B0(n969), .B1(
        \string_data[17][6] ), .Y(n915) );
  AO22X1 U1149 ( .A0(n968), .A1(\string_data[25][6] ), .B0(n937), .B1(
        \string_data[21][6] ), .Y(n914) );
  AO22X1 U1150 ( .A0(n973), .A1(\string_data[1][6] ), .B0(n966), .B1(
        \string_data[29][6] ), .Y(n913) );
  OAI22XL U1151 ( .A0(n918), .A1(n1375), .B0(n917), .B1(n1376), .Y(n919) );
  AOI211X1 U1152 ( .A0(n1004), .A1(n921), .B0(n920), .C0(n919), .Y(n994) );
  AO22X1 U1153 ( .A0(n960), .A1(\string_data[11][1] ), .B0(n936), .B1(
        \string_data[7][1] ), .Y(n930) );
  AO22X1 U1154 ( .A0(n970), .A1(\string_data[15][1] ), .B0(n969), .B1(
        \string_data[19][1] ), .Y(n929) );
  AO22X1 U1155 ( .A0(n926), .A1(\string_data[27][1] ), .B0(n937), .B1(
        \string_data[23][1] ), .Y(n928) );
  AO22X1 U1156 ( .A0(n973), .A1(\string_data[3][1] ), .B0(n966), .B1(
        \string_data[31][1] ), .Y(n927) );
  AO22X1 U1157 ( .A0(n960), .A1(\string_data[10][1] ), .B0(n936), .B1(
        \string_data[6][1] ), .Y(n935) );
  AO22X1 U1158 ( .A0(n970), .A1(\string_data[14][1] ), .B0(n969), .B1(
        \string_data[18][1] ), .Y(n934) );
  AO22X1 U1159 ( .A0(n926), .A1(\string_data[26][1] ), .B0(n937), .B1(
        \string_data[22][1] ), .Y(n933) );
  AO22X1 U1160 ( .A0(n973), .A1(\string_data[2][1] ), .B0(n961), .B1(
        \string_data[30][1] ), .Y(n932) );
  AO22X1 U1161 ( .A0(n960), .A1(\string_data[9][1] ), .B0(n936), .B1(
        \string_data[5][1] ), .Y(n941) );
  AO22X1 U1162 ( .A0(n970), .A1(\string_data[13][1] ), .B0(n969), .B1(
        \string_data[17][1] ), .Y(n940) );
  AO22X1 U1163 ( .A0(n926), .A1(\string_data[25][1] ), .B0(n937), .B1(
        \string_data[21][1] ), .Y(n939) );
  AO22X1 U1164 ( .A0(n973), .A1(\string_data[1][1] ), .B0(n961), .B1(
        \string_data[29][1] ), .Y(n938) );
  OAI22XL U1165 ( .A0(n943), .A1(n1375), .B0(n942), .B1(n1376), .Y(n944) );
  AOI211X1 U1166 ( .A0(n1004), .A1(n946), .B0(n945), .C0(n944), .Y(n993) );
  AO22X1 U1167 ( .A0(n972), .A1(\string_data[11][3] ), .B0(n952), .B1(
        \string_data[7][3] ), .Y(n958) );
  AO22X1 U1168 ( .A0(n953), .A1(\string_data[15][3] ), .B0(n969), .B1(
        \string_data[19][3] ), .Y(n957) );
  AO22X1 U1169 ( .A0(n908), .A1(\string_data[27][3] ), .B0(n954), .B1(
        \string_data[23][3] ), .Y(n956) );
  AO22X1 U1170 ( .A0(n973), .A1(\string_data[3][3] ), .B0(n961), .B1(
        \string_data[31][3] ), .Y(n955) );
  AO22X1 U1171 ( .A0(n960), .A1(\string_data[9][3] ), .B0(n971), .B1(
        \string_data[5][3] ), .Y(n965) );
  AO22X1 U1172 ( .A0(n970), .A1(\string_data[13][3] ), .B0(n969), .B1(
        \string_data[17][3] ), .Y(n964) );
  AO22X1 U1173 ( .A0(n926), .A1(\string_data[25][3] ), .B0(n967), .B1(
        \string_data[21][3] ), .Y(n963) );
  AO22X1 U1174 ( .A0(n973), .A1(\string_data[1][3] ), .B0(n961), .B1(
        \string_data[29][3] ), .Y(n962) );
  AO22X1 U1175 ( .A0(n967), .A1(\string_data[22][3] ), .B0(n966), .B1(
        \string_data[30][3] ), .Y(n977) );
  AO22X1 U1176 ( .A0(n969), .A1(\string_data[18][3] ), .B0(n968), .B1(
        \string_data[26][3] ), .Y(n976) );
  AO22X1 U1177 ( .A0(n971), .A1(\string_data[6][3] ), .B0(n970), .B1(
        \string_data[14][3] ), .Y(n975) );
  AO22X1 U1178 ( .A0(n973), .A1(\string_data[2][3] ), .B0(n972), .B1(
        \string_data[10][3] ), .Y(n974) );
  OAI22XL U1179 ( .A0(n979), .A1(n1376), .B0(n978), .B1(n1375), .Y(n980) );
  AOI211X1 U1180 ( .A0(n1004), .A1(n982), .B0(n981), .C0(n980), .Y(n996) );
  OAI22XL U1181 ( .A0(\pattern_data[0][5] ), .A1(n988), .B0(
        \pattern_data[0][7] ), .B1(n987), .Y(n986) );
  AOI221XL U1182 ( .A0(\pattern_data[0][5] ), .A1(n988), .B0(n987), .B1(
        \pattern_data[0][7] ), .C0(n986), .Y(n1001) );
  OAI22XL U1183 ( .A0(\pattern_data[0][4] ), .A1(n991), .B0(n990), .B1(
        \pattern_data[0][2] ), .Y(n989) );
  AOI221XL U1184 ( .A0(\pattern_data[0][4] ), .A1(n991), .B0(
        \pattern_data[0][2] ), .B1(n990), .C0(n989), .Y(n1000) );
  OAI22XL U1185 ( .A0(\pattern_data[0][6] ), .A1(n994), .B0(
        \pattern_data[0][1] ), .B1(n993), .Y(n992) );
  AOI221XL U1186 ( .A0(\pattern_data[0][6] ), .A1(n994), .B0(n993), .B1(
        \pattern_data[0][1] ), .C0(n992), .Y(n999) );
  OAI22XL U1187 ( .A0(\pattern_data[0][0] ), .A1(n997), .B0(n996), .B1(
        \pattern_data[0][3] ), .Y(n995) );
  AOI221XL U1188 ( .A0(\pattern_data[0][0] ), .A1(n997), .B0(
        \pattern_data[0][3] ), .B1(n996), .C0(n995), .Y(n998) );
  AND4X1 U1189 ( .A(n1001), .B(n1000), .C(n999), .D(n998), .Y(n1002) );
  AOI222XL U1190 ( .A0(match_index[0]), .A1(n1538), .B0(\intadd_0/SUM[0] ), 
        .B1(string_length[1]), .C0(n1539), .C1(pattern_length[0]), .Y(n1007)
         );
  AOI2BB2X1 U1191 ( .B0(n1007), .B1(n1530), .A0N(string_length[1]), .A1N(
        \intadd_0/SUM[0] ), .Y(n1008) );
  AOI222XL U1192 ( .A0(string_length[2]), .A1(\intadd_0/SUM[1] ), .B0(
        string_length[2]), .B1(n1008), .C0(\intadd_0/SUM[1] ), .C1(n1008), .Y(
        n1010) );
  OAI2BB2XL U1193 ( .B0(n1010), .B1(n1009), .A0N(\intadd_0/SUM[2] ), .A1N(
        string_length[3]), .Y(n1011) );
  AOI222XL U1194 ( .A0(string_length[4]), .A1(n1011), .B0(string_length[4]), 
        .B1(\intadd_0/SUM[3] ), .C0(n1011), .C1(\intadd_0/SUM[3] ), .Y(n1012)
         );
  OAI31X1 U1195 ( .A0(\intadd_0/n1 ), .A1(n1478), .A2(n1014), .B0(n1013), .Y(
        n1447) );
  INVX1 U1196 ( .A(pattern_counter[2]), .Y(n1325) );
  NOR3XL U1197 ( .A(pattern_counter[0]), .B(n1325), .C(n1399), .Y(n1015) );
  CLKBUFX3 U1198 ( .A(n1015), .Y(n1256) );
  INVX1 U1199 ( .A(pattern_counter[0]), .Y(n1322) );
  CLKBUFX3 U1200 ( .A(n1016), .Y(n1255) );
  AOI22XL U1201 ( .A0(n1256), .A1(\pattern_data[7][5] ), .B0(n1255), .B1(
        \pattern_data[6][5] ), .Y(n1025) );
  NOR3XL U1202 ( .A(pattern_counter[1]), .B(pattern_counter[2]), .C(n1322), 
        .Y(n1017) );
  CLKBUFX3 U1203 ( .A(n1017), .Y(n1262) );
  NOR3XL U1204 ( .A(pattern_counter[1]), .B(pattern_counter[0]), .C(n1325), 
        .Y(n1018) );
  CLKBUFX3 U1205 ( .A(n1018), .Y(n1258) );
  NOR3XL U1206 ( .A(pattern_counter[2]), .B(n1399), .C(n1322), .Y(n1019) );
  CLKBUFX3 U1207 ( .A(n1019), .Y(n1257) );
  AO22X1 U1208 ( .A0(n1258), .A1(\pattern_data[5][5] ), .B0(n1257), .B1(
        \pattern_data[4][5] ), .Y(n1023) );
  NOR3XL U1209 ( .A(pattern_counter[1]), .B(pattern_counter[2]), .C(
        pattern_counter[0]), .Y(n1020) );
  CLKBUFX3 U1210 ( .A(n1020), .Y(n1382) );
  NOR3XL U1211 ( .A(pattern_counter[2]), .B(pattern_counter[0]), .C(n1399), 
        .Y(n1021) );
  CLKBUFX3 U1212 ( .A(n1021), .Y(n1259) );
  AO22X1 U1213 ( .A0(n1382), .A1(\pattern_data[1][5] ), .B0(n1259), .B1(
        \pattern_data[3][5] ), .Y(n1022) );
  AOI211XL U1214 ( .A0(n1262), .A1(\pattern_data[2][5] ), .B0(n1023), .C0(
        n1022), .Y(n1024) );
  NAND2XL U1215 ( .A(n1025), .B(n1024), .Y(n1080) );
  NOR2X2 U1216 ( .A(string_counter[1]), .B(string_counter[0]), .Y(n1307) );
  INVX1 U1217 ( .A(string_counter[3]), .Y(n1374) );
  NOR3XL U1218 ( .A(string_counter[2]), .B(string_counter[4]), .C(n1374), .Y(
        n1031) );
  CLKBUFX3 U1219 ( .A(n1031), .Y(n1278) );
  NOR3X1 U1220 ( .A(string_counter[2]), .B(string_counter[3]), .C(
        string_counter[4]), .Y(n1265) );
  BUFX2 U1221 ( .A(n1265), .Y(n1277) );
  AOI22XL U1222 ( .A0(\string_data[8][5] ), .A1(n1278), .B0(
        \string_data[0][5] ), .B1(n1277), .Y(n1030) );
  INVX1 U1223 ( .A(string_counter[2]), .Y(n1372) );
  NOR3XL U1224 ( .A(string_counter[3]), .B(string_counter[4]), .C(n1372), .Y(
        n1032) );
  CLKBUFX3 U1225 ( .A(n1032), .Y(n1280) );
  NAND2XL U1226 ( .A(string_counter[2]), .B(string_counter[3]), .Y(n1026) );
  NOR2X1 U1227 ( .A(string_counter[4]), .B(n1026), .Y(n1206) );
  BUFX2 U1228 ( .A(n1206), .Y(n1279) );
  AOI22XL U1229 ( .A0(\string_data[4][5] ), .A1(n1280), .B0(
        \string_data[12][5] ), .B1(n1279), .Y(n1029) );
  NOR3X1 U1230 ( .A(string_counter[2]), .B(string_counter[3]), .C(n1381), .Y(
        n1266) );
  BUFX2 U1231 ( .A(n1266), .Y(n1281) );
  NOR3X1 U1232 ( .A(string_counter[2]), .B(n1374), .C(n1381), .Y(n1179) );
  AOI22XL U1233 ( .A0(\string_data[16][5] ), .A1(n1281), .B0(
        \string_data[24][5] ), .B1(n1179), .Y(n1028) );
  NOR3XL U1234 ( .A(string_counter[3]), .B(n1372), .C(n1381), .Y(n1033) );
  CLKBUFX3 U1235 ( .A(n1033), .Y(n1283) );
  NOR2X1 U1236 ( .A(n1381), .B(n1026), .Y(n1132) );
  BUFX2 U1237 ( .A(n1132), .Y(n1282) );
  AOI22XL U1238 ( .A0(\string_data[20][5] ), .A1(n1283), .B0(
        \string_data[28][5] ), .B1(n1282), .Y(n1027) );
  NAND4XL U1239 ( .A(n1030), .B(n1029), .C(n1028), .D(n1027), .Y(n1051) );
  BUFX2 U1240 ( .A(n1031), .Y(n1295) );
  CLKBUFX3 U1241 ( .A(n1277), .Y(n1294) );
  AO22X1 U1242 ( .A0(\string_data[11][5] ), .A1(n1295), .B0(
        \string_data[3][5] ), .B1(n1294), .Y(n1037) );
  BUFX2 U1243 ( .A(n1032), .Y(n1293) );
  BUFX2 U1244 ( .A(n1206), .Y(n1292) );
  AO22X1 U1245 ( .A0(\string_data[7][5] ), .A1(n1293), .B0(
        \string_data[15][5] ), .B1(n1292), .Y(n1036) );
  CLKBUFX3 U1246 ( .A(n1281), .Y(n1291) );
  BUFX2 U1247 ( .A(n1179), .Y(n1241) );
  CLKBUFX3 U1248 ( .A(n1241), .Y(n1290) );
  AO22X1 U1249 ( .A0(\string_data[19][5] ), .A1(n1291), .B0(
        \string_data[27][5] ), .B1(n1290), .Y(n1035) );
  CLKBUFX3 U1250 ( .A(n1033), .Y(n1289) );
  BUFX2 U1251 ( .A(n1132), .Y(n1288) );
  AO22X1 U1252 ( .A0(\string_data[23][5] ), .A1(n1289), .B0(
        \string_data[31][5] ), .B1(n1288), .Y(n1034) );
  NOR4XL U1253 ( .A(n1037), .B(n1036), .C(n1035), .D(n1034), .Y(n1038) );
  NOR2XL U1254 ( .A(n1038), .B(n1275), .Y(n1050) );
  AO22X1 U1255 ( .A0(\string_data[22][5] ), .A1(n1289), .B0(
        \string_data[30][5] ), .B1(n1288), .Y(n1042) );
  AO22X1 U1256 ( .A0(\string_data[18][5] ), .A1(n1291), .B0(
        \string_data[26][5] ), .B1(n1290), .Y(n1041) );
  AO22X1 U1257 ( .A0(\string_data[6][5] ), .A1(n1293), .B0(
        \string_data[14][5] ), .B1(n1292), .Y(n1040) );
  AO22X1 U1258 ( .A0(\string_data[10][5] ), .A1(n1295), .B0(
        \string_data[2][5] ), .B1(n1294), .Y(n1039) );
  NOR4XL U1259 ( .A(n1042), .B(n1041), .C(n1040), .D(n1039), .Y(n1048) );
  INVX1 U1260 ( .A(string_counter[1]), .Y(n1378) );
  AO22X1 U1261 ( .A0(\string_data[9][5] ), .A1(n1295), .B0(\string_data[1][5] ), .B1(n1294), .Y(n1046) );
  AO22X1 U1262 ( .A0(\string_data[5][5] ), .A1(n1293), .B0(
        \string_data[13][5] ), .B1(n1292), .Y(n1045) );
  AO22X1 U1263 ( .A0(\string_data[17][5] ), .A1(n1291), .B0(
        \string_data[25][5] ), .B1(n1290), .Y(n1044) );
  AO22X1 U1264 ( .A0(\string_data[21][5] ), .A1(n1289), .B0(
        \string_data[29][5] ), .B1(n1132), .Y(n1043) );
  OAI22XL U1265 ( .A0(n1048), .A1(n1300), .B0(n1047), .B1(n1302), .Y(n1049) );
  AOI22XL U1266 ( .A0(n1256), .A1(\pattern_data[7][6] ), .B0(n1255), .B1(
        \pattern_data[6][6] ), .Y(n1055) );
  AO22X1 U1267 ( .A0(n1258), .A1(\pattern_data[5][6] ), .B0(n1257), .B1(
        \pattern_data[4][6] ), .Y(n1053) );
  AO22X1 U1268 ( .A0(n1382), .A1(\pattern_data[1][6] ), .B0(n1259), .B1(
        \pattern_data[3][6] ), .Y(n1052) );
  AOI211XL U1269 ( .A0(n1262), .A1(\pattern_data[2][6] ), .B0(n1053), .C0(
        n1052), .Y(n1054) );
  NAND2XL U1270 ( .A(n1055), .B(n1054), .Y(n1079) );
  AOI22XL U1271 ( .A0(\string_data[8][6] ), .A1(n1278), .B0(
        \string_data[0][6] ), .B1(n1277), .Y(n1059) );
  AOI22XL U1272 ( .A0(\string_data[4][6] ), .A1(n1280), .B0(
        \string_data[12][6] ), .B1(n1279), .Y(n1058) );
  AOI22XL U1273 ( .A0(\string_data[16][6] ), .A1(n1281), .B0(
        \string_data[24][6] ), .B1(n1241), .Y(n1057) );
  AOI22XL U1274 ( .A0(\string_data[20][6] ), .A1(n1283), .B0(
        \string_data[28][6] ), .B1(n1282), .Y(n1056) );
  NAND4XL U1275 ( .A(n1059), .B(n1058), .C(n1057), .D(n1056), .Y(n1077) );
  AO22X1 U1276 ( .A0(\string_data[11][6] ), .A1(n1295), .B0(
        \string_data[3][6] ), .B1(n1294), .Y(n1063) );
  AO22X1 U1277 ( .A0(\string_data[7][6] ), .A1(n1293), .B0(
        \string_data[15][6] ), .B1(n1292), .Y(n1062) );
  AO22X1 U1278 ( .A0(\string_data[19][6] ), .A1(n1291), .B0(
        \string_data[27][6] ), .B1(n1290), .Y(n1061) );
  AO22X1 U1279 ( .A0(\string_data[23][6] ), .A1(n1289), .B0(
        \string_data[31][6] ), .B1(n1288), .Y(n1060) );
  NOR4XL U1280 ( .A(n1063), .B(n1062), .C(n1061), .D(n1060), .Y(n1064) );
  NOR2XL U1281 ( .A(n1064), .B(n1275), .Y(n1076) );
  AO22X1 U1282 ( .A0(\string_data[9][6] ), .A1(n1295), .B0(\string_data[1][6] ), .B1(n1294), .Y(n1068) );
  AO22X1 U1283 ( .A0(\string_data[5][6] ), .A1(n1293), .B0(
        \string_data[13][6] ), .B1(n1292), .Y(n1067) );
  AO22X1 U1284 ( .A0(\string_data[17][6] ), .A1(n1291), .B0(
        \string_data[25][6] ), .B1(n1290), .Y(n1066) );
  AO22X1 U1285 ( .A0(\string_data[21][6] ), .A1(n1289), .B0(
        \string_data[29][6] ), .B1(n1132), .Y(n1065) );
  NOR4XL U1286 ( .A(n1068), .B(n1067), .C(n1066), .D(n1065), .Y(n1074) );
  AO22X1 U1287 ( .A0(\string_data[10][6] ), .A1(n1295), .B0(
        \string_data[2][6] ), .B1(n1294), .Y(n1072) );
  AO22X1 U1288 ( .A0(\string_data[6][6] ), .A1(n1293), .B0(
        \string_data[14][6] ), .B1(n1292), .Y(n1071) );
  AO22X1 U1289 ( .A0(\string_data[18][6] ), .A1(n1291), .B0(
        \string_data[26][6] ), .B1(n1290), .Y(n1070) );
  AO22X1 U1290 ( .A0(\string_data[22][6] ), .A1(n1289), .B0(
        \string_data[30][6] ), .B1(n1132), .Y(n1069) );
  NOR4XL U1291 ( .A(n1072), .B(n1071), .C(n1070), .D(n1069), .Y(n1073) );
  OAI22XL U1292 ( .A0(n1074), .A1(n1302), .B0(n1073), .B1(n1300), .Y(n1075) );
  OAI22XL U1293 ( .A0(n1353), .A1(n1079), .B0(n1357), .B1(n1080), .Y(n1078) );
  AOI221XL U1294 ( .A0(n1080), .A1(n1357), .B0(n1079), .B1(n1353), .C0(n1078), 
        .Y(n1315) );
  NOR3X2 U1295 ( .A(n1399), .B(n1325), .C(n1322), .Y(n1110) );
  AOI22XL U1296 ( .A0(\pattern_data[0][4] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][4] ), .Y(n1084) );
  AOI22XL U1297 ( .A0(n1259), .A1(\pattern_data[2][4] ), .B0(n1262), .B1(
        \pattern_data[1][4] ), .Y(n1083) );
  AOI22XL U1298 ( .A0(n1258), .A1(\pattern_data[4][4] ), .B0(n1257), .B1(
        \pattern_data[3][4] ), .Y(n1082) );
  AOI22XL U1299 ( .A0(n1256), .A1(\pattern_data[6][4] ), .B0(n1255), .B1(
        \pattern_data[5][4] ), .Y(n1081) );
  NAND4XL U1300 ( .A(n1084), .B(n1083), .C(n1082), .D(n1081), .Y(n1342) );
  AO22X1 U1301 ( .A0(n1256), .A1(\pattern_data[6][0] ), .B0(n1255), .B1(
        \pattern_data[5][0] ), .Y(n1088) );
  AO22X1 U1302 ( .A0(n1258), .A1(\pattern_data[4][0] ), .B0(n1257), .B1(
        \pattern_data[3][0] ), .Y(n1087) );
  AO22X1 U1303 ( .A0(n1259), .A1(\pattern_data[2][0] ), .B0(n1262), .B1(
        \pattern_data[1][0] ), .Y(n1086) );
  AO22X1 U1304 ( .A0(\pattern_data[0][0] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][0] ), .Y(n1085) );
  NOR4X1 U1305 ( .A(n1088), .B(n1087), .C(n1086), .D(n1085), .Y(n1336) );
  AO22X1 U1306 ( .A0(\pattern_data[0][7] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][7] ), .Y(n1092) );
  AO22X1 U1307 ( .A0(n1259), .A1(\pattern_data[2][7] ), .B0(n1262), .B1(
        \pattern_data[1][7] ), .Y(n1091) );
  AO22X1 U1308 ( .A0(n1258), .A1(\pattern_data[4][7] ), .B0(n1257), .B1(
        \pattern_data[3][7] ), .Y(n1090) );
  AO22X1 U1309 ( .A0(n1256), .A1(\pattern_data[6][7] ), .B0(n1255), .B1(
        \pattern_data[5][7] ), .Y(n1089) );
  NOR4X1 U1310 ( .A(n1092), .B(n1091), .C(n1090), .D(n1089), .Y(n1339) );
  AO22X1 U1311 ( .A0(\pattern_data[0][6] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][6] ), .Y(n1096) );
  AO22X1 U1312 ( .A0(n1259), .A1(\pattern_data[2][6] ), .B0(n1262), .B1(
        \pattern_data[1][6] ), .Y(n1095) );
  AO22X1 U1313 ( .A0(n1258), .A1(\pattern_data[4][6] ), .B0(n1257), .B1(
        \pattern_data[3][6] ), .Y(n1094) );
  AO22X1 U1314 ( .A0(n1256), .A1(\pattern_data[6][6] ), .B0(n1255), .B1(
        \pattern_data[5][6] ), .Y(n1093) );
  NOR4X1 U1315 ( .A(n1096), .B(n1095), .C(n1094), .D(n1093), .Y(n1338) );
  AOI22XL U1316 ( .A0(n1258), .A1(\pattern_data[4][5] ), .B0(n1257), .B1(
        \pattern_data[3][5] ), .Y(n1099) );
  AOI22XL U1317 ( .A0(n1259), .A1(\pattern_data[2][5] ), .B0(n1262), .B1(
        \pattern_data[1][5] ), .Y(n1098) );
  AOI22XL U1318 ( .A0(\pattern_data[0][5] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][5] ), .Y(n1097) );
  NAND4XL U1319 ( .A(n1100), .B(n1099), .C(n1098), .D(n1097), .Y(n1346) );
  NAND4XL U1320 ( .A(n1336), .B(n1339), .C(n1338), .D(n1346), .Y(n1101) );
  NOR2XL U1321 ( .A(n1342), .B(n1101), .Y(n1350) );
  AOI22XL U1322 ( .A0(\pattern_data[0][1] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][1] ), .Y(n1105) );
  AOI22XL U1323 ( .A0(n1259), .A1(\pattern_data[2][1] ), .B0(n1262), .B1(
        \pattern_data[1][1] ), .Y(n1104) );
  AOI22XL U1324 ( .A0(n1258), .A1(\pattern_data[4][1] ), .B0(n1257), .B1(
        \pattern_data[3][1] ), .Y(n1103) );
  AOI22XL U1325 ( .A0(n1256), .A1(\pattern_data[6][1] ), .B0(n1255), .B1(
        \pattern_data[5][1] ), .Y(n1102) );
  NAND4X1 U1326 ( .A(n1105), .B(n1104), .C(n1103), .D(n1102), .Y(n1348) );
  AOI22XL U1327 ( .A0(\pattern_data[0][3] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][3] ), .Y(n1109) );
  AOI22XL U1328 ( .A0(n1259), .A1(\pattern_data[2][3] ), .B0(n1262), .B1(
        \pattern_data[1][3] ), .Y(n1108) );
  AOI22XL U1329 ( .A0(n1258), .A1(\pattern_data[4][3] ), .B0(n1257), .B1(
        \pattern_data[3][3] ), .Y(n1107) );
  AOI22XL U1330 ( .A0(n1256), .A1(\pattern_data[6][3] ), .B0(n1255), .B1(
        \pattern_data[5][3] ), .Y(n1106) );
  NAND4XL U1331 ( .A(n1109), .B(n1108), .C(n1107), .D(n1106), .Y(n1347) );
  NAND3XL U1332 ( .A(n1350), .B(n1348), .C(n1347), .Y(n1358) );
  AOI22XL U1333 ( .A0(n1256), .A1(\pattern_data[6][2] ), .B0(n1255), .B1(
        \pattern_data[5][2] ), .Y(n1114) );
  AOI22XL U1334 ( .A0(n1258), .A1(\pattern_data[4][2] ), .B0(n1257), .B1(
        \pattern_data[3][2] ), .Y(n1113) );
  AOI22XL U1335 ( .A0(n1259), .A1(\pattern_data[2][2] ), .B0(n1262), .B1(
        \pattern_data[1][2] ), .Y(n1112) );
  AOI22XL U1336 ( .A0(\pattern_data[0][2] ), .A1(n1382), .B0(n1110), .B1(
        \pattern_data[7][2] ), .Y(n1111) );
  NAND4XL U1337 ( .A(n1114), .B(n1113), .C(n1112), .D(n1111), .Y(n1329) );
  NOR2X1 U1338 ( .A(n1358), .B(n1329), .Y(n1443) );
  AOI22XL U1339 ( .A0(n1256), .A1(\pattern_data[7][2] ), .B0(n1255), .B1(
        \pattern_data[6][2] ), .Y(n1118) );
  AO22X1 U1340 ( .A0(n1258), .A1(\pattern_data[5][2] ), .B0(n1257), .B1(
        \pattern_data[4][2] ), .Y(n1116) );
  AO22X1 U1341 ( .A0(n1382), .A1(\pattern_data[1][2] ), .B0(n1259), .B1(
        \pattern_data[3][2] ), .Y(n1115) );
  AOI211XL U1342 ( .A0(n1262), .A1(\pattern_data[2][2] ), .B0(n1116), .C0(
        n1115), .Y(n1117) );
  NAND2XL U1343 ( .A(n1118), .B(n1117), .Y(n1170) );
  AOI22XL U1344 ( .A0(\string_data[8][2] ), .A1(n1278), .B0(
        \string_data[0][2] ), .B1(n1277), .Y(n1122) );
  AOI22XL U1345 ( .A0(\string_data[4][2] ), .A1(n1280), .B0(
        \string_data[12][2] ), .B1(n1279), .Y(n1121) );
  AOI22XL U1346 ( .A0(\string_data[16][2] ), .A1(n1281), .B0(
        \string_data[24][2] ), .B1(n1179), .Y(n1120) );
  AOI22XL U1347 ( .A0(\string_data[20][2] ), .A1(n1283), .B0(
        \string_data[28][2] ), .B1(n1282), .Y(n1119) );
  NAND4XL U1348 ( .A(n1122), .B(n1121), .C(n1120), .D(n1119), .Y(n1141) );
  AO22X1 U1349 ( .A0(\string_data[11][2] ), .A1(n1278), .B0(
        \string_data[3][2] ), .B1(n1277), .Y(n1126) );
  AO22X1 U1350 ( .A0(\string_data[7][2] ), .A1(n1280), .B0(
        \string_data[15][2] ), .B1(n1292), .Y(n1125) );
  AO22X1 U1351 ( .A0(\string_data[19][2] ), .A1(n1281), .B0(
        \string_data[27][2] ), .B1(n1241), .Y(n1124) );
  AO22X1 U1352 ( .A0(\string_data[23][2] ), .A1(n1283), .B0(
        \string_data[31][2] ), .B1(n1288), .Y(n1123) );
  NOR4XL U1353 ( .A(n1126), .B(n1125), .C(n1124), .D(n1123), .Y(n1127) );
  NOR2XL U1354 ( .A(n1127), .B(n1275), .Y(n1140) );
  AO22X1 U1355 ( .A0(\string_data[9][2] ), .A1(n1278), .B0(\string_data[1][2] ), .B1(n1294), .Y(n1131) );
  AO22X1 U1356 ( .A0(\string_data[5][2] ), .A1(n1280), .B0(
        \string_data[13][2] ), .B1(n1206), .Y(n1130) );
  AO22X1 U1357 ( .A0(\string_data[17][2] ), .A1(n1291), .B0(
        \string_data[25][2] ), .B1(n1241), .Y(n1129) );
  AO22X1 U1358 ( .A0(\string_data[21][2] ), .A1(n1283), .B0(
        \string_data[29][2] ), .B1(n1288), .Y(n1128) );
  NOR4XL U1359 ( .A(n1131), .B(n1130), .C(n1129), .D(n1128), .Y(n1138) );
  AO22X1 U1360 ( .A0(\string_data[22][2] ), .A1(n1283), .B0(
        \string_data[30][2] ), .B1(n1132), .Y(n1136) );
  AO22X1 U1361 ( .A0(\string_data[18][2] ), .A1(n1291), .B0(
        \string_data[26][2] ), .B1(n1241), .Y(n1135) );
  AO22X1 U1362 ( .A0(\string_data[6][2] ), .A1(n1280), .B0(
        \string_data[14][2] ), .B1(n1206), .Y(n1134) );
  AO22X1 U1363 ( .A0(\string_data[10][2] ), .A1(n1278), .B0(
        \string_data[2][2] ), .B1(n1294), .Y(n1133) );
  NOR4XL U1364 ( .A(n1136), .B(n1135), .C(n1134), .D(n1133), .Y(n1137) );
  OAI22XL U1365 ( .A0(n1138), .A1(n1302), .B0(n1137), .B1(n1300), .Y(n1139) );
  AOI211X1 U1366 ( .A0(n1307), .A1(n1141), .B0(n1140), .C0(n1139), .Y(n1330)
         );
  AOI22XL U1367 ( .A0(n1256), .A1(\pattern_data[7][3] ), .B0(n1255), .B1(
        \pattern_data[6][3] ), .Y(n1145) );
  AO22X1 U1368 ( .A0(n1258), .A1(\pattern_data[5][3] ), .B0(n1257), .B1(
        \pattern_data[4][3] ), .Y(n1143) );
  AO22X1 U1369 ( .A0(n1382), .A1(\pattern_data[1][3] ), .B0(n1259), .B1(
        \pattern_data[3][3] ), .Y(n1142) );
  AOI211XL U1370 ( .A0(n1262), .A1(\pattern_data[2][3] ), .B0(n1143), .C0(
        n1142), .Y(n1144) );
  NAND2XL U1371 ( .A(n1145), .B(n1144), .Y(n1169) );
  AOI22XL U1372 ( .A0(\string_data[8][3] ), .A1(n1278), .B0(
        \string_data[0][3] ), .B1(n1277), .Y(n1149) );
  AOI22XL U1373 ( .A0(\string_data[4][3] ), .A1(n1280), .B0(
        \string_data[12][3] ), .B1(n1279), .Y(n1148) );
  AOI22XL U1374 ( .A0(\string_data[16][3] ), .A1(n1281), .B0(
        \string_data[24][3] ), .B1(n1241), .Y(n1147) );
  AOI22XL U1375 ( .A0(\string_data[20][3] ), .A1(n1283), .B0(
        \string_data[28][3] ), .B1(n1282), .Y(n1146) );
  NAND4XL U1376 ( .A(n1149), .B(n1148), .C(n1147), .D(n1146), .Y(n1167) );
  AO22X1 U1377 ( .A0(\string_data[11][3] ), .A1(n1295), .B0(
        \string_data[3][3] ), .B1(n1294), .Y(n1153) );
  AO22X1 U1378 ( .A0(\string_data[7][3] ), .A1(n1293), .B0(
        \string_data[15][3] ), .B1(n1292), .Y(n1152) );
  AO22X1 U1379 ( .A0(\string_data[19][3] ), .A1(n1291), .B0(
        \string_data[27][3] ), .B1(n1290), .Y(n1151) );
  AO22X1 U1380 ( .A0(\string_data[23][3] ), .A1(n1289), .B0(
        \string_data[31][3] ), .B1(n1288), .Y(n1150) );
  NOR4XL U1381 ( .A(n1153), .B(n1152), .C(n1151), .D(n1150), .Y(n1154) );
  NOR2XL U1382 ( .A(n1154), .B(n1275), .Y(n1166) );
  AO22X1 U1383 ( .A0(\string_data[9][3] ), .A1(n1295), .B0(\string_data[1][3] ), .B1(n1294), .Y(n1158) );
  AO22X1 U1384 ( .A0(\string_data[5][3] ), .A1(n1293), .B0(
        \string_data[13][3] ), .B1(n1292), .Y(n1157) );
  AO22X1 U1385 ( .A0(\string_data[17][3] ), .A1(n1291), .B0(
        \string_data[25][3] ), .B1(n1290), .Y(n1156) );
  AO22X1 U1386 ( .A0(\string_data[21][3] ), .A1(n1289), .B0(
        \string_data[29][3] ), .B1(n1288), .Y(n1155) );
  NOR4XL U1387 ( .A(n1158), .B(n1157), .C(n1156), .D(n1155), .Y(n1164) );
  AO22X1 U1388 ( .A0(\string_data[22][3] ), .A1(n1289), .B0(
        \string_data[30][3] ), .B1(n1288), .Y(n1162) );
  AO22X1 U1389 ( .A0(\string_data[18][3] ), .A1(n1291), .B0(
        \string_data[26][3] ), .B1(n1290), .Y(n1161) );
  AO22X1 U1390 ( .A0(\string_data[6][3] ), .A1(n1293), .B0(
        \string_data[14][3] ), .B1(n1292), .Y(n1160) );
  AO22X1 U1391 ( .A0(\string_data[10][3] ), .A1(n1295), .B0(
        \string_data[2][3] ), .B1(n1294), .Y(n1159) );
  NOR4XL U1392 ( .A(n1162), .B(n1161), .C(n1160), .D(n1159), .Y(n1163) );
  OAI22XL U1393 ( .A0(n1164), .A1(n1302), .B0(n1163), .B1(n1300), .Y(n1165) );
  AOI211X1 U1394 ( .A0(n1307), .A1(n1167), .B0(n1166), .C0(n1165), .Y(n1356)
         );
  OAI22XL U1395 ( .A0(n1356), .A1(n1169), .B0(n1330), .B1(n1170), .Y(n1168) );
  AOI221XL U1396 ( .A0(n1170), .A1(n1330), .B0(n1169), .B1(n1356), .C0(n1168), 
        .Y(n1313) );
  AO22X1 U1397 ( .A0(n1258), .A1(\pattern_data[5][1] ), .B0(n1257), .B1(
        \pattern_data[4][1] ), .Y(n1172) );
  AO22X1 U1398 ( .A0(n1382), .A1(\pattern_data[1][1] ), .B0(n1259), .B1(
        \pattern_data[3][1] ), .Y(n1171) );
  AOI211XL U1399 ( .A0(n1262), .A1(\pattern_data[2][1] ), .B0(n1172), .C0(
        n1171), .Y(n1173) );
  NAND2XL U1400 ( .A(n1174), .B(n1173), .Y(n1227) );
  AOI22XL U1401 ( .A0(\string_data[8][1] ), .A1(n1278), .B0(
        \string_data[0][1] ), .B1(n1277), .Y(n1178) );
  AOI22XL U1402 ( .A0(\string_data[4][1] ), .A1(n1280), .B0(
        \string_data[12][1] ), .B1(n1279), .Y(n1177) );
  AOI22XL U1403 ( .A0(\string_data[16][1] ), .A1(n1291), .B0(
        \string_data[24][1] ), .B1(n1241), .Y(n1176) );
  AOI22XL U1404 ( .A0(\string_data[20][1] ), .A1(n1283), .B0(
        \string_data[28][1] ), .B1(n1282), .Y(n1175) );
  NAND4XL U1405 ( .A(n1178), .B(n1177), .C(n1176), .D(n1175), .Y(n1197) );
  AO22X1 U1406 ( .A0(\string_data[11][1] ), .A1(n1278), .B0(
        \string_data[3][1] ), .B1(n1277), .Y(n1183) );
  AO22X1 U1407 ( .A0(\string_data[7][1] ), .A1(n1280), .B0(
        \string_data[15][1] ), .B1(n1279), .Y(n1182) );
  AO22X1 U1408 ( .A0(\string_data[19][1] ), .A1(n1281), .B0(
        \string_data[27][1] ), .B1(n1179), .Y(n1181) );
  AO22X1 U1409 ( .A0(\string_data[23][1] ), .A1(n1283), .B0(
        \string_data[31][1] ), .B1(n1282), .Y(n1180) );
  NOR4XL U1410 ( .A(n1183), .B(n1182), .C(n1181), .D(n1180), .Y(n1184) );
  NOR2XL U1411 ( .A(n1184), .B(n1275), .Y(n1196) );
  AO22X1 U1412 ( .A0(\string_data[9][1] ), .A1(n1278), .B0(\string_data[1][1] ), .B1(n1277), .Y(n1188) );
  AO22X1 U1413 ( .A0(\string_data[5][1] ), .A1(n1280), .B0(
        \string_data[13][1] ), .B1(n1206), .Y(n1187) );
  AO22X1 U1414 ( .A0(\string_data[17][1] ), .A1(n1281), .B0(
        \string_data[25][1] ), .B1(n1241), .Y(n1186) );
  AO22X1 U1415 ( .A0(\string_data[21][1] ), .A1(n1283), .B0(
        \string_data[29][1] ), .B1(n1288), .Y(n1185) );
  NOR4XL U1416 ( .A(n1188), .B(n1187), .C(n1186), .D(n1185), .Y(n1194) );
  AO22X1 U1417 ( .A0(\string_data[22][1] ), .A1(n1289), .B0(
        \string_data[30][1] ), .B1(n1288), .Y(n1192) );
  AO22X1 U1418 ( .A0(\string_data[18][1] ), .A1(n1281), .B0(
        \string_data[26][1] ), .B1(n1241), .Y(n1191) );
  AO22X1 U1419 ( .A0(\string_data[6][1] ), .A1(n1280), .B0(
        \string_data[14][1] ), .B1(n1292), .Y(n1190) );
  AO22X1 U1420 ( .A0(\string_data[10][1] ), .A1(n1278), .B0(
        \string_data[2][1] ), .B1(n1277), .Y(n1189) );
  NOR4XL U1421 ( .A(n1192), .B(n1191), .C(n1190), .D(n1189), .Y(n1193) );
  OAI22XL U1422 ( .A0(n1194), .A1(n1302), .B0(n1193), .B1(n1300), .Y(n1195) );
  AOI22XL U1423 ( .A0(n1256), .A1(\pattern_data[7][0] ), .B0(n1255), .B1(
        \pattern_data[6][0] ), .Y(n1201) );
  AO22X1 U1424 ( .A0(n1258), .A1(\pattern_data[5][0] ), .B0(n1257), .B1(
        \pattern_data[4][0] ), .Y(n1199) );
  AO22X1 U1425 ( .A0(n1382), .A1(\pattern_data[1][0] ), .B0(n1259), .B1(
        \pattern_data[3][0] ), .Y(n1198) );
  AOI211XL U1426 ( .A0(n1262), .A1(\pattern_data[2][0] ), .B0(n1199), .C0(
        n1198), .Y(n1200) );
  NAND2XL U1427 ( .A(n1201), .B(n1200), .Y(n1226) );
  AOI22XL U1428 ( .A0(\string_data[8][0] ), .A1(n1278), .B0(
        \string_data[0][0] ), .B1(n1277), .Y(n1205) );
  AOI22XL U1429 ( .A0(\string_data[4][0] ), .A1(n1280), .B0(
        \string_data[12][0] ), .B1(n1279), .Y(n1204) );
  AOI22XL U1430 ( .A0(\string_data[20][0] ), .A1(n1283), .B0(
        \string_data[28][0] ), .B1(n1282), .Y(n1202) );
  NAND4XL U1431 ( .A(n1205), .B(n1204), .C(n1203), .D(n1202), .Y(n1224) );
  AO22X1 U1432 ( .A0(\string_data[11][0] ), .A1(n1295), .B0(
        \string_data[3][0] ), .B1(n1294), .Y(n1210) );
  AO22X1 U1433 ( .A0(\string_data[7][0] ), .A1(n1293), .B0(
        \string_data[15][0] ), .B1(n1206), .Y(n1209) );
  AO22X1 U1434 ( .A0(\string_data[19][0] ), .A1(n1291), .B0(
        \string_data[27][0] ), .B1(n1290), .Y(n1208) );
  AO22X1 U1435 ( .A0(\string_data[23][0] ), .A1(n1289), .B0(
        \string_data[31][0] ), .B1(n1288), .Y(n1207) );
  NOR4XL U1436 ( .A(n1210), .B(n1209), .C(n1208), .D(n1207), .Y(n1211) );
  AO22X1 U1437 ( .A0(\string_data[9][0] ), .A1(n1295), .B0(\string_data[1][0] ), .B1(n1294), .Y(n1215) );
  AO22X1 U1438 ( .A0(\string_data[5][0] ), .A1(n1293), .B0(
        \string_data[13][0] ), .B1(n1292), .Y(n1214) );
  AO22X1 U1439 ( .A0(\string_data[17][0] ), .A1(n1291), .B0(
        \string_data[25][0] ), .B1(n1290), .Y(n1213) );
  AO22X1 U1440 ( .A0(\string_data[21][0] ), .A1(n1289), .B0(
        \string_data[29][0] ), .B1(n1288), .Y(n1212) );
  NOR4XL U1441 ( .A(n1215), .B(n1214), .C(n1213), .D(n1212), .Y(n1221) );
  AO22X1 U1442 ( .A0(\string_data[22][0] ), .A1(n1289), .B0(
        \string_data[30][0] ), .B1(n1288), .Y(n1219) );
  AO22X1 U1443 ( .A0(\string_data[18][0] ), .A1(n1291), .B0(
        \string_data[26][0] ), .B1(n1290), .Y(n1218) );
  AO22X1 U1444 ( .A0(\string_data[6][0] ), .A1(n1293), .B0(
        \string_data[14][0] ), .B1(n1292), .Y(n1217) );
  AO22X1 U1445 ( .A0(\string_data[10][0] ), .A1(n1295), .B0(
        \string_data[2][0] ), .B1(n1294), .Y(n1216) );
  NOR4XL U1446 ( .A(n1219), .B(n1218), .C(n1217), .D(n1216), .Y(n1220) );
  OAI22XL U1447 ( .A0(n1221), .A1(n1302), .B0(n1220), .B1(n1300), .Y(n1222) );
  AOI211X1 U1448 ( .A0(n1307), .A1(n1224), .B0(n1223), .C0(n1222), .Y(n1354)
         );
  OAI22XL U1449 ( .A0(n1354), .A1(n1226), .B0(n1355), .B1(n1227), .Y(n1225) );
  AOI221XL U1450 ( .A0(n1227), .A1(n1355), .B0(n1226), .B1(n1354), .C0(n1225), 
        .Y(n1312) );
  AOI22XL U1451 ( .A0(\pattern_data[7][4] ), .A1(n1256), .B0(
        \pattern_data[6][4] ), .B1(n1255), .Y(n1231) );
  AO22X1 U1452 ( .A0(n1258), .A1(\pattern_data[5][4] ), .B0(
        \pattern_data[4][4] ), .B1(n1257), .Y(n1229) );
  AO22X1 U1453 ( .A0(n1382), .A1(\pattern_data[1][4] ), .B0(n1259), .B1(
        \pattern_data[3][4] ), .Y(n1228) );
  AOI211XL U1454 ( .A0(\pattern_data[2][4] ), .A1(n1262), .B0(n1229), .C0(
        n1228), .Y(n1230) );
  AOI22XL U1455 ( .A0(\string_data[8][4] ), .A1(n1278), .B0(
        \string_data[0][4] ), .B1(n1265), .Y(n1235) );
  AOI22XL U1456 ( .A0(\string_data[4][4] ), .A1(n1280), .B0(
        \string_data[12][4] ), .B1(n1279), .Y(n1234) );
  AOI22XL U1457 ( .A0(\string_data[16][4] ), .A1(n1281), .B0(
        \string_data[24][4] ), .B1(n1241), .Y(n1233) );
  AOI22XL U1458 ( .A0(\string_data[20][4] ), .A1(n1283), .B0(
        \string_data[28][4] ), .B1(n1282), .Y(n1232) );
  NAND4XL U1459 ( .A(n1235), .B(n1234), .C(n1233), .D(n1232), .Y(n1254) );
  AO22X1 U1460 ( .A0(\string_data[11][4] ), .A1(n1278), .B0(
        \string_data[3][4] ), .B1(n1277), .Y(n1239) );
  AO22X1 U1461 ( .A0(\string_data[7][4] ), .A1(n1280), .B0(
        \string_data[15][4] ), .B1(n1279), .Y(n1238) );
  AO22X1 U1462 ( .A0(\string_data[19][4] ), .A1(n1266), .B0(
        \string_data[27][4] ), .B1(n1241), .Y(n1237) );
  AO22X1 U1463 ( .A0(\string_data[23][4] ), .A1(n1283), .B0(
        \string_data[31][4] ), .B1(n1282), .Y(n1236) );
  NOR2XL U1464 ( .A(n1240), .B(n1275), .Y(n1253) );
  AO22X1 U1465 ( .A0(\string_data[9][4] ), .A1(n1278), .B0(\string_data[1][4] ), .B1(n1265), .Y(n1245) );
  AO22X1 U1466 ( .A0(\string_data[5][4] ), .A1(n1280), .B0(
        \string_data[13][4] ), .B1(n1279), .Y(n1244) );
  AO22X1 U1467 ( .A0(\string_data[17][4] ), .A1(n1281), .B0(
        \string_data[25][4] ), .B1(n1241), .Y(n1243) );
  AO22X1 U1468 ( .A0(\string_data[21][4] ), .A1(n1283), .B0(
        \string_data[29][4] ), .B1(n1282), .Y(n1242) );
  NOR4XL U1469 ( .A(n1245), .B(n1244), .C(n1243), .D(n1242), .Y(n1251) );
  AO22X1 U1470 ( .A0(\string_data[22][4] ), .A1(n1283), .B0(
        \string_data[30][4] ), .B1(n1282), .Y(n1249) );
  AO22X1 U1471 ( .A0(\string_data[18][4] ), .A1(n1266), .B0(
        \string_data[26][4] ), .B1(n1290), .Y(n1248) );
  AO22X1 U1472 ( .A0(\string_data[6][4] ), .A1(n1280), .B0(
        \string_data[14][4] ), .B1(n1279), .Y(n1247) );
  AO22X1 U1473 ( .A0(\string_data[10][4] ), .A1(n1278), .B0(
        \string_data[2][4] ), .B1(n1277), .Y(n1246) );
  NOR4XL U1474 ( .A(n1249), .B(n1248), .C(n1247), .D(n1246), .Y(n1250) );
  OAI22XL U1475 ( .A0(n1251), .A1(n1302), .B0(n1250), .B1(n1300), .Y(n1252) );
  AOI22XL U1476 ( .A0(n1256), .A1(\pattern_data[7][7] ), .B0(n1255), .B1(
        \pattern_data[6][7] ), .Y(n1264) );
  AO22X1 U1477 ( .A0(n1258), .A1(\pattern_data[5][7] ), .B0(n1257), .B1(
        \pattern_data[4][7] ), .Y(n1261) );
  AO22X1 U1478 ( .A0(n1382), .A1(\pattern_data[1][7] ), .B0(n1259), .B1(
        \pattern_data[3][7] ), .Y(n1260) );
  NAND2XL U1479 ( .A(n1264), .B(n1263), .Y(n1309) );
  AOI22XL U1480 ( .A0(\string_data[8][7] ), .A1(n1278), .B0(
        \string_data[0][7] ), .B1(n1265), .Y(n1270) );
  AOI22XL U1481 ( .A0(\string_data[4][7] ), .A1(n1280), .B0(
        \string_data[12][7] ), .B1(n1279), .Y(n1269) );
  AOI22XL U1482 ( .A0(\string_data[16][7] ), .A1(n1266), .B0(
        \string_data[24][7] ), .B1(n1290), .Y(n1268) );
  AOI22XL U1483 ( .A0(\string_data[20][7] ), .A1(n1283), .B0(
        \string_data[28][7] ), .B1(n1282), .Y(n1267) );
  NAND4XL U1484 ( .A(n1270), .B(n1269), .C(n1268), .D(n1267), .Y(n1306) );
  AO22X1 U1485 ( .A0(\string_data[11][7] ), .A1(n1295), .B0(
        \string_data[3][7] ), .B1(n1294), .Y(n1274) );
  AO22X1 U1486 ( .A0(\string_data[7][7] ), .A1(n1293), .B0(
        \string_data[15][7] ), .B1(n1292), .Y(n1273) );
  AO22X1 U1487 ( .A0(\string_data[19][7] ), .A1(n1291), .B0(
        \string_data[27][7] ), .B1(n1290), .Y(n1272) );
  AO22X1 U1488 ( .A0(\string_data[23][7] ), .A1(n1289), .B0(
        \string_data[31][7] ), .B1(n1288), .Y(n1271) );
  NOR4XL U1489 ( .A(n1274), .B(n1273), .C(n1272), .D(n1271), .Y(n1276) );
  NOR2XL U1490 ( .A(n1276), .B(n1275), .Y(n1305) );
  AO22X1 U1491 ( .A0(\string_data[9][7] ), .A1(n1278), .B0(\string_data[1][7] ), .B1(n1277), .Y(n1287) );
  AO22X1 U1492 ( .A0(\string_data[5][7] ), .A1(n1280), .B0(
        \string_data[13][7] ), .B1(n1279), .Y(n1286) );
  AO22X1 U1493 ( .A0(\string_data[17][7] ), .A1(n1281), .B0(
        \string_data[25][7] ), .B1(n1290), .Y(n1285) );
  AO22X1 U1494 ( .A0(\string_data[21][7] ), .A1(n1283), .B0(
        \string_data[29][7] ), .B1(n1282), .Y(n1284) );
  NOR4XL U1495 ( .A(n1287), .B(n1286), .C(n1285), .D(n1284), .Y(n1303) );
  AO22X1 U1496 ( .A0(\string_data[22][7] ), .A1(n1289), .B0(
        \string_data[30][7] ), .B1(n1288), .Y(n1299) );
  AO22X1 U1497 ( .A0(\string_data[18][7] ), .A1(n1291), .B0(
        \string_data[26][7] ), .B1(n1290), .Y(n1298) );
  AO22X1 U1498 ( .A0(\string_data[6][7] ), .A1(n1293), .B0(
        \string_data[14][7] ), .B1(n1292), .Y(n1297) );
  AO22X1 U1499 ( .A0(\string_data[10][7] ), .A1(n1295), .B0(
        \string_data[2][7] ), .B1(n1294), .Y(n1296) );
  NOR4XL U1500 ( .A(n1299), .B(n1298), .C(n1297), .D(n1296), .Y(n1301) );
  OAI22XL U1501 ( .A0(n1303), .A1(n1302), .B0(n1301), .B1(n1300), .Y(n1304) );
  OAI22XL U1502 ( .A0(n1351), .A1(n1309), .B0(n1352), .B1(n1310), .Y(n1308) );
  AOI221XL U1503 ( .A0(n1310), .A1(n1352), .B0(n1309), .B1(n1351), .C0(n1308), 
        .Y(n1311) );
  NAND4XL U1504 ( .A(n1443), .B(n1313), .C(n1312), .D(n1311), .Y(n1314) );
  NOR2BX1 U1505 ( .AN(n1315), .B(n1314), .Y(n1387) );
  OAI21XL U1506 ( .A0(string_length[1]), .A1(n1378), .B0(string_length[0]), 
        .Y(n1316) );
  OAI22XL U1507 ( .A0(string_counter[0]), .A1(n1316), .B0(string_counter[1]), 
        .B1(n1535), .Y(n1317) );
  OAI22XL U1508 ( .A0(string_length[3]), .A1(n1374), .B0(string_length[4]), 
        .B1(n1381), .Y(n1318) );
  AOI221XL U1509 ( .A0(string_counter[3]), .A1(n1319), .B0(n1541), .B1(n1319), 
        .C0(n1318), .Y(n1321) );
  OAI22XL U1510 ( .A0(string_counter[5]), .A1(n1540), .B0(string_counter[4]), 
        .B1(n1536), .Y(n1320) );
  OAI2BB2X1 U1511 ( .B0(n1321), .B1(n1320), .A0N(n1540), .A1N(
        string_counter[5]), .Y(n1440) );
  OAI211XL U1512 ( .A0(pattern_length[1]), .A1(n1399), .B0(pattern_length[0]), 
        .C0(n1322), .Y(n1323) );
  OAI21XL U1513 ( .A0(pattern_counter[1]), .A1(n1532), .B0(n1323), .Y(n1324)
         );
  AOI222XL U1514 ( .A0(pattern_length[2]), .A1(n1325), .B0(pattern_length[2]), 
        .B1(n1324), .C0(n1325), .C1(n1324), .Y(n1326) );
  AOI222XL U1515 ( .A0(pattern_counter[3]), .A1(n1542), .B0(pattern_counter[3]), .B1(n1326), .C0(n1542), .C1(n1326), .Y(n1328) );
  OAI2BB1XL U1516 ( .A0N(n1328), .A1N(pattern_length[4]), .B0(
        pattern_counter[4]), .Y(n1327) );
  OAI211X1 U1517 ( .A0(n1328), .A1(pattern_length[4]), .B0(n1392), .C0(n1327), 
        .Y(n1521) );
  NOR2X1 U1518 ( .A(n1440), .B(n1521), .Y(n1424) );
  NAND2X1 U1519 ( .A(state[1]), .B(n1531), .Y(n1423) );
  INVXL U1520 ( .A(n1329), .Y(n1349) );
  INVXL U1521 ( .A(n1330), .Y(n1332) );
  OAI22XL U1522 ( .A0(n1348), .A1(n1355), .B0(n1332), .B1(n1349), .Y(n1331) );
  AOI221XL U1523 ( .A0(n1348), .A1(n1355), .B0(n1349), .B1(n1332), .C0(n1331), 
        .Y(n1364) );
  INVXL U1524 ( .A(n1354), .Y(n1337) );
  INVXL U1525 ( .A(n1356), .Y(n1335) );
  INVXL U1526 ( .A(n1347), .Y(n1334) );
  OAI22XL U1527 ( .A0(n1336), .A1(n1337), .B0(n1335), .B1(n1334), .Y(n1333) );
  AOI221XL U1528 ( .A0(n1337), .A1(n1336), .B0(n1335), .B1(n1334), .C0(n1333), 
        .Y(n1363) );
  AOI2BB2X1 U1529 ( .B0(n1338), .B1(n1353), .A0N(n1338), .A1N(n1353), .Y(n1345) );
  INVXL U1530 ( .A(n1339), .Y(n1341) );
  OAI22XL U1531 ( .A0(n1342), .A1(n1352), .B0(n1341), .B1(n1351), .Y(n1340) );
  AOI221XL U1532 ( .A0(n1342), .A1(n1352), .B0(n1351), .B1(n1341), .C0(n1340), 
        .Y(n1343) );
  OAI21XL U1533 ( .A0(n1357), .A1(n1346), .B0(n1343), .Y(n1344) );
  NOR4BX1 U1534 ( .AN(n1350), .B(n1349), .C(n1348), .D(n1347), .Y(n1420) );
  OAI21XL U1535 ( .A0(n1360), .A1(n1359), .B0(n1358), .Y(n1361) );
  NAND3XL U1536 ( .A(n1424), .B(n1442), .C(n1426), .Y(n1365) );
  OAI22XL U1537 ( .A0(n1387), .A1(n1365), .B0(n1423), .B1(n1559), .Y(n1366) );
  OAI21X1 U1538 ( .A0(n1525), .A1(n1366), .B0(n719), .Y(n1487) );
  NAND2X1 U1539 ( .A(n1368), .B(n1367), .Y(n1485) );
  NAND2X1 U1540 ( .A(match_index[2]), .B(n1370), .Y(n1484) );
  OAI21XL U1541 ( .A0(match_index[2]), .A1(n1370), .B0(n1484), .Y(n1457) );
  AOI2BB2X1 U1542 ( .B0(n1480), .B1(N420), .A0N(n1485), .A1N(n1457), .Y(n1371)
         );
  OAI21XL U1543 ( .A0(n1473), .A1(n1372), .B0(n1371), .Y(n729) );
  OAI2BB2XL U1544 ( .B0(n1528), .B1(n1484), .A0N(n1528), .A1N(n1484), .Y(n1456) );
  AOI2BB2X1 U1545 ( .B0(n1480), .B1(N421), .A0N(n1485), .A1N(n1456), .Y(n1373)
         );
  OAI21XL U1546 ( .A0(n1473), .A1(n1374), .B0(n1373), .Y(n728) );
  AND2X1 U1547 ( .A(n1376), .B(n1375), .Y(n1454) );
  AOI2BB2X1 U1548 ( .B0(n1480), .B1(N419), .A0N(n1485), .A1N(n1454), .Y(n1377)
         );
  OAI21XL U1549 ( .A0(n1473), .A1(n1378), .B0(n1377), .Y(n730) );
  AOI2BB2X1 U1550 ( .B0(n1379), .B1(n1529), .A0N(n1379), .A1N(n1529), .Y(n1455) );
  AOI2BB2X1 U1551 ( .B0(n1480), .B1(N422), .A0N(n1485), .A1N(n1455), .Y(n1380)
         );
  OAI21XL U1552 ( .A0(n1473), .A1(n1381), .B0(n1380), .Y(n727) );
  INVXL U1553 ( .A(n1382), .Y(n1383) );
  NOR4XL U1554 ( .A(pattern_counter[4]), .B(pattern_counter[3]), .C(
        pattern_counter[5]), .D(n1383), .Y(n1384) );
  NOR2XL U1555 ( .A(n1388), .B(n1559), .Y(n1385) );
  BUFX2 U1556 ( .A(n1385), .Y(n1548) );
  OAI21XL U1557 ( .A0(n1387), .A1(n1441), .B0(n1424), .Y(n1389) );
  AND2X1 U1558 ( .A(n1388), .B(direction), .Y(n1477) );
  OAI21X2 U1559 ( .A0(n1525), .A1(n1390), .B0(n719), .Y(n1488) );
  MXI2X1 U1560 ( .A(pattern_counter[5]), .B(n1392), .S0(\intadd_1/n1 ), .Y(
        n1391) );
  XOR2X1 U1561 ( .A(n1391), .B(n1548), .Y(n1393) );
  OAI22XL U1562 ( .A0(n1460), .A1(n1393), .B0(n1400), .B1(n1392), .Y(n721) );
  NAND3X1 U1563 ( .A(n1543), .B(n1535), .C(n1530), .Y(n1515) );
  NAND4XL U1564 ( .A(n1512), .B(n1531), .C(n1561), .D(n1540), .Y(n1394) );
  NOR3X1 U1565 ( .A(n1543), .B(n1535), .C(n1530), .Y(n1502) );
  INVX1 U1566 ( .A(n1502), .Y(n1403) );
  NAND3X1 U1567 ( .A(string_length[1]), .B(string_length[0]), .C(n1543), .Y(
        n1505) );
  NAND2XL U1568 ( .A(string_length[0]), .B(n1535), .Y(n1509) );
  NAND2BX1 U1569 ( .AN(n1509), .B(n1543), .Y(n1406) );
  NAND3X1 U1570 ( .A(string_length[2]), .B(n1535), .C(n1530), .Y(n1405) );
  NAND3X1 U1571 ( .A(string_length[1]), .B(n1543), .C(n1530), .Y(n1404) );
  NAND3X1 U1572 ( .A(string_length[1]), .B(string_length[2]), .C(n1530), .Y(
        n1408) );
  NAND3X1 U1573 ( .A(string_length[2]), .B(string_length[0]), .C(n1535), .Y(
        n1407) );
  NAND4X1 U1574 ( .A(n1531), .B(n1561), .C(n1461), .D(ispattern), .Y(n1493) );
  NOR3X1 U1575 ( .A(reset), .B(pattern_length[4]), .C(n1465), .Y(n1468) );
  NAND2XL U1576 ( .A(pattern_length[0]), .B(pattern_length[1]), .Y(n1414) );
  NOR2XL U1577 ( .A(n1544), .B(n1414), .Y(n1462) );
  INVXL U1578 ( .A(n1462), .Y(n1432) );
  OAI21XL U1579 ( .A0(n1400), .A1(n1399), .B0(n1398), .Y(n732) );
  NOR3XL U1580 ( .A(n1488), .B(n1470), .C(n1410), .Y(n1411) );
  OAI21XL U1581 ( .A0(n1460), .A1(pattern_counter[0]), .B0(n1412), .Y(n725) );
  NOR2XL U1582 ( .A(n1565), .B(pattern_length[2]), .Y(\intadd_0/B[2] ) );
  NOR2X1 U1583 ( .A(pattern_length[0]), .B(n1493), .Y(n1490) );
  INVXL U1584 ( .A(n1453), .Y(n1433) );
  OAI21X1 U1585 ( .A0(isstring), .A1(ispattern), .B0(n1433), .Y(n1491) );
  OAI32XL U1586 ( .A0(pattern_length[2]), .A1(n1493), .A2(n1414), .B0(n1413), 
        .B1(n1544), .Y(n760) );
  NAND2BX1 U1587 ( .AN(n1447), .B(n1415), .Y(n1438) );
  AOI2BB1X1 U1588 ( .A0N(back_chance), .A1N(n1426), .B0(n1440), .Y(n1421) );
  INVXL U1589 ( .A(n1421), .Y(n1416) );
  NAND2X1 U1590 ( .A(state[1]), .B(n1559), .Y(n1523) );
  AOI2BB1X1 U1591 ( .A0N(n1521), .A1N(n1416), .B0(n1523), .Y(n1418) );
  AOI21XL U1592 ( .A0(n1561), .A1(n1447), .B0(n1531), .Y(n1419) );
  OAI22XL U1593 ( .A0(n1422), .A1(n1419), .B0(n1470), .B1(n1438), .Y(n764) );
  AND2X1 U1594 ( .A(n1420), .B(n1440), .Y(n1522) );
  NOR4X1 U1595 ( .A(n1421), .B(n1522), .C(n1521), .D(n1523), .Y(n1448) );
  OAI22XL U1596 ( .A0(n1448), .A1(n1423), .B0(n1422), .B1(n1470), .Y(n767) );
  CLKBUFX3 U1597 ( .A(chardata[0]), .Y(n1551) );
  CLKBUFX3 U1598 ( .A(chardata[6]), .Y(n1557) );
  CLKBUFX3 U1599 ( .A(chardata[4]), .Y(n1555) );
  CLKBUFX3 U1600 ( .A(chardata[3]), .Y(n1554) );
  CLKBUFX3 U1601 ( .A(chardata[2]), .Y(n1553) );
  CLKBUFX3 U1602 ( .A(chardata[1]), .Y(n1552) );
  CLKBUFX3 U1603 ( .A(chardata[5]), .Y(n1556) );
  NOR4XL U1604 ( .A(direction), .B(n1426), .C(n1545), .D(n1425), .Y(n1427) );
  NAND3XL U1605 ( .A(n1431), .B(n1442), .C(n1559), .Y(n1430) );
  OAI21XL U1606 ( .A0(n1431), .A1(n1559), .B0(n1430), .Y(n720) );
  INVX3 U1607 ( .A(n1519), .Y(n1558) );
  AOI2BB1X1 U1608 ( .A0N(n1493), .A1N(n1462), .B0(n1491), .Y(n1466) );
  OAI22XL U1609 ( .A0(n1466), .A1(n1542), .B0(n1465), .B1(n1432), .Y(n761) );
  NAND2X1 U1610 ( .A(n1433), .B(isstring), .Y(n1507) );
  NAND2X1 U1611 ( .A(n1561), .B(n1501), .Y(n1510) );
  NAND3BX1 U1612 ( .AN(n1510), .B(string_length[3]), .C(n1502), .Y(n1437) );
  NOR2XL U1613 ( .A(string_length[3]), .B(n1510), .Y(n1503) );
  OAI21XL U1614 ( .A0(state[1]), .A1(n1502), .B0(n1501), .Y(n1504) );
  OAI22XL U1615 ( .A0(string_length[4]), .A1(n1437), .B0(n1536), .B1(n1434), 
        .Y(n749) );
  OAI21XL U1616 ( .A0(string_length[4]), .A1(n1510), .B0(n1434), .Y(n1435) );
  OAI31XL U1617 ( .A0(n1536), .A1(string_length[5]), .A2(n1437), .B0(n1436), 
        .Y(n766) );
  INVX12 U1618 ( .A(n1500), .Y(valid) );
  OAI31XL U1619 ( .A0(n1441), .A1(n1440), .A2(n1439), .B0(n1450), .Y(n1445) );
  OAI21XL U1620 ( .A0(n1445), .A1(n1545), .B0(n1444), .Y(n768) );
  NAND3BX1 U1621 ( .AN(n1447), .B(state[0]), .C(n1446), .Y(n1451) );
  NAND2X1 U1622 ( .A(n1453), .B(n1459), .Y(n1458) );
  OAI22XL U1623 ( .A0(n1534), .A1(n1458), .B0(n1539), .B1(n1459), .Y(n737) );
  OAI22XL U1624 ( .A0(n1454), .A1(n1458), .B0(n1537), .B1(n1459), .Y(n765) );
  OAI22XL U1625 ( .A0(n1529), .A1(n1459), .B0(n1458), .B1(n1455), .Y(n734) );
  OAI22XL U1626 ( .A0(n1528), .A1(n1459), .B0(n1458), .B1(n1456), .Y(n735) );
  OAI22XL U1627 ( .A0(n1533), .A1(n1459), .B0(n1458), .B1(n1457), .Y(n736) );
  AO22X1 U1628 ( .A0(n1489), .A1(N412), .B0(n1488), .B1(pattern_counter[3]), 
        .Y(n723) );
  AO22X1 U1629 ( .A0(n1489), .A1(N413), .B0(n1488), .B1(pattern_counter[4]), 
        .Y(n722) );
  AOI211XL U1630 ( .A0(pattern_length[0]), .A1(n1491), .B0(n1495), .C0(n1490), 
        .Y(n1560) );
  NAND3XL U1631 ( .A(pattern_length[3]), .B(n1463), .C(n1462), .Y(n1464) );
  NOR3X2 U1632 ( .A(n1544), .B(n1467), .C(n1492), .Y(N561) );
  NAND2X1 U1633 ( .A(n1468), .B(n1538), .Y(n1469) );
  AND2X2 U1634 ( .A(n1496), .B(pattern_length[1]), .Y(N558) );
  NOR3X2 U1635 ( .A(pattern_length[1]), .B(n1544), .C(n1469), .Y(N560) );
  NOR3X2 U1636 ( .A(n1532), .B(n1544), .C(n1469), .Y(N562) );
  OAI21XL U1637 ( .A0(n1471), .A1(n1470), .B0(n1473), .Y(n1472) );
  OAI21XL U1638 ( .A0(n1473), .A1(string_counter[0]), .B0(n1472), .Y(n1475) );
  INVXL U1639 ( .A(n1477), .Y(n1476) );
  XOR2X1 U1640 ( .A(n1548), .B(n1476), .Y(\DP_OP_154J1_126_6304/n12 ) );
  XOR2X1 U1641 ( .A(n1548), .B(n1477), .Y(\DP_OP_154J1_126_6304/n11 ) );
  AOI21XL U1642 ( .A0(pattern_length[2]), .A1(match_index[2]), .B0(
        \intadd_0/B[2] ), .Y(\intadd_0/B[1] ) );
  XOR2X1 U1643 ( .A(n1548), .B(string_counter[5]), .Y(n1479) );
  XOR2X1 U1644 ( .A(\DP_OP_154J1_126_6304/n2 ), .B(n1479), .Y(n1481) );
  OAI31XL U1645 ( .A0(n1485), .A1(n1484), .A2(n1483), .B0(n1482), .Y(n1486) );
  AO21X1 U1646 ( .A0(n1487), .A1(string_counter[5]), .B0(n1486), .Y(n726) );
  AO22X1 U1647 ( .A0(n1489), .A1(N411), .B0(n1488), .B1(pattern_counter[2]), 
        .Y(n724) );
  OAI22XL U1648 ( .A0(n1494), .A1(n1532), .B0(n1493), .B1(n1492), .Y(n759) );
  AO22X2 U1649 ( .A0(n1496), .A1(n1532), .B0(n719), .B1(n1495), .Y(n1498) );
  AO22X1 U1650 ( .A0(n1499), .A1(\pattern_data[0][0] ), .B0(n1498), .B1(
        chardata[0]), .Y(n758) );
  AO22X1 U1651 ( .A0(n1498), .A1(chardata[1]), .B0(n1499), .B1(
        \pattern_data[0][1] ), .Y(n757) );
  AO22X1 U1652 ( .A0(n1498), .A1(chardata[2]), .B0(n1499), .B1(
        \pattern_data[0][2] ), .Y(n756) );
  AO22X1 U1653 ( .A0(n1498), .A1(chardata[3]), .B0(n1499), .B1(
        \pattern_data[0][3] ), .Y(n755) );
  AO22X1 U1654 ( .A0(n1498), .A1(chardata[4]), .B0(n1499), .B1(
        \pattern_data[0][4] ), .Y(n754) );
  AO22X1 U1655 ( .A0(n1499), .A1(\pattern_data[0][5] ), .B0(n1498), .B1(
        chardata[5]), .Y(n753) );
  AO22X1 U1656 ( .A0(n1499), .A1(\pattern_data[0][6] ), .B0(n1498), .B1(
        chardata[6]), .Y(n752) );
  OAI22XL U1657 ( .A0(n1499), .A1(n1519), .B0(n1498), .B1(n1497), .Y(n751) );
  OAI222XL U1658 ( .A0(string_length[0]), .A1(n1510), .B0(n1530), .B1(n1501), 
        .C0(n1500), .C1(n1507), .Y(n750) );
  AO22X1 U1659 ( .A0(string_length[3]), .A1(n1504), .B0(n1503), .B1(n1502), 
        .Y(n748) );
  OAI22XL U1660 ( .A0(n1506), .A1(n1543), .B0(n1510), .B1(n1505), .Y(n747) );
  OAI22XL U1661 ( .A0(n1511), .A1(n1535), .B0(n1510), .B1(n1509), .Y(n746) );
  OAI2BB2XL U1662 ( .B0(n1515), .B1(n1514), .A0N(n1513), .A1N(n1512), .Y(n1516) );
  OA22X1 U1663 ( .A0(n1520), .A1(chardata[0]), .B0(n1518), .B1(
        \string_data[0][0] ), .Y(n745) );
  AO22X1 U1664 ( .A0(n1518), .A1(chardata[1]), .B0(n1520), .B1(
        \string_data[0][1] ), .Y(n744) );
  AO22X1 U1665 ( .A0(n1518), .A1(chardata[2]), .B0(n1520), .B1(
        \string_data[0][2] ), .Y(n743) );
  AO22X1 U1666 ( .A0(n1518), .A1(chardata[3]), .B0(n1520), .B1(
        \string_data[0][3] ), .Y(n742) );
  AO22X1 U1667 ( .A0(n1518), .A1(chardata[4]), .B0(n1520), .B1(
        \string_data[0][4] ), .Y(n741) );
  AO22X1 U1668 ( .A0(n1518), .A1(chardata[5]), .B0(n1520), .B1(
        \string_data[0][5] ), .Y(n740) );
  AO22X1 U1669 ( .A0(n1518), .A1(chardata[6]), .B0(n1520), .B1(
        \string_data[0][6] ), .Y(n739) );
  OAI22XL U1670 ( .A0(n1520), .A1(n1519), .B0(n1518), .B1(n1517), .Y(n738) );
  NOR2XL U1671 ( .A(n1522), .B(n1521), .Y(n1524) );
  INVXL U1672 ( .A(n1525), .Y(n1526) );
  OAI21XL U1673 ( .A0(state[0]), .A1(n1527), .B0(n1526), .Y(n733) );
endmodule

