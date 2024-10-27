/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

alter user 'root'@'localhost' identified by 'Admin@123';
-- GRANT ALL PRIVILEGES on *.* to 'root'@'localhost' IDENTIFIED BY 'Admin@123';
-- FLUSH PRIVILEGES;

--
-- Current Database: `gewe`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gewe` /*!40100 DEFAULT CHARACTER SET utf8mb4 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `gewe`;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-06-10 14:07:51','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-06-10 14:07:51','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-06-10 14:07:51','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','false','Y','admin','2023-06-10 14:07:51','admin','2023-07-18 11:51:17','是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2023-06-10 14:07:51','admin','2023-06-26 13:43:03','是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-06-10 14:07:51','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'),(100,'告警通知短信','warn:sms:phone','18552823341','N','admin','2023-07-18 18:07:45','admin','2024-05-09 10:36:54',NULL),(101,'试用套餐时长','trial:pkg:days','7','N','admin','2023-07-19 16:21:11','admin','2023-08-09 21:07:13',NULL),(102,'普通用户权限ID','common:role:id','2','N','admin','2023-07-19 18:10:00','',NULL,NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-06-10 14:07:51','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-06-10 14:07:51','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-06-10 14:07:51','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-06-10 14:07:51','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-06-10 14:07:51','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-06-10 14:07:51','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-06-10 14:07:51','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-06-10 14:07:51','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-06-10 14:07:51','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-06-10 14:07:51','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-06-10 14:07:51','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-06-10 14:07:51','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-06-10 14:07:51','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-06-10 14:07:51','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-06-10 14:07:51','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-06-10 14:07:51','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-06-10 14:07:51','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-06-10 14:07:51','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-06-10 14:07:51','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-06-10 14:07:51','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-06-10 14:07:51','',NULL,'停用状态'),(100,0,'在线','1','wechat_status',NULL,'success','N','0','admin','2023-06-26 09:45:28','admin','2023-07-14 18:27:19',NULL),(101,1,'离线','0','wechat_status',NULL,'danger','N','0','admin','2023-06-26 09:45:47','admin','2023-07-14 18:27:28',NULL),(102,0,'未支付','0','pay_status',NULL,'danger','N','0','admin','2023-07-17 16:35:54','',NULL,NULL),(103,1,'已支付','1','pay_status',NULL,'success','N','0','admin','2023-07-17 16:36:07','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_region`
--

