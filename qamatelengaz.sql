-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 09:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qamatelengaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departement_id` varchar(255) NOT NULL,
  `articles_title_ar` varchar(255) DEFAULT NULL,
  `articles_title_en` varchar(255) DEFAULT NULL,
  `articles_subject_ar` text DEFAULT NULL,
  `articles_subject_en` text DEFAULT NULL,
  `articles_subject_ar2` text DEFAULT NULL,
  `articles_subject_en2` text DEFAULT NULL,
  `articles_isactive` varchar(255) NOT NULL DEFAULT '1',
  `articles_image` varchar(255) DEFAULT NULL,
  `articles_date` varchar(255) DEFAULT NULL,
  `articles_image2` varchar(255) DEFAULT NULL,
  `articles_image3` varchar(255) DEFAULT NULL,
  `articles_image4` varchar(255) DEFAULT NULL,
  `articles_address_ar` varchar(255) DEFAULT NULL,
  `articles_address_en` varchar(255) DEFAULT NULL,
  `articles_rate` varchar(255) DEFAULT NULL,
  `articles_map` varchar(255) DEFAULT NULL,
  `articles_keyword` varchar(255) DEFAULT NULL,
  `articles_desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `departement_id`, `articles_title_ar`, `articles_title_en`, `articles_subject_ar`, `articles_subject_en`, `articles_subject_ar2`, `articles_subject_en2`, `articles_isactive`, `articles_image`, `articles_date`, `articles_image2`, `articles_image3`, `articles_image4`, `articles_address_ar`, `articles_address_en`, `articles_rate`, `articles_map`, `articles_keyword`, `articles_desc`, `created_at`, `updated_at`, `price`) VALUES
