# Host: localhost  (Version 5.7.17-log)
# Date: 2018-04-10 14:47:31
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "gd_parameter_opc"
#

DROP TABLE IF EXISTS `gd_parameter_opc`;
CREATE TABLE `gd_parameter_opc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '学号或工号',
  `mask_dimension` double(24,10) DEFAULT NULL,
  `pixel_size` double(24,10) DEFAULT NULL,
  `reflect` double(24,10) DEFAULT NULL,
  `absorb` double(24,10) DEFAULT NULL,
  `shadow_near` double(24,10) DEFAULT NULL,
  `shadow_far` double(24,10) DEFAULT NULL,
  `wavelength` double(24,10) DEFAULT NULL,
  `sigma_in` double(24,10) DEFAULT NULL,
  `sigma_out` double(24,10) DEFAULT NULL,
  `tis` double(24,10) DEFAULT NULL,
  `na` double(24,10) DEFAULT NULL,
  `ratio` double(24,10) DEFAULT NULL,
  `step_main` double(24,10) DEFAULT NULL,
  `step_sraf` double(24,10) DEFAULT NULL,
  `omega_qua` double(24,10) DEFAULT NULL,
  `maxloop_opc` double(24,10) DEFAULT NULL,
  `threshold` double(24,10) DEFAULT NULL,
  `tr` double(24,10) DEFAULT NULL,
  `a_source` double(24,10) DEFAULT NULL,
  `core_num` double(24,10) DEFAULT NULL,
  `input_mask` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `input_mask_hash` varchar(200) DEFAULT NULL COMMENT 'input_mask文件的Hash值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='OPC模块的仿真参数';

#
# Data for table "gd_parameter_opc"
#

INSERT INTO `gd_parameter_opc` VALUES (5,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'34751df2-3ad6-405b-b110-91720a6ea2d7-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 14:54:41','2018-03-21 14:54:41'),(6,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'39046f6c-082f-4378-9d34-64332c4ea7a6-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 14:56:19','2018-03-21 14:56:19'),(7,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'0390bb5f-baf1-46f5-ae99-1f8b89ca8b6c-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 15:57:59','2018-03-21 15:57:59'),(8,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'a13713bf-4bfa-4310-8db8-f14bb29b3352-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 15:59:17','2018-03-21 15:59:17'),(9,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'f154abda-d9c4-4024-b3a6-e6baf54a63e2-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 16:05:51','2018-03-21 16:05:51'),(10,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'b4bafbc7-3bdf-4c4f-9300-bcf5a0502d35-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 16:10:25','2018-03-21 16:10:25'),(11,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'dfd8d516-7530-47f8-9166-ade6d0f1e68a-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 16:12:23','2018-03-21 16:12:23'),(12,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'f0d2de04-ea53-4dce-8003-07c30d2b0dc7-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 16:14:55','2018-03-21 16:14:55'),(13,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'e95640f9-70ac-4fa5-bdd4-12032f0d2ebf-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 18:35:41','2018-03-21 18:35:41'),(14,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'9c7124bc-c0f1-422a-b08f-8e8f6fb23dc9-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 22:29:59','2018-03-21 22:29:59'),(15,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,2.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'ae79f5d8-b4ee-4a8b-b0c0-0b8a576c6512-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 22:37:57','2018-03-21 22:37:57'),(16,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,2.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'3f65d855-645e-4da1-9b96-1f5fead2cf8d-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 22:40:25','2018-03-21 22:40:25'),(17,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,4.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'327e72fa-63cb-4e9b-b161-62b9755a96a5-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-21 22:48:49','2018-03-21 22:48:49'),(18,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'cb7109c8-1ff0-4f52-8b40-f5a43b43efdb-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 10:32:13','2018-03-27 10:32:13'),(20,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,4.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'1a3adcab-f9de-440d-85d9-706787b81e86-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 10:39:40','2018-03-27 10:39:40'),(21,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,1.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'c1ba56b1-95ee-4e83-8bfa-324906237b64-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 10:47:17','2018-03-27 10:47:17'),(22,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,2.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'f20beff4-a393-4a6a-a68d-375be1f71698-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 11:20:12','2018-03-27 11:20:12'),(23,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,4.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'a1d7b86c-e00e-4422-b791-b57879f7d114-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 11:37:41','2018-03-27 11:37:41'),(24,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,4.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'c6c5cea2-3187-46c7-9d08-ce4fc5fd3f32-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 11:44:44','2018-03-27 11:44:44'),(25,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,4.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'3668df28-7bc4-4432-9237-380ccc7c6bdc-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 11:51:21','2018-03-27 11:51:21'),(26,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,3.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'d06afc7a-e0cc-4cfc-9fa1-305797c4811e-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 13:07:22','2018-03-27 13:07:22'),(27,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.0000000000,0.8000000000,0.1690000000,0.2500000000,4.0000000000,0.5000000000,0.5000000000,0.0005000000,3.0000000000,0.0000000000,0.2500000000,25.0000000000,4.0000000000,'e1ed46a5-70f8-4091-b3f8-b93cd8a48d92-target1.mat','a6dac2581b961d181cd3830274a0b064','2018-03-27 13:33:56','2018-03-27 13:33:56');

#
# Structure for table "gd_parameter_pdod"
#

DROP TABLE IF EXISTS `gd_parameter_pdod`;
CREATE TABLE `gd_parameter_pdod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '该次仿真对应的用户账号',
  `txt_ix_st` varchar(500) DEFAULT NULL COMMENT '参数1对应的文件路径',
  `txt_ix_st_hash` varchar(200) DEFAULT NULL COMMENT '参数1对应文件的hash值',
  `txt_ix_nd` varchar(500) DEFAULT NULL COMMENT '参数2对应文件的路径',
  `txt_ix_nd_hash` varchar(200) DEFAULT NULL COMMENT '参数2对应文件的hash值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PDOD模块的仿真参数';

#
# Data for table "gd_parameter_pdod"
#


#
# Structure for table "gd_parameter_pwo"
#