DROP TABLE IF EXISTS `sys_dict_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_region` (
  `id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '行政地区编号',
  `region_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地区名称',
  `parent_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '地区父id',
  `level` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '地区级别 1-省 2-市 3-区 4-镇/街道',
  `memo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='地区表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_region`
--

LOCK TABLES `sys_dict_region` WRITE;
/*!40000 ALTER TABLE `sys_dict_region` DISABLE KEYS */;
INSERT INTO `sys_dict_region` VALUES ('110000','北京市','0','1',NULL),('110100','北京市','110000','2',NULL),('120000','天津市','0','1',NULL),('120100','天津市','120000','2',NULL),('130000','河北省','0','1',NULL),('130100','石家庄市','130000','2',NULL),('130200','唐山市','130000','2',NULL),('130300','秦皇岛市','130000','2',NULL),('130400','邯郸市','130000','2',NULL),('130500','邢台市','130000','2',NULL),('130600','保定市','130000','2',NULL),('130700','张家口市','130000','2',NULL),('130800','承德市','130000','2',NULL),('130900','沧州市','130000','2',NULL),('131000','廊坊市','130000','2',NULL),('131100','衡水市','130000','2',NULL),('139000','省直辖县级行政区划','130000','2',NULL),('140000','山西省','0','1',NULL),('140100','太原市','140000','2',NULL),('140200','大同市','140000','2',NULL),('140300','阳泉市','140000','2',NULL),('140400','长治市','140000','2',NULL),('140500','晋城市','140000','2',NULL),('140600','朔州市','140000','2',NULL),('140700','晋中市','140000','2',NULL),('140800','运城市','140000','2',NULL),('140900','忻州市','140000','2',NULL),('141000','临汾市','140000','2',NULL),('141100','吕梁市','140000','2',NULL),('150000','内蒙古自治区','0','1',NULL),('150100','呼和浩特市','150000','2',NULL),('150200','包头市','150000','2',NULL),('150300','乌海市','150000','2',NULL),('150400','赤峰市','150000','2',NULL),('150500','通辽市','150000','2',NULL),('150600','鄂尔多斯市','150000','2',NULL),('150700','呼伦贝尔市','150000','2',NULL),('150800','巴彦淖尔市','150000','2',NULL),('150900','乌兰察布市','150000','2',NULL),('152200','兴安盟','150000','2',NULL),('152500','锡林郭勒盟','150000','2',NULL),('152900','阿拉善盟','150000','2',NULL),('210000','辽宁省','0','1',NULL),('210100','沈阳市','210000','2',NULL),('210200','大连市','210000','2',NULL),('210300','鞍山市','210000','2',NULL),('210400','抚顺市','210000','2',NULL),('210500','本溪市','210000','2',NULL),('210600','丹东市','210000','2',NULL),('210700','锦州市','210000','2',NULL),('210800','营口市','210000','2',NULL),('210900','阜新市','210000','2',NULL),('211000','辽阳市','210000','2',NULL),('211100','盘锦市','210000','2',NULL),('211200','铁岭市','210000','2',NULL),('211300','朝阳市','210000','2',NULL),('211400','葫芦岛市','210000','2',NULL),('220000','吉林省','0','1',NULL),('220100','长春市','220000','2',NULL),('220200','吉林市','220000','2',NULL),('220300','四平市','220000','2',NULL),('220400','辽源市','220000','2',NULL),('220500','通化市','220000','2',NULL),('220600','白山市','220000','2',NULL),('220700','松原市','220000','2',NULL),('220800','白城市','220000','2',NULL),('222400','延边朝鲜族自治州','220000','2',NULL),('230000','黑龙江省','0','1',NULL),('230100','哈尔滨市','230000','2',NULL),('230200','齐齐哈尔市','230000','2',NULL),('230300','鸡西市','230000','2',NULL),('230400','鹤岗市','230000','2',NULL),('230500','双鸭山市','230000','2',NULL),('230600','大庆市','230000','2',NULL),('230700','伊春市','230000','2',NULL),('230800','佳木斯市','230000','2',NULL),('230900','七台河市','230000','2',NULL),('231000','牡丹江市','230000','2',NULL),('231100','黑河市','230000','2',NULL),('231200','绥化市','230000','2',NULL),('232700','大兴安岭地区','230000','2',NULL),('310000','上海市','0','1',NULL),('310100','上海市','310000','2',NULL),('320000','江苏省','0','1',NULL),('320100','南京市','320000','2',NULL),('320200','无锡市','320000','2',NULL),('320300','徐州市','320000','2',NULL),('320400','常州市','320000','2',NULL),('320500','苏州市','320000','2',NULL),('320600','南通市','320000','2',NULL),('320700','连云港市','320000','2',NULL),('320800','淮安市','320000','2',NULL),('320900','盐城市','320000','2',NULL),('321000','扬州市','320000','2',NULL),('321100','镇江市','320000','2',NULL),('321200','泰州市','320000','2',NULL),('321300','宿迁市','320000','2',NULL),('330000','浙江省','0','1',NULL),('330100','杭州市','330000','2',NULL),('330200','宁波市','330000','2',NULL),('330300','温州市','330000','2',NULL),('330400','嘉兴市','330000','2',NULL),('330500','湖州市','330000','2',NULL),('330600','绍兴市','330000','2',NULL),('330700','金华市','330000','2',NULL),('330800','衢州市','330000','2',NULL),('330900','舟山市','330000','2',NULL),('331000','台州市','330000','2',NULL),('331100','丽水市','330000','2',NULL),('340000','安徽省','0','1',NULL),('340100','合肥市','340000','2',NULL),('340200','芜湖市','340000','2',NULL),('340300','蚌埠市','340000','2',NULL),('340400','淮南市','340000','2',NULL),('340500','马鞍山市','340000','2',NULL),('340600','淮北市','340000','2',NULL),('340700','铜陵市','340000','2',NULL),('340800','安庆市','340000','2',NULL),('341000','黄山市','340000','2',NULL),('341100','滁州市','340000','2',NULL),('341200','阜阳市','340000','2',NULL),('341300','宿州市','340000','2',NULL),('341500','六安市','340000','2',NULL),('341600','亳州市','340000','2',NULL),('341700','池州市','340000','2',NULL),('341800','宣城市','340000','2',NULL),('350000','福建省','0','1',NULL),('350100','福州市','350000','2',NULL),('350200','厦门市','350000','2',NULL),('350300','莆田市','350000','2',NULL),('350400','三明市','350000','2',NULL),('350500','泉州市','350000','2',NULL),('350600','漳州市','350000','2',NULL),('350700','南平市','350000','2',NULL),('350800','龙岩市','350000','2',NULL),('350900','宁德市','350000','2',NULL),('360000','江西省','0','1',NULL),('360100','南昌市','360000','2',NULL),('360200','景德镇市','360000','2',NULL),('360300','萍乡市','360000','2',NULL),('360400','九江市','360000','2',NULL),('360500','新余市','360000','2',NULL),('360600','鹰潭市','360000','2',NULL),('360700','赣州市','360000','2',NULL),('360800','吉安市','360000','2',NULL),('360900','宜春市','360000','2',NULL),('361000','抚州市','360000','2',NULL),('361100','上饶市','360000','2',NULL),('370000','山东省','0','1',NULL),('370100','济南市','370000','2',NULL),('370200','青岛市','370000','2',NULL),('370300','淄博市','370000','2',NULL),('370400','枣庄市','370000','2',NULL),('370500','东营市','370000','2',NULL),('370600','烟台市','370000','2',NULL),('370700','潍坊市','370000','2',NULL),('370800','济宁市','370000','2',NULL),('370900','泰安市','370000','2',NULL),('371000','威海市','370000','2',NULL),('371100','日照市','370000','2',NULL),('371200','莱芜市','370000','2',NULL),('371300','临沂市','370000','2',NULL),('371400','德州市','370000','2',NULL),('371500','聊城市','370000','2',NULL),('371600','滨州市','370000','2',NULL),('371700','菏泽市','370000','2',NULL),('410000','河南省','0','1',NULL),('410100','郑州市','410000','2',NULL),('410200','开封市','410000','2',NULL),('410300','洛阳市','410000','2',NULL),('410400','平顶山市','410000','2',NULL),('410500','安阳市','410000','2',NULL),('410600','鹤壁市','410000','2',NULL),('410700','新乡市','410000','2',NULL),('410800','焦作市','410000','2',NULL),('410900','濮阳市','410000','2',NULL),('411000','许昌市','410000','2',NULL),('411100','漯河市','410000','2',NULL),('411200','三门峡市','410000','2',NULL),('411300','南阳市','410000','2',NULL),('411400','商丘市','410000','2',NULL),('411500','信阳市','410000','2',NULL),('411600','周口市','410000','2',NULL),('411700','驻马店市','410000','2',NULL),('419000','省直辖县级行政区划','410000','2',NULL),('420000','湖北省','0','1',NULL),('420100','武汉市','420000','2',NULL),('420200','黄石市','420000','2',NULL),('420300','十堰市','420000','2',NULL),('420500','宜昌市','420000','2',NULL),('420600','襄阳市','420000','2',NULL),('420700','鄂州市','420000','2',NULL),('420800','荆门市','420000','2',NULL),('420900','孝感市','420000','2',NULL),('421000','荆州市','420000','2',NULL),('421100','黄冈市','420000','2',NULL),('421200','咸宁市','420000','2',NULL),('421300','随州市','420000','2',NULL),('422800','恩施土家族苗族自治州','420000','2',NULL),('429000','省直辖县级行政区划','420000','2',NULL),('430000','湖南省','0','1',NULL),('430100','长沙市','430000','2',NULL),('430200','株洲市','430000','2',NULL),('430300','湘潭市','430000','2',NULL),('430400','衡阳市','430000','2',NULL),('430500','邵阳市','430000','2',NULL),('430600','岳阳市','430000','2',NULL),('430700','常德市','430000','2',NULL),('430800','张家界市','430000','2',NULL),('430900','益阳市','430000','2',NULL),('431000','郴州市','430000','2',NULL),('431100','永州市','430000','2',NULL),('431200','怀化市','430000','2',NULL),('431300','娄底市','430000','2',NULL),('433100','湘西土家族苗族自治州','430000','2',NULL),('440000','广东省','0','1',NULL),('440100','广州市','440000','2',NULL),('440200','韶关市','440000','2',NULL),('440300','深圳市','440000','2',NULL),('440400','珠海市','440000','2',NULL),('440500','汕头市','440000','2',NULL),('440600','佛山市','440000','2',NULL),('440700','江门市','440000','2',NULL),('440800','湛江市','440000','2',NULL),('440900','茂名市','440000','2',NULL),('441200','肇庆市','440000','2',NULL),('441300','惠州市','440000','2',NULL),('441400','梅州市','440000','2',NULL),('441500','汕尾市','440000','2',NULL),('441600','河源市','440000','2',NULL),('441700','阳江市','440000','2',NULL),('441800','清远市','440000','2',NULL),('441900','东莞市','440000','2',NULL),('442000','中山市','440000','2',NULL),('445100','潮州市','440000','2',NULL),('445200','揭阳市','440000','2',NULL),('445300','云浮市','440000','2',NULL),('450000','广西壮族自治区','0','1',NULL),('450100','南宁市','450000','2',NULL),('450200','柳州市','450000','2',NULL),('450300','桂林市','450000','2',NULL),('450400','梧州市','450000','2',NULL),('450500','北海市','450000','2',NULL),('450600','防城港市','450000','2',NULL),('450700','钦州市','450000','2',NULL),('450800','贵港市','450000','2',NULL),('450900','玉林市','450000','2',NULL),('451000','百色市','450000','2',NULL),('451100','贺州市','450000','2',NULL),('451200','河池市','450000','2',NULL),('451300','来宾市','450000','2',NULL),('451400','崇左市','450000','2',NULL),('460000','海南省','0','1',NULL),('460100','海口市','460000','2',NULL),('460200','三亚市','460000','2',NULL),('460300','三沙市','460000','2',NULL),('460400','儋州市','460000','2',NULL),('469000','省直辖县级行政区划','460000','2',NULL),('500000','重庆市','0','1',NULL),('500100','重庆市','500000','2',NULL),('500200','县','500000','2',NULL),('510000','四川省','0','1',NULL),('510100','成都市','510000','2',NULL),('510300','自贡市','510000','2',NULL),('510400','攀枝花市','510000','2',NULL),('510500','泸州市','510000','2',NULL),('510600','德阳市','510000','2',NULL),('510700','绵阳市','510000','2',NULL),('510800','广元市','510000','2',NULL),('510900','遂宁市','510000','2',NULL),('511000','内江市','510000','2',NULL),('511100','乐山市','510000','2',NULL),('511300','南充市','510000','2',NULL),('511400','眉山市','510000','2',NULL),('511500','宜宾市','510000','2',NULL),('511600','广安市','510000','2',NULL),('511700','达州市','510000','2',NULL),('511800','雅安市','510000','2',NULL),('511900','巴中市','510000','2',NULL),('512000','资阳市','510000','2',NULL),('513200','阿坝藏族羌族自治州','510000','2',NULL),('513300','甘孜藏族自治州','510000','2',NULL),('513400','凉山彝族自治州','510000','2',NULL),('520000','贵州省','0','1',NULL),('520100','贵阳市','520000','2',NULL),('520200','六盘水市','520000','2',NULL),('520300','遵义市','520000','2',NULL),('520400','安顺市','520000','2',NULL),('520500','毕节市','520000','2',NULL),('520600','铜仁市','520000','2',NULL),('522300','黔西南布依族苗族自治州','520000','2',NULL),('522600','黔东南苗族侗族自治州','520000','2',NULL),('522700','黔南布依族苗族自治州','520000','2',NULL),('530000','云南省','0','1',NULL),('530100','昆明市','530000','2',NULL),('530300','曲靖市','530000','2',NULL),('530400','玉溪市','530000','2',NULL),('530500','保山市','530000','2',NULL),('530600','昭通市','530000','2',NULL),('530700','丽江市','530000','2',NULL),('530800','普洱市','530000','2',NULL),('530900','临沧市','530000','2',NULL),('532300','楚雄彝族自治州','530000','2',NULL),('532500','红河哈尼族彝族自治州','530000','2',NULL),('532600','文山壮族苗族自治州','530000','2',NULL),('532800','西双版纳傣族自治州','530000','2',NULL),('532900','大理白族自治州','530000','2',NULL),('533100','德宏傣族景颇族自治州','530000','2',NULL),('533300','怒江傈僳族自治州','530000','2',NULL),('533400','迪庆藏族自治州','530000','2',NULL),('540000','西藏自治区','0','1',NULL),('540100','拉萨市','540000','2',NULL),('540200','日喀则市','540000','2',NULL),('540300','昌都市','540000','2',NULL),('540400','林芝市','540000','2',NULL),('540500','山南市','540000','2',NULL),('542400','那曲地区','540000','2',NULL),('542500','阿里地区','540000','2',NULL),('610000','陕西省','0','1',NULL),('610100','西安市','610000','2',NULL),('610200','铜川市','610000','2',NULL),('610300','宝鸡市','610000','2',NULL),('610400','咸阳市','610000','2',NULL),('610500','渭南市','610000','2',NULL),('610600','延安市','610000','2',NULL),('610700','汉中市','610000','2',NULL),('610800','榆林市','610000','2',NULL),('610900','安康市','610000','2',NULL),('611000','商洛市','610000','2',NULL),('620000','甘肃省','0','1',NULL),('620100','兰州市','620000','2',NULL),('620200','嘉峪关市','620000','2',NULL),('620300','金昌市','620000','2',NULL),('620400','白银市','620000','2',NULL),('620500','天水市','620000','2',NULL),('620600','武威市','620000','2',NULL),('620700','张掖市','620000','2',NULL),('620800','平凉市','620000','2',NULL),('620900','酒泉市','620000','2',NULL),('621000','庆阳市','620000','2',NULL),('621100','定西市','620000','2',NULL),('621200','陇南市','620000','2',NULL),('622900','临夏回族自治州','620000','2',NULL),('623000','甘南藏族自治州','620000','2',NULL),('630000','青海省','0','1',NULL),('630100','西宁市','630000','2',NULL),('630200','海东市','630000','2',NULL),('632200','海北藏族自治州','630000','2',NULL),('632300','黄南藏族自治州','630000','2',NULL),('632500','海南藏族自治州','630000','2',NULL),('632600','果洛藏族自治州','630000','2',NULL),('632700','玉树藏族自治州','630000','2',NULL),('632800','海西蒙古族藏族自治州','630000','2',NULL),('640000','宁夏回族自治区','0','1',NULL),('640100','银川市','640000','2',NULL),('640200','石嘴山市','640000','2',NULL),('640300','吴忠市','640000','2',NULL),('640400','固原市','640000','2',NULL),('640500','中卫市','640000','2',NULL),('650000','新疆维吾尔自治区','0','1',NULL),('650100','乌鲁木齐市','650000','2',NULL),('650200','克拉玛依市','650000','2',NULL),('650400','吐鲁番市','650000','2',NULL),('650500','哈密市','650000','2',NULL),('652300','昌吉回族自治州','650000','2',NULL),('652700','博尔塔拉蒙古自治州','650000','2',NULL),('652800','巴音郭楞蒙古自治州','650000','2',NULL),('652900','阿克苏地区','650000','2',NULL),('653000','克孜勒苏柯尔克孜自治州','650000','2',NULL),('653100','喀什地区','650000','2',NULL),('653200','和田地区','650000','2',NULL),('654000','伊犁哈萨克自治州','650000','2',NULL),('654200','塔城地区','650000','2',NULL),('654300','阿勒泰地区','650000','2',NULL),('659000','自治区直辖县级行政区划','650000','2',NULL),('710000','台湾省','0','1',NULL),('810000','香港特别行政区','0','1',NULL),('820000','澳门特别行政区','0','1',NULL);
/*!40000 ALTER TABLE `sys_dict_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2023-06-10 14:07:51','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2023-06-10 14:07:51','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2023-06-10 14:07:51','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2023-06-10 14:07:51','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2023-06-10 14:07:51','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2023-06-10 14:07:51','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2023-06-10 14:07:51','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2023-06-10 14:07:51','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2023-06-10 14:07:51','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2023-06-10 14:07:51','',NULL,'登录状态列表'),(11,'微信状态','wechat_status','0','admin','2023-06-26 09:38:12','',NULL,NULL),(12,'支付状态','pay_status','0','admin','2023-07-17 16:35:21','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-06-10 14:07:51','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-06-10 14:07:51','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-06-10 14:07:51','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
  KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5467 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (5464,'13071118620','49.65.78.149','XX XX','Unknown','Unknown','0','登录成功','2024-05-23 20:27:26'),(5465,'13071118620','127.0.0.1','内网IP','Unknown','Unknown','0','登录成功','2024-05-23 20:40:21'),(5466,'13071118620','49.65.78.149','XX XX','Unknown','Unknown','0','登录成功','2024-05-23 20:48:40');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2050 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,96,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-06-10 14:07:51','admin','2023-06-27 10:49:06','系统管理目录'),(2,'系统监控',0,97,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-06-10 14:07:51','admin','2023-06-27 10:48:55','系统监控目录'),(3,'系统工具',0,98,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2023-06-10 14:07:51','admin','2023-06-27 10:48:45','系统工具目录'),(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2023-06-10 14:07:51','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2023-06-10 14:07:51','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2023-06-10 14:07:51','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2023-06-10 14:07:51','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2023-06-10 14:07:51','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2023-06-10 14:07:51','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2023-06-10 14:07:51','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2023-06-10 14:07:51','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2023-06-10 14:07:51','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2023-06-10 14:07:51','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2023-06-10 14:07:51','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2023-06-10 14:07:51','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2023-06-10 14:07:51','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2023-06-10 14:07:51','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2023-06-10 14:07:51','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2023-06-10 14:07:51','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2023-06-10 14:07:51','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2023-06-10 14:07:51','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2023-06-10 14:07:51','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2023-06-10 14:07:51','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2023-06-10 14:07:51','',NULL,''),(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2023-06-10 14:07:51','',NULL,''),(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2023-06-10 14:07:51','',NULL,''),(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2023-06-10 14:07:51','',NULL,''),(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2023-06-10 14:07:51','',NULL,''),(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2023-06-10 14:07:51','',NULL,''),(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2023-06-10 14:07:51','',NULL,''),(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2023-06-10 14:07:51','',NULL,''),(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2023-06-10 14:07:51','',NULL,''),(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2023-06-10 14:07:51','',NULL,''),(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2023-06-10 14:07:51','',NULL,''),(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2023-06-10 14:07:51','',NULL,''),(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2023-06-10 14:07:51','',NULL,''),(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2023-06-10 14:07:51','',NULL,''),(2001,'套餐',0,6,'pack',NULL,NULL,1,0,'M','0','0','','shopping','admin','2023-06-25 11:44:25','admin','2023-06-25 14:28:03',''),(2002,'套餐购买',2001,1,'buy','pack/buy/index',NULL,1,0,'C','0','0','pack:buy:list','number','admin','2023-06-25 11:49:25','admin','2023-06-25 14:30:36',''),(2003,'套餐管理',2001,2,'record','pack/buy/record',NULL,1,0,'C','0','0','pack:buy:record','list','admin','2023-06-25 11:53:30','admin','2023-06-28 17:17:23',''),(2004,'微信管理',0,7,'wechat','wechat/index',NULL,1,0,'C','0','0','wechat:index:list','wechat','admin','2023-06-25 11:55:00','admin','2023-06-26 09:37:17',''),(2007,'登录数据',0,12,'logindata',NULL,NULL,1,0,'M','0','0','','build','admin','2023-06-26 18:31:52','admin','2023-07-03 15:47:10',''),(2008,'登录数量',2007,1,'count','logindata/count/index',NULL,1,0,'C','0','0',NULL,'number','admin','2023-06-26 18:37:39','',NULL,''),(2009,'掉线记录',2007,2,'offline','logindata/offline/index',NULL,1,0,'C','0','0','','log','admin','2023-06-26 18:38:41','admin','2023-06-26 18:38:51',''),(2010,'代理IP记录',2007,3,'proxy','logindata/proxy/index',NULL,1,0,'C','0','0',NULL,'log','admin','2023-06-26 18:41:22','',NULL,''),(2011,'业务监控',0,13,'bizmonitor',NULL,NULL,1,0,'M','1','0','','monitor','admin','2023-06-26 18:42:52','admin','2023-07-10 15:13:46',''),(2012,'底层监控',2011,1,'bottom','bizmonitor/bottom/index',NULL,1,0,'C','0','0',NULL,'druid','admin','2023-06-27 10:04:31','',NULL,''),(2013,'在线数量监控',2011,2,'online','bizmonitor/online/index',NULL,1,0,'C','0','0',NULL,'druid','admin','2023-06-27 10:23:57','',NULL,''),(2014,'代理ip监控',2011,3,'proxyip','bizmonitor/proxyip/index',NULL,1,0,'C','0','0','','druid','admin','2023-06-27 10:25:20','admin','2023-06-27 11:40:29',''),(2015,'后台监控',0,14,'backmonitor',NULL,NULL,1,0,'M','0','0','','monitor','admin','2023-06-27 10:26:53','admin','2023-07-03 15:46:47',''),(2016,'服务器统计',2015,2,'servercount','backmonitor/servercount/index',NULL,1,0,'C','0','0','','server','admin','2023-06-27 10:29:23','admin','2024-04-24 19:05:00',''),(2017,'代理ip统计',2015,3,'proxyipcount','backmonitor/proxyipcount/index',NULL,1,0,'C','0','0','','server','admin','2023-06-27 10:31:42','admin','2024-04-24 19:05:09',''),(2018,'用户统计',2015,4,'usercount','backmonitor/usercount/index',NULL,1,0,'C','0','0','','user','admin','2023-06-27 10:33:19','admin','2024-04-24 19:05:17',''),(2020,'我的推广',0,8,'extend','extend/index',NULL,1,0,'C','0','0','','link','admin','2023-06-28 17:15:18','admin','2023-07-20 09:39:22',''),(2021,'用户权益',0,9,'equity/index','equity/index',NULL,1,0,'C','0','0','','people','admin','2023-06-28 17:16:26','admin','2023-07-20 09:40:01',''),(2022,'访问控制',0,10,'access','access/control/index',NULL,1,0,'C','0','0','','button','admin','2023-06-28 17:19:23','admin','2023-07-03 15:47:38',''),(2023,'图标',0,99,'index_v1','index_v1',NULL,1,0,'C','1','0','','404','admin','2023-06-28 18:08:24','admin','2023-07-14 13:42:37',''),(2024,'查询',2022,1,'',NULL,NULL,1,0,'F','0','0','user:token:list','#','admin','2023-07-03 11:34:03','admin','2023-07-18 14:31:00',''),(2027,'删除',2022,4,'',NULL,NULL,1,0,'F','0','0','user:token:remove','#','admin','2023-07-03 11:35:21','admin','2023-07-18 16:42:09',''),(2028,'发票管理',0,11,'invoice','invoice/index',NULL,1,0,'C','0','0','','excel','admin','2023-07-03 15:47:58','admin','2023-07-20 09:40:27',''),(2029,'用户首页',0,1,'/user',NULL,NULL,1,0,'M','1','0','','chart','admin','2023-07-14 10:44:48','admin','2023-07-14 10:48:13',''),(2031,'掉线数量统计',2029,2,'',NULL,NULL,1,0,'F','0','0','user:stat:offlinecount','#','admin','2023-07-14 11:00:38','',NULL,''),(2032,'在线列表',2029,3,'',NULL,NULL,1,0,'F','0','0','user:stat:onlinelist','#','admin','2023-07-14 11:19:24','',NULL,''),(2033,'申请token生成',2022,2,'',NULL,NULL,1,0,'F','0','0','user:token:generate','#','admin','2023-07-14 16:05:55','admin','2023-07-18 16:41:57',''),(2034,'登陆记录',2029,4,'',NULL,NULL,1,0,'F','0','0','user:stat:loginrecord','#','admin','2023-07-17 10:42:54','',NULL,''),(2035,'购买',2002,1,'',NULL,NULL,1,0,'F','0','0','user:package:buy','#','admin','2023-07-17 15:39:53','',NULL,''),(2036,'订单列表',2002,2,'',NULL,NULL,1,0,'F','0','0','user:package:orderrecord','#','admin','2023-07-17 15:40:24','',NULL,''),(2037,'套餐列表',2003,1,'',NULL,NULL,1,0,'F','0','0','user:package:userpackagelist','#','admin','2023-07-17 15:40:42','',NULL,''),(2038,'续费',2003,2,'',NULL,NULL,1,0,'F','0','0','user:package:renew','#','admin','2023-07-17 17:23:13','',NULL,''),(2039,'套餐可用数量',2029,5,'',NULL,NULL,1,0,'F','0','0','user:stat:pkgusecount','#','admin','2023-07-17 17:30:55','',NULL,''),(2040,'查询',2004,1,'',NULL,NULL,1,0,'F','0','0','user:wx:list','#','admin','2023-07-18 14:31:38','',NULL,''),(2041,'设置回调地址',2022,5,'',NULL,NULL,1,0,'F','0','0','user:token:setcallback','#','admin','2023-07-18 16:42:28','',NULL,''),(2042,'开始试用',2002,3,'',NULL,NULL,1,0,'F','0','0','user:package:trial','#','admin','2023-07-19 15:55:43','',NULL,''),(2043,'权益记录',2021,1,'',NULL,NULL,1,0,'F','0','0','user:equity:list','#','admin','2023-07-24 10:05:11','',NULL,''),(2044,'记录返现',2021,2,'',NULL,NULL,1,0,'F','0','0','user:equity:save','#','admin','2023-07-24 10:05:28','',NULL,''),(2045,'发票管理列表',2028,1,'',NULL,NULL,1,0,'F','0','0','manage:invoice:list','#','admin','2023-07-24 10:05:48','',NULL,''),(2046,'申请开票',2028,2,'',NULL,NULL,1,0,'F','0','0','manage:invoice:apply','#','admin','2023-07-24 10:06:08','',NULL,''),(2049,'代理ip设置',2011,3,'','',NULL,1,0,'C','0','0','tools:update:Proxy','druid','admin','2023-06-27 10:25:20','admin','2023-06-27 11:40:29','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
  KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2023-06-10 14:07:51','',NULL,''),(2,'se','项目经理',2,'0','admin','2023-06-10 14:07:51','',NULL,''),(3,'hr','人力资源',3,'0','admin','2023-06-10 14:07:51','',NULL,''),(4,'user','普通员工',4,'0','admin','2023-06-10 14:07:51','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-06-10 14:07:51','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-06-10 14:07:51','admin','2023-07-21 23:15:21','普通角色'),(100,'111','111',10,'1',1,1,'0','2','13585482752','2023-06-26 11:08:26','',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2001),(2,2002),(2,2003),(2,2004),(2,2022),(2,2024),(2,2027),(2,2029),(2,2030),(2,2031),(2,2032),(2,2033),(2,2034),(2,2035),(2,2036),(2,2037),(2,2038),(2,2039),(2,2040),(2,2041),(2,2042),(2,2049);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `identify_type` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '身份类型 1：all-api ，2：视频号',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=560 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (504,NULL,'13071118620','13071118620','00','','','0','','$2a$10$NAwukazTUQRDUlvVJzwC4.E5X1LRGcCSAdHawvD8rpHpyNjzP3BTS','0','0','1','49.65.78.149','2024-05-23 20:48:41','','2024-05-07 01:11:10','','2024-05-23 20:48:40',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (504,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_equity_record`
--

DROP TABLE IF EXISTS `t_equity_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_equity_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `user_package_id` int DEFAULT NULL COMMENT '购买的记录ID',
  `total_amount` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '消费金额',
  `cashback_amount` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '返现金额',
  `status` int DEFAULT NULL COMMENT '状态',
  `create_by` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equity_record`
--

LOCK TABLES `t_equity_record` WRITE;
/*!40000 ALTER TABLE `t_equity_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_equity_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_invoice`
--

DROP TABLE IF EXISTS `t_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_invoice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '发票抬头',
  `duty_paragraph` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '税号',
  `bank_account` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '银行账号',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '开户行',
  `company_address` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '企业地址',
  `company_phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '企业联系电话',
  `invoice_amount` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '开票金额',
  `status` int NOT NULL COMMENT '开票状态',
  `express_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '快递单号',
  `post_time` datetime DEFAULT NULL COMMENT '邮寄日期',
  `invoice_time` datetime DEFAULT NULL COMMENT '开票时间',
  `file_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '发票文件地址',
  `mail` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮箱地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_invoice`
--

LOCK TABLES `t_invoice` WRITE;
/*!40000 ALTER TABLE `t_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_record`
--

DROP TABLE IF EXISTS `t_login_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_login_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `app_id` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '设备ID',
  `wxid` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '微信ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `region_id` int DEFAULT NULL COMMENT '地区ID',
  `proxy_id` int DEFAULT NULL COMMENT '代理IP ID',
  `ttuid` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'ttuid',
  `server_id` int NOT NULL COMMENT '底层服务器ID',
  `bus_server_id` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '业务层服务器ID',
  `token_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '登陆使用的token',
  `status` int DEFAULT NULL COMMENT '在线状态 1:在线 0:离线',
  `login_type` int NOT NULL COMMENT '登陆方式 1:新设备扫码登陆  2:老设备扫码登陆  3:弹框登陆',
  `login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `logout_time` datetime DEFAULT NULL COMMENT '退出时间',
  `online_duration` int DEFAULT NULL COMMENT '在线时长（单位m）',
  `logout_reason` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '掉线原因',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '昵称',
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '头像',
  `short_link` int DEFAULT '1' COMMENT '是否短链接 1：是 0：否',
  `alias` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '微信号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2053 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_record`
--

LOCK TABLES `t_login_record` WRITE;
/*!40000 ALTER TABLE `t_login_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_login_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_online_stat`
--

DROP TABLE IF EXISTS `t_online_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_online_stat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `server_id` int NOT NULL COMMENT '服务器ID',
  `online_count` int NOT NULL COMMENT '在线数量',
  `stat_time` bigint NOT NULL COMMENT '统计时间 yyMMddhhmm',
  `region_id` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '地区ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=405918 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_record`
--

DROP TABLE IF EXISTS `t_order_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '订单号',
  `user_id` int NOT NULL COMMENT '用户ID',
  `order_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '订单名称',
  `total_amount` varchar(20) CHARACTER SET utf8mb4 NOT NULL COMMENT '支付金额',
  `zfb_account` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '支付宝账户',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `wx_count` int DEFAULT NULL COMMENT '微信数量',
  `date_count` int DEFAULT NULL COMMENT '时长',
  `date_unit` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '时长类型',
  `buy_count` int DEFAULT NULL COMMENT '购买数量',
  `package_id` int DEFAULT NULL COMMENT '购买的套餐ID',
  `renew_user_package_id` int DEFAULT NULL COMMENT '续费的套餐ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_record`
--

LOCK TABLES `t_order_record` WRITE;
/*!40000 ALTER TABLE `t_order_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_package_list`
--

DROP TABLE IF EXISTS `t_package_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_package_list` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '套餐名称',
  `wx_count` int NOT NULL COMMENT '可登陆数量',
  `time_type` varchar(5) CHARACTER SET utf8mb4 NOT NULL COMMENT '时间类型  M：月 Q：季度 Y：年',
  `package_type` int NOT NULL COMMENT '套餐类型',
  `identify_type` char(1) CHARACTER SET utf8mb4 NOT NULL COMMENT '身份类型',
  `unit_price` varchar(10) CHARACTER SET utf8mb4 NOT NULL COMMENT '单价',
  `sale_msg` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '优惠文字',
  `bottom_msg` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '底部文字',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_package_list`
--

LOCK TABLES `t_package_list` WRITE;
/*!40000 ALTER TABLE `t_package_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_package_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_protocol_server`
--

DROP TABLE IF EXISTS `t_protocol_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_protocol_server` (
  `server_id` int NOT NULL AUTO_INCREMENT COMMENT '底层服务器ID',
  `server_url` varchar(500) CHARACTER SET utf8mb4 NOT NULL COMMENT '底层服务器url',
  `server_long_url` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '底层服务器长链url',
  `max_login` int NOT NULL COMMENT '最大登陆数量',
  `curr_login` int NOT NULL DEFAULT '0' COMMENT '当前登陆数量',
  `expire_time` datetime NOT NULL COMMENT '服务器到期时间',
  `region_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '服务器归属的地区ID',
  `enable` int NOT NULL DEFAULT '1' COMMENT '底层服务是否可用 1:可用 0:不可用（监控分析到底层服务挂了后就不再继续使用）\n',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_protocol_server`
--

LOCK TABLES `t_protocol_server` WRITE;
/*!40000 ALTER TABLE `t_protocol_server` DISABLE KEYS */;
INSERT INTO `t_protocol_server` VALUES (1,'http://127.0.0.1:4600','http://127.0.0.1:5600',300,0,'2099-04-20 11:28:11','330000',1,'2023-06-29 11:29:12','2024-07-25 19:50:00');
/*!40000 ALTER TABLE `t_protocol_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proxy`
--

DROP TABLE IF EXISTS `t_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_proxy` (
  `proxy_id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `proxy_ip` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '代理IP',
  `proxy_user` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '代理IP用户名',
  `proxy_pwd` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '代理IP密码',
  `region_id` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '地区ID',
  `curr_login` int NOT NULL DEFAULT '0' COMMENT '代理IP当前登陆多少号',
  `max_login` int NOT NULL COMMENT '代理IP最多登陆多少个号',
  `enable` int NOT NULL COMMENT '代理IP是否可用 1:可用 0:不可用（监控分析到代理IP挂了后就不再继续使用）',
  `expire_time` datetime NOT NULL COMMENT '代理IP过期时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`proxy_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proxy`
--

LOCK TABLES `t_proxy` WRITE;
/*!40000 ALTER TABLE `t_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_token`
--

DROP TABLE IF EXISTS `t_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_token` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `token_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT 'token id ',
  `user_id` int NOT NULL COMMENT '用户ID',
  `callback_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回调地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_token`
--

LOCK TABLES `t_token` WRITE;
/*!40000 ALTER TABLE `t_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_package`
--

DROP TABLE IF EXISTS `t_user_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_package` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `order_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '订单信息',
  `package_id` int DEFAULT NULL COMMENT '套餐ID',
  `package_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '套餐名称',
  `wx_count` int NOT NULL COMMENT '授权微信号数量',
  `effect_time` datetime NOT NULL COMMENT '生效时间',
  `expire_time` datetime NOT NULL COMMENT '到期时间',
  `amount` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '金额',
  `date_count` int DEFAULT NULL COMMENT '时长',
  `date_unit` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '时长单位',
  `buy_count` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '购买数量',
  `invoice` int DEFAULT NULL COMMENT '是否已开具发票 1:已开 0/null:未开',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_package`
--

LOCK TABLES `t_user_package` WRITE;
/*!40000 ALTER TABLE `t_user_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_wx_count`
--

DROP TABLE IF EXISTS `t_user_wx_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_wx_count` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int NOT NULL COMMENT '用户ID',
  `stat_day` int NOT NULL COMMENT '统计日期yyyyMMdd',
  `wx_count` int NOT NULL COMMENT '登陆的微信总数',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1703 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_wx_count`
--

LOCK TABLES `t_user_wx_count` WRITE;
/*!40000 ALTER TABLE `t_user_wx_count` DISABLE KEYS */;
INSERT INTO `t_user_wx_count` VALUES (1702,504,20240523,1,'2024-05-24 00:05:00','2024-05-24 00:05:00');
/*!40000 ALTER TABLE `t_user_wx_count` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 12:40:07
