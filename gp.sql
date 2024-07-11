-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 مايو 2024 الساعة 12:28
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp`
--

-- --------------------------------------------------------

--
-- بنية الجدول `acceptance_criteria`
--

CREATE TABLE `acceptance_criteria` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `gpa_criteria` double(8,2) DEFAULT NULL,
  `distance_criteria` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `admission_requests`
--

CREATE TABLE `admission_requests` (
  `id` int(11) NOT NULL,
  `student_type` varchar(255) DEFAULT NULL,
  `university_id` int(11) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `national_id` varchar(14) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `residence_address` varchar(255) DEFAULT NULL,
  `detailed_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_national_id` varchar(14) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `father_phone_number` varchar(20) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_national_id` varchar(14) DEFAULT NULL,
  `guardian_phone_number` varchar(20) DEFAULT NULL,
  `parents_status` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `level` bigint(20) DEFAULT NULL,
  `previous_academic_year_gpa` double(8,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `university_name` varchar(70) NOT NULL,
  `Housing_in_previous_years` varchar(100) DEFAULT NULL,
  `housing_type` varchar(100) DEFAULT NULL,
  `family_abroad` tinyint(1) DEFAULT NULL,
  `special_needs` tinyint(1) DEFAULT NULL,
  `Secondary_Division` varchar(255) DEFAULT NULL,
  `Total_grades_high_school` float DEFAULT NULL,
  `Passport_number` varchar(100) DEFAULT NULL,
  `Passport_issuing_authority` varchar(255) DEFAULT NULL,
  `category` int(255) DEFAULT NULL,
  `distance` decimal(10,0) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admission_requests`
--

INSERT INTO `admission_requests` (`id`, `student_type`, `university_id`, `nationality`, `national_id`, `name`, `date_of_birth`, `place_of_birth`, `gender`, `religion`, `residence_address`, `detailed_address`, `email`, `mobile_number`, `father_name`, `father_national_id`, `father_occupation`, `father_phone_number`, `guardian_name`, `guardian_national_id`, `guardian_phone_number`, `parents_status`, `college`, `level`, `previous_academic_year_gpa`, `status`, `password`, `university_name`, `Housing_in_previous_years`, `housing_type`, `family_abroad`, `special_needs`, `Secondary_Division`, `Total_grades_high_school`, `Passport_number`, `Passport_issuing_authority`, `category`, `distance`, `date`) VALUES
(83, 'جديد', 2, 'مصري', '12345678901234', 'أحمد محمد', '2000-05-15', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع التحرير، القاهرة', 'ahmed.mohamed@example.com', '01012345678', 'محمد أحمد', '22345678901234', 'مهندس', '01023456789', 'محمد أحمد', '22345678901234', '01023456789', 'متزوج', 'كلية الهندسة', 0, 3.80, 'مقبول', '$2b$10$PgsnwQYgD3UKYmgDM2NAaeHTCUSNmICBmJkYSEs5gyO873BUWiLpW', 'حلوان', 'نعم', 'مميز', 0, 0, 'علمي رياضة', 95, 'A12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(84, 'جديد', 1, 'مصري', '23456789012345', 'منى علي', '2001-02-20', 'الإسكندرية', 'انثي', 'مسيحي', 'مصر', 'شارع مصطفى كامل، الإسكندرية', 'mona.ali@example.com', '01123456789', 'علي مصطفى', '33456789012345', 'طبيب', '01134567890', 'علي مصطفى', '33456789012345', '01134567890', 'متزوج', 'كلية الطب', 0, 4.00, 'لم يتم مراجعة الطلب', '$2b$10$jeRWT5Hlcvow.rUfLduT.OI1P.cxZPtfIaSC3AiYRXoxZp4oHUao.', 'حلوان الاهلية', 'لا', 'مميز', 0, 1, 'علمي علوم', 98.5, 'B12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(85, 'جديد', 2, 'مصري', '34567890123456', 'سعيد إبراهيم', '1999-11-30', 'الجيزة', 'ذكر', 'مسلم', 'مصر', 'شارع الملك فيصل، الجيزة', 'saeed.ibrahim@example.com', '01234567890', 'إبراهيم سعيد', '44567890123456', 'مدرس', '01245678901', 'إبراهيم سعيد', '44567890123456', '01245678901', 'متزوج', 'كلية التجارة', 0, 3.50, 'لم يتم مراجعة الطلب', '$2b$10$XaGBkqYR86xHNanFk4Nxa.64eRot0EYDbfyraLk6PGPXm.jhCH0xi', 'حلوان', 'نعم', 'عادي', 0, 0, 'أدبي', 85, 'C12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(86, 'جديد', 1, 'مصري', '45678901234567', 'ليلى سامي', '2002-04-10', 'طنطا', 'انثي', 'مسلم', 'مصر', 'شارع الجمهورية، طنطا', 'laila.sami@example.com', '01056789012', 'سامي علي', '55678901234567', 'محاسب', '01067890123', 'سامي علي', '55678901234567', '01067890123', 'متزوج', 'كلية الآداب', 0, 3.90, 'لم يتم مراجعة الطلب', '$2b$10$3q6PAu0BWcLifgpPDVmxNeeMDByuLTUfjeHkMYdI7ISjkc06KkcFC', 'حلوان الاهلية', 'لا', 'مميز', 0, 0, 'أدبي', 92, 'D12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(87, 'جديد', 2, 'مصري', '56789012345678', 'محمود حسن', '2001-07-25', 'سوهاج', 'ذكر', 'مسلم', 'مصر', 'شارع النصر، سوهاج', 'mahmoud.hassan@example.com', '01167890123', 'حسن محمود', '66789012345678', 'مهندس زراعي', '01178901234', 'حسن محمود', '66789012345678', '01178901234', 'متزوج', 'كلية الزراعة', 0, 3.70, 'لم يتم مراجعة الطلب', '$2b$10$OK2T.JY9eucjc.sYa7Y4KePZ8RJ8fkPYnPUnED.QYZeNOLnuVbB62', 'حلوان', 'نعم', 'عادي', 0, 1, 'علمي علوم', 90.5, 'E12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(88, 'جديد', 1, 'مصري', '67890123456789', 'نادية عبد الرحمن', '2000-12-05', 'أسيوط', 'انثي', 'مسيحي', 'مصر', 'شارع الوحدة، أسيوط', 'nadia.abdelrahman@example.com', '01278901234', 'عبد الرحمن علي', '77890123456789', 'محامي', '01289012345', 'عبد الرحمن علي', '77890123456789', '01289012345', 'متزوج', 'كلية الحقوق', 0, 3.60, 'لم يتم مراجعة الطلب', '$2b$10$FOOQWL2390H1q.DKczlFue5GBkgxCMwhDQItMk4v31rH68NYuTBM6', 'حلوان الاهلية', 'لا', 'مميز', 0, 0, 'أدبي', 88, 'F12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(89, 'جديد', 2, 'مصري', '78901234567890', 'علي يوسف', '1999-09-15', 'بورسعيد', 'ذكر', 'مسلم', 'مصر', 'شارع 23 يوليو، بورسعيد', 'ali.youssef@example.com', '01089012345', 'يوسف علي', '88901234567890', 'تاجر', '01090123456', 'يوسف علي', '88901234567890', '01090123456', 'متزوج', 'كلية التجارة', 0, 3.40, 'لم يتم مراجعة الطلب', '$2b$10$Qz9H3.HtdfwtWIflaQslCee1NlVZ2p4DwQHydHUW0PdJsnUS2Tws2', 'حلوان', 'نعم', 'عادي', 0, 1, 'علمي رياضة', 87.5, 'G12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(90, 'جديد', 1, 'مصري', '89012345678901', 'ياسمين خالد', '2001-03-12', 'المنصورة', 'انثي', 'مسلم', 'مصر', 'شارع الجيش، المنصورة', 'yasmin.khaled@example.com', '01190123456', 'خالد ياسين', '99012345678901', 'طبيب', '01101234567', 'خالد ياسين', '99012345678901', '01101234567', 'متزوج', 'كلية العلوم', 0, 3.90, 'لم يتم مراجعة الطلب', '$2b$10$4Irw2aMIBYwDyJea28Qfa.vMJyH0FTMKk/XwXtR0oCruT8Tu0BklW', 'حلوان الاهلية', 'نعم', 'عادي', 0, 0, 'علمي علوم', 93.5, 'H12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(91, 'جديد', 1, 'مصري', '22456789012345', 'سارة عبد الله', '2000-01-10', 'الزقازيق', 'انثي', 'مسلم', 'مصر', 'شارع القومية، الزقازيق', 'sara.abdullah@example.com', '01223456789', 'عبد الله سعيد', '33456789012345', 'محاسب', '01234567890', 'عبد الله سعيد', '33456789012345', '01234567890', 'متزوج', 'كلية العلوم', 0, 3.90, 'لم يتم مراجعة الطلب', '$2b$10$OM94rb9VnkFp1YXhZONJk.0DgZqHyotLqeGeGIUtrZEzZalrv9b3a', 'حلوان الاهلية', 'نعم', 'عادي', 0, 0, 'علمي علوم', 94, 'L12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(92, 'جديد', 2, 'مصري', '34557890123456', 'محمد علي', '2001-02-15', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع التحرير، القاهرة', 'mohamed.ali@example.com', '01034567890', 'علي محمد', '44567890123456', 'محامي', '01045678901', 'علي محمد', '44567890123456', '01045678901', 'متزوج', 'كلية الحقوق', 0, 3.50, 'لم يتم مراجعة الطلب', '$2b$10$SpBK8jP0lYtwEBNwNeIlCex5QYdwuJhZDtVxfOg5..dNpPRtDWpAq', 'حلوان', 'لا', 'عادي', 0, 0, 'علمي رياضة', 88, 'M12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(93, 'جديد', 2, 'مصري', '45678601234567', 'سعاد أحمد', '2002-04-20', 'الإسكندرية', 'انثي', 'مسلم', 'مصر', 'شارع البحر، الإسكندرية', 'soad.ahmed@example.com', '01234567891', 'أحمد سعاد', '55678901234567', 'طبيب', '01245678912', 'أحمد سعاد', '55678901234567', '01245678912', 'متزوج', 'كلية الطب', 0, 4.00, 'لم يتم مراجعة الطلب', '$2b$10$PSfjsaw034nlVibU.X5LP.z3iXZJ5Mumb.GVm6iS9tX6s5nagwyQi', 'حلوان', 'نعم', 'مميز', 0, 1, 'علمي علوم', 96, 'N12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(94, 'جديد', 1, 'مصري', '56789812345678', 'أحمد نور', '2000-05-18', 'الجيزة', 'ذكر', 'مسلم', 'مصر', 'شارع النيل، الجيزة', 'ahmed.noor@example.com', '01156789012', 'نور أحمد', '66789012345678', 'مهندس معماري', '01167890123', 'نور أحمد', '66789012345678', '01167890123', 'متزوج', 'كلية الهندسة', 0, 3.80, 'لم يتم مراجعة الطلب', '$2b$10$PHDwRc8NNNZNpnYtzpUsV.jgE7JHSr3VZi8aile0IDrQDuUIM.M0a', 'حلوان الاهلية', 'لا', 'عادي', 0, 0, 'علمي رياضة', 91, 'O12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(95, 'جديد', 2, 'مصري', '67890163456789', 'ليلى مصطفى', '1999-07-07', 'المنيا', 'انثي', 'مسيحي', 'مصر', 'شارع الوحدة، المنيا', 'layla.mostafa@example.com', '01267890123', 'مصطفى ليلى', '77890123456789', 'محاسب', '01278901234', 'مصطفى ليلى', '77890123456789', '01278901234', 'متزوج', 'كلية التجارة', 0, 3.70, 'لم يتم مراجعة الطلب', '$2b$10$JPfQo1GQbc6B.XtifZR60eoyBb1FDRVQcERMfvKjc3fH2R.fCMuM6', 'حلوان', 'نعم', 'عادي', 0, 0, 'أدبي', 85, 'P12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(96, 'جديد', 1, 'مصري', '78901235567890', 'عمرو يوسف', '2001-11-11', 'دمياط', 'ذكر', 'مسلم', 'مصر', 'شارع النصر، دمياط', 'amr.youssef@example.com', '01067890123', 'يوسف عمرو', '88901234567890', 'مدرس', '01078901234', 'يوسف عمرو', '88901234567890', '01078901234', 'متزوج', 'كلية الآداب', 0, 3.60, 'لم يتم مراجعة الطلب', '$2b$10$83FOWJifYLeA.IKTBp.4z.pyhA1.MW7KlRFfDqKdbv2Rh7g0Afy1W', 'حلوان الاهلية', 'لا', 'مميز', 0, 1, 'علمي رياضة', 89, 'Q12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(97, 'جديد', 1, 'مصري', '78901234597890', 'عمرو يوسف', '2001-11-11', 'دمياط', 'ذكر', 'مسلم', 'مصر', 'شارع النصر، دمياط', 'amr.youssef@example.com', '01067890123', 'يوسف عمرو', '88901234567890', 'مدرس', '01078901234', 'يوسف عمرو', '88901234567890', '01078901234', 'متزوج', 'كلية الآداب', 0, 3.60, 'مقبول', '$2b$10$wtopGioLbuRUPPpfg4zhu.TTWum0BY6rVcMExrOVlVeAIEmU2CALu', 'حلوان الاهلية', 'لا', 'مميز', 0, 1, 'علمي رياضة', 89, 'Q12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(98, 'جديد', 2, 'مصري', '89012745678901', 'منى سعيد', '2000-03-22', 'طنطا', 'انثي', 'مسلم', 'مصر', 'شارع الجيش، طنطا', 'mona.saeed@example.com', '01178901234', 'سعيد منى', '99012345678901', 'محاسب', '01189012345', 'سعيد منى', '99012345678901', '01189012345', 'متزوج', 'كلية الآداب', 0, 3.90, 'مقبول', '$2b$10$IeFcrWPZLeSNiolFhJ7ym.oTJ8X0q0LEG25kkPqpfJ9oSHfrBZhsG', 'حلوان', 'نعم', 'عادي', 0, 0, 'أدبي', 92, 'R12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(99, 'جديد', 2, 'مصري', '90123456789012', 'سارة محمود', '2003-08-10', 'الإسماعيلية', 'انثي', 'مسلم', 'مصر', 'شارع المطار، الإسماعيلية', 'sara.mahmoud@example.com', '01090123456', 'محمود سارة', '11234567890123', 'مهندس', '01012345678', 'محمود سارة', '11234567890123', '01012345678', 'متزوج', 'كلية العلوم الإدارية', 0, 3.80, 'لم يتم مراجعة الطلب', '$2b$10$pT2NxXAfGyqhY1N2WHJ7A.laRA0FMGgRnS9078KFGx7MFNWCohk..', 'حلوان', 'نعم', 'عادي', 0, 1, 'أدبي', 89.5, 'T12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(100, 'جديد', 1, 'مصري', '01234567890123', 'أمير عبد الله', '2001-05-25', 'بورسعيد', 'ذكر', 'مسلم', 'مصر', 'شارع النيل، بورسعيد', 'amir.abdullah@example.com', '01101234567', 'عبد الله أمير', '21234567890123', 'مدرس', '01112345678', 'عبد الله أمير', '21234567890123', '01112345678', 'متزوج', 'كلية الهندسة', 0, 3.70, 'مقبول', '$2b$10$MzFf4jGx/Tif3Cs6qhjyTuHzv1fpFsG8NjlJNIFJmm3LG0hxkG2zC', 'حلوان الاهلية', 'لا', 'مميز', 0, 0, 'علمي علوم', 91, 'U12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(101, 'جديد', 2, 'مصري', '12345778901234', 'ياسر خالد', '2002-03-30', 'المنصورة', 'ذكر', 'مسلم', 'مصر', 'شارع الجامعة، المنصورة', 'yasser.khaled@example.com', '01023456789', 'خالد ياسر', '22345678901234', 'مهندس', '01034567890', 'خالد ياسر', '22345678901234', '01034567890', 'متزوج', 'كلية العلوم الطبية', 0, 3.90, 'مقبول', '$2b$10$4im75a9vAOdJJ7VJAimXEufWucM5JIxFnmjpeylZmc9vTS0tv3Rp6', 'حلوان', 'نعم', 'مميز', 0, 1, 'علمي رياضة', 92.5, 'V12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(102, 'جديد', 1, 'مصري', '23456789016745', 'نورا حسين', '2003-01-05', 'أسوان', 'انثي', 'مسلم', 'مصر', 'شارع السلام، أسوان', 'nora.hussein@example.com', '01134567890', 'حسين نورا', '33456789012345', 'طبيب', '01145678901', 'حسين نورا', '33456789012345', '01145678901', 'متزوج', 'كلية الحاسبات وتكنولوجيا المعلومات', 0, 3.60, 'لم يتم مراجعة الطلب', '$2b$10$z1ilhQMPc6Tj42QUDXYsFOiUPB/o9DHBf7D7GaM3tLasJW5nmcsIW', 'حلوان الاهلية', 'نعم', 'عادي', 0, 0, 'أدبي', 88, 'W12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(103, 'جديد', 2, 'مصري', '54567890123456', 'محمد علي', '2001-02-15', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع التحرير، القاهرة', 'mohamed.ali@example.com', '01034567890', 'علي محمد', '44567890123456', 'محامي', '01045678901', 'علي محمد', '44567890123456', '01045678901', 'متزوج', 'كلية الحقوق', 0, 3.50, 'مقبول', '$2b$10$FpQ1/uZG/aOEK4z8fNDQsuFHOL54w1EEZ04CiGkWzxG5f9YQ21F/a', 'حلوان', 'لا', 'عادي', 0, 1, 'علمي رياضة', 88, 'M12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(104, 'جديد', 1, 'مصري', '45678501234567', 'سعاد أحمد', '2002-04-20', 'الإسكندرية', 'انثي', 'مسلم', 'مصر', 'شارع البحر، الإسكندرية', 'soad.ahmed@example.com', '01234567891', 'أحمد سعاد', '55678901234567', 'طبيب', '01245678912', 'أحمد سعاد', '55678901234567', '01245678912', 'متزوج', 'كلية الطب', 0, 4.00, 'لم يتم مراجعة الطلب', '$2b$10$GlgRVgM3rYhAHg9i0/xIPOjnwVL2eTY5.r20wwGc7zsswpC8QQ9XK', 'حلوان الاهلية', 'نعم', 'مميز', 0, 1, 'علمي علوم', 96, 'N12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(105, 'جديد', 2, 'مصري', '56789092345678', 'أحمد محمود', '2000-11-12', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع الشهيد، القاهرة', 'ahmed.mahmoud@example.com', '01056789012', 'محمود أحمد', '66789012345678', 'مهندس', '01056789012', 'محمود أحمد', '66789012345678', '01056789012', 'متزوج', 'كلية الزراعة', 0, 3.70, 'مقبول', '$2b$10$9DSEAPwntJE/LGGpC7XPvedv231./UUb6xz1oJQPWtS5.sCANa6/C', 'حلوان', 'نعم', 'مميز', 0, 0, 'علمي رياضة', 91.5, 'A12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(106, 'جديد', 2, 'مصري', '89012345678951', 'علي رامي', '2001-07-24', 'الإسكندرية', 'ذكر', 'مسلم', 'مصر', 'شارع الأهرام، الإسكندرية', 'ali.ramy@example.com', '01278901234', 'رامي علي', '99012345678901', 'مهندس', '01278901234', 'رامي علي', '99012345678901', '01278901234', 'متزوج', 'كلية العلوم السياسية', 0, 3.60, 'لم يتم مراجعة الطلب', '$2b$10$u89YaQ60k5AMJdA/AIiiN.wBqE3xwfcMl2LYsW8em15iCv/kPt42i', 'حلوان', 'نعم', 'عادي', 0, 0, 'أدبي', 87, 'D12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(107, 'جديد', 2, 'مصري', '11234567890123', 'رامي أحمد', '2003-08-20', 'الغربية', 'ذكر', 'مسلم', 'مصر', 'شارع الجامعة، الغربية', 'ramy.ahmed@example.com', '01023456789', 'أحمد رامي', '11234567890123', 'مهندس', '01023456789', 'أحمد رامي', '11234567890123', '01023456789', 'متزوج', 'كلية الطب', 0, 3.90, 'مقبول', '$2b$10$J4W/SQ2BPvW3Q6FA95jWkuyO3e2NDBX0RtrRm7ITT5L.4F7fEa4BC', 'حلوان', 'نعم', 'مميز', 0, 1, 'علمي', 92, 'F12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(108, 'قديم', 1, 'مصري', '12345678981234', 'محمد علي', '1998-03-25', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع النيل، القاهرة', 'mohamed.ali@example.com', '01012345678', 'علي محمد', '22345678901234', 'مهندس', '01012345678', 'علي محمد', '22345678901234', '01012345678', 'متزوج', 'كلية الهندسة', 0, 3.50, 'لم يتم مراجعة الطلب', '$2b$10$VOiLVCRsvU0OefHRKlcSSOMriduo1ht.cyjMqIf3ZiFJAVdQ1OPLC', 'حلوان الاهلية', 'نعم', 'مميز', 0, 0, 'علمي رياضة', 88.5, 'G12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(109, 'قديم', 2, 'مصري', '23486789012345', 'نور عمر', '1999-07-10', 'الإسكندرية', 'انثي', 'مسلم', 'مصر', 'شارع البحر، الإسكندرية', 'nour.omar@example.com', '01123456789', 'عمر نور', '33456789012345', 'طبيب', '01123456789', 'عمر نور', '33456789012345', '01123456789', 'متزوج', 'كلية الصيدلة', 0, 3.70, 'لم يتم مراجعة الطلب', '$2b$10$.GiRwAOGaUzj0KLKB1g9Ke3qFIfFP/BVO8gqKDHtMMC1ZUFd2VTTW', 'حلوان', 'نعم', 'مميز', 0, 1, 'أدبي', 90, 'H12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(110, 'قديم', 2, 'مصري', '34517890123456', 'ريم مصطفى', '1997-12-03', 'الإسكندرية', 'انثي', 'مسلم', 'مصر', 'شارع الشهيد، الإسكندرية', 'reem.mustafa@example.com', '01034567890', 'مصطفى ريم', '44567890123456', 'محامي', '01034567890', 'مصطفى ريم', '44567890123456', '01034567890', 'متزوج', 'كلية الآداب', 0, 3.80, 'لم يتم مراجعة الطلب', '$2b$10$Mw1E/bMJORvogWzVSznTMu.BV4n3CVOVT8mkn7jKAbOzbuuAnGlje', 'حلوان', 'لا', 'مميز', 0, 0, 'علمي', 91.5, 'I12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(111, 'قديم', 1, 'مصري', '45678901239567', 'عبدالله هاني', '1996-08-15', 'القاهرة', 'ذكر', 'مسلم', 'مصر', 'شارع الجامعة، القاهرة', 'abdullah.hani@example.com', '01145678901', 'هاني عبدالله', '55678901234567', 'مدرس', '01145678901', 'هاني عبدالله', '55678901234567', '01145678901', 'متزوج', 'كلية الحقوق', 0, 3.60, 'مقبول', '$2b$10$qFw5qoNNU.7Kwa.lmrGmAO3ll42PqCA/doTarT6iDYYoY1Zfu5FbO', 'حلوان الاهلية', 'نعم', 'عادي', 0, 1, 'علمي', 88, 'J12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17'),
(113, 'قديم', 2, 'مصري', '67810123456789', 'محمود إبراهيم', '1994-11-12', 'الإسماعيلية', 'ذكر', 'مسلم', 'مصر', 'شارع المدينة، الإسماعيلية', 'mahmoud.ibrahim@example.com', '01167890123', 'إبراهيم محمود', '77890123456789', 'صيدلي', '01167890123', 'إبراهيم محمود', '77890123456789', '01167890123', 'متزوج', 'كلية الهندسة الميكانيكية', 0, 3.70, 'مقبول', '$2b$10$fs1jlw.21bTuNVdgMYQmEOTdmfoCZS3wQOCcc4PlAoUBdR8erzStq', 'حلوان', 'نعم', 'مميز', 0, 1, 'علمي', 89, 'L12345678', 'وزارة الداخلية', NULL, NULL, '2024-05-17');

-- --------------------------------------------------------

--
-- بنية الجدول `application guidelines and approvals`
--

CREATE TABLE `application guidelines and approvals` (
  `id` int(11) NOT NULL,
  `guidelines` text DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `application guidelines and approvals`
--

INSERT INTO `application guidelines and approvals` (`id`, `guidelines`, `university_id`) VALUES
(34, '1) تقدم الطلبات خلال المواعيد المحددة لذلك والتي يعلن عنها بمقر المدن الجامعية أو بموقع الجامعة على الإنترنت ولا يلتفت للطلبات التي ترد بعد الميعاد.\r\n\r\n2) يكون القبول للإقامة بالمدينة الجامعية مقصوراً على عام جامعي واحد وتجدد الطلبات في أول كل عام جامعي مع إرفاق إيصال كهرباء او غاز او تليفون او مياه حديث.\r\n\r\n3) في حالة عدم سداد رسوم التسكين خلال عشرة أيام من تاريخ إعلان نتيجة القبول يعتبر الطالب متنازلاً عن حقه في الإقامة طبقا للائحة المدن الجامعية .\r\n\r\n4) يجوز للطالب التقدم بطلب لإعادة قيده خلال عشرة أيام بعد قرار فصله لعدم التسكين وذلك في حالة وجود أماكن بالمدينة بعد دفع الغرامة المحددة بمعرفة مجلس المدن في كل عام.\r\n\r\n5) يحرم الطالب من الإقامة بالمدن الجامعية إذا لم يسدد الرسوم المستحقة عليه خلال العشرة أيام الأولى من كل شهر ، ويتم إعادة قيد الطالب إذا قدم أسباب قوية تبرر ذلك وبشرط وجود أماكن تسمح بإعادة قيده.\r\n\r\n6) يفصل الطالب نهائياً من الإقامة بالمدن الجامعية إذا تجاوزت مدة غيابه خمسة عشر يوماً متصلة أو ثلاثون يوماً منفصلة، ولا يسمح له بالدخول إلا بعد عذر تقبله الإدارة .\r\n\r\n7) عند ملء الاستمارة و توقيع الطالب على استمارة طلب الإقامة يلزمه بإتباع لوائح وتعليمات مجلس المدن وإدارة المدينة الجامعية والتي تنشر في لوحة الإعلانات\r\n\r\n8) أن يكون خاتم شعار الجمهورية واضح البيانات، وكذلك كتابة البيانات بخط واضح ومطابقة للمستند الأصلي، وعدم الكشط أو الشطب أو استخدام مزيل\r\n\r\n9) إحضار بحث اجتماعي حديث ومعتمد بختم شعار الجمهورية .\r\n\r\n10) عدم وضع الدمغات والطوابع على أي بيانات مكتوبة أو مطبوعة نهائياً .\r\n\r\n11) فى حالة رغبة الطالب التغيب عن المدينة عليه التقدم الى إدارة المدن الجامعية بطلب أجازة مرفق معه بونات التغذية.\r\n\r\n12) لا يحق للطالب التأخير عن المدينة عن الساعة الحادية عشر مساءاً، والطالبات السابعة مساءاً.\r\n\r\n13) الطلاب مسئولون مسئولية كاملة عن نظافة حجراتهم وعلى ما يحدث فيها من تلفيات والحفاظ على المتعلقات الشخصية ( مشغولات ذهبية – مبالغ مالية لابتوب ....الخ ).\r\n\r\n14) بون التغذية شخصي، وعلى الطالب ان يحرر أسمه عليه ورقم الحجرة ولا يحق له إعطائه لأي طالب آخر.\r\n\r\n15) لا يجوز للطالب مغادرة الحجرة إلا إذا كان مرتدياً ملابس لائقة ولا يجوز أن يظهر بالملابس الداخلية بالشرفات و عند تناول الوجبات بالمطعم المركزي .\r\n\r\n16) لا يجوز استقبال الطلاب المقيمين لأي طالب غير مقيم بالمدينة في حجرته وإبراز بطاقة المدينة عند الطلب.\r\n\r\n17) في حالة رغبة الطالب في ترك المدينة يتقدم بطلب إخلاء طرف وتسليم العهدة\r\n\r\n18) للمشرفين الاجتماعيين بالمدينة حق الدخول لحجرة الطالب في أى وقت لمراقبة تطبيق تعليمات الإقامة وكذلك من تحدده الادارة .\r\n\r\n19) لو تم ملاحظه وجود اي كتابات علي جدران الحجرة سيتم الفصل من الاقامة للمقيمين بالحجرة', 1),
(39, '1) تقدم الطلبات خلال المواعيد المحددة لذلك والتي يعلن عنها بمقر المدن الجامعية أو بموقع الجامعة على الإنترنت ولا يلتفت للطلبات التي ترد بعد الميعاد.\r\n\r\n2) يكون القبول للإقامة بالمدينة الجامعية مقصوراً على عام جامعي واحد وتجدد الطلبات في أول كل عام جامعي مع إرفاق إيصال كهرباء او غاز او تليفون او مياه حديث.\r\n\r\n3) في حالة عدم سداد رسوم التسكين خلال عشرة أيام من تاريخ إعلان نتيجة القبول يعتبر الطالب متنازلاً عن حقه في الإقامة طبقا للائحة المدن الجامعية .\r\n\r\n4) يجوز للطالب التقدم بطلب لإعادة قيده خلال عشرة أيام بعد قرار فصله لعدم التسكين وذلك في حالة وجود أماكن بالمدينة بعد دفع الغرامة المحددة بمعرفة مجلس المدن في كل عام.\r\n\r\n5) يحرم الطالب من الإقامة بالمدن الجامعية إذا لم يسدد الرسوم المستحقة    عليه خلال العشرة أيام الأولى من كل شهر ، ويتم إعادة قيد الطالب إذا قدم أسباب قوية تبرر ذلك وبشرط وجود أماكن تسمح بإعادة قيده.\r\n\r\n6) يفصل الطالب نهائياً من الإقامة بالمدن الجامعية إذا تجاوزت مدة غيابه خمسة عشر يوماً متصلة أو ثلاثون يوماً منفصلة، ولا يسمح له بالدخول إلا بعد عذر تقبله الإدارة .\r\n\r\n7) عند ملء الاستمارة و توقيع الطالب على استمارة طلب الإقامة يلزمه بإتباع لوائح وتعليمات مجلس المدن وإدارة المدينة الجامعية والتي تنشر في لوحة الإعلانات\r\n\r\n8) أن يكون خاتم شعار الجمهورية واضح البيانات، وكذلك كتابة البيانات بخط واضح ومطابقة للمستند الأصلي، وعدم الكشط أو الشطب أو استخدام مزيل\r\n\r\n9) إحضار بحث اجتماعي حديث ومعتمد بختم شعار الجمهورية .\r\n\r\n10) عدم وضع الدمغات والطوابع على أي بيانات مكتوبة أو مطبوعة نهائياً .\r\n\r\n11) فى حالة رغبة الطالب التغيب عن المدينة عليه التقدم الى إدارة المدن الجامعية بطلب أجازة مرفق معه بونات التغذية.\r\n\r\n12) لا يحق للطالب التأخير عن المدينة عن الساعة الحادية عشر مساءاً، والطالبات السابعة مساءاً.\r\n\r\n13) الطلاب مسئولون مسئولية كاملة عن نظافة حجراتهم وعلى ما يحدث فيها من تلفيات والحفاظ على المتعلقات الشخصية ( مشغولات ذهبية – مبالغ مالية لابتوب ....الخ ).\r\n\r\n14) بون التغذية شخصي، وعلى الطالب ان يحرر أسمه عليه ورقم الحجرة ولا يحق له إعطائه لأي طالب آخر.\r\n\r\n15) لا يجوز للطالب مغادرة الحجرة إلا إذا كان مرتدياً ملابس لائقة ولا يجوز أن يظهر بالملابس الداخلية بالشرفات و عند تناول الوجبات بالمطعم المركزي .\r\n\r\n16) لا يجوز استقبال الطلاب المقيمين لأي طالب غير مقيم بالمدينة في حجرته وإبراز بطاقة المدينة عند الطلب.\r\n\r\n17) في حالة رغبة الطالب في ترك المدينة يتقدم بطلب إخلاء طرف وتسليم العهدة\r\n\r\n18) للمشرفين الاجتماعيين بالمدينة حق الدخول لحجرة الطالب في أى وقت لمراقبة تطبيق تعليمات الإقامة وكذلك من تحدده الادارة .\r\n\r\n19) لو تم ملاحظه وجود اي كتابات علي جدران الحجرة سيتم الفصل من الاقامة للمقيمين بالحجرة', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `appointments`
--

INSERT INTO `appointments` (`id`, `university_id`, `start_date`, `end_date`, `category`) VALUES
(35, 1, '17/9/2023	', '24/9/2023\n', 'الطلاب الجدد	'),
(37, 1, '10/10/2024', '15/10/2024', 'الطلاب القدامى	'),
(38, 1, '10/10/2024', '10/10/2024', 'الطالبات الجدد	'),
(39, 1, '10/10/2024', '10/10/2024', 'الطالبات القدامى	'),
(40, 2, '24/9/2024\r\n', '30/9/2024\r\n', 'الطلاب الجدد	'),
(41, 2, '5/8/2024', '6/8/2024', 'الطالبات الجدد	'),
(42, 2, '6/8/2024', '6/10/2024', 'الطالبات القدامى'),
(43, 2, '6/11/2024', '7/11/2024', 'الطلاب القدامى');

-- --------------------------------------------------------

--
-- بنية الجدول `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `city_id`, `gender`) VALUES
(12, 'مبني1', 1, 'ذكر'),
(13, 'مبنى2', 1, 'انثي'),
(15, 'مبنى3', 1, 'ذكر'),
(16, 'مبني 4', 1, 'انثي'),
(17, 'مبني 5', 1, 'ذكر');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `Category_ID` int(11) NOT NULL,
  `Category` int(255) DEFAULT NULL,
  `University_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`Category_ID`, `Category`, `University_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `university_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cities`
