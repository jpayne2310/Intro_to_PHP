-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2016 at 11:36 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--
CREATE DATABASE IF NOT EXISTS `music` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `music`;

-- --------------------------------------------------------

--
-- Table structure for table `ccdata`
--

DROP TABLE IF EXISTS `ccdata`;
CREATE TABLE `ccdata` (
  `id` int(11) NOT NULL,
  `ccNum` varchar(40) NOT NULL,
  `ccName` varchar(50) NOT NULL,
  `ccExpDate` date NOT NULL,
  `ccCCV` varchar(20) NOT NULL,
  `ccType` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccdata`
--

INSERT INTO `ccdata` (`id`, `ccNum`, `ccName`, `ccExpDate`, `ccCCV`, `ccType`) VALUES
(130, '341234567891234', 'James Payne', '2020-10-31', '123', 'AM'),
(131, '30123456723456', 'James Payne', '2018-02-28', '123', 'CB'),
(132, '36123456723456', 'James Payne', '2018-03-31', '123', 'DC'),
(133, '6221260123456734', 'James Payne', '2022-07-31', '123', 'DI'),
(134, '214912345678123', 'James Payne', '2017-11-30', '123', 'EN'),
(135, '3528000134563456', 'James Payne', '2019-12-31', '123', 'JC'),
(136, '5512345678123456', 'James Payne', '2017-01-31', '123', 'MC'),
(137, '4123456723456', 'James Payne', '2016-02-29', '123', 'VA');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `artist` varchar(40) NOT NULL,
  `running_time` mediumint(9) NOT NULL,
  `larics` text NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `artist`, `running_time`, `larics`, `rating`) VALUES
(2, 'Only Women Bleed', 'Alice Cooper', 210, 'Man got his woman to take his seed he got the power oh she got the need\r\nShe spends her life through pleasing up her man she feeds him dinner or anything she can\r\nShe cries alone at night too often he smokes and drinks and don''t come home at all\r\nOnly women bleed only women bleed only women bleed\r\nMan makes your hair grey he''s your life''s mistake all you''re really looking for''s an even break\r\nHe lies right at you you now hate this game he slaps you once in a while and you live and love in pain\r\nShe cries alone at night too often he smokes and drinks and don''t come home at all ooh\r\nOnly women bleed only women bleed only women bleed only women bleed\r\nOnly women bleed only women bleed only women bleed\r\nMan got his woman to take his seed he got the power oh she got the need\r\nShe spends her life through pleasing up her man she feeds him dinner or anything she can\r\nShe cries alone at night too often he smokes and drinks and don''t come home at all\r\nOnly women bleed only women bleed only women bleed\r\nBlack eyes all of the time don''t spend a dime clean up this grime\r\nAnd you there down on your knees begging me please come watch me bleed\r\nOnly women bleed only women bleed only women bleed only women bleed\r\nOnly women bleed only women bleed only women bleed\r\n', 4.5),
(3, 'Steven', 'Alice Cooper', 346, 'I don''t want to see you go I don''t even want to be there\r\nI will cover up my eyes and pray it goes away\r\nYou''ve only lived a minute of your life I must be dreaming please stop screaming\r\nI don''t like to hear you cry you just don''t know how deep that cuts me\r\nSo I will cover up my eyes and it will go away\r\nYou''ve only lived a minute of your life I must be dreaming please stop screaming\r\nSteven Steven I hear my name Steven is someone calling me I hear my name\r\nSteven that icy breath it whispers screams of pain\r\nI don''t want to feel you die but if that''s the way that god has planned you\r\nI''ll put pennies on your eyes and it will go away see\r\nYou''ve only lived a minute of your life I must be dreaming\r\nSteven is someone calling me no Steven I think I hear a voice it''s outside the door\r\nSteven I hear my name Steven is someone calling me I hear my name\r\nSteven what do you want Steven what do you want what do you want what do you want\r\nSteven Steven Steven I hear my name\r\n', 4),
(4, 'Crazy Train', 'Ozzy Osbourne', 297, 'All aboard! HahahaCrazy, but that''s how it goesMillions of people living as foesMaybe. it''s not too lateTo learn how to love, and forget how to hateMental wounds not healingLife''s a bitter shameI''m goin'' off the rails on a crazy trainI''m goin'' off the rails on a crazy trainI''ve listened to preachers,I''ve listened to foolsI''ve watched all the dropoutsWho make their own rulesOne person conditioned to rule and controlThe media sells it and you live the roleMental wounds still screamingDriving me insaneI''m goin'' off the rails on a crazy trainI''m goin'' off the rails on a crazy trainI know that things are going wrong for meYou gotta listen to my words, yeah, yeahHeirs of a cold war,that''s what we''ve becomeInheriting troubles,I''m mentally numbCrazy, I just cannot bearI''m living with something that just isn''t fairMental wounds not healingWho and what''s to blameI''m goin'' off the rails on a crazy trainI''m goin'' off the rails on a crazy train', 3.5),
(5, 'Goodbye to Romance', 'Ozzy Osbouren', 336, 'Yesterday has been and gone\r\nTomorrow will I find the sun\r\nOr will it rain\r\nEverybody''s having fun\r\nExcept me, I''m the lonely one\r\nI live in shame\r\n\r\nI say goodbye to romance, yeah\r\nGoodbye to friends, I tell you\r\nGoodbye to all the past\r\nI guess that we''ll meet\r\nWe''ll meet in the end\r\n\r\nI''ve been the king, I''ve been the clown\r\nNow broken wings can''t hold me down\r\nI''m free again\r\nThe jester with the broken crown\r\nIt won''t be me this time around\r\nTo love in vain\r\n\r\nI say goodbye to romance, yeah\r\nGoodbye to friends, I tell you\r\nGoodbye to all the past\r\nI guess that we''ll meet\r\nWe''ll meet in the end\r\n\r\nAnd I feel the time is right\r\nAlthough I know that you just might say to me\r\nWhat''cha gonna do\r\nWhat''cha gonna do\r\nBut I have to take this chance goodbye\r\nTo friends and to romance\r\nAnd to all of you\r\nAnd to all of you\r\nCome on now\r\n\r\nI say goodbye to romance, yeah\r\nGoodbye to friends, I tell you\r\nGoodbye to all the past\r\nI guess that we''ll meet\r\nWe''ll meet in the end\r\n\r\nAnd the weather''s looking fine\r\nAnd I think the sun will shine again\r\nAnd I feel I''ve cleared my mind\r\nAll the past is left behind again\r\n\r\nI say goodbye to romance, yeah\r\nGoodbye to friends, I tell you\r\nGoodbye to all the past\r\n', 2.5),
(6, 'Suicide Solution', 'Ozzy Ozbouren', 260, 'Wine is fine, but whiskey''s quicker\r\nSuicide is slow with liqueur\r\nTake a bottle, drown your sorrows\r\nThen it floods away tomorrows\r\nAway tomorrows\r\n\r\nEvil thoughts and evil doings\r\nCold, alone you hang in ruins\r\nThought that you''d escape the reaper\r\nYou can''t escape the master keeper\r\n\r\n''Cos you feel life''s unreal, and you''re living a lie\r\nSuch a shame, who''s to blame, and you''re wondering why\r\nThen you ask from your cask, is there life after birth\r\nWhat you saw can mean hell on this earth\r\nHell on this earth\r\n\r\nNow you live inside a bottle\r\nThe reaper''s travelling at full throttle\r\nIt''s catching you, but you don''t see\r\nThe reaper''s you, and the reaper is me\r\n\r\nBreaking laws, knocking doors\r\nBut there''s no one at home\r\nMade your bed, rest your head\r\nBut you lie there and moan\r\nWhere to hide, suicide is the only way out\r\nDon''t you know what it''s really about\r\n\r\nWine is fine, but whiskey''s quicker\r\nSuicide is slow with liqueur\r\nTake a bottle, drown your sorrows\r\nThen it floods away tomorrows\r\n', 2.5),
(7, 'Steal Away', 'Ozzy Osbourne', 208, 'Now I feel the time is right\r\nLove will flow like wine tonight\r\nGive your love and it will come to you, yeah\r\nIf you feel that you and me\r\nCould escape and hold the key\r\nTo a paradise that''s true and free, yeah\r\n\r\nSteal away\r\nSteal away\r\nSteal away the night\r\n\r\nYou gotta steal it, come on baby\r\n\r\nNow I''ve met your honesty\r\nYou are here and I am free\r\nBroken chains have fallen all around, yeah\r\nPoint my finger at the fools\r\nBroken chains and broken rules\r\nLet it be rebellion rules tonight, yeah\r\n\r\nSteal away\r\nYou gotta steal away\r\nSteal away the night\r\n\r\nCould it be a dream come true\r\nNow that I am here with you?\r\nTearful eyes of joy is something new, yeah\r\nRun away with me tonight\r\nDream the dream and light the light\r\nHappiness is what you give to me, yeah\r\n\r\nSteal away\r\nSteal away\r\nYou gotta steal away the night\r\n\r\nSteal away\r\nSteal away\r\nYou gotta steal away the night\r\n\r\nSteal away\r\nSteal away\r\nSteal away the night\r\n', 2.7),
(8, 'Jumper', 'Third Eye Blind', 273, 'I wish you would step back \r\nFrom that ledge my friend \r\nYou could cut ties with all the lies \r\nThat you''ve been living in \r\nAnd if you do not want to see me again \r\nI would understand, I would understand \r\nThe angry boy a bit too insane \r\nIcing over a secret pain \r\nYou know you don''t belong \r\nYou''re the first to fight \r\nYou''re way too loud \r\nYou''re the flash of light on a burial shroud \r\nI know something''s wrong \r\nWell everyone I know has got a reason \r\nTo say put the past away \r\nI wish you would step back \r\nFrom that ledge my friend \r\nYou could cut ties with all the lies \r\nThat you''ve been living in \r\nAnd if you do not want to see me again \r\nI would understand, I would understand \r\nWell he''s on the table and he''s gone to code \r\nAnd I do not think anyone knows \r\nWhat they''re doing here \r\nAnd your friends have left you \r\nYou''ve been dismissed \r\nI never thought it would come to this \r\nAnd I, I want you to know \r\nEveryone''s got to face down the demons \r\nMaybe today \r\nYou could put the past away \r\nI wish you would step back from \r\nThat ledge my friend \r\nYou could cut ties with all the lies \r\nThat you''ve been living in \r\nAnd if you do not want to see me again \r\nI would understand, I would understand \r\nI would understand, I would understand \r\nI would understand, I would understand \r\nCan you put the past away\r\n', 3.2),
(9, 'How''s It Going To Be', 'Third Eye Blind', 253, 'I''m only pretty sure that I can''t take anymore \r\nBefore you take a swing \r\nI wonder what are we fighting for \r\nWhen I say out loud \r\nI want to get out of this \r\nI wonder is there anything \r\nI''m going to miss \r\nI wonder how it''s going to be \r\nWhen you don''t know me \r\nHow''s it going to be \r\nWhen you''re sure I''m not there \r\nHow''s it going to be \r\nWhen there''s no one there to talk to \r\nBetween you and me \r\nCause I don''t care \r\nHow''s it going to be, How''s it going to be \r\nWhere we used to laugh \r\nThere''s a shouting match \r\nSharp as a thumbnail scratch \r\nA silence I can''t ignore \r\nLike the hammock by the \r\nDoorway we spent time in, swings empty \r\nDon''t see lightning like last fall \r\nWhen it was always about to hit me \r\nI wonder how''s it going to be \r\nWhen it goes down \r\nHow''s it going to be \r\nWhen you''re not around \r\nHow''s it going to be \r\nWhen you found out there was nothing \r\nBetween you and me \r\nCause I don''t care \r\nHow''s it going to be \r\nAnd how''s it going to be \r\nWhen you don''t know me anymore \r\nAnd how''s it going to be \r\nWant to get myself back in again \r\nThe soft dive of oblivion \r\nI want to taste the salt of your skin \r\nThe soft dive of oblivion oblivion \r\nHow''s it going to be \r\nWhen you don''t know me anymore \r\nHow''s it going to be, How''s it going to be \r\nHow''s it going to be\r\n', 4),
(10, 'The Background', 'Third Eye Blind', 296, 'Everything is quiet since you''re not around \r\nAnd I live in the numbness now \r\nIn the background \r\nI do the things we did before \r\nI walk Haight Street to the store \r\nAnd they say where''s that crazy girl \r\nYou don''t get drunk on red wine and fight no more \r\nI don''t see you anymore since the hospital \r\nThe plans I make still have you in them \r\nCause you come swimming into view \r\nAnd I''m hanging on your words \r\nLike I always used to do \r\nThe words they use so lightly \r\nI only feel for you \r\nI only know because I carry you around \r\nIn the background \r\nI''m in the background \r\nWords they come and memories all repeat \r\nI lift your head while they change the hospital sheets \r\nAnd I would never lie to you no \r\nI would never lie to you no \r\nI felt you long after we were through, we were through \r\nThe plans I make still have you in them \r\nCause you come swimming into view \r\nAnd I''m hanging on your words \r\nLike I always used to do \r\nThe words they use so lightly \r\nI only feel for you \r\nI only know because I carry you around \r\nIn the background \r\nCause I felt you long after we were through \r\nWell you come swimming into view \r\nAnd I''m hanging on your words \r\nLike I always used to do \r\nThe words they use so lightly \r\nI only feel to you \r\nI only know because \r\nI''m way I''m way in the background \r\nI''m in the background\r\n', 4.2),
(11, 'Motorcycle Drive By', 'Third Eye Blind', 262, 'Summer time and the wind is blowing outside \r\nIn lower Chelsea and I don''t know \r\nWhat I''m doing in this city \r\nThe sun is always in my eyes \r\nIt crashes through the windows \r\nAnd I''m sleeping on the couch \r\nWhen I came to visit you \r\nThat''s when I knew I could never have you \r\nI knew that before you did \r\nStill I''m the one who''s stupid \r\nAnd there''s this burning \r\nLike there''s always been \r\nI never been so alone \r\nAnd I''ve never been so alive \r\nVisions of you on a motorcycle drive by \r\nThe cigarette ash flies in your eyes \r\nAnd you don''t mind, you smile \r\nAnd say the world doesn''t fit with you \r\nI don''t believe you, you''re so serene \r\nCareening through the universe \r\nYour axis on a tilt, you''re guiltless and free \r\nI hope you take a piece of me with you \r\nAnd there''s things I''d like to do \r\nThat you don''t believe in \r\nI would like to build something \r\nBut you never see it happen \r\nAnd there''s this burning \r\nLike there''s always been \r\nI''ve never been so alone \r\nAnd I''ve, I''ve never been so alive \r\nAnd there''s this burning \r\nThere is this burning \r\nWhere''s the soul I want to know \r\nNew York City is evil \r\nThe surface is everything but I could never do that \r\nSomeone would see through that \r\nAnd this is our last time \r\nWe''ll be friends again \r\nI''ll get over you, you''ll wonder who I am \r\nAnd there''s this burning \r\nJust like there''s always been \r\nI''ve never been so alone alone \r\nAnd I''ve, and I''ve never been so alive \r\nSo alive \r\nI go home to the coast \r\nIt starts to rain I paddle out on the water \r\nAlone \r\nTaste the salt and taste the pain \r\nI''m not thinking of you again \r\nSummer dies and swells rise \r\nThe sun goes down in my eyes \r\nSee this rolling wave \r\nDarkly coming to take me \r\nHome \r\nAnd I''ve never been so alone \r\nAnd I''ve never been so alive\r\n', 4.5),
(12, 'God Of Wine', 'Third Eye Blind', 317, 'Every thought that I repent There''s another chip you haven''t spent And you''re cashing them all in Where do we begin to get clean again Can we get clean again I walk home alone with you And the mood you''re born into Sometimes you let me in And I take it on the chin I can''t get clean again I want to know can we get clean again The God of Wine comes crashing through The headlights of a car that took you farther Than you thought you''d ever want to go We can''t get back again We can''t get back again She takes a drink and then she waits The alcohol it permeates And soon the cells give way, and cancels out the day I can''t keep it all together I know I know I know... I can''t keep it all together And the siren''s song that is your madness Holds a truth I can''t erase All alone on your face Every glamorous sunrise Throws the planets out of line A star sign out of whack, a fraudulent zodiac And the God of Wine is crouched down in my room You let me down, I said it, now I''m going down And you''re not even around And I said no no no... I can''t keep it all together I know I know I know... I can''t keep it all together And there''s a memory of a window Looking through I see you Searching for something I could never give you And there''s someone who understands You more than I do A sadness I can''t erase All alone on your face', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pwd`, `admin`) VALUES
(1, 'music', 'password', 1),
(2, 'musicphp', 'password', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccdata`
--
ALTER TABLE `ccdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ccdata`
--
ALTER TABLE `ccdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