(1, '1', 'نبذة عنا', 'About Us', 'تأسست شركة قامات الإنجاز للتشغيل والصيانة في المملكة العربية السعودية للمشاركة في<br />\r\nنمو وتطوير اقتصاد المملكة، وخاصة في مجال التشغيل والصيانة والتنظيف وإدارة المرافق<br />\r\nالتجارية والعامة والخاصة<br />\r\nقدمت خدمات متميزة في مجالات الصيانة والتشغيل والنظافة وتوريد الموارد البشرية والبناء<br />\r\nوالتشييد وإدارة المرافق والضيافة<br />\r\nوتوسعت لتشمل مجموعة من مجالات الأعمال، بما في ذلك التشغيل والصيانة والتنظيف<br />\r\nوالضيافة لجميع القطاعات، مع موظفين مؤهلين ومدربين تدريباً عالياً وذوي خبرة واسعة', 'KA WAS ESTABLISHED IN THE KINGDOM OF SAUDI ARABIA TO<br />\r\nPARTICIPATE IN THE GROWTH AND DEVELOPMENT OF THE<br />\r\nKINGDOM&#039;S ECONOMY, ESPECIALLY IN THE FIELD OF OPERATION,<br />\r\nMAINTENANCE, CLEANING, AND MANAGEMENT OF COMMERCIAL,<br />\r\nPUBLIC, AND PRIVATE FACILITIES.<br />\r\nIT PROVIDED DISTINGUISHED SERVICES IN THE FIELDS OF<br />\r\nMAINTENANCE, CLEANING, SUPPLY OF HUMAN RESOURCES,<br />\r\nBUILDING AND CONSTRUCTION, FACILITIES MANAGEMENT,<br />\r\nOPERATION, AND HOSPITALITY.<br />\r\nIT HAS EXPANDED TO INCLUDE A GROUP OF BUSINESS FIELDS,<br />\r\nINCLUDING OPERATION, MAINTENANCE, CLEANING, AND<br />\r\nHOSPITALITY FOR ALL SECTORS, WITH HIGHLY QUALIFIED,<br />\r\nTRAINED STAFF WITH A FLEXIBLE COMMITMENT COMPATIBLE<br />\r\nWITH THE DESIRES OF ITS CUSTOMERS.', NULL, NULL, 'active', '1746345858about.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:04:18', '2025-05-04 05:04:18', NULL),
(2, '1', 'رؤيتنا', 'OUR VISION', 'نحن نؤمن بأن الرؤية القوية هي المحرك الأساسي للنجاح وأن الإصرار العالي والطموح الكبير يمثلان أساس بناء كيان قوي، كما تحدد<br />\r\nرؤية المملكة العربية السعودية مسارها واستراتيجياتها المستقبلية. وانطلاقاً من هذه الرؤية الواضحة التي وضعها صاحب السمو ولي<br />\r\nالعهد الأمير محمد بن سلمان، فإننا نعمل بشكل جدي على تطوير وتحسين الأساليب وابتكار مفاهيم جديدة تؤدي إلى تحقيق رؤية<br />\r\nالمملكة، وذلك من خلال اعتماد الأساليب الحديثة والمتطورة في خدمات التشغيل والصيانة وتطبيقها بهم على الأرض.', 'WE BELIEVE THAT A STRONG VISION IS THE MAIN DRIVER OF SUCCESS AND THAT HIGH DETERMINATION AND GREAT AMBITION REPRESENT<br />\r\nTHE BASIS FOR BUILDING A STRONG ENTITY, JUST AS THE VISION OF THE KINGDOM OF SAUDI ARABIA DETERMINES ITS FUTURE PATH AND<br />\r\nSTRATEGIES. BASED ON THIS CLEAR VISION SET BY HIS HIGHNESS THE CROWN PRINCЕ МОНАМMED BIN SALMAN, WE ARE WORKING<br />\r\nSERIOUSLY TO DEVELOP AND IMPROVE METHODS AND INNOVATE NEW CONCEPTS THAT LEAD TO ACHIEVING THE KINGDOM&#039;S VISION, BY<br />\r\nADOPTING MODERN AND ADVANCED METHODS IN OPERATION AND MAINTENANCE SERVICES AND APPLYING THEM ON THE GROUND.', NULL, NULL, 'active', '1746346048feature.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:07:28', '2025-05-04 05:07:28', NULL),
(3, '1', 'هدفنا', NULL, 'هدفنا الرئيسي في شركة قامات الإنجاز هو تحقيق الكفاءة العالية في جميع خدمات مشروعنا.<br />\r\nلخدمة الفرد والمجتمع بأفضل طريقة ممكنة. ونحن نسعى باستمرار لتحقيق هذا الهدف الذي<br />\r\nيتطلب العمل الجاد، حيوية ومثابرة مع التركيز على تطبيق أحدث الممارسات والأساليب التشغيلية في<br />\r\nجميع المشاريع والتي نعمل عليها من جميع دول العالم. نحن نضمن الجودة العالية في كل مرحلة<br />\r\nمن مراحل التشغيل والصيانة، بدءًا من طلبات العملاء وحتى تسليم الموظفين.', 'Our main goal at Qamat Al-Injaz Company is to achieve high efficiency in all our project services.<br />\r\nWe aim to serve individuals and the community in the best possible way. We continuously strive to achieve this goal,<br />\r\nwhich requires serious work, vitality, and perseverance, focusing on applying the latest operational practices and methods<br />\r\nin all projects we work on from all over the world. We ensure high quality at every stage<br />\r\nof operation and maintenance &mdash; from customer requests to employee handover.', NULL, NULL, 'active', '1746346352quote.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:12:32', '2025-05-04 05:12:32', NULL),
(4, '2', 'الخدمات الزراعية', 'SERVICES AGRICULTURAL', '', '', '', '', 'active', '1746350646service-14.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:28:01', '2025-05-04 06:24:06', NULL),
(5, '2', 'خدمات المرافقة والخدمات الأمنية', 'SERVICES ESCORTAND SECURITY', '', '', NULL, NULL, 'active', '1746347316service-2.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:28:36', '2025-05-04 05:28:36', NULL),
(6, '2', 'خدمات الإشراف', 'TEAM SUPERVISION', '', '', NULL, NULL, 'active', '1746347350service-3.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:29:10', '2025-05-04 05:29:10', NULL),
(7, '2', 'توفير خبراء و فنيين اعمال صيانة كهربائية', 'MAINTENANCE ELECTRICAL', '', '', NULL, NULL, 'active', '1746347391service-4.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:29:51', '2025-05-04 05:29:51', NULL),
(8, '2', 'خدمات تقديم الطعام', 'CATERING FOOD SERVICES', '', '', NULL, NULL, 'active', '1746347445service-5.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:30:45', '2025-05-04 05:30:45', NULL),
(9, '2', 'خدمات النظافة', 'CLEANING SERVICES', '', '', NULL, NULL, 'active', '1746347480service-6.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:31:20', '2025-05-04 05:31:20', NULL),
(10, '2', 'خدمات الضيافة', 'HOSPITALITY SERVICES', '', '', NULL, NULL, 'active', '1746347641service-1.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:34:01', '2025-05-04 05:34:01', NULL),
(11, '2', 'توفير اعمال صيانة السباكة', 'MAINTENANCE PLUMBING', '', '', NULL, NULL, 'active', '1746347678service-2.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:34:38', '2025-05-04 05:34:38', NULL),
(12, '2', 'توفير خبراء و فنيين التكييف و وحدات التبريد', 'AIR CONDITIONING & REFRIGERATION', '', '', NULL, NULL, 'active', '1746347722service-3.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:35:22', '2025-05-04 05:35:22', NULL),
(13, '2', 'توفير خدمات المجال الطبي', 'MEDICAL FIELDS', '', '', NULL, NULL, 'active', '1746347752service-4.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:35:52', '2025-05-04 05:35:52', NULL),
(14, '3', NULL, NULL, '', '', NULL, NULL, 'active', '1746348037team-1.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:40:37', '2025-05-04 05:40:37', NULL),
(15, '3', NULL, NULL, '', '', NULL, NULL, 'active', '1746348046team-2.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:40:46', '2025-05-04 05:40:46', NULL),
(16, '3', NULL, NULL, '', '', NULL, NULL, 'active', '1746348054team-3.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:40:54', '2025-05-04 05:40:54', NULL),
(18, '3', NULL, NULL, '', '', NULL, NULL, 'active', '1746348072team-4.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 05:41:12', '2025-05-04 05:41:12', NULL),
(19, '1', 'تصميمات ابداعية', 'Creative Designers', 'استشارة مجانية', 'Free Consultation', 'دعم فني', 'Customer Support', 'active', NULL, '2025,04th May,(Sun) ', NULL, NULL, NULL, 'منتجات عالية الجودة', 'Quality Products', NULL, NULL, NULL, NULL, '2025-05-04 09:19:14', '2025-05-04 09:19:14', NULL),
(20, '1', 'رسالتنا', 'Our Mission', 'بدأت الفكرة من خلال شففي بالعمل وتولد عن ذلك تأسيس شركة مختصة بالتشغيل<br />\r\nوالصيانة والموارد البشرية وبفضل من الله ومن ثم فريق العمل تم تحويل هذه المنشأة<br />\r\nالصغيرة الي صرح كبير ورائد في مجال التشغيل والصيانة ونسعي جاهدين لنكون في<br />\r\nطليعة الشركات العاملة في نفس المجال وبرؤية ومفهوم مختلف يواكب رؤية مملكتنا<br />\r\nالغالية ...<br />\r\n<br />\r\nسلطان العقلا', 'THE IDEA BEGAN THROUGH MY PASSION FOR WORK,<br />\r\nAND THIS RESULTED IN THE ESTABLISHMENT OF A<br />\r\nCOMPANY SPECIALIZING IN OPERATION MAINTENANCE,<br />\r\nAND HUMAN RESOURCES. THANKS TO GOD AND THEN THE WORK<br />\r\nTEAM, THIS SMALL FACILITY WAS TRANSFORMED INTO A LARGE<br />\r\nAND PIONEERING EDIFICE IN THE FIELD OF OPERATION AND<br />\r\nMAINTENANCE. WE STRIVE TO BE AT THE FOREFRONT OF<br />\r\nCOMPANIES WORKING IN THE SAME FIELD AND WITH A<br />\r\nDIFFERENT VISION AND CONCEPT THAT KEEPS UP WITH THE<br />\r\nVISION OF OUR KINGDOM.<br />\r\n<br />\r\nSULTAN ALOQLA', '', '', 'active', '1746363939team-25.jpg', '2025,04th May,(Sun) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 09:43:00', '2025-05-04 10:05:39', NULL),
(21, '4', NULL, NULL, '', '', NULL, NULL, 'active', '1746430509Untitled-1-39.jpg', '2025,05th May,(Mon) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-05 04:35:09', '2025-05-05 04:35:09', NULL),
(22, '4', NULL, NULL, '', '', NULL, NULL, 'active', '1746430520Untitled-1-40.jpg', '2025,05th May,(Mon) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-05 04:35:20', '2025-05-05 04:35:20', NULL),
(23, '4', NULL, NULL, '', '', NULL, NULL, 'active', '1746430527Untitled-1-41.jpg', '2025,05th May,(Mon) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-05 04:35:27', '2025-05-05 04:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_fatherid` varchar(255) DEFAULT NULL,
  `department_title_ar` varchar(255) DEFAULT NULL,
  `department_title_en` varchar(255) DEFAULT NULL,
  `department_isactive` varchar(255) DEFAULT NULL,
  `department_isbranch` varchar(255) DEFAULT NULL,
  `department_showdate` varchar(255) DEFAULT NULL,
  `department_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_fatherid`, `department_title_ar`, `department_title_en`, `department_isactive`, `department_isbranch`, `department_showdate`, `department_image`, `created_at`, `updated_at`, `price`) VALUES