DROP TABLE IF EXISTS `gd_parameter_pwo`;
CREATE TABLE `gd_parameter_pwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '用户账号',
  `wavelength` double(24,10) DEFAULT NULL,
  `na` double(24,10) DEFAULT NULL COMMENT 'Numerical Aperture',
  `ratio` double(24,10) DEFAULT NULL COMMENT 'Reduction Ratio',
  `polarization` double(24,10) DEFAULT NULL,
  `refractive_index` double(24,10) DEFAULT NULL,
  `pixel` double(24,10) DEFAULT NULL COMMENT 'Mask Pixel',
  `step_pupil` double(24,10) DEFAULT NULL,
  `omega_pupil` double(24,10) DEFAULT NULL COMMENT 'Pupil Smoothness weight',
  `zterm` double(24,0) DEFAULT NULL,
  `resist_slope` double(24,10) DEFAULT NULL,
  `threshold` double(24,10) DEFAULT NULL,
  `dimension` double(24,10) DEFAULT NULL COMMENT 'Pupil Dimension',
  `maxloop` double(24,10) DEFAULT NULL,
  `core_num` double(24,10) DEFAULT NULL,
  `input_data` varchar(500) DEFAULT NULL COMMENT '上传文件的路径',
  `input_data_hash` varchar(200) DEFAULT NULL COMMENT '上传文件的hash值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='PWO模块的仿真参数';

#
# Data for table "gd_parameter_pwo"
#

INSERT INTO `gd_parameter_pwo` VALUES (1,'222',193.0000000000,1.3500000000,4.0000000000,3.0000000000,1.4400000000,22.5000000000,0.0001000000,0.0000200000,37,25.0000000000,0.2000000000,301.0000000000,3.0000000000,4.0000000000,'a617688f-fdd4-428a-b58b-b096cc8a1086-Data_SMO_1_20_loops_100_45nm_target200.mat','01895c2c942096584ee12629a22da81b','2018-03-29 17:48:12','2018-03-29 17:48:12'),(2,'222',193.0000000000,1.3500000000,4.0000000000,3.0000000000,1.4400000000,22.5000000000,0.0001000000,0.0000200000,37,25.0000000000,0.2000000000,301.0000000000,3.0000000000,4.0000000000,'ce0a837c-bd88-4b89-8998-e072854f788a-Data_SMO_1_20_loops_100_45nm_target200.mat','01895c2c942096584ee12629a22da81b','2018-03-29 18:17:05','2018-03-29 18:17:05'),(3,'999',193.0000000000,1.3500000000,4.0000000000,3.0000000000,1.4400000000,22.5000000000,0.0001000000,0.0000200000,37,25.0000000000,0.2000000000,301.0000000000,37.0000000000,4.0000000000,'de0a516e-fe79-4906-8796-4bfdd79c42b8-Data_SMO_1_20_loops_100_45nm_target200.mat','01895c2c942096584ee12629a22da81b','2018-03-29 19:54:07','2018-03-29 19:54:07'),(4,'999',193.0000000000,1.3500000000,4.0000000000,3.0000000000,1.4400000000,22.5000000000,0.0001000000,0.0000200000,37,25.0000000000,0.2000000000,301.0000000000,37.0000000000,4.0000000000,'e9e71ea7-bf13-415c-a5ae-3683dc88fd68-Data_SMO_1_20_loops_100_45nm_target200.mat','01895c2c942096584ee12629a22da81b','2018-03-29 21:46:59','2018-03-29 21:46:59');

#
# Structure for table "gd_parameter_smo"
#

DROP TABLE IF EXISTS `gd_parameter_smo`;
CREATE TABLE `gd_parameter_smo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '学号或工号',
  `mask_dimension` double(24,10) DEFAULT NULL,
  `pixel_size` double(24,10) DEFAULT NULL,
  `reflect` double(24,10) DEFAULT NULL,
  `absorb` double(24,10) DEFAULT NULL,
  `shadow_near` double(24,10) DEFAULT NULL,
  `shadow_far` double(24,10) DEFAULT NULL,
  `wavelength` double(24,10) DEFAULT NULL,
  `sigma_in` double(24,10) DEFAULT NULL,
  `sigma_out` double(24,10) DEFAULT NULL,
  `tis` double(24,10) DEFAULT NULL,
  `na` double(24,10) DEFAULT NULL,
  `ratio` double(24,10) DEFAULT NULL,
  `step_source` double(24,10) DEFAULT NULL,
  `omega_source_qua` double(24,10) DEFAULT NULL,
  `step_mask_main` double(24,10) DEFAULT NULL,
  `step_mask_sraf` double(24,10) DEFAULT NULL,
  `omega_mask_qua` double(24,10) DEFAULT NULL,
  `maxloop_smo` double(24,10) DEFAULT NULL,
  `threshold` double(24,10) DEFAULT NULL,
  `tr` double(24,10) DEFAULT NULL,
  `a_source` double(24,10) DEFAULT NULL,
  `core_num` double(24,10) DEFAULT NULL,
  `input_mask` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `input_mask_hash` varchar(200) DEFAULT NULL COMMENT 'input_mask文件的Hash值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='SMO模块的仿真参数';

#
# Data for table "gd_parameter_smo"
#

INSERT INTO `gd_parameter_smo` VALUES (1,'999',201.0000000000,11.0000000000,0.8000000000,0.0707000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,1.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'a147b8bf-388b-481d-bfd4-16a0c868ae8a-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-20 22:51:05','2018-03-20 22:51:05'),(2,'999',201.0000000000,11.0000000000,0.8000000000,0.0707000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,1.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'71dbaf12-f2e6-44c2-9f6a-7e7cc38e6847-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-20 22:54:28','2018-03-20 22:54:28'),(3,'999',201.0000000000,11.0000000000,0.8000000000,0.0707000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,1.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'e5eaacd5-9259-424c-8951-fbdc11295e2e-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-21 09:27:34','2018-03-21 09:27:34'),(5,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,1.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'de61ccd5-761c-4c16-96fb-d45f56d5816e-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-21 10:47:48','2018-03-21 10:47:48'),(9,'999',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,1.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'3844f372-7c91-4b31-8ad3-c0f9ffc2f45d-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-21 22:44:55','2018-03-21 22:44:55'),(10,'222',201.0000000000,11.0000000000,0.6400000000,0.0050000000,1.4240000000,1.8350000000,13.5000000000,0.2400000000,0.8400000000,0.1690000000,0.2500000000,4.0000000000,0.0300000000,0.0010000000,0.1000000000,0.1000000000,0.0005000000,2.0000000000,100.0000000000,0.2500000000,25.0000000000,4.0000000000,'4034fcff-b43f-4136-947a-f6d1730dc3d0-target4.mat','e5ac5a0f02e1e4f68ae8c11b164d0c11','2018-03-29 18:27:47','2018-03-29 18:27:47');

#
# Structure for table "gd_permission"
#

DROP TABLE IF EXISTS `gd_permission`;
CREATE TABLE `gd_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) NOT NULL DEFAULT '' COMMENT '权限名字',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '创建者姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "gd_permission"
#


#
# Structure for table "gd_r_role_permission"
#

DROP TABLE IF EXISTS `gd_r_role_permission`;
CREATE TABLE `gd_r_role_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色表id',
  `permission_id` int(11) NOT NULL COMMENT '权限表id',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '创建者姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "gd_r_role_permission"
#


#
# Structure for table "gd_r_user_role"
#