--

INSERT INTO `cities` (`id`, `name`, `university_id`) VALUES
(1, 'city1', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `complaint_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reviewed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `complaints`
--

INSERT INTO `complaints` (`id`, `student_name`, `complaint_text`, `created_at`, `reviewed`) VALUES
(1, 'احمد', 'عطل في الانترنت', '2024-05-28 20:51:37', 1),
(2, 'محمود احمد', 'في مبني 5 عطل في الانترنت', '2024-05-28 20:53:05', 0);

-- --------------------------------------------------------

--
-- بنية الجدول `countries`
--

CREATE TABLE `countries` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(255) DEFAULT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `Distance` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `countries`
--

INSERT INTO `countries` (`Country_ID`, `Country_Name`, `Category_ID`, `Distance`) VALUES
(36, 'القاهرة', 2, 1.47),
(37, 'الإسكندرية', 6, 21.29),
(38, 'الجيزة', 1, 91.33),
(39, 'المنصورة', 2, 43.54),
(40, 'الإسماعيلية', 4, 5.39),
(41, 'السويس', 7, 10.48),
(42, 'الفيوم', 8, 50.59),
(43, 'بورسعيد', 6, 66.95),
(44, 'الشرقية', 4, 16.64),
(45, 'الدقهلية', 5, 13.70),
(46, 'كفر الشيخ', 1, 10.57),
(47, 'الغربية', 2, 77.50),
(48, 'البحيرة', 2, 77.45),
(49, 'مطروح', 2, 74.05),
(50, 'الأقصر', 1, 9.80),
(51, 'أسوان', 3, 19.71),
(52, 'سوهاج', 1, 86.28),
(53, 'قنا', 1, 61.93),
(54, 'البحر الأحمر', 8, 0.22),
(55, 'بني سويف', 1, 46.85),
(56, 'دمياط', 1, 88.20),
(57, 'الوادي الجديد', 2, 54.20),
(58, 'شمال سيناء', 8, 35.91),
(59, 'جنوب سيناء', 7, 94.45),
(60, 'المنيا', 3, 71.41),
(61, 'بني سويف', 6, 6.71),
(62, 'البحر الأحمر', 4, 84.89),
(63, 'الوادي الجديد', 1, 52.45),
(64, 'شمال سيناء', 5, 32.49),
(65, 'جنوب سيناء', 8, 45.34);

-- --------------------------------------------------------

--
-- بنية الجدول `housing_fees`
--

CREATE TABLE `housing_fees` (
  `id` int(11) NOT NULL,
  `university_name` varchar(255) NOT NULL,
  `housing_type` enum('عادي','مميز') NOT NULL,
  `fees` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `housing_fees`
--

INSERT INTO `housing_fees` (`id`, `university_name`, `housing_type`, `fees`, `created_at`) VALUES
(3, 'حلوان ', 'مميز', 1500, '2024-05-28 21:55:59'),
(4, 'حلوان ', 'عادي', 150, '2024-05-28 21:56:14');

-- --------------------------------------------------------

--
-- بنية الجدول `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meal_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `meals`
--

INSERT INTO `meals` (`meal_id`, `user_id`, `meal_date`) VALUES
(77, 76, '2024-05-17'),
(78, 90, '2024-05-17'),
(79, 93, '2024-05-17'),
(80, 94, '2024-05-17'),
(81, 96, '2024-05-17'),
(82, 98, '2024-05-17'),
(83, 100, '2024-05-17'),
(84, 104, '2024-05-17'),
(85, 106, '2024-05-17'),
(86, 76, '2024-05-24'),
(87, 90, '2024-05-24'),
(88, 93, '2024-05-24'),
(89, 94, '2024-05-24'),
(90, 96, '2024-05-24'),
(91, 76, '2024-05-25'),
(92, 90, '2024-05-25'),
(93, 93, '2024-05-25'),
(94, 94, '2024-05-25'),
(95, 96, '2024-05-25'),
(96, 98, '2024-05-25'),
(97, 100, '2024-05-25'),
(98, 104, '2024-05-25'),
(99, 106, '2024-05-25');

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_number` varchar(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `cap` int(11) NOT NULL,
  `NumberOfResidents` int(11) NOT NULL DEFAULT 0,
  `building_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `type`, `status`, `cap`, `NumberOfResidents`, `building_id`) VALUES
