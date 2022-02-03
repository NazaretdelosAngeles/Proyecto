

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/
-- Table structure for table `doc_type`
--

CREATE TABLE IF NOT EXISTS `doc_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_type`
--

INSERT INTO `doc_type` (`id`, `name`) VALUES
(14, 'Acta de Nacimiento');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE IF NOT EXISTS `offices` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`) VALUES
(1, 'Punta de Mata');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
`id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `doc_type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `office` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateout` varchar(100) NOT NULL,
  `receive_by` varchar(100) NOT NULL,
  `ft` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doc_type`
--
ALTER TABLE `doc_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doc_type`
--
ALTER TABLE `doc_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/