DROP TABLE IF EXISTS `gd_r_user_role`;
CREATE TABLE `gd_r_user_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表id',
  `role_id` int(11) NOT NULL COMMENT '角色表id',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '创建者姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

#
# Data for table "gd_r_user_role"
#

INSERT INTO `gd_r_user_role` VALUES (1,1,1,'侯豪',NULL,NULL),(2,1,2,NULL,NULL,NULL),(3,1,3,NULL,NULL,NULL),(4,1,4,NULL,NULL,NULL),(5,19,1,NULL,NULL,NULL),(15,6,5,'张晔','2018-03-05 14:15:41','2018-03-05 14:15:41'),(16,7,3,'张晔','2018-03-05 14:42:10','2018-03-05 14:42:10'),(17,8,3,'张晔','2018-03-05 14:42:31','2018-03-05 14:42:31'),(20,23,3,'张晔','2018-03-05 14:48:45','2018-03-05 14:48:45'),(21,6,3,'张晔','2018-03-05 20:24:07','2018-03-05 20:24:07'),(22,29,3,'张晔','2018-03-05 20:47:14','2018-03-05 20:47:14'),(23,29,4,'张晔','2018-03-05 20:47:15','2018-03-05 20:47:15'),(24,25,3,'张晔','2018-03-05 20:59:45','2018-03-05 20:59:45'),(25,17,3,'张晔','2018-03-05 20:59:59','2018-03-05 20:59:59'),(26,21,3,'张晔','2018-03-06 10:24:54','2018-03-06 10:24:54'),(30,42,6,'侯豪','2018-03-06 12:38:24','2018-03-06 12:38:24'),(31,42,5,'侯豪','2018-03-06 12:39:09','2018-03-06 12:39:09'),(32,45,3,'侯豪','2018-03-09 15:33:42','2018-03-09 15:33:42'),(33,25,4,'侯豪','2018-03-11 14:36:45','2018-03-11 14:36:45'),(34,30,4,'侯豪','2018-03-12 09:07:47','2018-03-12 09:07:47'),(35,35,3,'侯豪','2018-03-12 09:10:45','2018-03-12 09:10:45'),(36,37,4,'侯豪','2018-03-12 09:12:21','2018-03-12 09:12:21'),(37,46,3,'侯豪','2018-03-12 11:31:52','2018-03-12 11:31:52'),(38,47,1,NULL,NULL,NULL),(39,48,1,NULL,NULL,NULL),(41,6,4,'侯豪','2018-03-13 10:05:38','2018-03-13 10:05:38'),(44,49,3,'侯豪','2018-03-13 10:23:04','2018-03-13 10:23:04'),(46,38,5,'侯豪','2018-03-27 13:49:56','2018-03-27 13:49:56'),(47,50,1,NULL,NULL,NULL);

#
# Structure for table "gd_result_opc"
#

DROP TABLE IF EXISTS `gd_result_opc`;
CREATE TABLE `gd_result_opc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameters_id` int(11) NOT NULL DEFAULT '0' COMMENT '该次仿真对应的参数',
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '该次仿真的用户账号',
  `error_mat` varchar(500) DEFAULT NULL COMMENT 'error.mat的文件路径',
  `error_weight_mat` varchar(500) DEFAULT NULL COMMENT 'error_weight.mat的文件路径',
  `error_convergence_weight_png` varchar(500) DEFAULT NULL COMMENT 'error_convergence_weight.png的文件路径',
  `mask_pattern_mat` varchar(500) DEFAULT NULL COMMENT 'mask_pattern.mat的文件路径',
  `print_image_mat` varchar(500) DEFAULT NULL COMMENT 'print_image.mat的文件路径',
  `source_pattern_mat` varchar(500) DEFAULT NULL COMMENT 'source_pattern.mat的文件路径',
  `mask_pattern_png` varchar(500) DEFAULT NULL COMMENT 'mask_binary.png的文件路径',
  `print_image_png` varchar(500) DEFAULT NULL COMMENT 'print_image.png的文件路径',
  `source_pattern_png` varchar(500) DEFAULT NULL COMMENT 'source_pattern.png的文件路径',
  `error_convergence_png` varchar(500) DEFAULT NULL COMMENT 'error_convergence.png的文件路径',
  `create_time` datetime DEFAULT NULL COMMENT '仿真结果存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='OPC模块仿真结果';

#
# Data for table "gd_result_opc"
#

INSERT INTO `gd_result_opc` VALUES (1,5,'222','03abb477-0223-4d88-89a4-99b5be570c4b-error.mat','0cc1cf62-eed3-4558-a829-d2bc5bed711f-error_weight.mat','23613e92-51f4-45a4-9dd6-ea1762547be6-error_convergence_weight.png','62ee6d0a-cbb6-4b48-96a6-6660eadc996d-mask_pattern.mat','db61fa84-2ddf-4abb-8ad1-73589f8eb86f-print_image.mat','4afe4091-cece-4569-9642-f66e69eac255-source_pattern.mat','207e1a3e-71eb-454c-a730-c78bd0aa0708-mask_pattern.png','b74e2e84-f25b-4ab8-a4c4-81210b3eb7b1-print_image.png','af33ea1c-9583-4537-b96a-10f309d1d1e9-source_pattern.png','09fa0da4-1f23-4428-a865-6662e73a979b-error_convergence.png','2018-03-21 14:55:02'),(2,6,'222','f860b1a5-db6f-4997-933c-2cecf733da3b-error.mat','d4089d77-8705-40ab-b64d-0c2ffdc77384-error_weight.mat','c4c7737e-bcd3-4cb2-a461-f7b59b9a6d7b-error_convergence_weight.png','f99063b6-7b37-46e3-b012-8a59bd3cc9ff-mask_pattern.mat','535a3768-764a-4378-a8ce-6a734145c5f0-print_image.mat','7b76b0e7-d061-46ca-88d2-98211b1b8998-source_pattern.mat','dbab8084-0be7-4fa8-9abf-aff669698930-mask_pattern.png','720f215d-94af-48de-ac96-623b972ed703-print_image.png','423776e2-c54c-4475-ad58-29bbdf4dd163-source_pattern.png','14c2a0b1-f8d5-4432-a720-f15037fa214a-error_convergence.png','2018-03-21 14:56:39'),(3,7,'222','5296b552-3e92-4c0a-b4e5-71f098f21d90-error.mat','3a62b6e6-c3ec-4cce-a5e1-c7ca3dfe32a0-error_weight.mat','7e2252cb-d6d6-4556-b393-089d5054b7f9-error_convergence_weight.png','2c29e1f2-2edf-4a48-ac73-821fc25b4929-mask_pattern.mat','f9572162-318e-4b4d-ac93-03172b1d0afb-print_image.mat','f0bbfd96-6064-46d9-90f4-a2415850d0c3-source_pattern.mat','21b3bea8-0b0c-4ac9-b699-eea5924c85fd-mask_pattern.png','10075bc3-a0fa-4b5e-a739-9c47ecf0247b-print_image.png','ada7bca6-bb1e-4ab0-baef-6f94317b0c3a-source_pattern.png','5e9e180c-2e1d-479b-9568-5c0aaaf25706-error_convergence.png','2018-03-21 15:58:20'),(4,8,'222','ce37325e-6267-4227-8715-773fa11087ce-error.mat','7fb08a16-fae0-4f2e-857a-a6f3286246e9-error_weight.mat','6ce80036-272c-4f13-a499-7b2e9257c7ab-error_convergence_weight.png','a1158312-58bc-44ba-a2dc-cdc74ad29612-mask_pattern.mat','dceca31e-dc94-4de2-99f9-6bfdb3ac46bd-print_image.mat','b0e1e799-8024-4a7b-8f61-ba203f44aba0-source_pattern.mat','ef17640f-6039-401b-bd2e-d67ef418b49b-mask_pattern.png','f0b129de-005f-4413-8e93-d43c9624354e-print_image.png','fbca98d6-f5a8-469c-8d36-989eddd9b0f3-source_pattern.png','015309ad-1698-408e-9481-bc03faea4114-error_convergence.png','2018-03-21 15:59:37'),(5,9,'222','ae6cd13b-bf74-498f-a2aa-fe5f30d62926-error.mat','2845f124-8f36-4c75-a8ee-790b20a3345e-error_weight.mat','2ab1f6d9-240d-48ef-9183-87023302bcae-error_convergence_weight.png','845a9883-5a78-490d-8ec1-7ea60d9e0636-mask_pattern.mat','73c38735-a78e-48b3-a6ba-78801a2326b7-print_image.mat','9cbe3080-43dc-44b8-b317-9bb7c7104b11-source_pattern.mat','9a0c0a81-e5ca-4625-a314-bc45e83aaaeb-mask_pattern.png','858461b0-c46e-4572-8933-571382426c79-print_image.png','e205c13e-ec52-4f23-98c6-86f4b5f4d48c-source_pattern.png','e7e5c277-3631-44f2-80c3-e56d22252e99-error_convergence.png','2018-03-21 16:06:11'),(6,10,'222','b44c888f-e840-4645-9c68-7d4627cff1ca-error.mat','08b71765-7610-40a4-9d4e-4b684a496f29-error_weight.mat','cdcfa3b3-1149-4b5d-a84b-abe79d112e54-error_convergence_weight.png','b70c930f-7e8c-45ac-ad31-48b12785d451-mask_pattern.mat','c6627ce4-4aef-4868-b674-c65cc8a0dd23-print_image.mat','c4a08a17-5697-4dbf-8f66-78955065f8b0-source_pattern.mat','0b47b0e7-ccb5-44eb-a3a4-535674b46086-mask_pattern.png','5cdac57d-1e68-4d37-abf8-ac572df7a5a0-print_image.png','eb4905de-1366-4466-8996-3bc430d1158f-source_pattern.png','7cdce489-64b2-4797-ab55-1d9a226cbd4f-error_convergence.png','2018-03-21 16:10:45'),(7,11,'222','818a224b-91eb-43b5-8396-edcb7eed540e-error.mat','1803e05c-ea81-43b7-9a76-8dcb50bb00f8-error_weight.mat','90776a2c-be72-4f77-a541-46e48785586f-error_convergence_weight.png','f04a9d96-b1d6-44f4-9961-a511f54f1cbd-mask_pattern.mat','90ebde75-9efc-4073-be2f-dbd984283814-print_image.mat','cc4d8c89-cf26-43ba-b1e0-568d1c831f37-source_pattern.mat','b2752116-91ae-4ff2-ba78-970e72243cb2-mask_pattern.png','c58a9ea0-ea72-4588-8bb2-12ae55afc5ab-print_image.png','bf26e05a-de2b-437f-8423-442833f80ffa-source_pattern.png','7d727ddd-8a3c-4627-aa5d-ee5265889d22-error_convergence.png','2018-03-21 16:12:43'),(8,12,'222','4839c68c-9a06-47d8-a57e-2cf260a482e6-error.mat','ac45fd19-7744-4f0f-b574-a671d286f683-error_weight.mat','7dbe93ad-212f-4b97-84a8-153fd0ad2311-error_convergence_weight.png','ce9218c3-7946-404f-941f-29850dc569a0-mask_pattern.mat','7dd1c5fb-0f4c-4f5c-80ba-c1354145800d-print_image.mat','273ebebb-dd11-4d17-a130-26d947981066-source_pattern.mat','8221c0eb-f879-4aad-a416-f527bffda710-mask_pattern.png','044e8fd8-3551-46f3-b0bb-345addb8667d-print_image.png','bb0e0e98-a48d-4584-86cd-ba33075474ad-source_pattern.png','f5335d9a-1c03-480e-bc8c-2514c9cc3f74-error_convergence.png','2018-03-21 16:15:15'),(9,13,'999','0ed9f93e-9cb3-4cc5-98d9-10ea296de83c-error.mat','44900406-7c86-4ccf-bcce-475cb245b784-error_weight.mat','bb967f2f-c6ff-4aaa-bd96-58dd4d126ea9-error_convergence_weight.png','e8c834de-b1b9-44a0-ad62-b3912ab4c57f-mask_pattern.mat','37be1129-19fd-40ca-8dac-5637739acd0f-print_image.mat','8c05c972-0894-4989-b393-8f540da2ce6e-source_pattern.mat','ccbaec8f-08db-49d0-b751-9f5555351223-mask_pattern.png','60ae93c0-b883-4bd7-9d84-4e7c1edd2836-print_image.png','5ef07eaa-3c68-490c-a5fa-5762d7c456f0-source_pattern.png','388ee432-3460-4080-95fa-bcb876b6737b-error_convergence.png','2018-03-21 18:36:01'),(10,14,'999','ec5984d9-5b02-4657-a18f-ba2ec2965de8-error.mat','341b577b-afc9-4b2e-aa97-86d50b54e3ae-error_weight.mat','ebda2b83-d368-4977-afff-24a766fd5697-error_convergence_weight.png','c11906c7-a242-4266-903a-7701eec5a76f-mask_pattern.mat','f68648bc-595d-44f1-b53c-e3773dc02579-print_image.mat','35709279-d93e-40c4-8b37-82d1eaafc549-source_pattern.mat','f54f3f24-b322-4d76-8677-b215186678cf-mask_pattern.png','1f79b80a-5077-49bc-9035-e5b55336a921-print_image.png','1b4376b8-4805-41d9-a4d9-d1b9e53b0e6f-source_pattern.png','e01752b6-299b-4e52-ac00-6f3e5d06f309-error_convergence.png','2018-03-21 22:37:21'),(11,16,'999','0829f47c-fc84-4b25-a3cf-8571df616d7f-error.mat','bc564a39-857b-4c90-82cd-4bded1291244-error_weight.mat','dc856c93-870f-4402-bc61-9b8b259225c7-error_convergence_weight.png','2c1e1572-5f88-4580-96fe-63b5bc978b5f-mask_pattern.mat','a5ae603c-8432-4d9b-b860-e894d1b33afd-print_image.mat','4797ee76-b451-4a1b-967e-acac07677d0b-source_pattern.mat','6ad0b575-c7a2-4356-acc9-e419fdabd1bf-mask_pattern.png','1cfb66db-81d6-419e-9c80-16f1ab1ffd11-print_image.png','8f62a761-3a6a-41d7-bdb5-8abed362159d-source_pattern.png','1435a331-47eb-4a8c-8355-93ccda4eaf3d-error_convergence.png','2018-03-21 22:43:34'),(12,17,'999','a9499a6e-cf92-4099-ac99-45874231fd76-error.mat','e5c14a85-f60b-49c1-baf4-47dab983bc8e-error_weight.mat','806a2e16-6e69-42d9-a2ed-019c267de43d-error_convergence_weight.png','87581686-d71d-4fb6-96a1-facb136d73f0-mask_pattern.mat','1e6768be-1045-4ebf-a529-4ed179befc70-print_image.mat','de37bce5-a465-4459-a8c3-410cee90a71f-source_pattern.mat','b4cc722b-314a-4131-a848-298649762ebe-mask_pattern.png','23d4fbd0-6b81-47fb-b8ba-2a912abfb36e-print_image.png','0479843e-bf47-48e0-a49e-8b63a8a2121f-source_pattern.png','660113a7-cc91-4cd8-b3a5-cdd644665f23-error_convergence.png','2018-03-21 22:55:12'),(13,18,'999','dc4caff5-3987-44d2-b2a8-ee1cedf9155e-error.mat','824faf1d-e5c2-4131-8761-568faedff523-error_weight.mat','f11b090d-6283-40a2-bd20-6f7a4143128a-error_convergence_weight.png','a923bb4a-b48f-410d-aee8-c304904a6c4a-mask_pattern.mat','6122c0b1-0785-411f-9374-a18b6705e79a-print_image.mat','063117b6-7615-4584-b210-3dbf375ef6d9-source_pattern.mat','dcdbd36a-9430-4538-aba7-54705201afc6-mask_pattern.png','e5707cd1-6711-4cb8-bfeb-c43b1fa97d42-print_image.png','0beff229-fd23-4819-90c5-f155a4068f5c-source_pattern.png','4a016d46-d0fd-47d2-bef8-8a5060142c12-error_convergence.png','2018-03-27 10:35:10'),(14,20,'999','b0515451-9656-4249-a50d-313c5c46c618-error.mat','0555dfeb-5157-45b6-8ea8-7791297ec5a4-error_weight.mat','e292d236-a6c2-4a6c-b554-43e9df28b6ee-error_convergence_weight.png','6181da75-3753-4855-bf65-dd2e4dbca986-mask_pattern.mat','742d1dc8-134d-41c6-add2-1a81430f574f-print_image.mat','e983724c-42db-4b3d-bbc4-e60b7d7f597a-source_pattern.mat','23c49582-d851-4cae-a4cf-e0afa7bbb9cd-mask_pattern.png','05610d56-859e-4a03-8468-5989cc9a16fd-print_image.png','b8943867-4b4b-44e3-8aee-4e105eec791f-source_pattern.png','9201f576-5c17-4024-a208-af316175e5f0-error_convergence.png','2018-03-27 10:44:32'),(15,22,'999','ad725291-ee30-4830-9a38-4cfc7be0b6ef-error.mat','230a59c0-a048-4675-b82d-27061f8162a3-error_weight.mat','28d52395-229b-4573-afaa-82f697c12c16-error_convergence_weight.png','27fffb51-0b34-4726-bc29-69af9e44b6de-mask_pattern.mat','b1fb3546-6c88-4a46-a79d-02bfac4370e5-print_image.mat','d7febf86-5872-4f81-8546-33ff218ee9c8-source_pattern.mat','92f55749-4b3e-4beb-b381-203a17d0db03-mask_pattern.png','da1d10f9-0d0d-40aa-bad0-5de3118b40b3-print_image.png','7b9d0f52-066f-494c-98b4-8b8b8593a589-source_pattern.png','eb91c164-d1bc-42f3-b1be-c9d4384b682e-error_convergence.png','2018-03-27 11:23:13'),(16,23,'222','94c2ee2a-4159-43b9-b7fe-efdc8ef72bfb-error.mat','74925c88-5bdf-4212-9075-cfb024e08f0a-error_weight.mat','6c1777cb-ca76-4242-a644-0e62ca2e7ffa-error_convergence_weight.png','dfe079cb-3688-4bf8-903f-78b530d8c6af-mask_pattern.mat','1ac3f0f9-0336-4d38-a39d-b8d5ef3c6628-print_image.mat','37d4b5e4-9c02-4879-96fc-11041b3d25e8-source_pattern.mat','75cc5102-26dd-42cf-aa60-59286b7393d4-mask_pattern.png','a7b31459-9f11-498c-afc0-2c30b896db4e-print_image.png','37182b34-1cac-45a7-9c3d-b6b7dc0b584e-source_pattern.png','dc45e32e-91f0-4b88-8ffd-b65c2c418b26-error_convergence.png','2018-03-27 11:42:29'),(17,24,'222','2d8963d4-f839-4afd-810e-2f591ee06eda-error.mat','bc670311-e26f-4766-b584-93c40579ea11-error_weight.mat','9604e162-7120-489a-9c47-126493ffe089-error_convergence_weight.png','74dfb717-d715-4e74-8908-a1f77812856b-mask_pattern.mat','2586c36c-5d85-4b39-a713-48037f18d036-print_image.mat','1eff696f-25a6-4486-b5c5-5e2440caa89b-source_pattern.mat','98ff8d5d-4cab-4eeb-861c-56475769dbdd-mask_pattern.png','9ccf27bb-7061-4d88-8fae-8a874fc4398c-print_image.png','f98581ac-d25e-45d9-9c57-0776ce925bdb-source_pattern.png','71ecee22-dd8a-4f99-b9b0-9a079883429e-error_convergence.png','2018-03-27 11:49:32'),(18,25,'222','3c04c387-2704-40fb-b20e-7cada1bf0a9b-error.mat','47f6b4ff-51ef-4071-bd72-91c0355655bc-error_weight.mat','c8c152fc-bdfe-456b-a5de-70a116bf6efa-error_convergence_weight.png','31ae6b12-8c0c-4324-884f-a0bce62b3a2a-mask_pattern.mat','5aa474f3-71ce-4421-9335-c04bbd61ef17-print_image.mat','05d2e6fe-ae6f-4b1c-bc76-b898fadfdd36-source_pattern.mat','b05bfaa1-5cb3-4c37-9c72-72320f330ea2-mask_pattern.png','f730b84a-ecc4-41ac-ad25-e4b67bef3f29-print_image.png','b52ecf70-ebb5-419c-a033-036db51b4dc6-source_pattern.png','b0c072b9-d2e2-4338-b99a-b4690de07256-error_convergence.png','2018-03-27 11:56:08'),(19,26,'999','9ba3e1e1-6f08-498f-b2dc-0038adb815bb-error.mat','1e74b45c-8a89-4bad-8438-338a3012d207-error_weight.mat','f288cd72-e67a-4df0-8ce7-5489c2d30331-error_convergence_weight.png','840ec6ee-69a3-4f5e-8e26-be6ffddc7cba-mask_pattern.mat','f00c224d-f492-4344-9a08-9cb0298b6c90-print_image.mat','048cf09f-f74d-4bfe-9e90-5545c9358be4-source_pattern.mat','7ea2da17-f9cf-40b1-8edb-a4430fad3ab4-mask_pattern.png','17b9591e-f4a2-42d7-b4c1-25cae7f3b218-print_image.png','e3537ec0-4cc3-4fd7-95f2-1ddc2a99cfa5-source_pattern.png','c39fda2b-7382-4402-a305-78193961f77f-error_convergence.png','2018-03-27 13:11:21'),(20,27,'999','dc3795e1-7f99-40a4-b36f-78deb4cb22f1-error.mat','30e835af-e68e-4dec-80fc-da4a18cda532-error_weight.mat','19a7bf72-d8b2-47bd-844b-889f496b8f67-error_convergence_weight.png','3da17fd0-362e-4be6-bd60-77e8c7f8e42e-mask_pattern.mat','f16a65fd-400a-445a-bd2b-ad2f7c7b58aa-print_image.mat','468aaaca-5b12-4688-8792-39a18de4de71-source_pattern.mat','f54d9e20-2ebb-4da3-83c0-379f61e301f4-mask_pattern.png','b3fbd814-4e2a-4160-8534-d8027bc600ce-print_image.png','53187a42-a40b-4226-bf6c-966287faff66-source_pattern.png','595df0f0-8a64-43a0-a2c5-063b7e27bb43-error_convergence.png','2018-03-27 13:38:01');

#
# Structure for table "gd_result_pdod"
#

DROP TABLE IF EXISTS `gd_result_pdod`;
CREATE TABLE `gd_result_pdod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameters_id` int(11) NOT NULL DEFAULT '0',
  `user_no` varchar(50) NOT NULL DEFAULT '',
  `imjxx_png` varchar(500) DEFAULT NULL,
  `imjxy_png` varchar(500) DEFAULT NULL,
  `imjyx_png` varchar(500) DEFAULT NULL,
  `imjyy_png` varchar(500) DEFAULT NULL,
  `rejxx_png` varchar(500) DEFAULT NULL,
  `rejxy_png` varchar(500) DEFAULT NULL,
  `rejyx_png` varchar(500) DEFAULT NULL,
  `rejyy_png` varchar(500) DEFAULT NULL,
  `imjxx_mat` varchar(500) DEFAULT NULL,
  `imjxy_mat` varchar(500) DEFAULT NULL,
  `imjyx_mat` varchar(500) DEFAULT NULL,
  `imjyy_mat` varchar(500) DEFAULT NULL,
  `rejxx_mat` varchar(500) DEFAULT NULL,
  `rejxy_mat` varchar(500) DEFAULT NULL,
  `rejyx_mat` varchar(500) DEFAULT NULL,
  `rejyy_mat` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PDOD模块的仿真结果';

#
# Data for table "gd_result_pdod"
#


#
# Structure for table "gd_result_pwo"
#

DROP TABLE IF EXISTS `gd_result_pwo`;
CREATE TABLE `gd_result_pwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameters_id` int(11) NOT NULL DEFAULT '0' COMMENT '该仿真结果对应的输入参数',
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '该仿真结果对应的用户账号',
  `error_mat` varchar(500) DEFAULT NULL,
  `error_convergence_pupil_png` varchar(500) DEFAULT NULL,
  `mask_pattern_mat` varchar(500) DEFAULT NULL,
  `mask_pattern_png` varchar(500) DEFAULT NULL,
  `print_image_png` varchar(500) DEFAULT NULL,
  `source_pattern_mat` varchar(500) DEFAULT NULL,
  `source_pattern_png` varchar(500) DEFAULT NULL,
  `target_pattern_mat` varchar(500) DEFAULT NULL,
  `target_pattern_png` varchar(500) DEFAULT NULL,
  `theita_pupil_png` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='PWO模块的仿真结果';

#
# Data for table "gd_result_pwo"
#

INSERT INTO `gd_result_pwo` VALUES (1,1,'222','f96bcc82-ffce-4c9c-9f4f-896cd5698dd8-error.mat','64fd4eba-4e8d-4794-9e59-82437d9fda67-error_convergence_pupil.png','7b69e57c-c2c9-4ddf-bd4e-d459ae98e726-mask_pattern.mat','4027c373-b560-4e01-9acd-e3e6c794a52e-mask_pattern.png','36fd2d56-0cc5-4cb0-a3f3-c54c139b0ef9-print_image.png','8fa3abe7-9da3-4696-9e64-253e9ba9d049-source_pattern.mat','a33bf202-81c2-41ee-8225-7933bd23b8c7-source_pattern.png','2462f218-ea70-41ca-b0ad-4802d8465465-target_pattern.mat','aba89d04-7932-40a3-aab6-7fedebaade4e-target_pattern.png','f7361ba9-6cc5-4f6a-b786-343d10f2ba0a-theita_pupil.png',NULL),(2,2,'222','a19b7497-7b59-4870-a9a8-6fe368a19d49-error.mat','6b042d5b-71c8-4e99-bb1c-27b037b30552-error_convergence_pupil.png','84c47218-157d-4c10-9aba-f35516cff8f0-mask_pattern.mat','716dcc8f-c1f6-4167-b1a7-87806278c4f6-mask_pattern.png','1405a00a-114b-4d8e-b8f0-cbce445f603c-print_image.png','60711f50-cd47-4759-93dc-e43ceb6f54a3-source_pattern.mat','236af514-0c3a-40d8-a9b1-30f2cd0ef700-source_pattern.png','d8cae3ae-5f88-428a-8652-28f2e1e36778-target_pattern.mat','94e29a36-d68d-48bb-aeff-a681e013559c-target_pattern.png','135fb79d-02a6-4365-a070-e2a752e178c0-theita_pupil.png',NULL),(3,3,'999','89901da8-0b96-4e00-adb4-5fc5fd769ca3-error.mat','10245884-cf18-4492-9db2-6c62421b721f-error_convergence_pupil.png','f2cc6396-abd6-4bb6-860f-2f8009574422-mask_pattern.mat','d26e1f11-709e-4165-b78f-3331ca347a52-mask_pattern.png','6c986046-2c3c-47fb-9bb7-a73def44bb7d-print_image.png','aea6420b-d511-4eed-9889-c5c44d16a8d4-source_pattern.mat','40b14b52-56d0-47c2-ac61-df41947a07f1-source_pattern.png','aabf168f-731d-4cd5-a09d-66514d529c12-target_pattern.mat','d81fcf8e-74df-4bca-911b-782be11b270f-target_pattern.png','fee1c54b-1bdd-4c88-bc04-34f52750d162-theita_pupil.png',NULL),(4,4,'999','866a2f82-4f57-4f83-8292-130503ff146d-error.mat','09126e9c-fef5-4e9b-9de4-d1abfa924672-error_convergence_pupil.png','4b64336f-4907-4559-a565-1b6d4d6b136c-mask_pattern.mat','e34d7e43-9d50-445b-a682-e6427c780373-mask_pattern.png','5530233d-6e2a-4faa-ba02-925406f0ee90-print_image.png','4e61aeb6-1fd4-4589-b27f-a04ffa012a42-source_pattern.mat','10e18f9d-5ceb-44ff-954c-d43f4b5a7ae3-source_pattern.png','7b824726-fb0c-46a0-9e84-9657ef11e74d-target_pattern.mat','fb4413a7-71b9-4080-968d-49e21e9f41f5-target_pattern.png','511c24e9-f2c9-4bd7-a5a0-8b0b5e1cbb16-theita_pupil.png',NULL);

#
# Structure for table "gd_result_smo"
#

DROP TABLE IF EXISTS `gd_result_smo`;
CREATE TABLE `gd_result_smo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameters_id` int(11) NOT NULL DEFAULT '0' COMMENT '该次仿真对应的参数',
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '该次仿真的用户账号',
  `error_mat` varchar(500) DEFAULT NULL COMMENT 'error.mat的文件路径',
  `error_weight_mat` varchar(500) DEFAULT NULL COMMENT 'error_weight.mat的文件路径',
  `error_convergence_weight_png` varchar(500) DEFAULT NULL COMMENT 'error_convergence_weight.png的文件路径',
  `mask_pattern_mat` varchar(500) DEFAULT NULL COMMENT 'mask_pattern.mat的文件路径',
  `print_image_mat` varchar(500) DEFAULT NULL COMMENT 'print_image.mat的文件路径',
  `source_pattern_mat` varchar(500) DEFAULT NULL COMMENT 'source_pattern.mat的文件路径',
  `mask_pattern_png` varchar(500) DEFAULT NULL COMMENT 'mask_binary.png的文件路径',
  `print_image_png` varchar(500) DEFAULT NULL COMMENT 'print_image.png的文件路径',
  `source_pattern_png` varchar(500) DEFAULT NULL COMMENT 'source_pattern.png的文件路径',
  `error_convergence_png` varchar(500) DEFAULT NULL COMMENT 'error_convergence.png的文件路径',
  `create_time` datetime DEFAULT NULL COMMENT '仿真结果存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='SMO模块仿真结果';

#
# Data for table "gd_result_smo"
#

INSERT INTO `gd_result_smo` VALUES (1,2,'999','0644d8c2-f9e1-4988-9c2e-f4b481b404fb-error.mat','2cac695a-627d-4315-b777-32cc0f0b0c88-error_weight.mat','f2bc0617-706d-40e0-a505-1b38ef92abb4-error_convergence_weight.png','79dc5b01-f400-4e6a-af46-2a4701b16593-mask_pattern.mat','d911ba20-af6b-4da8-b974-223e3ec652ed-print_image.mat','61dccae9-4b55-4f5b-94e2-3a3feaa29b9c-source_pattern.mat','134925de-035b-4da7-96a3-5b232e096db8-mask_pattern.png','2485e6f1-ef8a-486b-95a8-456434dffc45-print_image.png','44bbea94-4518-4748-9c64-7f388b2ca94f-source_pattern.png','0db34efb-4da4-420c-8e8c-b6ec8fb2356e-error_convergence.png','2018-03-20 22:59:54'),(2,3,'999','294bbcb9-3035-4218-96c7-615cf2d6576d-error.mat','3e7e79eb-7152-425c-bd86-848f85fc7054-error_weight.mat','beeaf5a8-4fdb-403b-9a7f-154f89a343f7-error_convergence_weight.png','9e8c6a65-b872-40e8-96de-f4936b56ae3d-mask_pattern.mat','24fbea38-07a8-4a8a-8b8e-038cf0ef4178-print_image.mat','339c0828-7b0a-4bdc-9c2a-9251180d06e7-source_pattern.mat','1933f93a-aa58-44fb-9870-50c1e03d6360-mask_pattern.png','ec451242-57a9-4a19-8a4b-88c7ee39f9e1-print_image.png','d4bd8610-01c7-42f5-979b-1e1784934496-source_pattern.png','0856ea12-babf-48c9-8bb5-1f4db653d81f-error_convergence.png','2018-03-21 09:33:06'),(3,5,'222','6202471b-6ad3-4c0b-9ccf-43fe3a513ede-error.mat','0247c929-0fa1-4a94-801f-30cbe1a66b58-error_weight.mat','1b1d29a5-3007-4212-bd4e-f15621c2c39a-error_convergence_weight.png','0a879a6b-5b87-4d58-bcfe-f76d01a77bc2-mask_pattern.mat','c6035e93-803c-4430-82b2-86767996fdf1-print_image.mat','bef664f7-885c-4532-8a10-a101a520159d-source_pattern.mat','0cc23ce1-0475-4198-9603-249907bde36c-mask_pattern.png','62986d15-75f1-42c2-a0de-038c85ae80dc-print_image.png','c2072464-3fe2-4501-ba00-38634a352f72-source_pattern.png','6ce48077-005f-49e9-afd2-9c3d9d408e42-error_convergence.png','2018-03-21 10:54:06'),(4,10,'222','a352eadf-9e3d-4cff-8a9f-46e9f015522a-error.mat','5cd0f9e6-46a9-4a54-abe6-3ea8fa7a0964-error_weight.mat','3b47adf6-9fdb-4b29-a06f-3c08b4802b74-error_convergence_weight.png','f33f6ea4-628b-450e-8cc9-5c2a8fc969e7-mask_pattern.mat','1e7549ab-1b47-4562-b6dd-94383e30b0e1-print_image.mat','f98d84cb-76a0-4228-879d-1073b200a604-source_pattern.mat','d2a9024e-894e-4d54-ab85-36363a69917b-mask_pattern.png','afa73914-37a6-495e-a4b2-85932f7d4994-print_image.png','1e10e090-78a8-4382-8e7c-fdb5c7fe8519-source_pattern.png','b7c6c74a-b5b6-42bf-9b04-b6452f7d339e-error_convergence.png','2018-03-29 18:39:08');

#
# Structure for table "gd_role"
#

DROP TABLE IF EXISTS `gd_role`;
CREATE TABLE `gd_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名字',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '角色创建者姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "gd_role"
#