(1, '1', 'مميز', 0, 1, 1, 12),
(2, '2', 'عادي', 0, 2, 2, 12),
(4, '5', 'عادي ', 0, 4, 4, 12),
(5, '1', 'مميز', 0, 6, 6, 12),
(8, '6', 'عادي ', 1, 5, 0, 12),
(9, '4', 'عادي ', 1, 5, 0, 12),
(10, '1', 'عادي ', 1, 5, 0, 13),
(11, '1', 'مميز', 1, 5, 0, 17),
(12, '1', 'عادي', 1, 4, 0, 15),
(13, '2', 'مميز', 1, 1, 0, 13),
(14, '1', 'عادي ', 1, 4, 0, 16),
(15, '3', 'عادي', 1, 4, 0, 13),
(16, '4', 'عادي', 1, 4, 0, 13),
(17, '2', 'مميز', 1, 1, 0, 15),
(18, '3', 'عادي', 1, 4, 0, 15),
(19, '2', 'مميز', 1, 2, 0, 17),
(20, '2', 'مميز', 1, 1, 0, 16),
(21, '3', 'عادي', 1, 5, 0, 16),
(22, '4', 'عادي', 1, 4, 0, 16),
(23, '4', 'عادي', 1, 4, 0, 15),
(24, '5', 'عادي', 1, 1, 0, 16);

