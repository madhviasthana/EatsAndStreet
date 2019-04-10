-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 07:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopkeeper`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `quantity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`name`, `price`, `username`, `quantity`) VALUES
('Ancle chipse', '10', 'Madhvi@123', ''),
('banana chips (1 kg)', '200', 'Madhvi@123', ''),
('brown sugar', '40', 'Madhvi@123', ''),
('sugar(half kg)', '59', 'Madhvi@123', ''),
('chocobar', '15', 'Madhvi@123', ''),
('cumin', '20', 'Madhvi@123', ''),
('Turmeric', '56', 'Madhvi@123', ''),
('black pepper', '67', 'Madhvi@123', ''),
('jaggery', '90', 'Madhvi@123', ''),
('savory', '10', 'Madhvi@123', ''),
('green tea', '40', 'Tara', ''),
('red chilli powder', '46', 'Tara', '12'),
('tomato chips', '15', 'Madhvi@123', '34');

-- --------------------------------------------------------

--
-- Table structure for table `addproducts`
--

CREATE TABLE `addproducts` (
  `name` varchar(45) NOT NULL,
  `price` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addproducts`
--

INSERT INTO `addproducts` (`name`, `price`) VALUES
('5 Star', '10'),
('brown sugar', '45'),
('buttermilk', '12'),
('cadbury celebration', '200'),
('chips', '10'),
('chocobar', '15'),
('cumin', '40'),
('dairymilk shots', '10'),
('gulab jamun', '120'),
('milk', '29'),
('Turmeric', '74');

-- --------------------------------------------------------

--
-- Table structure for table `addshopdetails`
--

CREATE TABLE `addshopdetails` (
  `resturantname` varchar(45) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phonenumber` varchar(12) NOT NULL,
  `location` varchar(20) NOT NULL,
  `contactInfo` varchar(24) NOT NULL,
  `emailaddress` varchar(35) NOT NULL,
  `manageryesorno` varchar(4) NOT NULL,
  `openingstatus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addshopdetails`
--

INSERT INTO `addshopdetails` (`resturantname`, `city`, `phonenumber`, `location`, `contactInfo`, `emailaddress`, `manageryesorno`, `openingstatus`) VALUES
('barfi house', 'BHOPAL', '9229941786', 'nehru nagar', 'https://barfihouse.com', 'madhviasthana9@gmail.com', 'No', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetail`
--

CREATE TABLE `customerdetail` (
  `name` varchar(45) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobilenumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetail`
--

INSERT INTO `customerdetail` (`name`, `password`, `mobilenumber`) VALUES
('lucifer', 'Tanw7662#', '123456789'),
('Monika Shandilya', 'Shandilya=1', '78654556'),
('era asthana', 'Era@1234', '879033727'),
('Asthana-909', 'Asthana-909', '89057478494'),
('admin', 'Admin@123', '9012341908'),
('meera asthana', 'Asthana-123', '9080705032'),
('Surabhi', 'Madhvi@1234', '908978756'),
('Alka asthana', 'Alka-123', '916528879'),
('Arti patil', 'Arti@1234', '9754827532'),
('Sonali singh', 'Sonali singh-1', '9808443903'),
('sarita', 'Sarita@1', '98224095'),
('Rashi', 'Rashi@345', '9874210334');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `picture`) VALUES
(101, 'chips', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `billing_amount` double NOT NULL,
  `discount` float NOT NULL,
  `payment_mode` varchar(45) NOT NULL,
  `delivery_status` tinyint(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `name` varchar(40) NOT NULL,
  `quantity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usersdetail`
--

CREATE TABLE `usersdetail` (
  `name` varchar(25) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobilenumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersdetail`
--

INSERT INTO `usersdetail` (`name`, `password`, `mobilenumber`) VALUES
('Madhvi$123', 'Madhvi$123', ''),
('Madhvi@123', 'Madhvi@123', ''),
('MAdhvi@128', 'MAdhvi@128', ''),
('Tara', 'Tara-123', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD KEY `username` (`username`);

--
-- Indexes for table `addproducts`
--
ALTER TABLE `addproducts`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addshopdetails`
--
ALTER TABLE `addshopdetails`
  ADD PRIMARY KEY (`resturantname`);

--
-- Indexes for table `customerdetail`
--
ALTER TABLE `customerdetail`
  ADD PRIMARY KEY (`mobilenumber`),
  ADD UNIQUE KEY `unique` (`name`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersdetail`
--
ALTER TABLE `usersdetail`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD CONSTRAINT `addproduct_ibfk_1` FOREIGN KEY (`username`) REFERENCES `usersdetail` (`name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
