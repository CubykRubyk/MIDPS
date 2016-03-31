-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 31 2016 г., 10:16
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog_members`
--

CREATE TABLE IF NOT EXISTS `blog_members` (
  `memberID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'Demo', '$2y$10$wJxa1Wm0rtS2BzqKnoCPd.7QQzgu7D/aLlMR5Aw3O.m9jx3oRJ5R2', 'demo@demo.com');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `postID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL,
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(7, 'CSS Button Style: Draped Background Effect', '<p>These CSS buttons are endowed with a partially transparent background that "drapes" into view when the mouse rolls over them, creating a sleek, polished look. The "drape" is rendered using a <code>:after</code> pseudo element with rounded corners that glide into view thanks to CSS3 transitions.</p>', '<p>These CSS buttons are endowed with a partially transparent background that "drapes" into view when the mouse rolls over them, creating a sleek, polished look. The "drape" is rendered using a <code>:after</code> pseudo element with rounded corners that glide into view thanks to CSS3 transitions.</p>\r\n<p>This button style can be applied to BUTTON or A elements to style either depending on your needs.</p>\r\n<p>&nbsp;</p>\r\n<p>&lt;style&gt;<br /><br />.drapeeffect{<br />&nbsp; background: #3fb44d; /* button background */<br />&nbsp; color: white; /* button text color */<br />&nbsp; outline: none;<br />&nbsp; border-width: 0;<br />&nbsp; padding: 8px 10px; <br />&nbsp; font-weight: bold;<br />&nbsp; font-size: 14px; /* font size */<br />&nbsp; text-transform: uppercase;<br />&nbsp; line-height: 2;<br />&nbsp; position: relative;<br />&nbsp;&nbsp; &nbsp;display: inline-block;<br />&nbsp; cursor: pointer;<br />&nbsp;&nbsp; &nbsp;text-decoration: none; /* remove underline if using A instead of BUTTON tag */<br />&nbsp; overflow: hidden;<br />}<br /><br />.drapeeffect:after{<br />&nbsp; content: '''';<br />&nbsp; position: absolute;<br />&nbsp; width: 100%;<br />&nbsp; height: 100%;<br />&nbsp; border-radius: 0 0 30% 30%/50%;<br />&nbsp; background: rgba(255,255,255,.2); /* white background with high transparency */<br />&nbsp; left: 0;<br />&nbsp; top: -100%;<br />&nbsp; transition: all .5s;<br />}<br /><br />.drapeeffect:hover:after{<br />&nbsp; top: 0;<br />&nbsp; border-radius: 0;<br />&nbsp; transition: top .5s, border-radius .5s .5s;<br />}<br /><br />/* //// Drape from Center effect //// */<br /><br />.drapecenter:after{<br />&nbsp; border-radius: 50%;<br />}<br /><br />/* //// Drape from Left effect //// */<br /><br />.drapeleft:after{<br />&nbsp; top: 0;<br />&nbsp; left: -100%;<br />&nbsp; border-radius: 0 20% 20% 0/80%;<br />}<br /><br />.drapeleft:hover:after{<br />&nbsp; left: 0;<br />&nbsp; transition: left .5s, border-radius .1s .5s;<br />}<br /><br />/* //// Drape from Right effect //// */<br /><br />.draperight:after{<br />&nbsp; top: 0;<br />&nbsp; left: 100%;<br />&nbsp; border-radius: 20% 0 0 20%/80%;</p>', '2016-03-30 20:08:54'),
(8, 'Find a Coding Buddy to Make Learning Easier and More Fun', '<p>There are plenty of <a href="http://lifehacker.com/the-best-resources-to-learn-to-code-1517844722">resources for learning to code</a>, but none is better than a real person who can explain concepts to you, brainstorm logic with you, and answer questions for you. This is why, whether you''re an experienced programmer or a complete beginner, you should get a coding buddy.</p>', '<p><img src="http://i.kinja-img.com/gawker-media/image/upload/s--93tPlJ7J--/steuem6ampf2iqb8voqd.jpg" alt="" width="636" height="358" /></p>\r\n<p>&nbsp;</p>\r\n<p>There are plenty of <a href="http://lifehacker.com/the-best-resources-to-learn-to-code-1517844722">resources for learning to code</a>, but none is better than a real person who can explain concepts to you, brainstorm logic with you, and answer questions for you. This is why, whether you''re an experienced programmer or a complete beginner, you should get a coding buddy.</p>\r\n<p>&nbsp;</p>\r\n<p>Coding with someone else will help you learn a new language more efficiently. Not only does having a knowledgeable buddy give you the backup you need to figure out a language, but it also gives you someone to teach, <a href="http://lifehacker.com/learn-more-efficiently-by-planning-to-teach-what-youre-1621733673">which is a great way to learn as well</a>. <a href="https://twitter.com/bellebcooper" target="_blank">Belle Beth Cooper</a>, <a href="https://exist.io/" target="_blank">Exist</a> developer, explains why she finds her coding buddy so valuable:</p>\r\n<p>&nbsp;</p>\r\n<blockquote>\r\n<blockquote>\r\n<p><em>I''ve yet to find a method of learning that beats having a real person to talk to.</em></p>\r\n<p><em>My co-founder Josh, who''s mostly a Python developer, has practically learned Objective-C alongside me thanks to fielding my many programming theory questions ("How does an if statement work again?") and helping me with debugging when I''m truly stuck.</em></p>\r\n<p><em>At the very least, having a patient coding buddy who can explain fundamental programming principles is a huge help. Josh will often help me think through the most logical way to approach a problem, before I work out the specifics of doing so in Objective-C.</em></p>\r\n</blockquote>\r\n</blockquote>', '2016-03-31 08:06:19'),
(9, 'Treehouse for iPad Makes Learning to Code on the Go Simple', '<p>iPad: We''re fans of the learn to code company Treehouse''s web app because it makes learning design and coding fun. Now, the web app is available on the iPad, and includes all types of lessons to get you started.</p>', '<p><img src="http://i.kinja-img.com/gawker-media/image/upload/s--vaJqxclC--/18v246tvkl64ljpg.jpg" alt="" width="640" height="360" /></p>\r\n<p>&nbsp;</p>\r\n<p>The Treehouse app for iPad features all the content of the web (with the exception of the Android coding classes), and it''s integrated with your web account so you can pick up where you left off. This means you can watch videos, go through tutorials, and more. Typing code on the iPad certainly isn''t the easiest thing, but if you just want a way to pick up where you left off online, or continue your education on the go, the Treehouse mobile app is great.</p>', '2016-03-31 08:15:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
