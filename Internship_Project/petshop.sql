-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 06:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add adoptdetails', 7, 'add_adoptdetails'),
(26, 'Can change adoptdetails', 7, 'change_adoptdetails'),
(27, 'Can delete adoptdetails', 7, 'delete_adoptdetails'),
(28, 'Can view adoptdetails', 7, 'view_adoptdetails'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add login', 9, 'add_login'),
(34, 'Can change login', 9, 'change_login'),
(35, 'Can delete login', 9, 'delete_login'),
(36, 'Can view login', 9, 'view_login'),
(37, 'Can add myorder', 10, 'add_myorder'),
(38, 'Can change myorder', 10, 'change_myorder'),
(39, 'Can delete myorder', 10, 'delete_myorder'),
(40, 'Can view myorder', 10, 'view_myorder'),
(41, 'Can add otp code', 11, 'add_otpcode'),
(42, 'Can change otp code', 11, 'change_otpcode'),
(43, 'Can delete otp code', 11, 'delete_otpcode'),
(44, 'Can view otp code', 11, 'view_otpcode'),
(45, 'Can add petdetails', 12, 'add_petdetails'),
(46, 'Can change petdetails', 12, 'change_petdetails'),
(47, 'Can delete petdetails', 12, 'delete_petdetails'),
(48, 'Can view petdetails', 12, 'view_petdetails'),
(49, 'Can add productdetails', 13, 'add_productdetails'),
(50, 'Can change productdetails', 13, 'change_productdetails'),
(51, 'Can delete productdetails', 13, 'delete_productdetails'),
(52, 'Can view productdetails', 13, 'view_productdetails'),
(53, 'Can add shop_details', 14, 'add_shop_details'),
(54, 'Can change shop_details', 14, 'change_shop_details'),
(55, 'Can delete shop_details', 14, 'delete_shop_details'),
(56, 'Can view shop_details', 14, 'view_shop_details'),
(57, 'Can add trainerdetails', 15, 'add_trainerdetails'),
(58, 'Can change trainerdetails', 15, 'change_trainerdetails'),
(59, 'Can delete trainerdetails', 15, 'delete_trainerdetails'),
(60, 'Can view trainerdetails', 15, 'view_trainerdetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_adoptdetails`
--

CREATE TABLE `customer_adoptdetails` (
  `id` int(11) NOT NULL,
  `pet_id` varchar(40) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `shop_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_adoptdetails`
--

INSERT INTO `customer_adoptdetails` (`id`, `pet_id`, `pet_type`, `breed`, `customer_id`, `customer_name`, `shop_id`) VALUES
(1, '1', 'Dog', 'Golden Retriever', '1', 'shriharshcollege@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_customer`
--

CREATE TABLE `customer_customer` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `customer_mobile` varchar(20) NOT NULL,
  `customer_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_customer`
--

INSERT INTO `customer_customer` (`id`, `customer_id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`) VALUES
(1, '1', 'Shriharsh Pattar', 'shriharshcollege@gmail.com', '6362550765', 'H.No 72, 3rd Cross, Sai Nagar, Kelageri Road, Dharwad');

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE `customer_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_login`
--

INSERT INTO `customer_login` (`id`, `username`, `password`, `type`) VALUES
(1, 'owner', 'owner', 'owner'),
(2, 'shriharshcollege@gmail.com', '6362550765', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `customer_myorder`
--

CREATE TABLE `customer_myorder` (
  `id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL,
  `customer_id` varchar(40) NOT NULL,
  `product_id` varchar(40) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_myorder`
--

INSERT INTO `customer_myorder` (`id`, `order_id`, `customer_id`, `product_id`, `quantity`, `Date`) VALUES
(1, '1', 'shriharshcollege@gmail.com', '1', 'Quantity: 1', '2022-10-09T15:48');

-- --------------------------------------------------------

--
-- Table structure for table `customer_otpcode`
--

CREATE TABLE `customer_otpcode` (
  `id` int(11) NOT NULL,
  `otp_code` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_petdetails`
--

CREATE TABLE `customer_petdetails` (
  `id` int(11) NOT NULL,
  `pet_id` varchar(40) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `pet_gender` varchar(30) NOT NULL,
  `color` varchar(20) NOT NULL,
  `condition` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_petdetails`
--

INSERT INTO `customer_petdetails` (`id`, `pet_id`, `pet_type`, `breed`, `pet_gender`, `color`, `condition`, `photo`) VALUES
(1, '1', 'Dog', 'Golden Retriever', 'male', 'Golden Brown', 'Healthy', 'documents/vander-films-aPvB8KMIh5w-unsplash.jpg'),
(2, '2', 'Cat', 'Persian', 'Female', 'Black', 'Healthy', 'documents/ricardo-iv-tamayo-dwS880MZe3k-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_productdetails`
--

CREATE TABLE `customer_productdetails` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `expirydate` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_productdetails`
--

INSERT INTO `customer_productdetails` (`id`, `product_id`, `product_name`, `expirydate`, `price`, `photo`) VALUES
(1, '1', 'Pedigree', '2022-12-21', 'Rs.499', 'documents/pedigree.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_shop_details`
--

CREATE TABLE `customer_shop_details` (
  `id` int(11) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_address` varchar(100) NOT NULL,
  `shop_telephone` varchar(20) NOT NULL,
  `shop_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_shop_details`
--

INSERT INTO `customer_shop_details` (`id`, `shop_id`, `shop_name`, `shop_address`, `shop_telephone`, `shop_email`) VALUES
(1, '1', 'Pawstreet', 'Pavan park , Sadhankeri , kelgeri road, Dharwad', '9021133708', 'pawstreet01@gmail.com'),
(2, '1', 'Pawstreet', 'Pavan park , Sadhankeri , kelgeri road, Dharwad', '9021133708', 'pawstreet01@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer_trainerdetails`
--

CREATE TABLE `customer_trainerdetails` (
  `id` int(11) NOT NULL,
  `trainer_id` varchar(30) NOT NULL,
  `trainer_name` varchar(40) NOT NULL,
  `trainer_mobile` varchar(20) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `training_cost` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_trainerdetails`
--

INSERT INTO `customer_trainerdetails` (`id`, `trainer_id`, `trainer_name`, `trainer_mobile`, `pet_type`, `training_cost`) VALUES
(1, '1', 'Yash', '9087663428', 'Dog', 'Rs.1999');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'customer', 'adoptdetails'),
(8, 'customer', 'customer'),
(9, 'customer', 'login'),
(10, 'customer', 'myorder'),
(11, 'customer', 'otpcode'),
(12, 'customer', 'petdetails'),
(13, 'customer', 'productdetails'),
(14, 'customer', 'shop_details'),
(15, 'customer', 'trainerdetails'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-09 08:25:07.054751'),
(2, 'auth', '0001_initial', '2022-10-09 08:25:07.242079'),
(3, 'admin', '0001_initial', '2022-10-09 08:25:07.640301'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-09 08:25:07.743237'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-09 08:25:07.752587'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-09 08:25:07.824740'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-09 08:25:07.871472'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-09 08:25:07.893472'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-09 08:25:07.902205'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-09 08:25:07.941902'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-09 08:25:07.945903'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-09 08:25:07.953903'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-09 08:25:07.971778'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-09 08:25:07.992180'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-09 08:25:08.011677'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-09 08:25:08.020021'),
(17, 'customer', '0001_initial', '2022-10-09 08:25:08.287769'),
(18, 'sessions', '0001_initial', '2022-10-09 08:25:08.315777');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n4pescuwyj8e8zw1pubf1um57o4cq34h', 'NGRjYmUwZDQxYzNlMjMxODM5N2FjMTAzZDMzNDExOGQ1ODA1NTE2ZTp7InVzZXJuYW1lIjoic2hyaWhhcnNoY29sbGVnZUBnbWFpbC5jb20ifQ==', '2022-10-25 04:50:17.459941');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `customer_adoptdetails`
--
ALTER TABLE `customer_adoptdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_login`
--
ALTER TABLE `customer_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_myorder`
--
ALTER TABLE `customer_myorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_otpcode`
--
ALTER TABLE `customer_otpcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_petdetails`
--
ALTER TABLE `customer_petdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_productdetails`
--
ALTER TABLE `customer_productdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_shop_details`
--
ALTER TABLE `customer_shop_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_trainerdetails`
--
ALTER TABLE `customer_trainerdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_adoptdetails`
--
ALTER TABLE `customer_adoptdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_myorder`
--
ALTER TABLE `customer_myorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_otpcode`
--
ALTER TABLE `customer_otpcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_petdetails`
--
ALTER TABLE `customer_petdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_productdetails`
--
ALTER TABLE `customer_productdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_shop_details`
--
ALTER TABLE `customer_shop_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_trainerdetails`
--
ALTER TABLE `customer_trainerdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
