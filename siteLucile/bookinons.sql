-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:80
-- Generation Time: Oct 24, 2017 at 04:46 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookinons`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idbooks` smallint(6) NOT NULL,
  `genre` set('adventure','sociology','psychology','fiction') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` text NOT NULL,
  `description` text,
  `release_date` date DEFAULT NULL,
  `price` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbooks`, `genre`, `title`, `author`, `description`, `release_date`, `price`) VALUES
(1, 'fiction', 'The Vegetarian', 'Han Kang', 'Before the nightmare, Yeong-hye and her husband lived an ordinary life. But when splintering, blood-soaked images start haunting her thoughts, Yeong-hye decides to purge her mind and renounce eating meat. In a country where societal mores are strictly obeyed, Yeong-hye\'s decision to embrace a more “plant-like” existence is a shocking act of subversion. And as her passive rebellion manifests in ever more extreme and frightening forms, scandal, abuse, and estrangement begin to send Yeong-hye spiraling deep into the spaces of her fantasy. In a complete metamorphosis of both mind and body, her now dangerous endeavor will take Yeong-hye—impossibly, ecstatically, tragically—far from her once-known self altogether. ', '2016-02-02', 14),
(2, '', 'Dear Ijeawele, or a Feminist Manifesto in Fifteen Suggestions', 'Chimamanda Ngozi Adichie', 'From the best-selling author of Americanah and We Should All Be Feminists comes a powerful new statement about feminism today--written as a letter to a friend. \r\n\r\nA few years ago, Chimamanda Ngozi Adichie received a letter from a dear friend from childhood, asking her how to raise her baby girl as a feminist. Dear Ijeawele is Adichie\'s letter of response.\r\n\r\nHere are fifteen invaluable suggestions--compelling, direct, wryly funny, and perceptive--for how to empower a daughter to become a strong, independent woman. From encouraging her to choose a helicopter, and not only a doll, as a toy if she so desires; having open conversations with her about clothes, makeup, and sexuality; debunking the myth that women are somehow biologically arranged to be in the kitchen making dinner, and that men can "allow" women to have full careers, Dear Ijeawele goes right to the heart of sexual politics in the twenty-first century. It will start a new and urgently needed conversation about what it really means to be a woman today.', '2017-07-07', 20),
(3, '', 'Whe should all be feminists', 'Chimamanda Ngozi Adichie', 'What does “feminism” mean today? That is the question at the heart of We Should All Be Feminists, a personal, eloquently-argued essay—adapted from her much-viewed TEDx talk of the same name—by Chimamanda Ngozi Adichie, the award-winning author of Americanah and Half of a Yellow Sun. \r\n\r\nWith humor and levity, here Adichie offers readers a unique definition of feminism for the twenty-first century—one rooted in inclusion and awareness. She shines a light not only on blatant discrimination, but also the more insidious, institutional behaviors that marginalize women around the world, in order to help readers of all walks of life better understand the often masked realities of sexual politics. Throughout, she draws extensively on her own experiences—in the U.S., in her native Nigeria, and abroad—offering an artfully nuanced explanation of why the gender divide is harmful for women and men, alike. \r\n\r\nArgued in the same observant, witty and clever prose that has made Adichie a bestselling novelist, here is one remarkable author’s exploration of what it means to be a woman today—and an of-the-moment rallying cry for why we should all be feminists.', '2014-06-13', 6),
(4, '', 'The truth about Harry Quebert', 'Joël Dicker', 'The publishing phenomenon topping bestseller lists around the world, with sales of more than two million copies in Europe and rights sold in more than forty countries, The Truth About the Harry Quebert Affair is a fast-paced, tightly plotted, cinematic literary thriller, and an ingenious book within a book, by a dazzling young writer.\r\n \r\nAugust 30, 1975: the day fifteen-year-old Nola Kellergan is glimpsed fleeing through the woods, never to be heard from again; the day Somerset, New Hampshire, lost its innocence.\r\n \r\nThirty-three years later, Marcus Goldman, a successful young novelist, visits Somerset to see his mentor, Harry Quebert, one of the country’s most respected writers, and to find a cure for his writer’s block as his publisher’s deadline looms. But Marcus’s plans are violently upended when Harry is suddenly and sensationally implicated in the cold-case murder of Nola Kellergan—whom, he admits, he had an affair with. As the national media convicts Harry, Marcus launches his own investigation, following a trail of clues through his mentor’s books, the backwoods and isolated beaches of New Hampshire, and the hidden history of Somerset’s citizens and the man they hold most dear. To save Harry, his own writing career, and eventually even himself, Marcus must answer three questions, all of which are mysteriously connected: Who killed Nola Kellergan? What happened one misty morning in Somerset in the summer of 1975? And how do you write a book to save someone’s life?', '2014-05-27', 15),
(5, '', 'We need to talk about Kevin', 'Lionel Shriver', 'Now a major motion picture by Lynne Ramsay, starring Tilda Swinton and John C. Reilly, Lionel Shriver’s resonant story of a mother’s unsettling quest to understand her teenage son’s deadly violence, her own ambivalence toward motherhood, and the explosive link between them reverberates with the haunting power of high hopes shattered by dark realities.\r\n\r\nLike Shriver’s charged and incisive later novels, including So Much for That and The Post-Birthday World, We Need to Talk About Kevin is a piercing, unforgettable, and penetrating exploration of violence, family ties, and responsibility, a book that the Boston Globe describes as “sometimes searing . . . [and] impossible to put down.”', '2011-05-18', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbooks`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
