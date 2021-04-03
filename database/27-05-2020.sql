-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 11:54 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maiservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` bigint(5) UNSIGNED NOT NULL,
  `service_id` int(5) NOT NULL,
  `userid` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `a_date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `service_id`, `userid`, `name`, `email`, `contact`, `address`, `a_date`, `time`, `status`) VALUES
(1, 1, 1, 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Varye Satara', '2020-03-29', '11.00am-12.00am', 'Approve'),
(2, 1, 1, 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Varye,Satara', '2020-03-31', '10.00am-11.00am', 'Reject'),
(3, 1, 2, 'Akshay Jadhav', 'akshayjadhav@gmail.com', '8888629386', 'at post Gove tal dist satara', '2020-04-01', '01.00pm-02.00pm', 'Approve'),
(4, 1, 1, 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Varye,Satara', '2020-04-05', '10.00am-11.00am', 'Approve'),
(5, 1, 3, 'Priti Khandare', 'priti123@gmail.com', '8380905672', 'at post wai tal dist satara', '2020-04-14', '11.00am-12.00am', 'Reject'),
(6, 1, 4, 'Bhagyashree Shinde', 'bhagi.web@gmail.com', '7219743775', 'at post limb tal dist satara', '2020-05-22', '11.00am-12.00am', 'Cancel'),
(7, 18, 5, 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', 'at post wai tal dist satara', '2020-05-23', '11.00am-12.00am', 'Approve'),
(8, 6, 3, 'Priti Khandare', 'priti123@gmail.com', '8380905672', 'at post wai tal dist satara', '2020-05-23', '11.00am-12.00am', 'Approve'),
(9, 6, 5, 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', 'at post wai tal dist satara', '2020-05-23', '11.00am-12.00am', 'Cancel'),
(10, 1, 5, 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', 'at post wai tal dist satara', '2020-05-24', '11.00am-12.00am', 'Approve'),
(11, 1, 4, 'Bhagyashree Shinde', 'bhagi.web@gmail.com', '7219743775', ' at post limb tal dist satara ', '2020-05-26', '10.00am-11.00am', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `book_id` bigint(5) UNSIGNED NOT NULL,
  `service_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `b_date` date NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`book_id`, `service_id`, `user_id`, `b_date`, `requirement`, `issue`, `name`, `email`, `contact`, `address`) VALUES
(7, 1, 1, '2020-04-17', 'repaire', 'leaky.jpg', 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Varye,Satara'),
(9, 1, 3, '2020-05-12', 'new pipeline', 'repaire1.jpg', 'Priti Khandare', 'priti123@gmail.com', '8380905672', ' at post wai tal dist satara '),
(10, 1, 3, '2020-05-23', 'Leakage', 'lea.jpg', 'Priti Khandare', 'priti123@gmail.com', '8380905672', ' at post wai tal dist satara '),
(11, 6, 2, '2020-05-09', 'trip circuit breakers', 'circuit.jpg', 'Akshay Jadhav', 'akshayjadhav25@gmail.com', '8888623886', ' at post Gove tal dist satara '),
(12, 6, 5, '2020-05-25', 'Repairing damaged wiring or circuits', 'damage.jpg', 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', ' at post wai tal dist satara '),
(13, 6, 3, '2020-05-25', 'Repairing damaged wiring or circuits', 'damage.jpg', 'Priti Khandare', 'priti123@gmail.com', '8380905672', ' at post wai tal dist satara '),
(14, 6, 5, '2020-05-25', 'Repairing damaged wiring or circuits', 'damage.jpg', 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', ' at post wai tal dist satara '),
(15, 19, 5, '2020-05-25', 'Pet Grooming ', 'pet.jpg', 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', ' at post wai tal dist satara ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `image`) VALUES
(1, 'Plumber', 'plumbing.jpg'),
(2, 'Electrician', 'electrical.jpg'),
(3, 'PestControl', 'pestcontrol.jpg'),
(4, 'Painter', 'painting.jpg'),
(5, 'Lawn Care', 'lawncare.jpg'),
(6, 'Carpentry', 'carpentry.jpg'),
(7, 'Local Movers', 'localmovers.jpg'),
(8, 'House Cleaning', 'housecleaning.jpg'),
(9, 'Dog Training', 'dog-training.jpg'),
(10, 'Home Remodeling', 'home-remodeling.jpg'),
(11, 'Gutter Cleaning', 'gutter-cleaning.jpg'),
(12, 'Waste Junk Removal', 'Waste-Junk-Removal.jpg'),
(13, 'Pet Grooming', 'pet-grooming.jpg'),
(14, 'Pet Boarding', 'pet-boarding.jpg'),
(15, 'Gardening Service', 'gardening.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` bigint(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Bhagyashree', 'b@gmail.com', '7485968574', 'Excellent Service and very fast respond from providers.'),
(2, 'Ankita Nevase', 'nevaseankita@gmail.com', '7485968574', 'I am super happy with the service, getting reviews is easy and the website they made me is beautiful'),
(3, 'Akshay Jadhav', 'jadhavakshay25@gmail.com', '888862936', 'The system is good and Nice Experience.. '),
(4, 'Priti Khandare', 'priti123@gmail.com', '8380905672', 'The service was Excellent.'),
(5, 'Aditya Shinde', 'adity@gmail.com', '9423828220', 'It is very easy to connect with customer ..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimate`
--

CREATE TABLE `tbl_estimate` (
  `est_id` bigint(5) UNSIGNED NOT NULL,
  `service_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `problem1` varchar(255) NOT NULL,
  `problem2` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `token` varchar(20) NOT NULL,
  `estimate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rate` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_estimate`
--

INSERT INTO `tbl_estimate` (`est_id`, `service_id`, `user_id`, `date`, `problem1`, `problem2`, `issue`, `name`, `email`, `contact`, `token`, `estimate_date`, `rate`) VALUES
(1, 1, 1, 'As soon as possible', 'Repair the pipeline', '', 'piperepair.jpg', 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Ski45ExP', '2020-03-14 20:36:22', 200),
(2, 1, 1, 'Next 1-2 week', 'Faulty water heater', '', 'waterheater.jpg', 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'Lp98SWht ', '2020-03-29 06:36:22', NULL),
(3, 1, 3, 'As soon as possible', 'Slow draining sink', '', 'slowdrink.jpg', 'Priri Khandare', 'priti123@gmail.com', '8380905672', 'Pel12LtE', '2020-04-23 05:36:22', 200),
(4, 1, 2, 'As soon as possible', 'Pipeline joint damage', 'Excessive water pressure', 'leaky.jpg', 'Akshay Jadhav', 'akshayjadhav25@gmail.com', '8888629386', '6op1UPgejt', '2020-04-22 19:36:22', 150),
(5, 1, 3, 'Next 1-2 week', 'Repair the pipeline', '', 'piperepair.jpg', 'Priri Khandare', 'priti123@gmail.com', '8380905672', 'zbERF7y6', '2020-04-26 03:36:22', 300),
(6, 18, 1, 'As soon as possible', 'Pipeline joint damage', 'Excessive water pressure', 'leaky.jpg', 'Sonal Jagtap', 'sonaljagtap@gmail.com', '7219743778', 'mk5Th3jQ', '2020-05-22 20:41:29', 350),
(7, 6, 2, 'As soon as possible', 'Loose or broken electrical connection', '', 'loose.jpg', 'Akshay Jadhav', 'akshayjadhav25@gmail.com', '8888629386', 'Qw3T5huI', '2020-05-23 06:41:29', 200),
(8, 6, 5, 'As soon as possible', 'Light bulbus burning out too often', 'Bad wiring on the circuit', 'bulbs.jpg', 'Ankita Nevase', 'nevaseankita@gmail.com', '9698748596', 'Sxb5T7hQ', '2020-05-24 02:39:00', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` bigint(5) UNSIGNED NOT NULL,
  `service_id` int(4) NOT NULL,
  `faq1` varchar(255) NOT NULL,
  `faq2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `service_id`, `faq1`, `faq2`) VALUES
(1, 1, 'No', 'They readily answer any queries or questions that you may have. Pay for the product or service with ease by using any of the available modes of payment, such as Cash, Credit Card'),
(2, 2, 'No', 'They readily answer any queries or questions that you may have. Pay for the product or service with ease by using any of the available modes of payment, such as Cash, Credit Card'),
(3, 3, 'No', 'No'),
(4, 5, 'No', 'No'),
(5, 6, 'No', 'They readily answer any queries or questions that you may have. Pay for the product or service with ease by using any of the available modes of payment, such as Cash, Credit Card'),
(6, 7, 'No', 'No'),
(7, 8, 'No', 'No'),
(8, 9, 'No', 'No'),
(9, 10, 'No', 'No'),
(10, 11, 'No', 'No'),
(11, 4, 'No', 'No'),
(12, 12, 'No', 'No'),
(13, 13, 'No', 'No'),
(14, 14, 'No', 'No'),
(15, 15, 'No', 'No'),
(16, 16, 'No', 'No'),
(17, 17, 'No', 'No'),
(18, 18, 'Yes, Plumbing prices typically range from 100 to 600 rupees per fixture. Rates vary by locality and the type of house.', 'The process I follow is quite simple ask questions regarding issues.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `id` bigint(4) NOT NULL,
  `service_id` int(4) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `work_image1` varchar(255) NOT NULL,
  `work_image2` varchar(255) NOT NULL,
  `work_image3` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`id`, `service_id`, `banner`, `work_image1`, `work_image2`, `work_image3`, `video`) VALUES
(1, 1, 'morya.jpg', 'morya1.jpg', 'morya2.jpg', 'morya3.jpg', 'Plumber.mp4'),
(2, 3, 'samarth.jpg', 'samarth1.jpg', 'samarth2.jpg', 'samarth3.jpg', 'Electrician.mp4'),
(3, 6, 'tanushka.jpg', 'tanu1.jpg', 'tanu2.jpg', 'tanu3.jpg', 'Electrician.mp4'),
(4, 7, 'satarakisan.jpg', 'satarakisan1.jpg', 'satarakisan2.jpg', 'satarakisan3.jpg', 'No'),
(5, 8, 'vaibhav.jpg', 'vaibhav1.jpg', 'vaibhav2.jpg', 'vaibhav3.jpg', 'Gardener - Rhymes on Profession.mp4'),
(6, 9, 'bhavani2.jpg', 'bhavani3.jpg', 'bhavani.jpg', 'bhavani1.jpg', 'No'),
(7, 10, 'moreshwar.jpg', 'moreshwar1.jpg', 'moreshwar2.jpg', 'moreshwar3.jpg', 'No'),
(8, 2, 'jaykisan1.jpg', 'jaykisan3.jpg', 'jaykisan.jpg', 'jaykisan2.jpg', 'Electrician.mp4'),
(9, 4, 'msfur.jpg', 'msfur3.jpg', 'msfur2.jpg', 'msfur1.jpg', 'Carpenter - Rhymes on Profession.mp4'),
(10, 5, 'sai1.jpg', 'sai-nursery.jpg', 'sai2.jpg', 'sai3.jpg', 'No'),
(11, 12, 'pet1.jpg', 'pet3.jpg', 'pet2.jpg', 'pet.jpg', 'No'),
(12, 13, 'movers.jpg', 'movers1.jpg', 'movers2.jpg', 'movers3.jpg', 'No'),
(13, 14, 'om.jpg', 'om2.jpg', 'om3.jpg', 'om1.jpg', 'No'),
(14, 15, 'waste.jpg', 'waste1.jpg', 'waste2.jpg', 'waste3.jpg', 'No'),
(15, 16, 'dog3.jpg', 'dog1.jpg', 'dog.jpg', 'dog2.jpg', 'No'),
(16, 17, 'grom.jpg', 'grom1.jpg', 'grom2.jpg', 'grom3.jpg', 'No'),
(17, 18, 'gayatri.jpg', 'gayatri1.jpg', 'gayatri2.jpg', 'gayatri3.jpg', 'Plumber.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(5) UNSIGNED NOT NULL,
  `ORDER_ID` varchar(30) NOT NULL,
  `book_id` int(5) NOT NULL,
  `Service_id` int(5) NOT NULL,
  `CUST_ID` int(5) NOT NULL,
  `TXN_AMOUNT` int(10) NOT NULL,
  `booking_status` varchar(10) NOT NULL,
  `payment_mode` varchar(10) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `trans_id` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `ORDER_ID`, `book_id`, `Service_id`, `CUST_ID`, `TXN_AMOUNT`, `booking_status`, `payment_mode`, `payment_status`, `trans_id`, `date`) VALUES
(6, 'ORDS57801461', 7, 1, 1, 100, 'Confirm', 'PPI', 'TXN_SUCCESS', 2147483647, '2020-04-12 07:18:21'),
(8, 'ORDS12316508', 9, 1, 3, 100, 'Cancel', '', 'TXN_FAILURE', 2147483647, '2020-05-10 19:40:02'),
(9, 'ORDS95215322', 10, 1, 2, 100, 'Confirm', 'PPI', 'TXN_SUCCESS', 2147483647, '2020-05-22 19:25:55'),
(10, 'ORDS24146990', 11, 6, 2, 100, 'Confirm', 'PPI', 'TXN_SUCCESS', 2147483647, '2020-05-23 15:41:49'),
(11, 'ORDS27848402', 12, 6, 5, 100, 'Cancel', 'PPI', 'TXN_FAILURE', 2147483647, '2020-05-23 19:09:37'),
(12, 'ORDS28907256', 13, 6, 3, 100, 'Cancel', 'PPI', 'TXN_FAILURE', 2147483647, '2020-05-23 19:15:28'),
(13, 'ORDS92816880', 14, 6, 5, 100, 'Cancel', 'PPI', 'TXN_SUCCESS', 2147483647, '2020-05-23 19:24:48'),
(14, 'ORDS92816880', 15, 19, 5, 100, 'Confirm', 'PPI', 'TXN_SUCCESS', 2147483647, '2020-05-23 19:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan`
--

CREATE TABLE `tbl_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `quarter` int(10) NOT NULL,
  `six_month` int(10) NOT NULL,
  `annual` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plan`
--

INSERT INTO `tbl_plan` (`id`, `name`, `quarter`, `six_month`, `annual`) VALUES
(1, 'STARTER', 300, 500, 1100),
(2, 'BASIC', 400, 700, 1500),
(3, 'PREMIUM', 500, 900, 1900);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan_purchase`
--

CREATE TABLE `tbl_plan_purchase` (
  `purchase_id` bigint(5) UNSIGNED NOT NULL,
  `sp_id` int(5) NOT NULL,
  `plan_id` int(5) NOT NULL,
  `period` varchar(30) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `payment` varchar(30) NOT NULL DEFAULT 'Waiting',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `plan_status` varchar(30) NOT NULL DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plan_purchase`
--

INSERT INTO `tbl_plan_purchase` (`purchase_id`, `sp_id`, `plan_id`, `period`, `order_id`, `amount`, `payment`, `start_date`, `end_date`, `plan_status`) VALUES
(1, 1, 3, 'quarter', 'ORDS55183315', '500', 'TXN_SUCCESS', '2020-03-28', '2020-06-28', 'Activate'),
(2, 2, 2, 'six_month', 'ORDS47490603', '700', 'TXN_SUCCESS', '2020-04-02', '2020-10-02', 'Activate'),
(3, 3, 1, 'quarter', 'ORDS55183315', '300', 'TXN_SUCCESS', '2020-04-12', '2020-07-12', 'Activate'),
(4, 4, 3, 'quarter', 'ORDS42959195', '500', 'TXN_SUCCESS', '2020-04-23', '2020-07-23', 'Activate'),
(5, 5, 2, 'quarter', 'ORDS12319559', '400', 'TXN_SUCCESS', '2020-05-07', '2020-08-07', 'Activate'),
(6, 6, 1, 'quarter', 'ORDS55183315', '300', 'TXN_SUCCESS', '2020-05-12', '2020-08-12', 'Activate'),
(7, 7, 1, 'six_month', 'ORDS75130661', '500', 'TXN_SUCCESS', '2020-05-14', '2020-11-14', 'Activate'),
(8, 8, 2, 'annual', 'ORDS82206979', '1500', 'TXN_SUCCESS', '2020-05-18', '2021-05-18', 'Activate'),
(9, 9, 3, 'quarter', 'ORDS42959195', '500', 'TXN_SUCCESS', '2020-05-20', '2020-08-20', 'Activate'),
(10, 10, 2, 'quarter', 'ORDS12319559', '400', 'TXN_SUCCESS', '2020-05-20', '2020-08-20', 'Activate'),
(11, 11, 1, 'six_month', 'ORDS95538776', '500', 'TXN_SUCCESS', '2020-05-21', '2020-11-21', 'Activate'),
(14, 12, 1, 'quarter', 'ORDS52321052', '300', 'TXN_SUCCESS', '2020-05-22', '2020-08-22', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `id` bigint(5) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `service_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`id`, `user_id`, `service_id`, `name`, `message`, `date`) VALUES
(1, 1, 1, 'Akshay Jagdale', 'Excellent service, lots of experience and reliable, and  better reasonable rates, very recommended.', '2020-05-09 18:50:08'),
(2, 2, 1, 'Sonam Bhosale', 'This is the second time I have used this service and both times I have been so impressed with the excellent job they do.', '2020-05-13 18:56:48'),
(3, 3, 1, 'Abhijeet Jadhav', 'Excellent service as always, work done quickly and very reasonably priced. Cannot recommend highly enough.', '2020-05-21 18:57:54'),
(4, 4, 1, 'Gurudatta Shinde', 'Fantastic service', '2020-05-22 18:59:08'),
(5, 1, 6, 'Akshay Jagdale', 'Excellent service, lots of experience and reliable, and  better reasonable rates, very recommended.', '2020-05-23 04:50:08'),
(6, 2, 2, 'Sonam Bhosale', 'This is the second time I have used this service and both times I have been so impressed with the excellent job they do.', '2020-05-22 21:56:48'),
(7, 3, 6, 'Abhijeet Jadhav', 'Excellent service as always, work done quickly and very reasonably priced. Cannot recommend highly enough.', '2020-05-22 19:57:55'),
(8, 4, 6, 'Gurudatta Shinde', 'Fantastic service', '2020-05-23 04:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `sp_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `category` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `member` int(10) NOT NULL,
  `appointment_fee` int(5) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `sp_id`, `service_name`, `category`, `phone`, `location`, `description`, `photo`, `member`, `appointment_fee`, `status`, `reg_date`) VALUES
(1, 1, 'Morya Plumbing Service', 'Plumber ', '9152197638', 'Karanje Peth Satara', 'Specializes in installing and maintaining systems used for potable (drinking) water, sewage and drainage', 'morya.jpg', 10, 50, 'Active', '2020-03-28 15:13:22'),
(2, 2, 'Jaykisan Electricals', 'Electrician ', '9152877054', 'Brahamnshahi, Shop No 992, Brmhanshi Road, Wai, Satara', 'Jaikisan Electricals in Satara is one of the leading businesses in the Electricians. Also known for Electricians, PVC Pipe Dealers-Finolex, Water Pump Dealers,etc', 'jaykisan.jpg', 10, 50, 'Active', '2020-04-02 15:13:22'),
(3, 3, 'Samarth Power Engineering', 'Electrician ', '9152579642', 'Shop No 8, Aadarsh Sangam Building, Satara Koregaon Road,Satara', 'Services - Electricians,\r\nSolar Panel Dealers,\r\nGenerator Dealers', 'samarth.jpg', 3, 50, 'Active', '2020-04-12 15:13:22'),
(4, 4, 'M S Furniture', 'Carpentry ', '9152516311', '392/2, Shop No - 5, Mesman Market, Karanje Peth, ITI Road, Shahupuri, Satara ', ' M S Furniture in Shahupuri, Satara is a top player in the category Furniture Dealers in the Satara.', 'ms furniture.jpg', 15, 50, 'Active', '2020-04-23 15:13:22'),
(5, 100001, 'Sai Nursery', 'Gardening Service ', '9152846632', 'Satara Rahimatpur Road, Satara City, Satara', 'Garden Maintenance Services', 'sai1.jpg', 8, 50, 'Active', '2020-04-23 15:13:22'),
(6, 5, 'Tanushka Electricals', 'Electrician ', '9152953213', '183 Malhar Peth Satara, Malhar Peth, Satara - 415002, Near Police Head Quater', 'Tanushka Electricals in Malhar Peth, Satara is a top player in the category Electricians in the Satara. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Satara.', 'tanushka.jpg', 10, 50, 'Active', '2020-05-07 21:25:26'),
(7, 6, 'SATARA KISAN FACILITY MANAGEMENT SERVICES.', 'House Cleaning ', '8888629386', ' 15A ,Soham plaza, Karanje, Satara, Maharashtra 415501', 'Different types of cleaning and sanitizing services for your home are provided by these companies.', 'satarakisan.jpg', 50, 50, 'Active', '2020-05-12 23:52:12'),
(8, 7, 'Vaibhav Garden Care', 'Lawn Care ', '2162268418', '880 Anant, Rajwada, Satara - 415002', 'One of the most important aspects of maintenance is the control of weeds. Without close attention or care a time will come when weeds will overcome the lawn grass, the soil will become sick, and the grass coarse.', 'vaibhav.jpg', 8, 50, 'Active', '2020-05-14 00:11:29'),
(9, 8, 'Bhavani Paints', 'Painter ', '9684597568', '73 Pantacha Got, Povai Naka Road, Satara City, Satara', 'Best home painting services by verified professional, On time services for Interior House Painting, Exterior House Painting, Wood Painting, Metal Painting', 'bhavani2.jpg', 6, 50, 'Active', '2020-05-18 00:29:57'),
(10, 9, 'Moreshwar Pest Control', 'PestControl ', '7448755874', 'Shop No 2, Shahunagar, Satara City, Satara - 415002, Opposite BSNL Office', 'A significant reduction in repeated allergies and skin irritations.\r\nReduced chance of contracting severe medical conditions like dengue, malaria, typhoid, and dysentery.\r\nA healthier environment at both your home and your workplace.\r\nBetter sleep, as sle', 'moreshwar.jpg', 20, 50, 'Active', '2020-05-20 01:01:59'),
(11, 10, 'Sunil ', 'Gutter Cleaning ', '9561089248', 'Satara', 'Gutter Cleaning', 'gutter-cleaning.jpg', 1, 50, 'Active', '2020-05-20 01:20:44'),
(12, 11, 'KOLTE KENNELS', 'Pet Boarding ', '7485587458', '73 Gulmohar Colony, Vaishanvmata Mandir, Molacha Odha, Satara - 415002', 'Pet Boarding Services , Pet Grooming Services', 'pet1.jpg', 20, 150, 'Active', '2020-05-21 18:08:52'),
(13, 2, 'Sai Logistics', 'Local Movers ', '8989878987', 'P-6, Old Midc, Satara Ho, Satara - 415001, Jilha Udyog Kendra ', 'Transporters\r\nPackers And Movers\r\nPackers & Movers (All India)', 'movers.jpg', 5, 50, 'Active', '2020-05-21 19:33:50'),
(14, 4, 'Om  Construction', 'Home Remodeling ', '8574858585', 'Survey No 26/1, Plot No-2/3, Sanmitra Hegihts, Pune Bangalore Highway, Bombay Restaurant, Satara Ho, Satara - 415001, Near Thackkar City', 'Om Trimurti Construction Pvt Ltd in Satara is one of the leading businesses in the Civil Contractors. Also known for Colleges, Labour Contractors, Engineering Colleges, Construction Companies, Civil Contractors, Building Contractors, Civil Engineers, Cons', 'om.jpg', 30, 100, 'Active', '2020-05-21 19:43:39'),
(15, 9, 'Saraswati Paper Mart', 'Waste Junk Removal ', '9669666558', 'Satara City', 'Waste Junk dealer', 'waste.jpg', 2, 0, 'Active', '2020-05-21 19:53:19'),
(16, 10, 'Surya Pets ', 'Dog Training ', '7669988775', 'Gurukul Complex, Rajpath Road, Satara City, Satara - 415002, Front Off Kamani Haud', 'Dog Training', 'dog3.jpg', 5, 50, 'Active', '2020-05-21 20:38:40'),
(17, 8, 'Peace  Gromming', 'Pet Grooming ', '8487878885', 'Satara City', 'Pet Grooming', 'grom.jpg', 10, 50, 'Active', '2020-05-21 20:52:55'),
(18, 12, 'Divya Plumbers', 'Plumber ', '7219743775', 'Karanje Turf S No 287/1 Upper Ground Shop No 1, New Radhika Road, Satara City, Satara - 415002', 'Established in the year 2005, Gayatri Sales in Satara City, Satara is a top player in the category Plumbers in the Satara. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Satara. Over the', 'gayatri.jpg', 10, 150, 'Active', '2020-05-22 20:17:39'),
(19, 1, 'Peace  Gromming', 'Pet Grooming ', '8487878885', 'Satara City', 'Pet Grooming', 'grom.jpg', 10, 50, 'Active', '2020-05-25 20:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serviceprovider`
--

CREATE TABLE `tbl_serviceprovider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_serviceprovider`
--

INSERT INTO `tbl_serviceprovider` (`id`, `name`, `contact`, `email`, `city`, `profile`, `password`, `address`, `state`, `pincode`, `reg_date`) VALUES
(1, 'Omkar Jadhav', '9152197638', 'omkar@gmail.com', 'Satara', 'IMG-20181029-WA0005.jpg', 'fcea920f7412b5da7be0cf42b8c93759', 'limb', 'maharashtra', 415015, '2020-03-28 15:11:14'),
(2, 'Jaikisan Sankpal', '9152877054', 'jaikisan@gmail.com', 'Satara', 'IMG_8372.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Gove', 'maharashtra', 415015, '2020-04-02 15:11:14'),
(3, 'samarth Jagdale', '9152579642', 'samarth@gmail.com', 'Satara', 'samarth.jpg', 'fcea920f7412b5da7be0cf42b8c93759', 'satara', 'maharashtra', 415002, '2020-04-12 15:11:14'),
(4, 'Aditya Shinde', '9152516311', 'aditya@gmail.com', 'Satara', 'IMG_0008.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'limb', 'maharashtra', 415015, '2020-04-23 15:11:14'),
(5, 'Tanushka Khurana', '9152953213', 'tanushka@gmail.com', 'Satara', 'DP1.jpg', 'fcea920f7412b5da7be0cf42b8c93759', 'malhar peth', 'maharashtra', 415002, '2020-05-07 15:45:13'),
(6, 'Dnyanesh Sargar', '9730580514', 'dnyaneshwar@gmail.com', 'Satara', 'DSC04227.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Karanje Peth', 'maharashtra', 415002, '2020-05-12 23:44:13'),
(7, 'Ajay bhise', '8380905672', 'ajay@gmail.com', 'Satara', 'DSC04578.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Powai Naka', 'maharashtra', 415001, '2020-05-14 00:03:32'),
(8, 'Tejas pilake', '9685748596', 'tejas@gmail.com', 'Satara', 'DSC04313.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Godoli', 'maharashtra', 415001, '2020-05-18 00:22:14'),
(9, 'Nitin Chaugule', '9668966889', 'nitin@gmail.com', 'Satara', 'DSC04236.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Varye Satara', 'maharashtra', 415001, '2020-05-20 00:38:29'),
(10, 'Sunil Kadam', '8557886998', 'sunil@gmail.com', 'Satara', 'IMG_8875.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Karanje Peth', 'maharashtra', 415002, '2020-05-20 01:15:49'),
(11, 'Sandip Jadhav', '9896857485', 'sandip@gmail.com', 'Satara', 'IMG_8610.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'Varye,Satara', 'maharashtra', 415001, '2020-05-21 18:02:12'),
(12, 'Bhagyashree Shinde', '7219743775', 'b18shinde@gmail.com', 'Satara', 'me.jpg', 'fcea920f7412b5da7be0cf42b8c93759', '1620,jai kunj niwas limb', 'maharashtra', 415015, '2020-05-22 17:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serviceprovider_pro`
--

CREATE TABLE `tbl_serviceprovider_pro` (
  `pro_id` bigint(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_serviceprovider_pro`
--

INSERT INTO `tbl_serviceprovider_pro` (`pro_id`, `name`, `contact`, `email`, `city`, `profile`, `password`, `address`, `state`, `pincode`, `reg_date`, `end_date`, `status`) VALUES
(100000, 'Pro_demo', '1111111111', 'pro@gmail.com', 'Satara', 'IMG_8372.JPG', '123', 'limb', 'Maharashtra', 415015, '2020-04-24', '2020-04-29', 'Deactive'),
(100001, 'Sayali Jadhav', '9152846635', 'sayalijadhav@gmail.com', 'Satara', 'DP1.jpg', 'fcea920f7412b5da7be0cf42b8c93759', 'satara', 'Maharashtra', 415002, '2020-05-21', '2020-05-26', 'Active'),
(100002, 'Sai Kulkarni', '9152846632', 'kulkarnisai58@gmail.com', 'Satara', 'IMG_0188.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'satara', 'Maharashtra', 415002, '2020-05-14', '2020-05-19', 'Active'),
(100003, 'Aditya Shinde', '7437859444', 'aditya@gmail.com', 'Satara', 'IMG_8693.JPG', 'fcea920f7412b5da7be0cf42b8c93759', 'satara', 'Maharashtra', 415001, '2020-03-23', '2020-05-28', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_details`
--

CREATE TABLE `tbl_service_details` (
  `id` bigint(5) NOT NULL,
  `service_id` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `exp` int(4) NOT NULL,
  `start_date` date NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service_details`
--

INSERT INTO `tbl_service_details` (`id`, `service_id`, `email`, `city`, `pincode`, `exp`, `start_date`, `details`) VALUES
(1, 1, 'omkar@gmail.com', 'Satara', 415002, 8, '2012-02-05', 'Specializes in installing and maintaining systems used for potable (drinking) water, sewage and drainage'),
(2, 2, 'jaikisan@gmail.com', 'Satara', 415001, 38, '1982-06-04', 'Jaikisan Electricals in Satara is one of the leading businesses in the Electricians. Also known for Electricians, PVC Pipe Dealers-Finolex, Water Pump Dealers,etc'),
(3, 3, 'sham@gmail.com', 'Satara', 415001, 13, '2007-02-24', 'Services - Electricians,\r\nSolar Panel Dealers,\r\nGenerator Dealers'),
(4, 5, 'shital@gmail.com', 'Satara', 415015, 8, '2012-03-24', 'Garden Maintenance Services'),
(5, 6, 'tanu@gmail.com', 'Satara', 415001, 15, '2005-03-04', 'Tanushka Electricals in Malhar Peth, Satara is a top player in the category Electricians in the Satara. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Satara.'),
(6, 7, 'dnyaneshwar@gmail.com', 'Satara', 415002, 2, '2018-06-04', 'Different types of cleaning and sanitizing services for your home are provided by these companies.'),
(7, 8, 'vaibhav@gmail.com', 'Satara', 415002, 10, '0000-00-00', 'One of the most important aspects of maintenance is the control of weeds. Without close attention or care a time will come when weeds will overcome the lawn grass, the soil will become sick, and the grass coarse.'),
(8, 9, 'tejal@gmail.com', 'Satara', 415002, 8, '2012-02-13', 'Best home painting services by verified professional, On time services for Interior House Painting, Exterior House Painting, Wood Painting, Metal Painting'),
(9, 10, 'nitin@gmail.com', 'Satara', 415002, 5, '2015-04-28', 'A significant reduction in repeated allergies and skin irritations.\r\nReduced chance of contracting severe medical conditions like dengue, malaria, typhoid, and dysentery.\r\nA healthier environment at both your home and your workplace.\r\nBetter sleep, as sle'),
(10, 11, 'sunil@gmail.com', 'Satara', 415001, 15, '2005-06-24', 'Gutter Cleaning'),
(11, 4, 'ganesh@gmail.com', 'Satara', 415002, 5, '2005-05-10', ' M S Furniture in Shahupuri, Satara is a top player in the category Furniture Dealers in the Satara.'),
(12, 12, 'sandip@gmail.com', 'Satara', 415002, 10, '2010-09-13', 'Pet Boarding Services , Pet Grooming Services'),
(13, 13, 'saijaikisan@gmail.com', 'Satara', 415002, 8, '2012-09-17', 'Transporters\r\nPackers And Movers\r\nPackers & Movers (All India)'),
(14, 14, 'aditya@gmail.com', 'Satara', 415002, 20, '2000-01-04', 'Om Trimurti Construction Pvt Ltd in Satara is one of the leading businesses in the Civil Contractors. Also known for Colleges, Labour Contractors, Engineering Colleges, Construction Companies, Civil Contractors, Building Contractors, Civil Engineers, Cons'),
(15, 15, 'saraswati@gmail.com', 'Satara', 415002, 12, '2008-07-09', 'Waste Junk dealer'),
(16, 16, 'surya@gmail.com', 'Satara', 415002, 5, '2005-02-13', 'Dog Training'),
(17, 17, 'tejas@gmail.com', 'Satara', 415002, 10, '2010-03-16', 'Pet Grooming'),
(18, 18, 'b18shinde@gmail.com', 'Satara', 415015, 13, '2007-09-10', 'Established in the year 2005, Gayatri Sales in Satara City, Satara is a top player in the category Plumbers in the Satara. This well-known establishment acts as a one-stop destination servicing customers both local and from other parts of Satara. Over the');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` bigint(5) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `mobile`, `address`, `password`, `email`, `city`, `state`, `pincode`, `profile`, `reg_date`) VALUES
(1, 'Sonal Jagtap', '7219743775', 'Varye,Satara', 'fcea920f7412b5da7be0cf42b8c93759', 'sonaljagtap@gmail.com', 'satara', 'maharashtra', 415015, 'sonal.jpg', '2020-03-15 15:12:43'),
(2, 'Akshay Jadhav', '8888629386', 'at post Gove tal dist satara', 'fcea920f7412b5da7be0cf42b8c93759', 'akshayjadhav25@gmail.com', 'satara', 'maharashtra', 415015, 'IMG_8693.JPG', '2020-04-01 15:12:43'),
(3, 'Priti Khandare', '8380905672', 'at post wai tal dist satara', 'fcea920f7412b5da7be0cf42b8c93759', 'priti123@gmail.com', 'satara', 'maharashtra', 415015, 'IMG_0595.JPG', '2020-04-14 15:12:43'),
(4, 'Bhagyashree Shinde', '7219743778', 'at post limb tal dist satara', 'fcea920f7412b5da7be0cf42b8c93759', 'bhagi.web@gmail.com', 'satara', 'maharashtra', 415015, 'me.jpg', '2020-05-08 15:12:43'),
(5, 'Ankita Nevase', '9698748596', 'at post wai tal dist satara', '25d55ad283aa400af464c76d713c07ad', 'nevaseankita@gmail.com', 'Satara', 'maharashtra', 415012, 'IMG-20180709-WA0126.jpg', '2020-05-23 18:15:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD UNIQUE KEY `id` (`book_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_estimate`
--
ALTER TABLE `tbl_estimate`
  ADD UNIQUE KEY `id` (`est_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- Indexes for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_plan_purchase`
--
ALTER TABLE `tbl_plan_purchase`
  ADD UNIQUE KEY `id` (`purchase_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_serviceprovider`
--
ALTER TABLE `tbl_serviceprovider`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_serviceprovider_pro`
--
ALTER TABLE `tbl_serviceprovider_pro`
  ADD UNIQUE KEY `pro_id` (`pro_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `tbl_service_details`
--
ALTER TABLE `tbl_service_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `book_id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_estimate`
--
ALTER TABLE `tbl_estimate`
  MODIFY `est_id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `id` bigint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_plan_purchase`
--
ALTER TABLE `tbl_plan_purchase`
  MODIFY `purchase_id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_serviceprovider`
--
ALTER TABLE `tbl_serviceprovider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_serviceprovider_pro`
--
ALTER TABLE `tbl_serviceprovider_pro`
  MODIFY `pro_id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100004;

--
-- AUTO_INCREMENT for table `tbl_service_details`
--
ALTER TABLE `tbl_service_details`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