(1, NULL, 'مقالات', 'articles', 'active', 'inactive', NULL, NULL, '2025-05-04 05:02:21', '2025-05-04 05:02:21', NULL),
(2, NULL, 'خدماتنا', 'Our Services', 'active', 'inactive', NULL, NULL, '2025-05-04 05:15:53', '2025-05-04 05:15:53', NULL),
(3, NULL, 'عملائنا', 'OUR CUSTOMERS', 'active', 'inactive', NULL, NULL, '2025-05-04 05:39:14', '2025-05-04 05:39:14', NULL),
(4, NULL, 'معرض الصور', 'slider', 'active', 'inactive', NULL, NULL, '2025-05-05 04:34:25', '2025-05-05 04:34:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `articleID` varchar(255) DEFAULT NULL,
  `transactionID` varchar(255) DEFAULT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_29_121110_create_articles_table', 1),
(7, '2022_09_29_121334_create_departments_table', 1),
(8, '2022_09_29_121641_create_settings_table', 1),
(9, '2022_09_29_133515_add_rule_id_to_users_table', 1),
(10, '2022_10_03_110006_add_price_to_articles_table', 1),
(11, '2022_10_03_110920_add_price_to_departments_table', 1),
(12, '2022_10_08_161247_create_orders_table', 1),
(13, '2022_10_30_152738_create_testominals_table', 1),
(14, '2022_12_06_115412_create_contact_us_table', 1),
(15, '2024_12_09_113139_create_donates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `clinic` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_title_ar` text DEFAULT NULL,
  `setting_title_en` text DEFAULT NULL,
  `setting_site_email` text DEFAULT NULL,
  `setting_keywords` text DEFAULT NULL,
  `setting_description` text DEFAULT NULL,
  `setting_site_address_ar` text DEFAULT NULL,
  `setting_site_address_en` text DEFAULT NULL,
  `setting_googlemap` text DEFAULT NULL,
  `setting_facebookurl` text DEFAULT NULL,
  `setting_twitterurl` text DEFAULT NULL,
  `setting_googleplusurl` text DEFAULT NULL,
  `setting_instgramurl` text DEFAULT NULL,
  `setting_snapchaturl` varchar(255) DEFAULT NULL,
  `setting_linkedinurl` varchar(255) DEFAULT NULL,
  `setting_youtubeurl` varchar(255) DEFAULT NULL,
  `setting_whatsappurl` varchar(255) DEFAULT NULL,
  `setting_sitetell1` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_title_ar`, `setting_title_en`, `setting_site_email`, `setting_keywords`, `setting_description`, `setting_site_address_ar`, `setting_site_address_en`, `setting_googlemap`, `setting_facebookurl`, `setting_twitterurl`, `setting_googleplusurl`, `setting_instgramurl`, `setting_snapchaturl`, `setting_linkedinurl`, `setting_youtubeurl`, `setting_whatsappurl`, `setting_sitetell1`, `created_at`, `updated_at`) VALUES
(1, 'قامات الانجاز', 'KHAMAT AL ENJAS COMPANY', 'Info@khamatalenjas.com', NULL, NULL, 'المملكة العربية السعودية ، الرياض شارع عثمان بن عفان', 'SAUDI ARABIA, RIYADH OTHMAN BIN AFFAN ROAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+966 55 561 4741', '2025-05-04 04:24:52', '2025-05-04 06:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `testominals`
--

CREATE TABLE `testominals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback` text DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rule_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `rule_id`) VALUES
(1, 'admin', 'admin@info.com', NULL, '$2y$12$VEUtBAx.RhpKO9wMyNODu.BOqLfJ1BBzex5/mpKrh1RFuGGJcktXa', NULL, '2025-04-30 09:27:38', '2025-04-30 09:27:38', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testominals`
--
ALTER TABLE `testominals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testominals_user_id_unique` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donates`
--
ALTER TABLE `donates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testominals`
--
ALTER TABLE `testominals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