-- --------------------------------------------------------

--
-- بنية الجدول `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `universities`
--

INSERT INTO `universities` (`id`, `name`) VALUES
(1, 'حلوان الاهلية'),
(2, 'حلوان ');

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `national_id` varchar(14) NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `role`, `password`, `national_id`, `blocked`, `room_id`) VALUES
(53, 'حسين', 'sabryhusseinhussein@gmail.com', 2, '$2b$10$TOpO3N3l3466vmZT0oowwuF7r.czW7MfeZfYgbY7aR3SVa5/Qb/qe', '30209382108772', 0, NULL),
(59, 'علي', 'hussein@gmali.com', 1, '$2b$10$jSUzx1tyRi2tVH3IXpLk2.a6ln93l6N/1h/Wc8dVx.EAQE5A4FSC2', '12345678910115', 0, NULL),
(65, 'محمد', 'Chef@gmail.com', 3, '$2b$10$g3i4MGuwpTPk/yYhXyR8K.1jA5.f0WW3NW3tctDaAWV13KkBqgEmG', '30209282108772', 0, NULL),
(76, 'أحمد محمد', 'ahmed.mohamed@example.com', 0, '$2b$10$PgsnwQYgD3UKYmgDM2NAaeHTCUSNmICBmJkYSEs5gyO873BUWiLpW', '12345678901234', 0, 4),
(77, 'منى علي', 'mona.ali@example.com', 0, '$2b$10$jeRWT5Hlcvow.rUfLduT.OI1P.cxZPtfIaSC3AiYRXoxZp4oHUao.', '23456789012345', 0, NULL),
(78, 'سعيد إبراهيم', 'saeed.ibrahim@example.com', 0, '$2b$10$XaGBkqYR86xHNanFk4Nxa.64eRot0EYDbfyraLk6PGPXm.jhCH0xi', '34567890123456', 0, NULL),
(79, 'ليلى سامي', 'laila.sami@example.com', 0, '$2b$10$3q6PAu0BWcLifgpPDVmxNeeMDByuLTUfjeHkMYdI7ISjkc06KkcFC', '45678901234567', 0, NULL),
(80, 'محمود حسن', 'mahmoud.hassan@example.com', 0, '$2b$10$OK2T.JY9eucjc.sYa7Y4KePZ8RJ8fkPYnPUnED.QYZeNOLnuVbB62', '56789012345678', 0, NULL),
(81, 'نادية عبد الرحمن', 'nadia.abdelrahman@example.com', 0, '$2b$10$FOOQWL2390H1q.DKczlFue5GBkgxCMwhDQItMk4v31rH68NYuTBM6', '67890123456789', 0, NULL),
(82, 'علي يوسف', 'ali.youssef@example.com', 0, '$2b$10$Qz9H3.HtdfwtWIflaQslCee1NlVZ2p4DwQHydHUW0PdJsnUS2Tws2', '78901234567890', 0, NULL),
(83, 'ياسمين خالد', 'yasmin.khaled@example.com', 0, '$2b$10$4Irw2aMIBYwDyJea28Qfa.vMJyH0FTMKk/XwXtR0oCruT8Tu0BklW', '89012345678901', 0, NULL),
(84, 'سارة عبد الله', 'sara.abdullah@example.com', 0, '$2b$10$OM94rb9VnkFp1YXhZONJk.0DgZqHyotLqeGeGIUtrZEzZalrv9b3a', '22456789012345', 0, NULL),
(85, 'محمد علي', 'mohamed.ali@example.com', 0, '$2b$10$SpBK8jP0lYtwEBNwNeIlCex5QYdwuJhZDtVxfOg5..dNpPRtDWpAq', '34557890123456', 0, NULL),
(86, 'سعاد أحمد', 'soad.ahmed@example.com', 0, '$2b$10$PSfjsaw034nlVibU.X5LP.z3iXZJ5Mumb.GVm6iS9tX6s5nagwyQi', '45678601234567', 0, NULL),
(87, 'أحمد نور', 'ahmed.noor@example.com', 0, '$2b$10$PHDwRc8NNNZNpnYtzpUsV.jgE7JHSr3VZi8aile0IDrQDuUIM.M0a', '56789812345678', 0, NULL),
(88, 'ليلى مصطفى', 'layla.mostafa@example.com', 0, '$2b$10$JPfQo1GQbc6B.XtifZR60eoyBb1FDRVQcERMfvKjc3fH2R.fCMuM6', '67890163456789', 0, NULL),
(89, 'عمرو يوسف', 'amr.youssef@example.com', 0, '$2b$10$83FOWJifYLeA.IKTBp.4z.pyhA1.MW7KlRFfDqKdbv2Rh7g0Afy1W', '78901235567890', 0, NULL),
(90, 'عمرو يوسف', 'amr.youssef@example.com', 0, '$2b$10$wtopGioLbuRUPPpfg4zhu.TTWum0BY6rVcMExrOVlVeAIEmU2CALu', '78901234597890', 0, 5),
(92, 'سارة محمود', 'sara.mahmoud@example.com', 0, '$2b$10$pT2NxXAfGyqhY1N2WHJ7A.laRA0FMGgRnS9078KFGx7MFNWCohk..', '90123456789012', 0, NULL),
(93, 'أمير عبد الله', 'amir.abdullah@example.com', 0, '$2b$10$MzFf4jGx/Tif3Cs6qhjyTuHzv1fpFsG8NjlJNIFJmm3LG0hxkG2zC', '01234567890123', 0, 5),
(94, 'ياسر خالد', 'yasser.khaled@example.com', 0, '$2b$10$4im75a9vAOdJJ7VJAimXEufWucM5JIxFnmjpeylZmc9vTS0tv3Rp6', '12345778901234', 0, 4),
(95, 'نورا حسين', 'nora.hussein@example.com', 0, '$2b$10$z1ilhQMPc6Tj42QUDXYsFOiUPB/o9DHBf7D7GaM3tLasJW5nmcsIW', '23456789016745', 0, NULL),
(96, 'محمد علي', 'mohamed.ali@example.com', 0, '$2b$10$FpQ1/uZG/aOEK4z8fNDQsuFHOL54w1EEZ04CiGkWzxG5f9YQ21F/a', '54567890123456', 0, 4),
(97, 'سعاد أحمد', 'soad.ahmed@example.com', 0, '$2b$10$GlgRVgM3rYhAHg9i0/xIPOjnwVL2eTY5.r20wwGc7zsswpC8QQ9XK', '45678501234567', 0, NULL),
(98, 'أحمد محمود', 'ahmed.mahmoud@example.com', 0, '$2b$10$9DSEAPwntJE/LGGpC7XPvedv231./UUb6xz1oJQPWtS5.sCANa6/C', '56789092345678', 0, 5),
(99, 'علي رامي', 'ali.ramy@example.com', 0, '$2b$10$u89YaQ60k5AMJdA/AIiiN.wBqE3xwfcMl2LYsW8em15iCv/kPt42i', '89012345678951', 0, NULL),
(100, 'رامي أحمد', 'ramy.ahmed@example.com', 0, '$2b$10$J4W/SQ2BPvW3Q6FA95jWkuyO3e2NDBX0RtrRm7ITT5L.4F7fEa4BC', '11234567890123', 0, 5),
(101, 'محمد علي', 'mohamed.ali@example.com', 0, '$2b$10$VOiLVCRsvU0OefHRKlcSSOMriduo1ht.cyjMqIf3ZiFJAVdQ1OPLC', '12345678981234', 0, NULL),
(102, 'نور عمر', 'nour.omar@example.com', 0, '$2b$10$.GiRwAOGaUzj0KLKB1g9Ke3qFIfFP/BVO8gqKDHtMMC1ZUFd2VTTW', '23486789012345', 0, NULL),
(103, 'ريم مصطفى', 'reem.mustafa@example.com', 0, '$2b$10$Mw1E/bMJORvogWzVSznTMu.BV4n3CVOVT8mkn7jKAbOzbuuAnGlje', '34517890123456', 0, NULL),
(104, 'عبدالله هاني', 'abdullah.hani@example.com', 0, '$2b$10$qFw5qoNNU.7Kwa.lmrGmAO3ll42PqCA/doTarT6iDYYoY1Zfu5FbO', '45678901239567', 0, 5),
(106, 'محمود إبراهيم', 'mahmoud.ibrahim@example.com', 0, '$2b$10$fs1jlw.21bTuNVdgMYQmEOTdmfoCZS3wQOCcc4PlAoUBdR8erzStq', '67810123456789', 0, 5);

-- --------------------------------------------------------

--
-- بنية الجدول `user_absences`
--

CREATE TABLE `user_absences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `absence_date` date NOT NULL,
  `absence_type` varchar(255) NOT NULL,
  `absence_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user_absences`