INSERT INTO `gd_role` VALUES (1,'admin','侯豪',NULL,NULL),(2,'student','侯豪',NULL,NULL),(3,'smo',NULL,NULL,NULL),(4,'opc',NULL,NULL,NULL),(5,'smpwo',NULL,NULL,NULL),(6,'pdod',NULL,NULL,NULL),(7,'test','侯豪','2018-03-04 20:47:49','2018-03-04 20:47:49');

#
# Structure for table "gd_running_state"
#

DROP TABLE IF EXISTS `gd_running_state`;
CREATE TABLE `gd_running_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '用户账号',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名字',
  `running_status` int(1) NOT NULL DEFAULT '0' COMMENT '0为空闲，1为正在运行',
  `performed_tasks` int(11) NOT NULL DEFAULT '0' COMMENT '成功执行次数',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '最后操作管理员姓名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户各模块运行状态';

#
# Data for table "gd_running_state"
#

INSERT INTO `gd_running_state` VALUES (1,'2018','smo',0,0,'侯豪','2018-03-12 11:29:36','2018-03-12 11:29:36'),(2,'2018','opc',0,0,'侯豪','2018-03-12 11:29:36','2018-03-12 11:29:36'),(3,'2018','pdod',0,0,'侯豪','2018-03-12 11:29:36','2018-03-12 11:29:36'),(4,'2018','smpwo',0,0,'侯豪','2018-03-12 11:29:36','2018-03-12 11:29:36'),(9,'222','smo',0,19,'侯豪','2018-03-12 11:33:42','2018-03-29 18:39:08'),(10,'222','opc',0,11,'侯豪','2018-03-12 11:33:42','2018-03-27 11:56:08'),(11,'222','pdod',0,0,'侯豪','2018-03-12 11:33:42','2018-03-12 11:33:42'),(12,'222','smpwo',0,4,'侯豪','2018-03-12 11:33:42','2018-03-29 18:22:40'),(13,'999','smo',0,16,'侯豪','2018-03-12 11:35:25','2018-03-21 22:47:29'),(14,'999','opc',0,10,'侯豪','2018-03-12 11:35:25','2018-03-27 13:38:01'),(15,'999','pdod',0,1,'侯豪','2018-03-12 11:35:25','2018-03-12 11:35:25'),(16,'999','smpwo',0,3,'侯豪','2018-03-12 11:35:25','2018-03-29 22:39:20'),(17,'888','smo',0,1,'侯豪','2018-03-13 10:06:38','2018-03-13 10:19:24'),(18,'888','opc',0,0,'侯豪','2018-03-13 10:06:38','2018-03-13 10:06:38'),(19,'888','pdod',0,0,'侯豪','2018-03-13 10:06:38','2018-03-13 10:06:38'),(20,'888','smpwo',0,0,'侯豪','2018-03-13 10:06:38','2018-03-13 10:06:38'),(21,'houhao','smo',0,0,'侯豪','2018-03-13 10:55:10','2018-03-13 10:55:10'),(22,'houhao','opc',0,0,'侯豪','2018-03-13 10:55:10','2018-03-13 10:55:10'),(23,'houhao','pdod',0,0,'侯豪','2018-03-13 10:55:10','2018-03-13 10:55:10'),(24,'houhao','smpwo',0,0,'侯豪','2018-03-13 10:55:10','2018-03-13 10:55:10');

#
# Structure for table "gd_simulation_record"
#

DROP TABLE IF EXISTS `gd_simulation_record`;
CREATE TABLE `gd_simulation_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '该次仿真的用户账号',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名字',
  `parameters_id` int(11) NOT NULL DEFAULT '0' COMMENT '仿真历史对应的参数id',
  `result_id` int(11) NOT NULL DEFAULT '0' COMMENT '仿真历史对应的结果id',
  `start_time` datetime DEFAULT NULL COMMENT '仿真开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '仿真结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '仿真记录存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='仿真历史记录';

