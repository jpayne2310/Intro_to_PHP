-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2016 at 07:04 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strategy_blog`
--
CREATE DATABASE IF NOT EXISTS `strategy_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `strategy_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_posted`
--

DROP TABLE IF EXISTS `blogs_posted`;
CREATE TABLE `blogs_posted` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `create_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs_posted`
--

INSERT INTO `blogs_posted` (`id`, `title`, `content`, `date`, `create_id`) VALUES
(1, 'ADOM', 'Wow! I have to admit, that I was a bit skeptical. The community has been trying to put rogue-like games together with non-ascii graphics for at least a decade, and, for me, none has ever worked. However, ADOM is different. Already one of the very best rogue-likes of all time, with a compelling, rich story-line and hundreds of hours of challenging gameplay, the Steam version is actually very good. I put this down to clever little touches, atmospheric sounds, and some nice design. The original game remains as compelling as it ever did, and this release breathes new life into it. If you played ASCII ADOM, or even if you didn''t, in my view, this is a must-buy. Even better if it results in further expansion, e.g. via DLC in the future!', '2016-02-26', 1),
(2, 'Dungeonmans', 'I had such a good time with Dungeonmans that I found myself bumping games off of my top 5 list for 2014 in order to make room for its last-minute inclusion. It''s a game with style and charm, one that does a lot with relatively little technical wizardry. I spent countless evenings playing until, bleary-eyed, I quite literally forced myself to go to bed. The addictive quality of "one more dungeon" married with the great skill system, funny humor, and massive number of places, things, and beasts to discover works incredibly well with the sense of danger: that, at any moment, a nightmare triger could smite you for all time, leaving only whispered tales of your legend to future graduates of the Dungeonmans Academy. Well, that and all the cool stuff you donated, Indiana Jones-style. \r\n\r\n       Dungeonmans has solidified my love of roguelikes with its charming personality, accessible but addictive gameplay, and shocking amount of depth. Perhaps true roguelike fans might scoff at the persistent, RPG-style elements between each hero''s inevitable demise, but for those of us who like a little danger and tension with our leveling and gearing, this game is hard to top.', '2016-03-02', 1),
(3, 'Balrum', 'If Balrum was released 15 years ago, today it would stand for the best RPG of all times, a definition of RPG! Children, don''t let retro graphic turn you away from this game, with building, deep crafting and survival system this is by far most complete RPG game I ever played.  At start it a bit reminds of Arcanum... won''t reveal much nuff said :) But If you ever wanted an RPG where you can do what ever you want and interact with every single object in game, this is it!  Altough graphic is in retro/old style textures are great! Also with good sound effects and music melt togethere we have one awesome game here .  Let''s be honest it still needs more polishing with rendering, and giving it a final touch, but still it is definitely worth buying at current stage. The ammount of fun time Balrum can give you it''s insane ^^  Overall; If you are looking for survival/crafting/rpg game look no further,  Highly recommended!', '2005-03-01', 8),
(4, 'Fallout 4', 'I''ve logged a couple hundred hours in both Fallout 3 and Fallout: New Vegas. After putting in around 20 hours into Fallout 4, my opinion can be summed up as follows: great game, terrible port, with a few misguided attempts at innovation.  Pros: + Fantastic character customization. Even without more detailed controls, the system allows for truly unique looking characters. + Great characterization. I''ve frequently heard people claim characters are "bland" and "boring", but those that I''ve run in to so far have been anything but. I think that this opinion stems from the first few hours of the game, when you''re first getting a feel for things. Preston Garvey is admittedly pretty bland, as well as the inhabitants of every tiny settlement until you reach the edge of Boston. Once you start getting into the nitty gritty of it, you''ll find some charming characters. + Good AI, improved companion AI. This is another point of contention. I''ve seen people complain that the AI is bad, but in my experience, it''s above average when compared to most other AAA titles these days, and leaps ahead of where Bethesda was with Skyrim and the previous Fallout. Enemies make frequent use of cover, attempt to flank, etc. Companions position themselves to accurately fire down at people. I''ve had very few issues so far. + Amazing gun/armor customization. Glad they added in layered armoring. + Music. Great song choice, cool radio station, funny announcer (though I do hope he''ll actually tie into a quest at some point). Non-radio music is also great. + Environment and Level Design. Very pleased with how it turned out. Plus, the increased amount of outer-cell and vertical-gameplay oriented areas makes me very happy.   Contested: = Dialogue. I don''t like the four-button system, and I don''t like the whole "color indicated difficulty" with speech checks. I very much prefer a flat threshold. That said, the dialogue is fluid, the multi-person conversations are a refreshing addition, and I can''t bring myself to outright dislike this. = Bugs. This is probably the most bug-free Bethesda release I''ve ever seen, not counting the problems associated with Gamebryo or the game''s status as a mediocre port. Still, the bugs are there, and they are occasionally jarring. Every major release should expect some bugs, and Fallout 4 seems about average for the games industry rather than for Bethesda''s historically poor track record. = Story. I can take it or leave it, which may be better to take as a bad sign. If this game were linear, this would be a major downer.  Cons: - Controls. Jesus, the control scheme is bad. UI is terrible. This was a case of people reassigning keys to be used on the PC rather than giving it the attention is deserves. This is probably the worst of it. With a decent UI, almost half the problems with the game would instantly disappear. - Voiced Protagonist. Ties in with the above. Personally, I find the voice actors did great jobs doing this, but it still doesn''t fit, and completely removes the ability for me to make a character of my own, which was a large part of the appeal. I can''t get wrapped up in this character''s problems. I can''t bring myself to care about his/her plight on the Earth. I think this is mostly a matter of poor execution. A voiced protagonist would work fine if they also managed to keep the character''s motivations ambiguous, and not have it so heavily reliant on a preestablished backstory. - They dumbed down the "RP" in "RPG". It''s now an FPSrpG. I want my perk/skill based dialogue checks back. I want there to be moral chocies that shape how my character is seen. I want there to be a karma meter that shows how I''m perceived in the wasteland. - Gamebyro and all of the issues associated with it. - Terrible PC options. You''ll have to go directly into the preferences & initialization files to change things like mouse acceleration and FOV. - No holstered weapons. This irks me more than it should. (Clarification: I meant that when a weapon is holstered, you can''t see it on the player model.)  Not Rated: ~ Performance. I have a very high end system, so I can''t speak as to how nicely this runs on budget machines, but I''ve heard good things.  I may revisit this and add more with my updated thoughts as I progress.', '2016-03-02', 8),
(5, 'Worlds of Magic', 'Holy molly... Ok I was given this game as a gift and I was suprised how much this game is bad like really bad. Firstly I started the tutorial... I wasnt able to finish it because of a bug, so I have started a arena mod... I wasnt able to finish it because of a bug. Than I started the game.... I wasnt able to finish it because how ????ing boring it was and for a bug !  Ok for the summary the game is not finished and sucks but developers doesnt even give a ???? in fact they went silent months ago.   So yeah dont buy it, even if you find it somewhere for free this game sucks, I have warned you', '2016-03-03', 8),
(6, 'One Way Heroics', 'Sold everything I had to a poor merchant for silvers, made him get mauled by a bear, took the stuff he dropped, walked away with 50,000 silvers and all my stuff and extra, rinsed and repeated with every town I come upon. Got 999.999 silvers and became the richest man in the world where money doesn''t matter anymore because everyone is dying. put on a bracelet that bloody merchant lying on the ground had, sacrificing half my stats but getting 3x experience, after 10 days I rose to level 649 and became an all powerful God. One-hit killed everyone I came across by punching it in the face. True story.  Actual Review of the Game: Totally worth the price when it goes on sale like the Steam Summer Sale and the Winter Exploration Sale where it gets to less than a buck. There''s 8 classes (only a couple in the beginning), but 24 sprites to choose fun. The worlds are randomly generated and filled with a lot of content that take a long time to go through, finding almost a new thing everytime. After a long time, my brother and I went through every NPC, companion, items, and weapons you could go through, but it never got boring because it''s so different (yet the same) every time! I just recently got the DLC One Way Heroics Plus and it has about 3x the content now comparing it to the original, much more aesthetics and features that got me into it again. The music that is seen throughout the different biomes, towns, and bosses is also really good enough that I put them on my phone because you can find them online for free. Its just awesome overall.', '2016-03-06', 8),
(7, 'Sorcerer King', 'So i just bought the game about a week ago. I have already beaten it on normal lvl with the large map style. There is many things I enjoy about this game. Turn based battles. City development. Open feel for exploration. And nice way of making your decisions count in the game. What I dont like. Cant upgrade your units LIke in fallen enchantress. Citys get to a point where they can only build food, mana, defence. No skill tree besides for your heros. Need a tech tree. I learned every spell and only several where very useful. Ai. is dumb. Just lets your cities bombard them until they die. Need events to happen during the game spawning new monsters. Overall this is a decent game but it needs work. I got to the point where auto battles happened even with the biggest of armies. I would give this game a 3 out of 5. Barely', '2016-03-02', 9),
(8, 'AntharioN', 'Antharion is quite a charming little game.  - The gameplay feels a lot like Lords of Xulima. Focus on dungeon crawling and character building. The exploration mode also feels similar because your party is lumped together in a group. Combat is simplistic but through spells and such, variety and interesting challenges are created. Combat, overall, is quite satisfying due to good encounter design, here you fight spellcasters and such that are actually quite threatening due to the use of spells and disablers. I also like how small things you do can affect your victory in battles, and the power curve of your characters is also deeply satisfying.  - I like the fact that the game unabashedly doles out "Collect 10 Crab Meats" type of quests. There''s almost too much self-seriousness and "progressiveness" in newer RPGs and having this sort of playful throwback to older times is great. I also really liked battling The Butcher, I love throwbacks like this to older games. A game that respects it''s roots and it''s forerunners is itself worthy of respect. Overall though, there is barely any plot or story, and what there is is very pulpy and light-hearted, but this is really not the sort of game you play for dialogue and character interaction.  - The skill system is excellent. Almost everything feels useful and rewarding, and having to balance the combat and noncombat skills across characters makes for very involving gameplay. The game itself does a really good job of balancing combat versus non-combat skills.  - Itemization is great, and I love how the cool stuff I am finding actually shows up on my characters. Sometimes, less is more. Before trying the game, I assumed the simplistic graphics would be a dealbreaker but they''re actually very charming.  - Money has a lot of value, and specially early on in the game, resource management is quite critical. There''s so much you are tempted to spend on but at the same time, you need to hoard for better things later on.  - The game really knows how to create the feeling of "exploration". You wander into corridors only to come up to a dead end. Sometimes you find some treasure, sometimes a secret passage. You never know what to expect. Encounters are usually appropriately spaced out, whether in dungeons or overland.  Overall, a very good, solid, old-school dungeon crawl.  ', '2016-03-01', 9),
(9, 'Divinity: Original Sin', 'In a world where ', '2016-03-08', 1),
(10, 'Wurm Unlimited', 'I tried to like this. I couldn''t. I like sandboxes and love them when they have the potential for long term persistent change. This had some micromanaging at the start just to survive your first few nights. That in itself was extremely time consuming and difficult but I like a little challenge. Made a server, slightly inflated rates. Ok let''s do this.  I eventually found out this relationship wasn''t going to happen. User vs UI: You have to right click or go into menus for nearly everything. There is no left-click = use tool. You have to queue up several actions and your character statistics throttle this. It also doesn''t help that the game has a built-in wiki that it encourages you to use for every single item.  There is no tutorial. Fighting a wild cat of really low level took half an hour and 3 retreats to heal up. Even then the combat log was saying "barely poked" or "hardly scratched" which wasn''t very reassuring. Trying to get started with the ''first night essentials'' was taking the greater part of two hours.  Could hardly make tools as you have a percentage based failure rate in proportion to low crafting skill.  On top of that Java loved to hang and crash.  This game is meant for a large persistent community with people religiously returning on a daily basis to get things done. You would only begin to experience what the game has to offer when you have a constant flow of over 16 people working together. There is no going lone wolf and expecting to get a small start to eventually bring people on or become accepted to a group. You need a team and you need people as a single person at starting rank cannot do anything within a reasonable time frame. Tales of other players explain that they spent months or even years of repeated returns to the game just to spend a lot of time and feel ''rewarded''. It''s at this point where the game seems more like a second job than just having fun for a little bit.  So for a short pick up and go this is definitely not the game you are looking for.  If you like convoluted UI with tons of clicking and days or weeks waiting from queued up actions then this is it.  I don''t mind a bit of a grind but this was way too much for my patience, so I can''t recommend this title.', '2016-03-06', 7),
(11, 'Thea: The Awakening', 'I''ve only played for a few hours, and I''m already bored. I guess it''s one of those "love it or hate it" things.  The combat system is pretty innovative and I liked it at first, but it gets old really fast, especially since every kind of challenge works exactly the same, only using different stats. Gathering is also really dull, and takes longer than it should due to the somewhat clunky interface. Also, most of the things you can craft aren''t particularly useful and there''s no point to making them once you can make better things. There''s also no other players in the game, only wandering monsters and predefined encounters, very unusual for a 4X game and not a change I like.  Another problem is the game''s reliance on random chance to generate difficulty, rather than actually making the game difficult. Between the hordes of suicidal bees/rats/bats/spiders that continually insist on attacking you, making you spend several minutes each time to defeat the non-threats (because the auto-resolve tends to hurt you a lot more than you would actually get during the combat), you''ll occasionally get events with much more powerful creatures, and the difficulty indicators don''t always do justice to what you''re actually fighting against. Sometimes random chance screws the player over with how the cards are drawn (generally, whoever can get their heavy-hitters out in the front will win), and the card system also stifles party diversity (ie, you''ll be put in situations where your gatherers are pushed onto the front line while your warriors are put in the back, and you only get one reshuffle, which sometimes doesn''t actually reshuffle the cards).  The story is meant to be one of the strong points of the game, but overall I''m not impressed so far. From what I''ve played through, it seems like a rather stereotypical fantasy story (evil racist humans ruin everything for the good pure elves with their nefarious pursuit of science over magic and knowledge over faith), and the player character has a very limited set of responses (it says there''s other options that are unavailable, but doesn''t explain why - do I need to do something else or obtain some specific skill/material, or is it just based on the god I''m playing?).  Also, the game doesn''t allow you to have multiple save files, so you''re basically playing one ironman game at a time.', '2016-03-08', 7),
(12, 'Heroes of Steel RPG', 'I applaud the Trese Brothers for their attempt at making a solid turn-based RPG, however, it unfortunately falls pretty short. This is glaringly a mobile port, without even trying to mask it—there''s even sort of ads to purchase the game on iOS and Android. Usually I don''t have an issue with mobile ports, but I think the transition may have perhaps affected the controls. The responsiveness of the commands is hit or miss, which is what really breaks this game for me. I won''t dog the art style as I saw many people do when this was in Greenlight, because it''s much better than I could do.  I''m surprised I''m the first negative reviewer, but I''m sure most players received the game for free from a Groupees bundle(as I did) and are just being grateful. Most of the positive reviewers seem to have less than 30 minutes logged—take that how you will. I''m glad I didn''t pay for this, as $12 about $10 too much. 4/10', '2016-03-10', 9),
(13, 'Lords of Xulima', 'I have played this game 3 times through. In my opinion it is more enjoyable than either Divinity Original Sin or Pillars of Eternity. I want more however and there does not appear to be any coming.  Likes – the turn based system works well. Each class has true strengths and weaknesses. A fairly good storyline. Functional graphics. Variety of terrains and monsters.  Improvement Opportunities – would of liked more sub quests with substance. Store owners rarely sell anything worthy. I would like to see decent quests for better weapons or special items. More deeper and darker dungeons and caves. Some of the electric and fireball trap/puzzles are annoying.  ', '2016-03-10', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `pwd`, `fname`, `admin`) VALUES
(1, 'jpayne2310', 'jpayne2310@hotmail.com', '$2y$10$/J.nRba9KvvYVIBd/cI5YeFDFON76a9fBBacMv1wY2ciE/R0VUTWS', 'James', 1),
(7, 'clark', 'clark@clark.com', '$2y$10$TGvU4vmQ5I2gMURRMEcxKeCFXpf4.v4Fr4kg1lkq4.mdsChgdPrOK', 'clark', 1),
(8, 'Bob', 'Bob@bobbyo.com', '$2y$10$OAkmbD6VC1igZsz1HC557OkcvCmH3Yden5I4nNinBfqz7WKOB1dZu', 'Bob', 2),
(9, 'Harry', 'harry@harry.com', '$2y$10$hkjq.jPodrr0xjk8n92TQuiSFWC6zgfhjW/MED/0xhY0RHALtAeZO', 'Harry', 2),
(10, 'Mat', 'Mat@Mat.com', '$2y$10$kxCB.rwmMS9HOE.PXI134uEL7jCuCTpmPWTyEJIYusqlGl/Kp/Mom', 'Mat', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs_posted`
--
ALTER TABLE `blogs_posted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs_posted`
--
ALTER TABLE `blogs_posted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
