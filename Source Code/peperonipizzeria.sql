-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peperonipizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Name`, `Email`, `Phone`, `Subject`, `Message`) VALUES
('human', 'abc@gmail.com', '1234567890', 'nice', 'amazing experience. loved it.'),
('sravya', 'sravya.bg@gmail.com', '1234567890', 'gdsvas', 'best quality food. very fast delivery. amazing food. love the app. love the developers.');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Item_Id` varchar(7) NOT NULL,
  `Item_Name` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Item_Id`, `Item_Name`, `Price`) VALUES
('1608', 'FizPizzz', 1001),
('20', 'asaa', 32),
('D03', 'Lava Cake', 6),
('D04', 'Strawberry Panna Cota', 8),
('D05', 'Vanilla Tortino', 8),
('D06', 'Chocolate Brownie', 5),
('D11', 'Batik Cake', 10),
('PAS01', 'Red Sauce Pasta', 8),
('PAS02', 'Cheesy Baked Pasta', 10),
('PAS03', 'Aglio Olio', 12),
('PAS04', 'Spaghetti Squash', 9),
('PAS05', 'White Sauce Pasta', 7),
('PIZ01', 'Hawaiian Chicken', 20),
('PIZ02', 'Double Cheese Margherita', 25),
('PIZ03', 'Veg Loaded', 23),
('PIZ04', 'Cheese N Corn', 22),
('PIZ05', 'Golden Corn', 25),
('PIZ06', 'Tuna Lover', 24),
('PIZ07', 'Cheese', 15),
('PIZ08', 'Peperoni Pizza', 20),
('SO01', 'Taco Mexicana', 13),
('SO02', 'Burger Pizza', 12),
('SO03', 'Fried Raviole', 10),
('SO04', 'Double Tomato Bruschetta', 15),
('SO05', 'Chicken Cheese Wrap', 13),
('SO06', 'Peperoni Special', 20),
('ST01', 'Garlic Breadsticks', 7),
('ST02', 'Cheesy Breadsticks', 8),
('ST03', 'Stuffed Garlic Bread', 9),
('ST04', 'Panner Garlic Bread', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

CREATE TABLE `ordered_items` (
  `OID` varchar(10) DEFAULT NULL,
  `Item_Id` varchar(10) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`OID`, `Item_Id`, `Item_Name`, `Price`, `Qty`, `Amount`) VALUES
('OId-01', 'ST01', 'Garlic Breadsticks', 7, 1, 7),
('OId-01', 'SO03', 'Fried Raviole', 10, 90, 900),
('OId-01', 'PAS03', 'Aglio Olio', 12, 1, 12),
('OId-01', 'PIZ05', 'Golden Corn', 25, 23, 25),
('OId-01', 'PIZ05', 'Golden Corn', 25, 1, 25),
('OId-01', 'PIZ05', 'Golden Corn', 25, 20, 500),
('OId-01', 'D11', 'Batik Cake', 10, 20, 200);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OId` varchar(10) DEFAULT NULL,
  `Date` varchar(15) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `Customer_Name` varchar(25) DEFAULT NULL,
  `Type_Of_Order` varchar(15) DEFAULT NULL,
  `Membership` varchar(10) DEFAULT NULL,
  `Home_Delivery` varchar(5) DEFAULT NULL,
  `Tax` varchar(5) DEFAULT NULL,
  `Sub_Total` varchar(10) DEFAULT NULL,
  `Tax_Charge` varchar(10) DEFAULT NULL,
  `H_D_Charge` varchar(5) DEFAULT NULL,
  `Discount` varchar(10) DEFAULT NULL,
  `GRAND_TOTAL` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OId`, `Date`, `Time`, `Customer_Name`, `Type_Of_Order`, `Membership`, `Home_Delivery`, `Tax`, `Sub_Total`, `Tax_Charge`, `H_D_Charge`, `Discount`, `GRAND_TOTAL`) VALUES
('OId-01', '10-08-2022', '08:54:29', 'Rishabh', 'TAKEAWAY', 'PLATINUM', 'NO', 'YES', '1669.0', '166.9', '20.0', '166.9', '1669.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Item_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