#
# Data for table "gd_simulation_record"
#

INSERT INTO `gd_simulation_record` VALUES (1,'999','smo',2,1,'2018-03-20 22:54:28','2018-03-20 22:59:54','2018-03-20 22:59:54'),(2,'999','smo',3,2,'2018-03-21 09:27:34','2018-03-21 09:33:06','2018-03-21 09:33:06'),(3,'222','smo',5,3,'2018-03-21 10:47:48','2018-03-21 10:54:06','2018-03-21 10:54:06'),(4,'222','opc',5,1,'2018-03-21 14:54:41','2018-03-21 14:55:01','2018-03-21 14:55:02'),(5,'222','opc',6,2,'2018-03-21 14:56:19','2018-03-21 14:56:39','2018-03-21 14:56:39'),(6,'222','opc',7,3,'2018-03-21 15:57:59','2018-03-21 15:58:19','2018-03-21 15:58:20'),(7,'222','opc',8,4,'2018-03-21 15:59:17','2018-03-21 15:59:37','2018-03-21 15:59:38'),(8,'222','opc',9,5,'2018-03-21 16:05:51','2018-03-21 16:06:11','2018-03-21 16:06:11'),(9,'222','opc',10,6,'2018-03-21 16:10:25','2018-03-21 16:10:45','2018-03-21 16:10:45'),(10,'222','opc',11,7,'2018-03-21 16:12:23','2018-03-21 16:12:43','2018-03-21 16:12:43'),(11,'222','opc',12,8,'2018-03-21 16:14:55','2018-03-21 16:15:15','2018-03-21 16:15:15'),(12,'999','opc',13,9,'2018-03-21 18:35:41','2018-03-21 18:36:01','2018-03-21 18:36:01'),(13,'999','opc',14,10,'2018-03-21 22:29:59','2018-03-21 22:37:21','2018-03-21 22:37:22'),(14,'999','opc',16,11,'2018-03-21 22:40:25','2018-03-21 22:43:34','2018-03-21 22:43:34'),(15,'999','opc',17,12,'2018-03-21 22:48:49','2018-03-21 22:55:12','2018-03-21 22:55:12'),(16,'999','opc',18,13,'2018-03-27 10:32:13','2018-03-27 10:35:10','2018-03-27 10:35:10'),(17,'999','opc',20,14,'2018-03-27 10:39:41','2018-03-27 10:44:32','2018-03-27 10:44:32'),(18,'999','opc',22,15,'2018-03-27 11:20:12','2018-03-27 11:23:13','2018-03-27 11:23:13'),(19,'222','opc',23,16,'2018-03-27 11:37:41','2018-03-27 11:42:29','2018-03-27 11:42:29'),(20,'222','opc',24,17,'2018-03-27 11:44:44','2018-03-27 11:49:32','2018-03-27 11:49:32'),(21,'222','opc',25,18,'2018-03-27 11:51:21','2018-03-27 11:56:08','2018-03-27 11:56:08'),(22,'999','opc',26,19,'2018-03-27 13:07:23','2018-03-27 13:11:21','2018-03-27 13:11:21'),(23,'999','opc',27,20,'2018-03-27 13:33:56','2018-03-27 13:38:01','2018-03-27 13:38:01'),(26,'222','smpwo',1,1,'2018-03-29 17:48:12','2018-03-29 17:53:50','2018-03-29 17:53:50'),(27,'222','smpwo',2,2,'2018-03-29 18:17:05','2018-03-29 18:22:40','2018-03-29 18:22:40'),(28,'222','smo',10,4,'2018-03-29 18:27:47','2018-03-29 18:39:08','2018-03-29 18:39:08'),(29,'999','smpwo',3,3,'2018-03-29 19:54:07','2018-03-29 20:50:41','2018-03-29 20:50:41'),(30,'999','smpwo',4,4,'2018-03-29 21:46:59','2018-03-29 22:39:20','2018-03-29 22:39:20');