--

INSERT INTO `user_absences` (`id`, `user_id`, `absence_date`, `absence_type`, `absence_reason`) VALUES
(14, 76, '2024-05-17', 'حرمان من الوجبات لمده ثلاث ايام ', 'كثرة الغياب'),
(15, 90, '2024-05-17', 'محرم من خدمه السكن في الاعوام القادمة', 'تسسبفي تخريب في الغرفة'),
(16, 98, '2024-05-17', 'حرمان من الوجبات لمده خمس ايام', 'عدم الالتزام بالمواعيد');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptance_criteria`
--
ALTER TABLE `acceptance_criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `admission_requests`
--
ALTER TABLE `admission_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `application guidelines and approvals`
--
ALTER TABLE `application guidelines and approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_university_id` (`university_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_ID`),
  ADD KEY `University_ID` (`University_ID`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Country_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `housing_fees`
--
ALTER TABLE `housing_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_id` (`building_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_unique_id` (`id`),
  ADD KEY `fk_room_id` (`room_id`);

--
-- Indexes for table `user_absences`
--
ALTER TABLE `user_absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptance_criteria`
--
ALTER TABLE `acceptance_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admission_requests`
--
ALTER TABLE `admission_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `application guidelines and approvals`
--
ALTER TABLE `application guidelines and approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `housing_fees`
--
ALTER TABLE `housing_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_absences`
--
ALTER TABLE `user_absences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `acceptance_criteria`
--
ALTER TABLE `acceptance_criteria`
  ADD CONSTRAINT `acceptance_criteria_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- قيود الجداول `admission_requests`
--
ALTER TABLE `admission_requests`
  ADD CONSTRAINT `admission_requests_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- قيود الجداول `application guidelines and approvals`
--
ALTER TABLE `application guidelines and approvals`
  ADD CONSTRAINT `fk_university_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- قيود الجداول `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appointments_universities` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);

--
-- قيود الجداول `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `fk_cities_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- قيود الجداول `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`University_ID`) REFERENCES `universities` (`id`);

--
-- قيود الجداول `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`Category_ID`);

--
-- قيود الجداول `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- قيود الجداول `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_building_id` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`);

--
-- قيود الجداول `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- قيود الجداول `user_absences`
--
ALTER TABLE `user_absences`
  ADD CONSTRAINT `fk_user_absences_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
