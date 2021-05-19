-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 05:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spirit_venture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-03-31 07:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'shashankkumar269@gmail.com', 1, '17/05/2021', '25/05/2021', 'need urgently', 1, '2021-05-18 16:14:28'),
(2, 'prachi321jha@gmail.com', 1, '19/05/2021', '21/05/2021', 'need urgently', 1, '2021-05-18 16:18:38'),
(5, 'test@gmail.com', 1, '05/19/2021', '05/22/2021', 'For Vacation', 1, '2021-05-19 08:02:23'),
(4, 'shashankkumar269@gmail.com', 1, '2021-05-20', '2021-05-22', 'aaa', 0, '2021-05-19 03:53:56'),
(6, 'shashankkumar269@gmail.com', 1, '05/20/2021', '05/22/2021', 'urgent', 0, '2021-05-19 11:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'BMW', '2021-05-18 16:01:45', NULL),
(2, 'AUDI', '2021-05-18 16:02:03', NULL),
(6, 'TATA', '2021-05-19 08:30:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'New Asgard', 'spiritventure@gmail.com', '7525724672');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Shashank Kumar', 'shashankkumar269@gmail.com', '7756908814', 'help', '2021-05-18 16:30:31', NULL),
(2, 'Shikha', 'shikha@gmail.com', '6789421676', 'need urgent', '2021-05-18 16:31:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Welcome to the Car Rental Portal website (the \"Website\"). This Website is provided solely to assist customers in gathering travel information, determining the availability of travel—related goods and services, making legitimate reservations or otherwise transacting business with travel suppliers, and for no other purposes.&nbsp; The term \"you\" or “customer” refers to the customer visiting or using the Website and/or booking a reservation through us on this Website, or through our customer service agents.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">This Website is offered to you conditioned upon your acceptance without modification of all the terms, conditions, and notices set forth below (collectively, the \"Terms of Use” or \"Agreement\").&nbsp;<span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">Please read these Terms of Use carefully, as they contain important information about limitations of liability and resolution of disputes through arbitration rather than in court.</span>&nbsp;You should also read our&nbsp;<a href=\"https://www.travelocity.com/p/info-other/privacy-policy.htm\" style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 78, 147);\">Privacy Policy</a>, which also governs your use of the Website, and is incorporated by reference in this Agreement. By accessing or using this Website, booking any reservations for travel products or services on this Website, or contacting our call center agents, you agree that the Terms of Use then in force shall apply. If you do not agree to the Terms of Use, please do not use or book any reservations through this Website or our call center agents.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">USE OF THE WEBSITE</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">As a condition of your use of this Website, you warrant that:</p><ol style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px 0px 0px 1.41176em; margin: 0.705882em 0px 0px; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 17px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">you are at least 18 years of age;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">you possess the legal authority to create a binding legal obligation;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">you will use this Website in accordance with these Terms of Use;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">you will only use this Website to make legitimate reservations for you or for another person for whom you are legally authorized to act;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">you will inform such other persons about the Terms of Use that apply to the reservations you have made on their behalf, including all rules and restrictions applicable thereto;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">all information supplied by you on this Website is true, accurate, current and complete; and</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">if you have an Car rental.com account, you will safeguard your account information and will supervise and be completely responsible for any use of your account by you and anyone other than you.</li></ol><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">We retain the right at our sole discretion to deny access to anyone to this Website and the services we offer, at any time and for any reason, including, but not limited to, for violation of these Terms of Use.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">DISPUTES; ARBITRATION</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Car Rental is committed to customer satisfaction, so if you have a problem or dispute, we will try to resolve your concerns. But if we are unsuccessful, you or we may pursue claims as explained in this section.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">To give us an opportunity to resolve informally any disputes between you and us arising out of or relating in any way to the Website, these Terms of Use, our Privacy Policy, any services or products provided, any dealings with our customer service agents, or any representations made by us (“Claims”), you agree to communicate your Claim to Car Rental by contacting&nbsp;Car Rental Portal&nbsp;or calling 1-855-201-7800.&nbsp; You agree not to bring any suit or to initiate arbitration proceedings until 60 days after the date on which you communicated your Claim to Customer Support have elapsed.&nbsp; If we are not able to resolve your Claim within 60 days, you may seek relief through arbitration or in small claims court, as set forth below.&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">You and Car Rental agree that&nbsp;<span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">any and all Claims will be resolved by binding arbitration, rather than in court</span>, except that you and we may assert Claims on an individual basis in small claims court if they qualify. This includes any Claims you assert against us, our subsidiaries, travel suppliers or any companies offering products or services through us (which are beneficiaries of this arbitration agreement). This also includes any Claims that arose before you accepted these Terms of Use, regardless of whether prior versions of the Terms of Use required arbitration.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">There is no judge or jury in arbitration, and court review of an arbitration award is limited. However, an arbitrator can award on an individual basis the same damages and relief as a court (including statutory damages, attorneys’ fees and costs).&nbsp; The arbitrator must follow and enforce these Terms of Use.</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Arbitrations will be conducted by the American Arbitration Association (AAA) under its rules, including the AAA Consumer Rules.&nbsp; Payment of all filing, administration and arbitrator fees will be governed by the AAA’s rules, except as provided in this section.&nbsp; If your total Claims seek less than $10,000, we will reimburse you for filing fees you pay to to the AAA and will pay arbitrator’s fees.&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">Any and all proceedings to resolve Claims will be conducted only on an individual basis and not in a class, consolidated, or representative action.</span>&nbsp; The arbitrator will have authority to decide issues as to the scope of this arbitration agreement and the arbitrability of Claims.&nbsp; If for any reason a Claim proceeds in court rather than in arbitration,&nbsp;<span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">you and</span><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">we each waive any right to a jury trial</span>.&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">To begin an arbitration proceeding, you must send a letter requesting arbitration and describing your Claims to “Car Rental Legal:&nbsp; Arbitration Claim Manager,” at Expedia, Inc., 1111 Expedia Group Way West, Seattle, WA 98119.&nbsp; If we request arbitration against you, we will give you notice at the email address or street address you have provided.&nbsp; The AAA’s rules and filing instructions are available at www.adr.org or by calling 1-800-778-7879.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">This arbitration agreement shall be governed by and enforced in accordance with the Federal Arbitration Act and federal arbitration law.&nbsp; An arbitration decision may be confirmed by any court with competent jurisdiction.&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">PROHIBITED ACTIVITIES</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">The content and information on this Website (including, but not limited to, price and availability of travel services) as well as the infrastructure used to provide such content and information, is proprietary to us or our suppliers and providers. While you may make limited copies of your travel itinerary (and related documents) for travel or service reservations booked through this Website, you agree not to otherwise modify, copy, distribute, transmit, display, perform, reproduce, publish, license, create derivative works from, transfer, or sell or re-sell any information, software, products, or services obtained from or through this Website. Additionally, you agree not to:</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><ol style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px 0px 0px 1.41176em; margin: 0.705882em 0px 0px; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 17px;\"><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">use this Website or its contents for any commercial purpose;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">make any speculative, false, or fraudulent reservation or any reservation in anticipation of demand;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">access, monitor or copy any content or information of this Website using any robot, spider, scraper or other automated means or any manual process for any purpose without our express written permission;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">violate the restrictions in any robot exclusion headers on this Website or bypass or circumvent other measures employed to prevent or limit access to this Website;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">take any action that imposes, or may impose, in our discretion, an unreasonable or disproportionately large load on our infrastructure;</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">deep—link to any portion of this Website (including, without limitation, the purchase path for any travel services) for any purpose without our express written permission; or</li><li style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding-bottom: 0.461538em;\">\"frame\", \"mirror\" or otherwise incorporate any part of this Website into any other website without our prior written authorization.</li></ol><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Without limitation, any speculative, false, or fraudulent reservation or any reservation in anticipation of demand is prohibited. You agree that the travel services reservations facilities of this website shall be used only to make legitimate reservations or purchases for you or for another person for whom you are legally authorized to act. You understand that overuse, suspicious activity, signs of fraud, or abuse of the travel services reservation facilities of this website may result in Car Rental cancelling any bookings associated with your name, email address, or account, and closing any associated Car Rental accounts. Car Rental may also cancel any bookings associated with your name, email address, or account, and close any associated Car Rental accounts if you have made multiple reservations on this website and Car Rental considers (acting reasonably) that any such reservation is for the purposes of reselling). If such reservations cancelled are non-refundable bookings, Car Rental reserves its right not to refund you for the cancelled reservations. In addition, Car Rental may verify (i.e. preauthorize) your credit card. If your booking or account shows signs of fraud, abuse or suspicious activity, Car Rental may cancel any travel or service reservations associated with your name, email address or account, and close any associated&nbsp; accounts. Car Rental If you have conducted any fraudulent activity, Car Rental reserves he right to take any necessary legal action and you may be liable for monetary losses to Car Rental, including litigation costs and damages. To contest the cancellation of a booking, or freezing or closure of an account, please contact&nbsp; Car Rental Customer Service.</p>										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">SUPPLIER RULES AND RESTRICTIONS</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; font-weight: 700;\">Additional terms and conditions will apply to your reservation and purchase of travel-related goods and services that you select</span>. Please read these additional terms and conditions carefully. In particular, if you have purchased an airfare, please ensure you read the full terms and conditions of carriage issued by the supplier, which can be found on the supplier’s website. You agree to abide by the terms and conditions of purchase imposed by any supplier with whom you elect to deal, including, but not limited to, payment of all amounts when due and compliance with the supplier\'s rules and restrictions regarding availability and use of fares, products, or services. Airfare is only guaranteed once the purchase has been completed and the tickets have been issued. Airlines and other travel suppliers may change their prices without notice. We reserve the right to cancel your booking if full payment is not received in a timely fashion.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;Car Rental may offer customers the opportunity to book a reservation for a combination of two one—way tickets instead of a roundtrip ticket. Combined one-way tickets may provide a greater choice of flights, are often cheaper and can be combined on the same airline or on different airlines. Unlike roundtrip tickets, each one-way ticket is subject to its own rules, restrictions, and fees. If one of these flights is affected by an airline change (e.g. cancellation or rescheduling) that causes a customer to make changes to the other flight, the customer will be responsible for any fees incurred for making changes to the unaffected flight.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">For certain low-cost carriers, the price of your flight has been converted from a different currency for convenience purposes to provide you an estimate of the amount of the purchase in your local currency. As a result, when you book, the amount charged to your credit card by the airline may be slightly different due to currency fluctuations. Your statement may also include a applicable fee from your card issuer to process the transaction plus any applicable taxes for international purchases.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Federal law forbids the carriage of hazardous materials aboard aircraft in your luggage or on your person. A violation can result in five years\' imprisonment and penalties of $250,000 or more (49 U.S.C. 5124). Hazardous materials include explosives, compressed gases, flammable liquids and solids, oxidizers, poisons, corrosives and radioactive materials. Examples: Paints, lighter fluid, fireworks, tear gases, oxygen bottles, and radio-pharmaceuticals. There are special exceptions for small quantities (up to 70 ounces total) of medicinal and toilet articles carried in your luggage and certain smoking materials carried on your person.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">You acknowledge that some third-party providers offering certain services and/or activities may require you to sign their liability waiver prior to participating in the service and/or activity they offer. You understand that any violation of any such supplier\'s rules and restrictions may result in cancellation of your reservation(s), in your being denied access to the applicable travel product or services, in your forfeiting any monies paid for such reservation(s), and/or in our debiting your account for any costs we incur as a result of such violation.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;.</p><p style=\"-webkit-tap-highlight-color: rgba(0, 135, 245, 0); padding: 0px; margin-top: 0.705882em; margin-bottom: 0px; font-size: 17px; line-height: 1.41176; color: rgb(97, 97, 97); font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Lucida Grande&quot;, sans-serif;\">&nbsp;</p>										\r\n										'),
(3, 'About Us ', 'aboutus', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">A&nbsp;<b>car rental</b>,&nbsp;<b>hire car</b>, or&nbsp;<b>car hire</b>&nbsp;agency is a company that&nbsp;<a href=\"https://en.wikipedia.org/wiki/Renting\" title=\"Renting\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">rents</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Automobile\" class=\"mw-redirect\" title=\"Automobile\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">automobiles</a>&nbsp;for short periods of time, generally ranging from a few hours to a few weeks. It is often organised with numerous local&nbsp;<a href=\"https://en.wikipedia.org/wiki/Branch#Organizations\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">branches</a>&nbsp;(which allow a user to return a vehicle to a different location), and primarily located near&nbsp;<a href=\"https://en.wikipedia.org/wiki/Airport\" title=\"Airport\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">airports</a>&nbsp;or busy city areas and often complemented by a website allowing online&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_reservations_system\" class=\"mw-redirect\" title=\"Computer reservations system\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">reservations</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Car rental agencies primarily serve people who require a temporary vehicle, for example, those who do not own their own car,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tourism\" title=\"Tourism\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">travelers</a>&nbsp;who are out of town, or owners of damaged or destroyed vehicles who are awaiting repair or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Auto_insurance\" class=\"mw-redirect\" title=\"Auto insurance\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">insurance</a>&nbsp;compensation. Car rental agencies may also serve the self-<a href=\"https://en.wikipedia.org/wiki/Moving_industry\" class=\"mw-redirect\" title=\"Moving industry\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">moving industry</a>&nbsp;needs, by renting&nbsp;<a href=\"https://en.wikipedia.org/wiki/Van\" title=\"Van\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vans</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Truck\" title=\"Truck\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">trucks</a>, and in certain markets, other types of vehicles such as motorcycles or scooters may also be offered.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Alongside the basic rental of a vehicle, car rental agencies typically also offer extra products such as insurance,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Global_positioning_system\" class=\"mw-redirect\" title=\"Global positioning system\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">global positioning system</a>&nbsp;(GPS) navigation systems, entertainment systems, mobile phones, portable WiFi and child safety seats.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Most car rental offices offer a range of vehicle sizes to suit a variety of budgets and space requirements and some additionally offer specialized vehicles to suit its location such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Convertible_(car)\" class=\"mw-redirect\" title=\"Convertible (car)\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">convertibles</a>, prestige models, hybrid/electric vehicles, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/SUV\" class=\"mw-redirect\" title=\"SUV\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">SUVs</a>&nbsp;and passenger vans. At major airports or in larger cities, some independent car rental agencies offer high-end vehicles for rent. Some specialized companies offer older vehicles at reduced prices.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">To allow for a uniform classification and easy comparison of car rental prices, the Association of Car Rental Industry Systems and Standards (ACRISS) has developed the&nbsp;<a href=\"https://en.wikipedia.org/wiki/ACRISS_Car_Classification_Code\" class=\"mw-redirect\" title=\"ACRISS Car Classification Code\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ACRISS Car Classification Code</a>&nbsp;coding system. This describes the size, door count, gearbox type (manual/automatic), and whether the car is air-conditioned, encoded into four letters. The first letter in the Acriss Code represents the general classification of the vehicle (e.g. Mini, Economy, Compact etc.). The second letter specifies the vehicle variant on offer (e.g. 4 Door, Estate, Convertible, SUV etc.). The third letter is generally used to specify the transmission type, although it can also be used to describe how many wheels drive the vehicle, and the fourth letter describes the fuel type and whether the vehicle has air conditioning or not.<sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Car_rental#cite_note-7\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Additional classifications based on seat numbers and trunk volume were also set by the Belgian Rent a Car association in order to provide a unified system for assessing the car types in online reservation systems and airline&nbsp;<a href=\"https://en.wikipedia.org/wiki/Global_distribution_system\" title=\"Global distribution system\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">global distribution systems</a>.</p>'),
(4, 'FAQs', 'faqs', '<ul class=\"faq-ul\" style=\"padding: 40px 30px 40px 40px; color: rgb(112, 112, 112); font-family: Avenir-Roman;\"><li style=\"margin-bottom: 25px;\"><h3 style=\"font-family: Avenir-black; color: rgb(212, 0, 42); font-size: 16px;\">Q. What all documents are required for verification?</h3><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\">A. To rent a&nbsp; self-drive car, you should have a valid Aadhaar card,&nbsp;a driving license and an original Passport/Voters ID card.&nbsp;</p><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Please note:</span>&nbsp;Aadhaar card details like name, mobile number etc. should match the details that are provided to Avis at time of making a booking. In case of a mismatch, Avis will cancel the booking and a penalty of&nbsp; Rs 1000 will be levied to the guest in such case.</p><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\">Also, it is required to make sure that all the details mentioned in the Driving License and Aadhaar card are readable and clear.</p></li><li style=\"margin-bottom: 25px;\"><h3 style=\"font-family: Avenir-black; color: rgb(212, 0, 42); font-size: 16px;\">Q. What type of driving license is required?</h3><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\">A. To rent a car, you need to have a valid and a clean Indian or International (Foreign Nationals) driving license that covers the vehicle rented by you. This license needs to be held by you for at least one year.</p></li><li style=\"margin-bottom: 25px;\"><h3 style=\"font-family: Avenir-black; color: rgb(212, 0, 42); font-size: 16px;\">Q. Do I need to sign any agreement/document with Car Rental?</h3><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\">A. Yes. You are required to sign an e-agreement, a car check list and a brief Terms &amp; Conditions sheet at the time of confirming your booking.</p></li><li style=\"margin-bottom: 25px;\"><h3 style=\"font-family: Avenir-black; color: rgb(212, 0, 42); font-size: 16px;\">Q. What type of documents is required in case of a co-driver?</h3><p style=\"margin-bottom: 10px; font-size: 16px; color: rgb(0, 0, 0);\">A. You need to upload co-driver’s Driving License before the start of the rental. The renter (who has booked the car) will be responsible in case of an accident or damages by the co-driver wherein the rental terms do not comply with.</p></li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'abc@gmail.com', '2021-05-18 16:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'prachi321jha@gmail.com', 'very good service', '2021-05-18 16:21:59', 1),
(2, 'prachi321jha@gmail.com', 'very good service', '2021-05-18 16:23:19', NULL),
(3, 'shashankkumar269@gmail.com', 'Nice Service????', '2021-05-19 06:49:21', 1),
(4, 'shashankkumar269@gmail.com', 'Nice Service????', '2021-05-19 06:49:39', NULL),
(5, 'shashankkumar269@gmail.com', 'Hello', '2021-05-19 12:00:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Shashank Kumar', 'shashankkumar269@gmail.com', '0d522837684a54759b03e24ff0729883', '7756908814', NULL, NULL, NULL, NULL, '2021-05-18 15:31:57', '2021-05-19 06:27:31'),
(2, 'Prachi Jha', 'prachi321jha@gmail.com', '485293636095f0d23f627f28a5f423ed', '912489068', NULL, NULL, NULL, NULL, '2021-05-18 16:16:24', NULL),
(3, 'Test', 'test@gmail.com', '0d522837684a54759b03e24ff0729883', '5687906543', NULL, NULL, NULL, NULL, '2021-05-19 07:50:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` float DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'X5 xDrive40i', 1, 'he fourth-generation BMW X5 has been launched in India with more features and equipment as compared to its predecessor. The SUV is available in three variants – Sport, xLine and M Sport. Currently, it is available in xDrive 30d Sport and xDrive 30d xLine variant, while the xDrive40i M Sport variant will be introduced later this year.\r\n\r\nExterior\r\n\r\nThe new X5 is based on the CLAR platform, the SUV is now longer by 36mm measuring 4,922mm in length, width is up by 66mm to 2,004 mm and height by 19mm to 1,745mm. The wheelbase has been extended by 42mm to 2,975mm. BMW’s iconic Kidney grille on the new X5 is larger than before, lending it an imposing character. The sleek LED headlamps are newly designed and have the BMW Laser light with adaptive LED signature. The front bumper gets large air vents surrounded by black inserts. The taillights are sleek and have a 3D lighting signature.\r\n\r\n\r\nInterior\r\n\r\nThe cabin has been furnished along the lines of all new generation BMWs. There’s a 12.3-inch floating infotainment touchscreen, horizontal centre console and now a fully-digital instrument cluster called the BMW Live Cockpit Professional display. The updated iDrive now supports a customisable display, touchscreen panel and gesture/voice commands. The cabin comes with standard leather upholstery, multifunction seats, four-zone climate control, panoramic sunroof, dynamic ambient lighting, passenger screens and wireless charging. The X5 also debuts the newly designed glass gear-selector lever.', 4500, 'Diesel', 2019, 6, 'bmw-x1-3.jpg', 'bmw-x1-4.jpg', 'bmw-x1-7.jpg', 'bmw-x1-8.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, NULL, 1, '2021-05-18 16:12:40', '2021-05-19 08:25:32'),
(2, 'BMW X7', 1, 'The flagship Sports Activity Vehicle (SAV) from BMW, the X7 is available in two variants - xDrive30d Design Pure Excellence Signature (locally produced) and the xDrive40i (CBU). The three-row SUV gets a new design language, host of luxury and off-road hardware.\r\n\r\nExterior\r\n\r\nThe exceptionally large kidney grille lends it a family face. On the other hand, the BMW Laser Light technology with blue X-shaped elements give it an aggressive look. Meanwhile, the rear looks modern and elegant with slim LED lights and two-section split tailgate. The generous use of chrome elements further enhances its luxury appeal.\r\n\r\nInterior\r\n\r\nThe long doors, large windows and elongated roofline give an airy cabin-feel. The vehicle has an elevated seat position for better all-round visibility. Additionally, the X7 offers abundant legroom, headroom and space for up to seven occupants. Rear-seat experience is enhanced with optional six-seat configuration including two captain-style comfort seats for the second row. Moreover, the vehicle gets automatic air conditioning with five-zone control. The large panoramic roof extends to the third row, thereby allowing dynamic light flow throughout the cabin.', 4999, 'Petrol', 2018, 6, 'bmw-x3-m-exterior-1.jpg', 'bmw-x3-m-exterior-12.jpg', 'bmw-x3-m-exterior-15.jpg', 'bmw-x3-m-exterior-17.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 17:20:08', '2021-05-19 08:27:24'),
(3, 'Audi A4', 2, 'Audi A4 2021 is available in the Indian market for sale now with some upgrades. The premium plus variants are available in the market at 42.34 Lakh and on the other hand the top end technology trim is present at 46.67 Lakh. The upgraded Audi A4 is super comfortable and loaded with the modern features. The exterior and interior parts of the car give you ultimate security and comfort.\r\n\r\nThe engine of 1984 cc is there in the car with the capacity of 54liter fuel. The 5 sitter Audi A4 runs with the petrol. The car has the hand brake to give better control to the driver. The ventilated disc of front brake of the car keeps the driver comfortable as well. The LED headlights on the sturdy body of the car give it a new appearance and better driving experience. The car can cover 17.8km distance per liter.\r\n\r\n480liters boot space of Audi A4 comes with the loads of special technical features including power windows, central locking facility, and DCT transmission. The car has the fog lamps to keep you secure at the time of winter morning drive. The front wheels of the car have some specifications like Independent-wheel suspension, aluminum transverse link, five-link axle with front track rod, subframe and tubular anti-roll bar. The rear wheels have resiliently mounted subframe along with the anti-roll bar.', 4599, 'Petrol', 2017, 5, '2021-audi-a7l-1.jpg', '2021-audi-a7l-2.jpg', '2021-audi-a7l-3.jpg', '2021-audi-a7l-4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 17:27:55', '2021-05-19 08:27:24'),
(4, 'Audi A5', 2, 'Audi A5 is a 5 seater Sedan with the last recorded price of ? 55.44 - 72.66 Lakh. It is available in 3 variants, 1 engine option and 1 transmission option : Automatic. Other key specifications of the A5 include a Kerb Weight of 1670 kg. ... The mileage of A5 ranges from 13.57 kmpl to 19.2 kmpl.', 5200, 'Petrol', 2019, 5, 'audi-q2-exterior-3.jpg', 'audi-q2-exterior-7.jpg', 'audi-q2-exterior-8.jpg', 'audi-q2-exterior-9.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 17:34:41', '2021-05-19 08:27:24'),
(5, 'B-Max', 3, 'Ford B Max, the new B platform MPV from Ford’s stable, is going to sizzle in the upcoming Geneva Motor Show. This Multi Purpose Vehicle can be interesting to Indian market also as nearly every car maker is at its heels to roll out a MPV. Ford B-Max mini MPV is a five seater which sports sliding doors and folding seats. Under the hood, Ford B-Max has the strappy 1 litre Ecoboost engine that will house Ecosport compact SUV also. The MPV will surely perform well and will have a host of safety features. Ford B-Max will be rolled out in the European market from the month of September this year followed by the other car markets across the globe, which also includes India. Once it arrives in India, it will be pitched against the Mahindra Mini Xylo and the length of B-Max could be brought under 4 meters.', 3999, 'Petrol', 2017, 5, 'bmax.1', 'bmax.2.jpg', 'bmax.3.jpg', 'bmax.4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 17:42:41', NULL),
(6, 'Ford Figo', 3, 'The current iteration of the Ford Figo in India had last received an update in 2019. It was a mid-life update for the B-segment hatchback after being on sale for almost four years. The hatchback received subtle cosmetic changes along with rejigged trim levels. Currently, the Ford Figo is available in three variant options – Ambiente, Titanium, and Titanium Blu. All the variants can be had with either a petrol or a diesel engine option.\r\n\r\nEngine\r\n\r\nMechanically, the new Figo offers a choice between a 1.2-litre petrol and a 1.5-litre diesel engine option. The 1.2-litre, three-cylinder engine produces 95bhp at 6,500rpm and 119Nm of torque at 4,250rpm. As for the diesel version, it gets a 1.5-litre, four-cylinder engine which produces 99bhp at 3,750rpm and 215Nm of torque at 1,750rpm. Both the engine options get a five-speed manual transmission as standard.\r\n\r\nExterior \r\n\r\nVisually, the Figo has retained most of its familiar styling elements and the changes are limited to mild tweaks. The bumpers have been revised with added bits for freshness along with extended chrome bezels for the fog lamps and a new mesh grille. Unlike the modern-day cars, this hatchback still does not offer LED or DRLs. Additionally, the decals add a bit of a sporty element.  \r\n\r\nInterior\r\n\r\nThe Figo gets an all-black cabin except for the top-spec variant which gets a BLU treatment, which includes blue highlights and fabric upholstery with contrast blue stitching. Additionally, the top-spec variant gets features like rain-sensing wipers, auto headlamps, automatic AC, leather-wrapped steering wheel, bigger 15-inch alloy wheels, and six airbags. As a part of the new feature additions, the updated model gets a seven-inch touchscreen along with standard features such as dual airbag, ABS with EBD, rear parking sensor, speed alert, and front seat belt alert.\r\n\r\n', 4700, 'Diesel', 2019, 5, 'figo.1', 'figo.2.jpg', 'figo.3.jpg', 'figo.4.jpg', '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 17:50:37', '2021-05-19 08:27:24'),
(7, 'Honda City', 4, 'The all-new fifth-generation Honda City was launched in India in July 2020. The car is available in nine various trim levels. It comes with one petrol engine paired to either a six-speed manual or a seven-speed CVT automatic while the diesel engine is coupled with only a six-speed manual gearbox. \r\n\r\nOutside, the City features all-new nine arrays of LED headlamps at the front along with LED DRLs and J-shaped turn signals. The rear end also features LED taillamps. Overall, the length of the City has been increased by 109mm and now it measures 4,549mm. But the wheelbase remains the same as the previous model that is 2,600mm. Besides the car gets 16-inch alloy wheels for top-end variants and 15-inch alloys for other variants.\r\n\r\nThe interior of the all-new City features a blend of beige and black colours. It features leather upholstery for seats and cushioned central armrest as well as door armrests. The instrument cluster comes with a seven-inch display and analogue dial. Besides, there is an eight-inch infotainment touchscreen system that supports smartphone connectivity.\r\n\r\nThe City gets connect car tech feature such as Alexa remote connect as well as 32 other features. It comes with a blind spot monitoring camera located beneath the left ORVM and the camera switches on when the left turn signal is on.', 200, 'Petrol', 2020, 5, 'city.1', 'city.2.jpg', 'city.3.jpg', 'city.4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 18:00:58', NULL),
(8, 'Honda Amaze', 4, 'The Honda Amaze is an economical subcompact saloon car by the Honda Corporation Japan. There are variants of this car like E, S, V and VX. There is petrol and diesel engines and transmissions are also automatic and manual. The paint types are platinum white pearl, lunar silver metallic, golden brown metallic, modern steel metallic and radiant red. There are halogen headlamps fitted with LED DRL and there are fog lamps too. The turn signals are fitted with halogen in ORVMs. There are 15-inch alloy wheels, anti-locking braking system with EBD. There are rear parking sensors fitted with a camera. There are dual-tone colour themes in the cabin of this car. There is a 6.9-inch infotainment system touchscreen. It supports Android Auto. The steering wheel is multi-function and there is hands-free calling. There is hands-free music streaming too. It is done via Bluetooth. There are dual airbags, cruise control, paddle shifters, start/stop button, voice command and other so many features. There are two powertrains, there is a 1.2-litre inline four-cylinder engine. There is an option of a five-speed manual or CVT automatic. The company offers an exclusive edition and a special edition of this car. The exclusive one has suede upholstery seats, an LED scuff plate and chrome inserts about the windows. There are fog lamps, a tailgate and an exclusive edition badge. The special edition has a Digipad touchscreen infotainment system. There is a sliding armrest, and there are seat covers and a badge for the special edition.\r\n\r\nThe Honda car was launched in 2018 a Honda Amaze and its price range was between 6.17 lakh for the base petrol model and the diesel top-end cost 9.99 lakh. The car was launched for Indian customers in 2013. This is a subcompact sedan that climbed the chart of popularity quickly. The engine line-up remains the same but there is a new diesel CVT version this time.', 140, 'Diesel', 2013, 5, 'amaze.1', 'amaze.2.jpg', 'amaze.3.jpg', 'amaze.4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-05-18 18:06:34', NULL),
(9, 'X6 Drive', 1, 'Testing', 5000, 'Diesel', 2016, 4, '2021-audi-a7l-1.jpg', 'audi-q2-exterior-7.jpg', 'audi-q2-exterior-8.jpg', 'audi-q2-exterior-9.jpg', 'audi-q2-exterior-11.jpg', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, NULL, 1, NULL, '2021-05-19 08:19:46', NULL),
(10, 'X6 Drive', 1, 'gsgsgs', 5000, 'Diesel', 2019, 4, 'bmw-x1-3.jpg', 'bmw-x1-4.jpg', 'bmw-x1-8.jpg', 'bmw-x1-10.jpg', '', 1, 1, 1, NULL, 1, 1, 1, NULL, 1, NULL, 1, NULL, '2021-05-19 11:59:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