#
# Structure for table "gd_user"
#

DROP TABLE IF EXISTS `gd_user`;
CREATE TABLE `gd_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL DEFAULT '' COMMENT '用户学号或工号，用于登录',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '用户密码，MD5加密',
  `name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '用户手机号',
  `status` int(1) DEFAULT '0' COMMENT '0为可用，1为不可用',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '添加该账户的管理员姓名',
  `crate_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

#
# Data for table "gd_user"
#

INSERT INTO `gd_user` VALUES (1,'2120160998','923195b5aa99a6cfd3e26d855ddf34c3','侯豪','15901038182',1,'侯豪',NULL,'2018-03-09 15:08:10'),(6,'2120160999','cd97118633e95914962d0f55ea4982e5','测试2','15901038183',0,'侯豪','2018-03-02 18:03:32','2018-03-05 20:57:17'),(7,'2120160997','ebd58bdd49d79819515cfac330e2ae07','测试','15901038182',0,'侯豪','2018-03-02 18:03:54','2018-03-07 19:16:21'),(15,'21213','c31a9c4dd907cf13cb2ddeefcff8b118','测试','15901038182',0,'侯豪','2018-03-04 19:18:58','2018-03-05 13:20:13'),(19,'111111','8184bc398a289a2a32fdd33ed916d2f7','张晔','13345816015',1,'侯豪','2018-03-05 10:11:44','2018-03-09 11:39:24'),(21,'2222222','27fa36bc820b17f05e71d44fe9e8ed28','q','123',1,'张晔','2018-03-05 14:10:27','2018-03-05 15:49:11'),(23,'888888','3e31c63723d921771429eef05e37719d','冻结了？','13867827777',0,'张晔','2018-03-05 14:47:34','2018-03-06 10:25:04'),(25,'777774','d1fe41bb33a29d5cfc727f72fd35ba42','名字还是要有','13377777777',0,'张晔','2018-03-05 15:11:38','2018-03-09 09:59:57'),(30,'999999','42277b147686fc5efde7c0dd5328c0ab','上帝说要有名字',NULL,0,'张晔','2018-03-06 10:25:49','2018-03-06 10:25:49'),(31,'101','3649efe52eb931a4f991a32285396f1e','哈哈哈',NULL,1,'侯豪','2018-03-06 10:32:22','2018-03-07 19:16:16'),(33,'103','6fc69d6ada83f62fb4abccb2f7c4a482','嘻嘻嘻',NULL,1,'侯豪','2018-03-06 10:32:44','2018-03-09 11:34:20'),(35,'105','0dde6228c9f8d6e7bed69ebd7b37589c','阿斯蒂芬','15901038182',0,'侯豪','2018-03-06 10:38:28','2018-03-12 09:11:57'),(37,'107','f16055caba76c72c6bc903795cd3558e','翻翻',NULL,0,'侯豪','2018-03-06 10:38:47','2018-03-06 10:38:47'),(38,'108','f1c1ac7614b061fc6e9dc4947e0182d7','框架',NULL,0,'侯豪','2018-03-06 10:38:54','2018-03-06 10:38:54'),(39,'109','f0fc8dde3058a078cf183e58baf3e62f','狂欢购',NULL,1,'侯豪','2018-03-06 10:39:10','2018-03-12 19:33:14'),(40,'110','2f698bf742f19d1c59e88765529a1f28','火锅',NULL,0,'侯豪','2018-03-06 10:39:33','2018-03-06 10:39:33'),(41,'111','674a856502389b44c68db8613bdbc21e','新时代',NULL,1,'侯豪','2018-03-06 12:27:58','2018-03-09 13:45:26'),(42,'112','90fd0d872137c70005abd11bda601722','加班','15901038182',0,'侯豪','2018-03-06 12:28:25','2018-03-06 12:58:47'),(43,'12990','01b07017b99f8cd494b18c962f8f22ca','ce',NULL,0,'张晔','2018-03-09 11:37:25','2018-03-09 11:37:25'),(44,'2220161111','a28dc9ca28804010ca773d60e929dba3','满负荷','15901038182',0,'侯豪','2018-03-09 13:44:59','2018-03-09 13:44:59'),(45,'2120170998','3bb3c62e49fedf3ffc45650251533651','测试',NULL,0,'侯豪','2018-03-09 15:32:04','2018-03-09 15:32:04'),(46,'2018','7032b08a5d96544366d438b9f68c13d0','龙井',NULL,0,'侯豪','2018-03-12 11:29:36','2018-03-12 11:29:36'),(47,'222','bcc566f46db3feb10747ea48a8c0493f','张晔','13345816016',0,'侯豪','2018-03-12 11:33:42','2018-03-12 14:29:44'),(48,'999','ce94a07560a32bed95e5b860869a188d','侯豪','15901038182',0,'侯豪','2018-03-12 11:35:25','2018-03-12 11:35:25'),(49,'888','e0a529c047cf4c0b17985bc163ed0b41','按时','',0,'侯豪','2018-03-13 10:06:38','2018-03-13 10:10:03'),(50,'houhao','e4addd30d05064cd0109bdbd195ebbc9','侯豪','15901038182',0,'侯豪','2018-03-13 10:55:10','2018-03-27 14:17:00');
