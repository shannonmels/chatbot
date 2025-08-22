-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 07:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domain chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(500) NOT NULL,
  `suggestions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`, `suggestions`) VALUES
(5, 'Accommodation', 'Cork offers a wide range of accommodation options for tourists, from cozy guesthouses and stylish boutique hotels to budget-friendly hostels and luxurious resorts. Whether you\'re looking for a central location or a peaceful countryside retreat, there\'s something to suit every traveler\'s needs.<br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(6, 'No it did not', 'I\'m sorry to hear. Please contact +353 123 456 for further assistance. In the meanwhile is there anything else I could help with?', 'Yes please, No thank you'),
(7, 'Yes it did', 'Glad I could help. Is there anything else you would like help with?', 'Yes please, No thank you'),
(8, 'Yes please', 'Happy to help! What can I assist with?', 'Attractions, Accommodation, Transport'),
(9, 'No thank you', 'If you ever need assistance in the future, feel free to reach out. <br><br>Have a great day!', NULL),
(10, 'Attractions', 'Glad to hear you want to explore Cork! What would you like to know more about?', 'Blarney Castle, The English Market, Cork City Gaol, The Jameson Distillery'),
(12, 'Transport', 'About what transportation would you like to know more?', 'Bus, Train, Car rental'),
(13, 'Hi', 'Hello there! How can I help you today?', 'Attractions, Accommodation, Transport'),
(14, 'Blarney Castle', 'Built nearly six hundred years ago by one of Ireland’s greatest chieftans, Cormac MacCarthy, and has been attracting attention ever since. Over the last few hundred years, millions have flocked to Blarney making it a world landmark and one of Ireland’s greatest treasures.<br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(15, 'The English Market', 'Cork’s iconic English market has been trading since 1788.  One of the oldest and certainly the best covered market in Europe, it has survived famine, flood, war, fires, and multiple recessions to remain a strong part of Cork’s retail environment. </br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(16, 'Cork City Gaol', 'Cork is a city with a very rich historical and archaeological heritage much of it still in evidence today. Part of this heritage, Cork City Gaol, is a magnificent castle-like building which once housed 19th century prisoners. Take a trip back in time and wander through the wings of the Gaol, accompanied by the shuffling feet of inmates and the jingle of the warders’ keys. </br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(17, 'The Jameson Distillery', 'Founded by John Jameson in 1780, today the former factory stands as a monument to Irish Whiskey. Visit Jameson Distillery Dublin for the World’s leading distillery tours, cocktail-making classes, premium whiskey tasting sessions or to learn how to blend your own whiskey. All topped off with a Jameson at our centrepiece bar, straight from the proverbial source. <br><br>\r\nDid this answer your question?', 'Yes it did, No it did not'),
(18, 'Train', 'Kent Station is an Iarnród Éireann railway station in Cork, Ireland. Originally opened in 1893, the station operates as a hub for Intercity services to Dublin and Tralee and commuter services to Mallow, Cobh and Midleton.<br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(19, 'Car rental', 'Car rentals are available throughout the country, with most major companies having locations at the larger airports and in convenient city locations. Usually, airport car rental companies have the best prices. <br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not'),
(20, 'Bus', 'Bus Éireann operate a huge number of routes from Cork city centre to all parts of Cork including towns and villages on the Wild Atlantic Way and Ireland’s Ancient East. Cork’s main bus station is located at Parnell Place in the city centre, all intercity services to the county leave from here. <br><br>\r\n\r\nDid this answer your question?', 'Yes it did, No it did not');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
