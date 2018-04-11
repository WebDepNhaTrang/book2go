-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 04:09 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botble`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ZLKcLRxzQH9E8XMMWd6NITIH1J8Qdljb', 1, '2017-11-15 06:57:09', '2017-11-15 06:57:09', '2017-11-15 06:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `audit_history`
--

CREATE TABLE IF NOT EXISTS `audit_history` (
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_history`
--

INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-01 09:16:23', '2017-12-01 09:16:23'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-08 19:36:56', '2017-12-08 19:36:56'),
(1, 'menu', '{"_token":"SmQopNCkfNNCef65BqlGtq7t7CyrV9QPDipV24II","deleted_nodes":"561","menu_nodes":"[{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\",\\"id\\":545,\\"class\\":\\"\\",\\"title\\":\\"Home\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":0,\\"children\\":[]},{\\"target\\":\\"_blank\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\",\\"id\\":569,\\"class\\":\\"\\",\\"title\\":\\"Purchase\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":1,\\"children\\":[]},{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\/galleries\\",\\"id\\":566,\\"class\\":\\"\\",\\"title\\":\\"Galleries\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":2,\\"children\\":[]},{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\",\\"id\\":568,\\"class\\":\\"\\",\\"title\\":\\"Contact\\",\\"relatedId\\":1,\\"type\\":\\"pages\\",\\"position\\":3,\\"children\\":[]}]","name":"Main menu","target":"_self","title":"Contact","custom-url":"\\/galleries","icon-font":null,"class":null,"submit":"apply","language":"en_US","ref_from":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2017-12-08 19:39:22', '2017-12-08 19:39:22'),
(1, 'menu', '{"_token":"SmQopNCkfNNCef65BqlGtq7t7CyrV9QPDipV24II","deleted_nodes":null,"menu_nodes":"[{\\"id\\":\\"545\\",\\"title\\":\\"Home\\",\\"relatedId\\":\\"0\\",\\"type\\":\\"custom-link\\",\\"customUrl\\":\\"\\",\\"class\\":\\"\\",\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"position\\":0,\\"children\\":[]},{\\"id\\":\\"569\\",\\"title\\":\\"Purchase\\",\\"relatedId\\":\\"0\\",\\"type\\":\\"custom-link\\",\\"customUrl\\":\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\",\\"class\\":\\"\\",\\"target\\":\\"_blank\\",\\"iconFont\\":\\"\\",\\"position\\":1,\\"children\\":[]},{\\"id\\":\\"0\\",\\"title\\":\\"New & Updates\\",\\"relatedId\\":\\"11\\",\\"type\\":\\"categories\\",\\"target\\":\\"_self\\",\\"position\\":2,\\"children\\":[]},{\\"id\\":\\"566\\",\\"title\\":\\"Galleries\\",\\"relatedId\\":\\"0\\",\\"type\\":\\"custom-link\\",\\"customUrl\\":\\"\\/galleries\\",\\"class\\":\\"\\",\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"position\\":3,\\"children\\":[]},{\\"id\\":\\"568\\",\\"title\\":\\"Contact\\",\\"relatedId\\":\\"1\\",\\"type\\":\\"pages\\",\\"customUrl\\":\\"\\",\\"class\\":\\"\\",\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"position\\":4,\\"children\\":[]}]","name":"Main menu","menu_id":"11","target":"_self","title":"Contact","custom-url":"\\/galleries","icon-font":null,"class":null,"submit":"apply","language":"en_US","ref_from":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2017-12-08 19:39:34', '2017-12-08 19:39:34'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-08 19:48:43', '2017-12-08 19:48:43'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-10 18:07:46', '2017-12-10 18:07:46'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-11 06:32:56', '2017-12-11 06:32:56'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-11 09:07:35', '2017-12-11 09:07:35'),
(1, 'post', '{"_token":"6zXsHabnuPDA0A0dAfcOBU1jjU6icrrUpooynzDY","name":"13,000+ People Have Bought Our Theme","slug":"13000-people-have-bought-our-theme","slug_id":"1","description":"Don\\u2019t act so surprised, Your Highness. You weren\\u2019t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.","content":"<p><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/7MxyPHjyu9A\\" width=\\"420\\" height=\\"315\\"><\\/iframe><\\/p>\\r\\n<p>Don\\u2019t act so surprised, Your Highness. You weren\\u2019t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There\\u2019s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Still, she\\u2019s got a lot of spirit. I don\\u2019t know, what do you think? What!? I don\\u2019t know what you\\u2019re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan\\u2013 What good is a reward if you ain\\u2019t around to use it? Besides, attacking that battle station ain\\u2019t my idea of courage. It\\u2019s more like\\u2026suicide.<\\/p>\\r\\n<p>You don\\u2019t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\\u2019re going. What?! The Force is strong with this one. I have you now.<\\/p>\\r\\n<blockquote>\\r\\n<p>We hire people who want to make the best things in the world. -Steve Jobs<\\/p>\\r\\n<\\/blockquote>\\r\\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.\\u00a0There\\u2019ll be no one to stop us this time!\\u00a0You\\u2019re all clear, kid. Let\\u2019s blow this thing and go home! Partially, but it also obeys your commands.<\\/p>\\r\\n<ul>\\r\\n<li>Dantooine. They\\u2019re on Dantooine.<\\/li>\\r\\n<li>He is here.<\\/li>\\r\\n<li>Don\\u2019t underestimate the Force.<\\/li>\\r\\n<\\/ul>\\r\\n<p><img style=\\"height: 683px; width: 1024px;\\" alt=\\"5825871567_4d477202ce_b\\" src=\\"http:\\/\\/themes.tielabs.com\\/wp-content\\/uploads\\/sites\\/3\\/2015\\/01\\/5825871567_4d477202ce_b.jpg\\" \\/><\\/p>\\r\\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.\\u00a0But with the blast shield down,\\u00a0I can\\u2019t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can\\u2019t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!<\\/p>\\r\\n<p>Still, she\\u2019s got a lot of spirit. I don\\u2019t know, what do you think? What!? I don\\u2019t know what you\\u2019re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan\\u2013 What good is a reward if you ain\\u2019t around to use it? Besides, attacking that battle station ain\\u2019t my idea of courage. It\\u2019s more like\\u2026suicide.<br \\/> You don\\u2019t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\\u2019re going. What?! The Force is strong with this one. I have you now.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<ol>\\r\\n<li>I care. So, what do you think of her, Han?<\\/li>\\r\\n<li>You mean it controls your actions?<\\/li>\\r\\n<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\\u2019re going.<\\/li>\\r\\n<li>I\\u2019m trying not to, kid.<\\/li>\\r\\n<\\/ol>\\r\\n<h2>Revenge of the Sith<\\/h2>\\r\\n<p><img style=\\"height: 300px; width: 180px;\\" alt=\\"post-image\\" src=\\"http:\\/\\/themes.tielabs.com\\/wp-content\\/uploads\\/sites\\/3\\/2015\\/01\\/post-image-180x300.jpg\\" \\/>I can\\u2019t get involved! I\\u2019ve got work to do! It\\u2019s not that I like the Empire, I hate it, but there\\u2019s nothing I can do about it right now. It\\u2019s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I\\u2019m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can\\u2019t possibly\\u2026<\\/p>\\r\\n<p>Your eyes can deceive you. Don\\u2019t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I\\u2019m trying not to, kid.<\\/p>\\r\\n<p>I\\u2019m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They\\u2019re on Dantooine.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Still, she\\u2019s got a lot of spirit. I don\\u2019t know, what do you think? What!? I don\\u2019t know what you\\u2019re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan\\u2013 What good is a reward if you ain\\u2019t around to use it? Besides, attacking that battle station ain\\u2019t my idea of courage. It\\u2019s more like\\u2026suicide.<\\/p>\\r\\n<p>Hey, Luke! May the Force be with you. Kid, I\\u2019ve flown from one side of this galaxy to the other. I\\u2019ve seen a lot of strange stuff, but I\\u2019ve never seen anything to make me believe there\\u2019s one all-powerful Force controlling everything. There\\u2019s no mystical energy field that controls my destiny. It\\u2019s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.<\\/p>\\r\\n<p>You don\\u2019t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\\u2019re going. What?! The Force is strong with this one. I have you now.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img style=\\"height: 563px; width: 1000px;\\" alt=\\"9FybtVFNSEOxogGzIvHJ_IMG_2226\\" src=\\"http:\\/\\/themes.tielabs.com\\/wp-content\\/uploads\\/sites\\/3\\/2015\\/01\\/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Hey, Luke! May the Force be with you. Kid, I\\u2019ve flown from one side of this galaxy to the other. I\\u2019ve seen a lot of strange stuff, but I\\u2019ve never seen anything to make me believe there\\u2019s one all-powerful Force controlling everything. There\\u2019s no mystical energy field that controls my destiny. It\\u2019s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.<\\/p>\\r\\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain\\u2019t in this for your revolution, and I\\u2019m not in it for you, Princess. I expect to be well paid. I\\u2019m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.<\\/p>\\r\\n<p>All right. Well, take care of yourself, Han.\\u00a0I guess that\\u2019s what you\\u2019re best at,\\u00a0ain\\u2019t it? Alderaan? I\\u2019m not going to Alderaan. I\\u2019ve got to go home. It\\u2019s late, I\\u2019m in for it as it is. The plans you refer to will soon be back in our hands.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a href=\\"http:\\/\\/themes.tielabs.com\\/wp-content\\/uploads\\/sites\\/3\\/2015\\/01\\/post-image-2.jpg\\"><img style=\\"height: 300px; width: 200px;\\" alt=\\"WOW, Nice photo !\\" src=\\"http:\\/\\/themes.tielabs.com\\/sahifa5\\/wp-content\\/uploads\\/sites\\/3\\/2015\\/01\\/post-image-2-200x300.jpg\\" \\/><\\/a><\\/p>\\r\\n<p>WOW, Nice photo !<\\/p>\\r\\n<p>I need your help, Luke. She needs your help. I\\u2019m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can\\u2019t possibly\\u2026 As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\\u2019re going.<\\/p>\\r\\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They\\u2019re on Dantooine. You\\u2019re all clear, kid. Let\\u2019s blow this thing and go home! I\\u2019m surprised you had the courage to take the responsibility yourself. I\\u2019m trying not to, kid.<\\/p>\\r\\n<p>I care. So, what do you think of her, Han? Don\\u2019t underestimate the Force. I don\\u2019t know what you\\u2019re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan\\u2013 I have traced the Rebel spies to her. Now she is my only link to finding their secret base.<\\/p>\\r\\n<p>You\\u2019re all clear, kid.\\u00a0Let\\u2019s blow this thing and go home!\\u00a0But with the blast shield down, I can\\u2019t even see! How am I supposed to fight? Alderaan? I\\u2019m not going to Alderaan. I\\u2019ve got to go home. It\\u2019s late, I\\u2019m in for it as it is.<\\/p>","note":null,"gallery":null,"seo_meta":{"seo_title":null,"seo_keyword":null,"seo_description":null},"submit":"apply","language":"en_US","ref_from":null,"status":"1","format_type":null,"categories":["6"],"image":"uploads\\/1\\/news\\/1476893533-02.jpg","tag":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 1, 4, '13,000+ People Have Bought Our Theme', 'primary', '2017-12-11 09:07:56', '2017-12-11 09:07:56'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2017-12-11 09:09:42', '2017-12-11 09:09:42'),
(1, 'block', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","name":"Sample block","alias":"sample-block","description":"This is a sample block","content":"<p><strong><span style=\\"color: #ff6600;\\">This block will be shown on the page has its shortcode!<\\/span><\\/strong><\\/p>","submit":"apply","status":"1","language":"en_US","ref_from":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Sample block', 'primary', '2018-01-17 18:32:10', '2018-01-17 18:32:10'),
(1, 'gallery', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","name":"Photography","slug":"photography","slug_id":"34","description":"This is description","order":"0","featured":"1","gallery":"[{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476520418-supergirl-season-2-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513493-world-of-tanks-football-event-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513490-tulips-4k-8k-768x1280.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513488-spectacular-sunrise-4k-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513486-power-rangers-red-ranger-4k-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513483-misty-mountains-1280x720.jpg\\",\\"description\\":null},{\\"img\\":\\"\\/uploads\\/1\\/galleries\\/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg\\",\\"description\\":null}]","submit":"apply","status":"1","language":"en_US","ref_from":null,"image":"uploads\\/1\\/galleries\\/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Photography', 'primary', '2018-01-17 18:33:32', '2018-01-17 18:33:32'),
(1, 'custom-field', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","field_group":{"rules":"[[{\\"name\\":\\"page_template\\",\\"type\\":\\"==\\",\\"value\\":\\"default\\"}]]","group_items":"[{\\"id\\":0,\\"title\\":\\"A text box\\",\\"slug\\":\\"a_text_box\\",\\"instructions\\":null,\\"type\\":\\"text\\",\\"options\\":{\\"defaultValue\\":null,\\"defaultValueTextarea\\":null,\\"placeholderText\\":\\"This text box come from custom field\\",\\"wysiwygToolbar\\":null,\\"selectChoices\\":null,\\"buttonLabel\\":null,\\"rows\\":null},\\"items\\":[]}]","deleted_items":null,"title":"Sample custom fields","status":"1","order":"0"},"apply":"1"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Sample custom fields', 'info', '2018-01-17 18:35:12', '2018-01-17 18:35:12'),
(1, 'page', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","name":"Contact","slug":"contact","slug_id":"32","description":null,"content":"<p>This is contact page<\\/p>\\r\\n<p>[static-block alias=\\"sample-block\\"][\\/static-block]<\\/p>\\r\\n<p>[contact-form][\\/contact-form]<\\/p>","icon":null,"order":"0","note":null,"custom_fields":"[{\\"id\\":1,\\"title\\":\\"Sample custom fields\\",\\"items\\":[{\\"id\\":1,\\"title\\":\\"A text box\\",\\"slug\\":\\"a_text_box\\",\\"instructions\\":null,\\"type\\":\\"text\\",\\"options\\":{\\"defaultValue\\":null,\\"defaultValueTextarea\\":null,\\"placeholderText\\":\\"This text box come from custom field\\",\\"wysiwygToolbar\\":null,\\"selectChoices\\":null,\\"buttonLabel\\":null,\\"rows\\":null},\\"items\\":[],\\"value\\":\\"test\\"}]}]","gallery":null,"seo_meta":{"seo_title":null,"seo_keyword":null,"seo_description":null},"submit":"apply","status":"1","language":"en_US","ref_from":null,"template":"default","image":"uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Contact', 'primary', '2018-01-17 18:35:24', '2018-01-17 18:35:24'),
(1, 'page', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","name":"Contact","slug":"contact","slug_id":"32","description":null,"content":"<p>This is contact page<\\/p>\\r\\n<p>[static-block alias=\\"sample-block\\"][\\/static-block]<\\/p>\\r\\n<p>[contact-form][\\/contact-form]<\\/p>","icon":null,"order":"0","note":null,"custom_fields":"[{\\"id\\":1,\\"title\\":\\"Sample custom fields\\",\\"items\\":[{\\"id\\":1,\\"title\\":\\"A text box\\",\\"slug\\":\\"a_text_box\\",\\"instructions\\":null,\\"type\\":\\"text\\",\\"options\\":{\\"defaultValue\\":null,\\"defaultValueTextarea\\":null,\\"placeholderText\\":\\"This text box come from custom field\\",\\"wysiwygToolbar\\":null,\\"selectChoices\\":null,\\"buttonLabel\\":null,\\"rows\\":null},\\"items\\":[],\\"value\\":\\"\\"}]}]","gallery":null,"seo_meta":{"seo_title":null,"seo_keyword":null,"seo_description":null},"submit":"apply","status":"1","language":"en_US","ref_from":null,"template":"default","image":"uploads\\/1\\/galleries\\/1476520641-elena-siberian-tigress-4k-1280x720.jpg"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Contact', 'primary', '2018-01-17 18:35:32', '2018-01-17 18:35:32'),
(1, 'menu', '{"_token":"wHW5MKefQjH89AFW2sRJR8MWUEHcjnFBgIpKIK0L","deleted_nodes":null,"menu_nodes":"[{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\",\\"id\\":545,\\"class\\":\\"\\",\\"title\\":\\"Home\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":0,\\"children\\":[]},{\\"target\\":\\"_blank\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"https:\\/\\/codecanyon.net\\/item\\/botble-cms-php-platform-based-on-laravel-framework\\/16928182?ref=botble\\",\\"id\\":569,\\"class\\":\\"\\",\\"title\\":\\"Purchase\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":1,\\"children\\":[]},{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\",\\"id\\":609,\\"class\\":\\"\\",\\"title\\":\\"New & Updates\\",\\"relatedId\\":11,\\"type\\":\\"category\\",\\"position\\":2,\\"children\\":[]},{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\/galleries\\",\\"id\\":566,\\"class\\":\\"\\",\\"title\\":\\"Galleries\\",\\"relatedId\\":0,\\"type\\":\\"custom-link\\",\\"position\\":3,\\"children\\":[]},{\\"target\\":\\"_self\\",\\"iconFont\\":\\"\\",\\"customUrl\\":\\"\\",\\"id\\":568,\\"class\\":\\"\\",\\"title\\":\\"Contact\\",\\"relatedId\\":1,\\"type\\":\\"page\\",\\"position\\":4,\\"children\\":[]}]","name":"Main menu","target":"_self","title":"Contact","custom-url":"\\/galleries","icon-font":null,"class":null,"submit":"apply","language":"en_US","ref_from":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2018-01-17 18:35:53', '2018-01-17 18:35:53'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-01-18 08:11:06', '2018-01-18 08:11:06'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-01-18 18:29:21', '2018-01-18 18:29:21'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-01-24 03:31:47', '2018-01-24 03:31:47'),
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 1, 1, 'Sang Nguyen', 'info', '2018-01-24 03:31:50', '2018-01-24 03:31:50'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-01-25 07:53:21', '2018-01-25 07:53:21'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-02-21 00:23:16', '2018-02-21 00:23:16'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-02-25 21:43:59', '2018-02-25 21:43:59'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-07 03:42:11', '2018-03-07 03:42:11'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-07 03:42:27', '2018-03-07 03:42:27'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-07 03:43:54', '2018-03-07 03:43:54'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-07 03:44:47', '2018-03-07 03:44:47'),
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 1, 1, 'Sang Nguyen', 'info', '2018-03-07 03:44:53', '2018-03-07 03:44:53'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-13 20:02:26', '2018-03-13 20:02:26'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-16 03:24:31', '2018-03-16 03:24:31'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', '127.0.0.1', 0, 1, 'Sang Nguyen', 'info', '2018-03-18 18:02:34', '2018-03-18 18:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sample block', 'sample-block', 'This is a sample block', '<p><strong><span style="color: #ff6600;">This block will be shown on the page has its shortcode!</span></strong></p>', 1, 1, '2017-06-15 07:27:06', '2017-06-15 07:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `user_id`, `icon`, `featured`, `order`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Demo', 1, 0, '', 0, 0, 1, NULL, '2016-07-09 16:32:39', '2016-11-25 07:31:58'),
(6, 'Events', 0, 'Event description', 1, 1, '', 1, 0, 0, NULL, '2016-08-02 22:13:34', '2016-11-25 07:32:02'),
(7, 'Projects', 6, 'Projects description', 1, 1, NULL, 0, 3, 0, NULL, '2016-08-02 22:13:52', '2017-04-30 19:58:41'),
(8, 'Portfolio', 9, 'Description', 1, 1, NULL, 0, 0, 0, NULL, '2016-09-27 09:32:06', '2017-04-30 19:58:21'),
(9, 'Business', 0, 'Business', 1, 1, NULL, 1, 2, 0, NULL, '2016-09-28 09:38:25', '2017-04-30 19:59:12'),
(10, 'Resources', 11, 'Resource', 1, 1, NULL, 0, 4, 0, NULL, '2016-09-28 09:39:46', '2017-04-30 19:58:55'),
(11, 'New & Updates', 0, 'News and Update', 1, 1, '', 1, 5, 0, NULL, '2016-09-28 09:40:25', '2016-11-25 07:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `is_read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Demo contact', 'admin@admin.com', '0123456789', 'Somewhere in the world', 'The sample content', 0, NULL, '2017-01-15 21:19:27', '2017-01-15 21:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(10) unsigned NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) unsigned NOT NULL,
  `field_item_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `use_for`, `use_for_id`, `field_item_id`, `type`, `slug`, `value`) VALUES
(1, 'page', 1, 1, 'text', 'a_text_box', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE IF NOT EXISTS `dashboard_widgets` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(2, 'widget_analytics_general', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(3, 'widget_analytics_page', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(4, 'widget_analytics_browser', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(5, 'widget_analytics_referrer', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(6, 'widget_audit_logs', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(7, 'widget_request_errors', '2017-11-30 18:26:50', '2017-11-30 18:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE IF NOT EXISTS `dashboard_widget_settings` (
  `id` int(10) unsigned NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(2, NULL, 1, 3, 2, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18'),
(3, NULL, 1, 4, 3, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(4, NULL, 1, 5, 4, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:14'),
(5, NULL, 1, 6, 5, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(6, NULL, 1, 7, 6, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(7, NULL, 1, 2, 0, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE IF NOT EXISTS `field_groups` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_groups`
--

INSERT INTO `field_groups` (`id`, `title`, `rules`, `order`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample custom fields', '[[{"name":"page_template","type":"==","value":"default"}]]', 0, 1, 1, 1, '2018-01-17 18:35:12', '2018-01-17 18:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE IF NOT EXISTS `field_items` (
  `id` int(10) unsigned NOT NULL,
  `field_group_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_items`
--

INSERT INTO `field_items` (`id`, `field_group_id`, `parent_id`, `order`, `title`, `slug`, `type`, `instructions`, `options`) VALUES
(1, 1, NULL, 1, 'A text box', 'a_text_box', 'text', NULL, '{"defaultValue":null,"defaultValueTextarea":null,"placeholderText":"This text box come from custom field","wysiwygToolbar":null,"selectChoices":null,"buttonLabel":null,"rows":null}');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `featured`, `order`, `image`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Photography', 'This is description', 1, 1, 0, 'uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:49:13', '2017-12-16 09:48:19'),
(2, 'Nature', 'Nature gallery', 1, 1, 0, 'uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', 1, NULL, '2016-10-13 09:56:07', '2017-12-16 16:59:53'),
(3, 'New Day', 'This is demo gallery', 1, 1, 0, 'uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, NULL, '2016-10-13 09:56:44', '2017-12-16 09:48:19'),
(4, 'Morning', 'Hello', 1, 1, 0, 'uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:57:30', '2017-12-16 09:48:19'),
(5, 'Happy day', 'Demo', 1, 1, 0, 'uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, NULL, '2016-10-13 09:58:11', '2017-12-16 09:48:19'),
(6, 'Perfect', 'This is perfect description', 1, 1, 0, 'uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, NULL, '2016-10-13 09:58:40', '2017-12-16 09:48:20'),
(7, 'Nhiếp ảnh', 'Bộ sưu tập nhiếp ảnh', 1, 1, 0, '/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', 1, NULL, '2017-12-16 17:02:39', '2017-12-16 17:03:25'),
(8, 'Thiên nhiên', 'Bộ sưu tập ảnh thiên nhiên', 1, 1, 0, '/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', 1, NULL, '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(9, 'Ngày mới', 'Bộ sưu tập ảnh ngày mới', 1, 1, 0, '/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg', 1, NULL, '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(10, 'Buổi sáng', 'Bộ sưu tập ảnh buổi sáng', 1, 1, 0, '/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', 1, NULL, '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(11, 'Ngày hạnh phúc', 'Bộ sưu tập ảnh ngày hạnh phúc', 1, 1, 0, '/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', 1, NULL, '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(12, 'Hoàn hảo', 'Bộ sưu tập ảnh hoàn hảo', 1, 1, 0, '/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', 1, NULL, '2017-12-16 17:05:01', '2017-12-16 17:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE IF NOT EXISTS `gallery_meta` (
  `id` int(10) unsigned NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `content_id`, `images`, `reference`, `created_at`, `updated_at`) VALUES
(70, 1, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:00:24', '2018-01-17 18:33:32'),
(71, 2, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:04:54', '2017-12-16 16:59:53'),
(72, 3, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:05', '2017-12-16 10:05:05'),
(73, 4, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:13', '2017-12-16 10:05:13'),
(74, 5, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:21', '2017-12-16 10:05:21'),
(75, 6, '[{"img":"/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg","description":null},{"img":"/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg","description":null},{"img":"/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg","description":null}]', 'gallery', '2017-12-16 10:05:28', '2017-12-16 10:05:28'),
(77, 8, NULL, 'gallery', '2017-12-16 17:03:19', '2017-12-16 17:03:19'),
(78, 7, NULL, 'gallery', '2017-12-16 17:03:25', '2017-12-16 17:03:25'),
(79, 9, NULL, 'gallery', '2017-12-16 17:03:48', '2017-12-16 17:03:48'),
(80, 10, NULL, 'gallery', '2017-12-16 17:04:20', '2017-12-16 17:04:20'),
(81, 11, NULL, 'gallery', '2017-12-16 17:04:43', '2017-12-16 17:04:43'),
(82, 12, NULL, 'gallery', '2017-12-16 17:05:01', '2017-12-16 17:05:01'),
(85, 79, NULL, 'post', '2017-12-16 17:56:46', '2017-12-16 17:56:46'),
(86, 80, NULL, 'post', '2017-12-16 18:07:16', '2017-12-16 18:07:16'),
(87, 75, NULL, 'post', '2017-12-17 18:37:49', '2017-12-17 18:37:49'),
(88, 81, NULL, 'post', '2017-12-18 18:43:36', '2017-12-18 18:43:36'),
(89, 82, NULL, 'post', '2017-12-18 18:44:57', '2017-12-18 18:44:57'),
(91, 1, NULL, 'page', '2018-01-17 18:35:32', '2018-01-17 18:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` int(10) unsigned NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(44, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(45, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE IF NOT EXISTS `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL,
  `lang_meta_content_id` int(10) unsigned NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_content_id`, `lang_meta_code`, `lang_meta_reference`, `lang_meta_origin`) VALUES
(3, 4, 'en_US', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(4, 5, 'en_US', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(5, 6, 'en_US', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(6, 7, 'en_US', 'post', '1e3d1a0e8a2d0b0a820f6fa5ff37913b'),
(7, 8, 'en_US', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(8, 9, 'en_US', 'post', '5aa291a9490cf5a6b770e4ef67eecf51'),
(9, 10, 'en_US', 'post', 'ddf6b2634ac599fca598c9f707d7e967'),
(10, 11, 'en_US', 'post', '0162b0f534be9b5c0de3a2c21ee12a22'),
(11, 12, 'en_US', 'post', '58d24bc8ca3ef58e26b6f5f2e97feb52'),
(13, 14, 'en_US', 'post', '6a95efc9f3493402f6edc17125a5f621'),
(14, 19, 'en_US', 'post', 'be26223edcf68e5f63a1a6437ba0be15'),
(15, 15, 'en_US', 'post', '36292b94b5bc330e88721f87c05e3d1c'),
(16, 16, 'en_US', 'post', 'e4bc15912ab7551f41dda75cab017005'),
(17, 17, 'en_US', 'post', '73bd326091a134d6eb79570db924bb3d'),
(18, 18, 'en_US', 'post', '77999a905526eb38febac6a1e0f1f5d9'),
(19, 20, 'en_US', 'post', '26af70c0ef781166972928bd181ab10b'),
(20, 21, 'en_US', 'post', '3856d68ccb4721e6432dcc1ee7001e20'),
(21, 44, 'vi', 'post', 'a9d40e38f773df46bfe3857c89404a5f'),
(22, 45, 'vi', 'post', '9cf3508b0becc5829411b251ab1d7d68'),
(23, 47, 'vi', 'post', '14ea2c977bff486d5d93caeeddb25433'),
(24, 46, 'vi', 'post', 'efa2fcd9b0bc7221fc37de650db1095d'),
(25, 11, 'en_US', 'category', '4703171c553ee525c3a5436c254619cf'),
(26, 1, 'en_US', 'category', 'ff750ed85cf1ac627f2b323889f78dd6'),
(27, 6, 'en_US', 'category', '5d21f76eddb6b3d536cb390f4cda77bc'),
(28, 7, 'en_US', 'category', 'cd22dfa504c9bf620938f913773df770'),
(29, 8, 'en_US', 'category', 'da650dfca58083229317df283b16fa02'),
(30, 9, 'en_US', 'category', 'faa61a3d1e5630da1dc2cdcb4f11b552'),
(31, 10, 'en_US', 'category', '55be2035a27da7bfcc8ed4aeab28f4f1'),
(32, 5, 'en_US', 'tag', 'f0698ed728cc9c18387840b72346e005'),
(33, 6, 'en_US', 'tag', 'e4ef34ee9099a01fcec8f45a79c5d4ba'),
(34, 1, 'en_US', 'gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(35, 2, 'en_US', 'gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(36, 3, 'en_US', 'gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(37, 4, 'en_US', 'gallery', 'a2879f55a54f0e629851df6b48f61241'),
(38, 5, 'en_US', 'gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(39, 6, 'en_US', 'gallery', '9f2f8e1a4752378951cc1312b419c102'),
(40, 1, 'en_US', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(41, 3, 'en_US', 'menu', '5d79633980667117eaee456018277ad8'),
(42, 7, 'en_US', 'menu', 'b1ae8e07383b5d47e821dac905c86e6d'),
(43, 8, 'en_US', 'menu', '78d39e8989bebaa53bac83ff0fedc678'),
(44, 9, 'en_US', 'menu', '33a202bdbd1d82470cc1837e85622c5e'),
(45, 10, 'vi', 'menu', '19848c17b2e0b8fd374ae6f4741599c4'),
(47, 23, 'en_US', 'page', '0bff9f3639cec70a3f65fc0149ad2b24'),
(48, 1, 'en_US', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(49, 17, 'vi', 'page', '3e971ce162e3737ae2b7af1e78c4bca2'),
(50, 7, 'en_US', 'tag', 'f5a7aacaa745d7b1df533180f61bab95'),
(51, 1, 'en_US', 'block', '671424045986775272d0ceb6aab7139a'),
(52, 7, 'vi', 'gallery', 'b5956d5eec65f9edeb008fdd97771f3e'),
(53, 8, 'vi', 'gallery', '4367a6d49e1eb6e5fb64d77052997e9c'),
(54, 9, 'vi', 'gallery', '0cc8e19b35bb9b0a6b0b45d8a358ee6c'),
(55, 10, 'vi', 'gallery', 'a2879f55a54f0e629851df6b48f61241'),
(56, 11, 'vi', 'gallery', 'e6ceb4ae110f3d66f9444211a2ac8337'),
(57, 12, 'vi', 'gallery', '9f2f8e1a4752378951cc1312b419c102');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE IF NOT EXISTS `media_files` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720', 1, 'image/jpeg', 172017, '/uploads/1/galleries/1476513478-bmw-x2-paris-auto-show-2016-4k-1280x720.jpg', '[]', '2017-05-30 06:41:23', '2017-05-30 06:41:23', NULL),
(2, 1, '1476513483-misty-mountains-1280x720', 1, 'image/jpeg', 115996, '/uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', '[]', '2017-05-30 06:41:24', '2017-05-30 06:41:24', NULL),
(3, 1, '1476513484-power-rangers-blue-ranger-4k-1280x720', 1, 'image/jpeg', 110182, '/uploads/1/galleries/1476513484-power-rangers-blue-ranger-4k-1280x720.jpg', '[]', '2017-05-30 06:41:26', '2017-05-30 06:41:26', NULL),
(4, 1, '1476513486-power-rangers-red-ranger-4k-1280x720', 1, 'image/jpeg', 131618, '/uploads/1/galleries/1476513486-power-rangers-red-ranger-4k-1280x720.jpg', '[]', '2017-05-30 06:41:28', '2017-05-30 06:41:28', NULL),
(5, 1, '1476513488-spectacular-sunrise-4k-1280x720', 1, 'image/jpeg', 59951, '/uploads/1/galleries/1476513488-spectacular-sunrise-4k-1280x720.jpg', '[]', '2017-05-30 06:41:30', '2017-05-30 06:41:30', NULL),
(6, 1, '1476513490-tulips-4k-8k-768x1280', 1, 'image/jpeg', 79663, '/uploads/1/galleries/1476513490-tulips-4k-8k-768x1280.jpg', '[]', '2017-05-30 06:41:31', '2017-05-30 06:41:31', NULL),
(7, 1, '1476513493-world-of-tanks-football-event-1280x720', 1, 'image/jpeg', 210966, '/uploads/1/galleries/1476513493-world-of-tanks-football-event-1280x720.jpg', '[]', '2017-05-30 06:41:33', '2017-05-30 06:41:33', NULL),
(8, 1, '1476520418-supergirl-season-2-1280x720', 1, 'image/jpeg', 152860, '/uploads/1/galleries/1476520418-supergirl-season-2-1280x720.jpg', '[]', '2017-05-30 06:41:35', '2017-05-30 06:41:35', NULL),
(9, 1, '1476520641-elena-siberian-tigress-4k-1280x720', 1, 'image/jpeg', 212356, '/uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', '[]', '2017-05-30 06:41:37', '2017-05-30 06:41:37', NULL),
(10, 1, '1476521053-volkswagen-id-paris-motor-show-4k-1280x720', 1, 'image/jpeg', 143223, '/uploads/1/galleries/1476521053-volkswagen-id-paris-motor-show-4k-1280x720.jpg', '[]', '2017-05-30 06:41:39', '2017-05-30 06:41:39', NULL),
(11, 1, '1493607187-1493225486-logo', 2, 'image/png', 3161, '/uploads/1/logo/1493607187-1493225486-logo.png', '[]', '2017-05-30 06:41:59', '2018-01-17 18:24:53', '2018-01-17 18:24:53'),
(12, 1, '1476890029-hero01', 3, 'image/jpeg', 106200, '/uploads/1/news/1476890029-hero01.jpg', '[]', '2017-05-30 06:42:20', '2017-05-30 06:42:20', NULL),
(13, 1, '1476890031-hero02', 3, 'image/jpeg', 56843, '/uploads/1/news/1476890031-hero02.jpg', '[]', '2017-05-30 06:42:21', '2017-05-30 06:42:21', NULL),
(14, 1, '1476890033-hero03', 3, 'image/jpeg', 86015, '/uploads/1/news/1476890033-hero03.jpg', '[]', '2017-05-30 06:42:23', '2017-05-30 06:42:23', NULL),
(15, 1, '1476890034-hero04', 3, 'image/jpeg', 73927, '/uploads/1/news/1476890034-hero04.jpg', '[]', '2017-05-30 06:42:25', '2017-05-30 06:42:25', NULL),
(16, 1, '1476890036-hero05', 3, 'image/jpeg', 82371, '/uploads/1/news/1476890036-hero05.jpg', '[]', '2017-05-30 06:42:26', '2017-05-30 06:42:26', NULL),
(17, 1, '1476891035-01', 3, 'image/jpeg', 139584, '/uploads/1/news/1476891035-01.jpg', '[]', '2017-05-30 06:42:28', '2017-05-30 06:42:28', NULL),
(18, 1, '1476891195-02', 3, 'image/jpeg', 135878, '/uploads/1/news/1476891195-02.jpg', '[]', '2017-05-30 06:42:30', '2017-05-30 06:42:30', NULL),
(19, 1, '1476891197-03', 3, 'image/jpeg', 135377, '/uploads/1/news/1476891197-03.jpg', '[]', '2017-05-30 06:42:32', '2017-05-30 06:42:32', NULL),
(20, 1, '1476891198-04', 3, 'image/jpeg', 192746, '/uploads/1/news/1476891198-04.jpg', '[]', '2017-05-30 06:42:33', '2017-05-30 06:42:33', NULL),
(21, 1, '1476893532-01', 3, 'image/jpeg', 139584, '/uploads/1/news/1476893532-01.jpg', '[]', '2017-05-30 06:42:35', '2017-05-30 06:42:35', NULL),
(22, 1, '1476893533-02', 3, 'image/jpeg', 190105, '/uploads/1/news/1476893533-02.jpg', '[]', '2017-05-30 06:42:37', '2017-05-30 06:42:37', NULL),
(23, 1, '1806717289-6e97fe91c9-b-660x330', 3, 'image/jpeg', 30592, '/uploads/1/news/1806717289-6e97fe91c9-b-660x330.jpg', '[]', '2017-05-30 06:42:39', '2017-05-30 06:42:39', NULL),
(24, 1, '4381851322-d46fd7d75e-b-660x330', 3, 'image/jpeg', 68706, '/uploads/1/news/4381851322-d46fd7d75e-b-660x330.jpg', '[]', '2017-05-30 06:42:40', '2017-05-30 06:42:40', NULL),
(25, 1, '6940343109-8e0633088e-b-660x330', 3, 'image/jpeg', 87314, '/uploads/1/news/6940343109-8e0633088e-b-660x330.jpg', '[]', '2017-05-30 06:42:42', '2017-05-30 06:42:42', NULL),
(26, 1, '7717834982-bbd7e12b8c-b-660x330', 3, 'image/jpeg', 49286, '/uploads/1/news/7717834982-bbd7e12b8c-b-660x330.jpg', '[]', '2017-05-30 06:42:43', '2017-05-30 06:42:43', NULL),
(27, 1, '7998125906-4489ed8a2f-b-660x330', 3, 'image/jpeg', 51071, '/uploads/1/news/7998125906-4489ed8a2f-b-660x330.jpg', '[]', '2017-05-30 06:42:45', '2017-05-30 06:42:45', NULL),
(28, 1, '8980424864-bbdd635150-k-660x330', 3, 'image/jpeg', 34996, '/uploads/1/news/8980424864-bbdd635150-k-660x330.jpg', '[]', '2017-05-30 06:42:47', '2017-05-30 06:42:47', NULL),
(29, 1, '9325995752-e4ecc539f2-o-660x330', 3, 'image/jpeg', 35376, '/uploads/1/news/9325995752-e4ecc539f2-o-660x330.jpg', '[]', '2017-05-30 06:42:48', '2017-05-30 06:42:48', NULL),
(30, 1, 'lock-660x330', 3, 'image/jpeg', 50378, '/uploads/1/news/lock-660x330.jpg', '[]', '2017-05-30 06:42:50', '2017-05-30 06:42:50', NULL),
(31, 1, 'nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330', 3, 'image/jpeg', 64544, '/uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', '[]', '2017-05-30 06:42:52', '2017-05-30 06:42:52', NULL),
(32, 1, 'old-car-660x330', 3, 'image/jpeg', 70127, '/uploads/1/news/old-car-660x330.jpg', '[]', '2017-05-30 06:42:53', '2017-05-30 06:42:53', NULL),
(33, 1, '5-xu-huong-vi-clutch-cam-tay-sanh-dieu-cho-mua-he-1-1025x1025', 0, 'image/jpeg', 89908, '/uploads/1/5-xu-huong-vi-clutch-cam-tay-sanh-dieu-cho-mua-he-1-1025x1025.jpg', '[]', '2017-11-30 18:37:48', '2017-12-08 20:23:40', '2017-12-08 20:23:40'),
(34, 1, 'logo', 2, 'image/png', 3161, 'uploads/1/logo/logo.png', '[]', '2018-01-17 18:25:44', '2018-01-17 18:25:44', NULL),
(35, 1, 'selfie_file_name', 1, 'image/jpeg', 82018, 'uploads/1/galleries/selfie-file-name.jpg', '[]', '2018-01-18 08:28:12', '2018-01-18 08:28:17', '2018-01-18 08:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE IF NOT EXISTS `media_folders` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'galleries', 'galleries', 0, '2017-05-30 06:27:16', '2017-05-30 06:27:16', NULL),
(2, 1, 'logo', 'logo', 0, '2017-05-30 06:27:28', '2017-05-30 06:27:28', NULL),
(3, 1, 'news', 'news', 0, '2017-05-30 06:27:35', '2017-05-30 06:27:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE IF NOT EXISTS `media_settings` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE IF NOT EXISTS `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 1, NULL, '2016-06-17 17:53:45', '2016-08-14 20:25:34'),
(3, 'Top Right Menu', 'right-menu', 1, NULL, '2016-08-03 03:20:10', '2016-09-27 08:30:46'),
(6, 'Social', 'social', 1, NULL, '2016-10-19 23:26:54', '2016-10-19 23:26:54'),
(7, 'Favorite website', 'favorite-website', 1, NULL, '2016-10-21 10:21:23', '2016-10-21 10:21:23'),
(8, 'My links', 'my-links', 1, NULL, '2016-10-21 10:24:36', '2016-10-21 10:24:36'),
(9, 'Featured Categories', 'featured-categories', 1, NULL, '2016-10-21 10:52:59', '2016-10-21 10:52:59'),
(10, 'Menu chính', 'menu-chinh', 1, NULL, '2016-11-15 00:56:14', '2016-11-15 00:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE IF NOT EXISTS `menu_nodes` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `related_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `related_id`, `type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`, `deleted_at`) VALUES
(543, 3, 0, 5, 'page', '', '', 4, '', '', '_self', 0, '2016-09-27 08:40:29', '2016-11-06 18:35:31', NULL),
(544, 3, 0, 1, 'page', '', '', 5, 'Contact', '', '_self', 0, '2016-09-27 08:40:29', '2016-10-15 18:45:57', NULL),
(545, 1, 0, 0, 'custom-link', '', '', 0, 'Home', '', '_self', 0, '2016-09-27 09:16:52', '2016-09-27 09:27:13', NULL),
(557, 3, 0, 7, 'category', '', '', 3, 'Projects', '', '_self', 0, '2016-09-27 09:31:43', '2016-10-15 18:45:57', NULL),
(558, 3, 0, 8, 'category', '', '', 2, 'Portfolio', '', '_self', 0, '2016-09-27 09:32:22', '2016-10-15 18:45:57', NULL),
(559, 3, 0, 0, 'custom-link', '/downloads', '', 1, 'Downloads', '', '_self', 0, '2016-09-30 21:32:32', '2016-10-15 18:45:57', NULL),
(560, 3, 0, 0, 'custom-link', '/galleries', '', 0, 'Galleries', '', '_self', 0, '2016-10-15 18:45:57', '2016-10-15 18:45:57', NULL),
(562, 1, 561, 6, 'category', '', '', 0, 'Events', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:09:16', NULL),
(563, 1, 566, 8, 'category', '', '', 0, 'Portfolio', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25', NULL),
(564, 1, 566, 7, 'category', '', '', 1, 'Projects', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-21 10:26:25', NULL),
(565, 1, 561, 10, 'category', '', '', 2, 'Resources', '', '_self', 0, '2016-10-19 08:09:16', '2016-10-19 08:10:27', NULL),
(566, 1, 0, 0, 'custom-link', '/galleries', '', 3, 'Galleries', '', '_self', 0, '2016-10-19 08:09:16', '2017-12-08 19:39:34', NULL),
(567, 1, 561, 9, 'category', '', '', 1, 'Business', '', '_self', 0, '2016-10-19 08:09:50', '2016-10-19 08:09:50', NULL),
(568, 1, 0, 1, 'page', '', '', 4, 'Contact', '', '_self', 0, '2016-10-19 08:10:27', '2017-12-08 19:39:34', NULL),
(569, 1, 0, 0, 'custom-link', 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Purchase', '', '_blank', 0, '2016-10-19 08:11:43', '2016-11-19 02:26:19', NULL),
(571, 6, 0, 0, 'custom-link', 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', '', '_self', 0, '2016-10-19 23:28:25', '2016-10-19 23:28:25', NULL),
(572, 6, 0, 0, 'custom-link', 'https://twitter.com', 'fa fa-twitter', 1, 'Twitter', '', '_self', 0, '2016-10-19 23:28:26', '2016-10-19 23:28:26', NULL),
(573, 6, 0, 0, 'custom-link', 'https://plus.google.com', 'fa fa-google-plus', 2, 'Google Plus', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24', NULL),
(574, 6, 0, 0, 'custom-link', 'https://github.com', 'fa fa-github', 3, 'Github', '', '_self', 0, '2016-10-19 23:29:24', '2016-10-19 23:29:24', NULL),
(575, 7, 0, 0, 'custom-link', 'http://speckyboy.com', '', 0, 'Speckyboy Magazine', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(576, 7, 0, 0, 'custom-link', 'http://tympanus.com', '', 1, 'Tympanus-Codrops', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(577, 7, 0, 0, 'custom-link', 'https://kipalog.com/', '', 2, 'Kipalog Blog', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(578, 7, 0, 0, 'custom-link', 'http://www.sitepoint.com', '', 3, 'SitePoint', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(579, 7, 0, 0, 'custom-link', 'http://www.creativebloq.com/', '', 4, 'CreativeBloq', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(580, 7, 0, 0, 'custom-link', 'http://techtalk.vn', '', 5, 'Techtalk', '', '_self', 0, '2016-10-21 10:24:16', '2016-10-21 10:24:16', NULL),
(581, 8, 0, 0, 'custom-link', '/', '', 0, 'Homepage', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(582, 8, 0, 11, 'category', '', '', 1, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(583, 8, 0, 0, 'custom-link', '/galleries', '', 2, 'Galleries', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(584, 8, 0, 1, 'page', '', '', 3, 'Contact', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(585, 8, 0, 11, 'category', '', '', 4, 'New & Updates', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(586, 8, 0, 7, 'category', '', '', 5, 'Projects', '', '_self', 0, '2016-10-21 10:25:49', '2016-10-21 10:25:49', NULL),
(587, 9, 0, 9, 'category', '', '', 0, 'Business', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(588, 9, 0, 6, 'category', '', '', 1, 'Events', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(589, 9, 0, 11, 'category', '', '', 2, 'New & Updates', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(590, 9, 0, 8, 'category', '', '', 3, 'Portfolio', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(591, 9, 0, 7, 'category', '', '', 4, 'Projects', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(592, 9, 0, 10, 'category', '', '', 5, 'Resources', '', '_self', 0, '2016-10-21 10:53:16', '2016-10-21 10:53:16', NULL),
(594, 10, 0, 17, 'page', '', '', 4, 'Liên hệ', '', '_self', 0, '2016-11-15 01:12:57', '2016-11-19 02:19:35', NULL),
(600, 10, 0, 0, 'custom-link', '/', '', 0, 'Trang chủ', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(601, 10, 0, 0, 'custom-link', 'https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182?ref=botble', '', 1, 'Mua ngay', '', '_blank', 0, '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(602, 10, 0, 11, 'category', '', '', 2, 'Tin tức', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(603, 10, 602, 6, 'category', '', '', 0, 'Sự kiện', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(604, 10, 602, 9, 'category', '', '', 1, 'Doanh nghiệp', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(605, 10, 602, 10, 'category', '', '', 2, 'Tài nguyên', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(606, 10, 0, 0, 'custom-link', '/galleries', '', 3, 'Thư viện ảnh', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-19 02:26:19', NULL),
(607, 10, 606, 8, 'category', '', '', 0, 'Cá nhân', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(608, 10, 606, 7, 'category', '', '', 1, 'Dự án', '', '_self', 0, '2016-11-19 02:26:19', '2016-11-25 07:52:21', NULL),
(609, 1, 0, 11, 'category', '', '', 2, 'New & Updates', '', '_self', 0, '2017-12-08 19:39:34', '2018-01-17 18:35:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE IF NOT EXISTS `meta_boxes` (
  `id` int(10) unsigned NOT NULL,
  `content_id` int(10) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `content_id`, `meta_key`, `meta_value`, `reference`, `created_at`, `updated_at`) VALUES
(1, 4, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'post', '2017-12-11 09:07:56', '2017-12-11 09:07:56'),
(2, 1, 'seo_meta', '[{"seo_title":null,"seo_keyword":null,"seo_description":null}]', 'page', '2018-01-17 18:35:24', '2018-01-17 18:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_10_230148_create_acl_tables', 1),
(5, '2016_06_14_230857_create_menus_table', 1),
(6, '2016_06_28_221418_create_pages_table', 1),
(7, '2016_10_05_074239_create_setting_table', 1),
(8, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(9, '2016_12_16_084601_create_widgets_table', 1),
(10, '2017_05_09_070343_create_media_tables', 1),
(11, '2017_10_04_140938_create_member_table', 1),
(12, '2015_06_18_033822_create_blog_table', 2),
(13, '2016_06_17_091537_create_contacts_table', 3),
(14, '2016_10_13_150201_create_galleries_table', 4),
(15, '2017_02_13_034601_create_blocks_table', 5),
(16, '2016_10_03_032336_create_languages_table', 6),
(17, '2015_06_29_025744_create_audit_history', 7),
(18, '2017_03_27_150646_re_create_custom_field_tables', 8),
(19, '2015_08_15_122343_create_notes_table', 9),
(20, '2016_05_28_112028_create_system_request_logs_table', 10),
(21, '2016_10_07_193005_create_translations_table', 11),
(22, '2017_10_22_010000_add_some_member_columns', 12),
(23, '2017_11_03_070450_create_slug_table', 12),
(24, '2017_11_16_160440_remove_slug_fields', 12),
(25, '2017_11_17_011800_remove_slug_column_table_page', 12),
(26, '2017_11_20_010816_remove_column_slug_in_galleries_table', 12),
(27, '2017_12_21_041602_update_menu_nodes_type', 13),
(28, '2017_12_21_041904_update_menu_nodes_type_for_blog', 13),
(29, '2018_01_24_002113_allow_column_password_null', 14),
(30, '2018_03_01_003229_remove_features_data', 15),
(31, '2018_03_01_004130_remove_invites_table', 15),
(32, '2018_03_14_081936_remove_table_plugins', 15),
(33, '2018_03_14_095112_remove_permissions_tables', 15),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 16),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 16),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 16),
(37, '2016_06_01_000004_create_oauth_clients_table', 16),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nPvD6nCdZ4u5VDofwCaCrg9DTBpkMOJopp2JjdjR', 'http://localhost', 1, 0, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20'),
(2, NULL, 'Laravel Password Grant Client', 'yoMn1m1jBDOZAAfwX7qOagkGrAoazmzujgLAfpyI', 'http://localhost', 0, 1, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('09a880ccdf4f35761565b221378b611954a090fd48a2a710b1531feccced42a104d7208d38508258', '6ec25d436833eb08e9c574e208ce65ee59561517d49f0ac952d292eb80d976bfb11805a6e28f94dc', 0, '2018-04-20 04:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `parent_id`, `icon`, `featured`, `order`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<p>This is contact page</p>\r\n<p>[static-block alias="sample-block"][/static-block]</p>\r\n<p>[contact-form][/contact-form]</p>', 1, 1, 'uploads/1/galleries/1476520641-elena-siberian-tigress-4k-1280x720.jpg', 'default', 0, NULL, 0, 0, NULL, NULL, '2016-07-09 01:05:39', '2018-01-17 18:35:32'),
(17, 'Liên hệ', '<p>Đ&acirc;y l&agrave; trang li&ecirc;n hệ</p>', 1, 1, 'uploads/1/galleries/1476513483-misty-mountains-1280x720.jpg', 'default', 0, NULL, 0, 0, 'Đây là trang liên hệ', NULL, '2016-11-06 18:17:25', '2017-03-20 10:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minhsang2603@gmail.com', '$2y$10$kWX7Vm.TR02TvQ426QLR2uzK6/JjiYIwE.ruTXH6eBQdS8mV5aL0a', '2018-01-24 03:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '13,000+ People Have Bought Our Theme', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p><iframe src="https://www.youtube.com/embed/7MxyPHjyu9A" width="420" height="315"></iframe></p>\r\n<p>Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There’s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There’ll be no one to stop us this time! You’re all clear, kid. Let’s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n<ul>\r\n<li>Dantooine. They’re on Dantooine.</li>\r\n<li>He is here.</li>\r\n<li>Don’t underestimate the Force.</li>\r\n</ul>\r\n<p><img style="height: 683px; width: 1024px;" alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master. But with the blast shield down, I can’t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can’t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.<br /> You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<ol>\r\n<li>I care. So, what do you think of her, Han?</li>\r\n<li>You mean it controls your actions?</li>\r\n<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</li>\r\n<li>I’m trying not to, kid.</li>\r\n</ol>\r\n<h2>Revenge of the Sith</h2>\r\n<p><img style="height: 300px; width: 180px;" alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can’t get involved! I’ve got work to do! It’s not that I like the Empire, I hate it, but there’s nothing I can do about it right now. It’s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I’m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can’t possibly…</p>\r\n<p>Your eyes can deceive you. Don’t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I’m trying not to, kid.</p>\r\n<p>I’m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They’re on Dantooine.</p>\r\n<p> </p>\r\n<p>Still, she’s got a lot of spirit. I don’t know, what do you think? What!? I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– What good is a reward if you ain’t around to use it? Besides, attacking that battle station ain’t my idea of courage. It’s more like…suicide.</p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You don’t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going. What?! The Force is strong with this one. I have you now.</p>\r\n<p> </p>\r\n<p><img style="height: 563px; width: 1000px;" alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n<p> </p>\r\n<p>Hey, Luke! May the Force be with you. Kid, I’ve flown from one side of this galaxy to the other. I’ve seen a lot of strange stuff, but I’ve never seen anything to make me believe there’s one all-powerful Force controlling everything. There’s no mystical energy field that controls my destiny. It’s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain’t in this for your revolution, and I’m not in it for you, Princess. I expect to be well paid. I’m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n<p>All right. Well, take care of yourself, Han. I guess that’s what you’re best at, ain’t it? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n<p> </p>\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img style="height: 300px; width: 200px;" alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n<p>WOW, Nice photo !</p>\r\n<p>I need your help, Luke. She needs your help. I’m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can’t possibly… As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you’re going.</p>\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They’re on Dantooine. You’re all clear, kid. Let’s blow this thing and go home! I’m surprised you had the courage to take the responsibility yourself. I’m trying not to, kid.</p>\r\n<p>I care. So, what do you think of her, Han? Don’t underestimate the Force. I don’t know what you’re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan– I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n<p>You’re all clear, kid. Let’s blow this thing and go home! But with the blast shield down, I can’t even see! How am I supposed to fight? Alderaan? I’m not going to Alderaan. I’ve got to go home. It’s late, I’m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 8, NULL, NULL, '2016-08-02 21:34:18', '2017-12-11 09:07:56'),
(5, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 6, NULL, NULL, '2016-08-02 21:36:45', '2017-04-30 19:59:58'),
(6, 'Which Company Would You Choose?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893532-01.jpg', 4, NULL, NULL, '2016-08-02 21:38:34', '2017-03-21 07:30:39'),
(7, 'Used Car Dealer Sales Tricks Exposed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/old-car-660x330.jpg', 6, NULL, NULL, '2016-08-02 21:39:50', '2017-04-30 20:03:27'),
(8, '20 Ways To Sell Your Product Faster', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890034-hero04.jpg', 3, NULL, NULL, '2016-08-02 21:40:56', '2017-03-21 07:25:09');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 'The Secrets Of Rich And Famous Writers', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890036-hero05.jpg', 0, NULL, NULL, '2016-08-02 21:42:45', '2017-03-21 07:26:07'),
(10, 'Imagine Losing 20 Pounds In 14 Days!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'uploads/1/news/1476890033-hero03.jpg', 6, NULL, NULL, '2016-08-02 21:44:20', '2016-12-10 12:19:54'),
(11, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890034-hero04.jpg', 12, NULL, NULL, '2016-08-02 21:45:16', '2017-07-06 08:16:25'),
(12, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 1, 'uploads/1/news/1476890031-hero02.jpg', 12, NULL, NULL, '2016-08-02 21:46:22', '2017-12-10 18:07:55'),
(13, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 1, 'uploads/1/news/1476890029-hero01.jpg', 15, NULL, NULL, '2016-08-02 21:47:18', '2016-12-04 08:07:53');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/4381851322-d46fd7d75e-b-660x330.jpg', 0, NULL, NULL, '2016-08-02 21:50:39', '2017-04-30 20:15:49'),
(15, 'Apple iMac with Retina 5K display review', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891195-02.jpg', 1, NULL, NULL, '2016-08-02 21:51:49', '2017-04-30 20:11:06'),
(16, '10 Reasons To Start Your Own, Profitable Website!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891035-01.jpg', 3, NULL, NULL, '2016-08-02 21:52:39', '2017-04-30 20:10:12'),
(17, 'Unlock The Secrets Of Selling High Ticket Items', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891198-04.jpg', 2, NULL, NULL, '2016-08-02 21:53:49', '2017-04-30 20:04:28'),
(18, '10,000 Web Site Visitors In One Month:Guaranteed', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 5, NULL, NULL, '2016-08-02 21:54:31', '2017-04-30 20:08:55');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 'Are You Still Using That Slow, Old Typewriter?', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>', 1, 1, 0, 'uploads/1/news/1476891195-02.jpg', 3, NULL, NULL, '2016-08-02 21:55:28', '2017-04-30 20:15:13'),
(20, 'A Skin Cream That’s Proven To Work', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476890031-hero02.jpg', 10, NULL, NULL, '2016-08-02 21:56:32', '2017-12-11 09:07:40'),
(21, 'Top Search Engine Optimization Strategies!', 'Don’t act so surprised, Your Highness. You weren’t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck.', '<p>Don&rsquo;t act so surprised, Your Highness. You weren&rsquo;t on any mercy mission this time. Several transmissions were beamed to this ship by Rebel spies. I want to know what happened to the plans they sent you. In my experience, there is no such thing as luck. Partially, but it also obeys your commands. I want to come with you to Alderaan. There&rsquo;s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<blockquote>\r\n<p>We hire people who want to make the best things in the world. -Steve Jobs</p>\r\n</blockquote>\r\n\r\n<p>She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander.&nbsp;There&rsquo;ll be no one to stop us this time!&nbsp;You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! Partially, but it also obeys your commands.</p>\r\n\r\n<ul>\r\n	<li>Dantooine. They&rsquo;re on Dantooine.</li>\r\n	<li>He is here.</li>\r\n	<li>Don&rsquo;t underestimate the Force.</li>\r\n</ul>\r\n\r\n<p><img alt="5825871567_4d477202ce_b" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/5825871567_4d477202ce_b.jpg" /></p>\r\n\r\n<p>I care. So, what do you think of her, Han? A tremor in the Force. The last time I felt it was in the presence of my old master.&nbsp;But with the blast shield down,&nbsp;I can&rsquo;t even see! How am I supposed to fight? Obi-Wan is here. The Force is with him. But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? You are a part of the Rebel Alliance and a traitor! Take her away!</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.<br />\r\nYou don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>I care. So, what do you think of her, Han?</li>\r\n	<li>You mean it controls your actions?</li>\r\n	<li>Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</li>\r\n	<li>I&rsquo;m trying not to, kid.</li>\r\n</ol>\r\n\r\n<h2>Revenge of the Sith</h2>\r\n\r\n<p><img alt="post-image" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-180x300.jpg" />I can&rsquo;t get involved! I&rsquo;ve got work to do! It&rsquo;s not that I like the Empire, I hate it, but there&rsquo;s nothing I can do about it right now. It&rsquo;s such a long way from here. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. I&rsquo;m surprised you had the courage to take the responsibility yourself. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip;</p>\r\n\r\n<p>Your eyes can deceive you. Don&rsquo;t trust them. He is here. What?! Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I&rsquo;m trying not to, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base. He is here. You are a part of the Rebel Alliance and a traitor! Take her away! Dantooine. They&rsquo;re on Dantooine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Still, she&rsquo;s got a lot of spirit. I don&rsquo;t know, what do you think? What!? I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; What good is a reward if you ain&rsquo;t around to use it? Besides, attacking that battle station ain&rsquo;t my idea of courage. It&rsquo;s more like&hellip;suicide.</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You don&rsquo;t believe in the Force, do you? Obi-Wan is here. The Force is with him. I call it luck. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going. What?! The Force is strong with this one. I have you now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="9FybtVFNSEOxogGzIvHJ_IMG_2226" src="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/9FybtVFNSEOxogGzIvHJ_IMG_2226.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hey, Luke! May the Force be with you. Kid, I&rsquo;ve flown from one side of this galaxy to the other. I&rsquo;ve seen a lot of strange stuff, but I&rsquo;ve never seen anything to make me believe there&rsquo;s one all-powerful Force controlling everything. There&rsquo;s no mystical energy field that controls my destiny. It&rsquo;s all a lot of simple tricks and nonsense. Remember, a Jedi can feel the Force flowing through him. He is here. Ye-ha! I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>Oh God, my uncle. How am I ever gonna explain this? Look, I ain&rsquo;t in this for your revolution, and I&rsquo;m not in it for you, Princess. I expect to be well paid. I&rsquo;m in it for the money. A tremor in the Force. The last time I felt it was in the presence of my old master.</p>\r\n\r\n<p>All right. Well, take care of yourself, Han.&nbsp;I guess that&rsquo;s what you&rsquo;re best at,&nbsp;ain&rsquo;t it? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is. The plans you refer to will soon be back in our hands.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="http://themes.tielabs.com/wp-content/uploads/sites/3/2015/01/post-image-2.jpg"><img alt="WOW, Nice photo !" src="http://themes.tielabs.com/sahifa5/wp-content/uploads/sites/3/2015/01/post-image-2-200x300.jpg" /></a></p>\r\n\r\n<p>WOW, Nice photo !</p>\r\n\r\n<p>I need your help, Luke. She needs your help. I&rsquo;m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? Hey, Luke! May the Force be with you. No! Alderaan is peaceful. We have no weapons. You can&rsquo;t possibly&hellip; As you wish. Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you&rsquo;re going.</p>\r\n\r\n<p>I suggest you try it again, Luke. This time, let go your conscious self and act on instinct. Dantooine. They&rsquo;re on Dantooine. You&rsquo;re all clear, kid. Let&rsquo;s blow this thing and go home! I&rsquo;m surprised you had the courage to take the responsibility yourself. I&rsquo;m trying not to, kid.</p>\r\n\r\n<p>I care. So, what do you think of her, Han? Don&rsquo;t underestimate the Force. I don&rsquo;t know what you&rsquo;re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan&ndash; I have traced the Rebel spies to her. Now she is my only link to finding their secret base.</p>\r\n\r\n<p>You&rsquo;re all clear, kid.&nbsp;Let&rsquo;s blow this thing and go home!&nbsp;But with the blast shield down, I can&rsquo;t even see! How am I supposed to fight? Alderaan? I&rsquo;m not going to Alderaan. I&rsquo;ve got to go home. It&rsquo;s late, I&rsquo;m in for it as it is.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476891035-01.jpg', 7, NULL, NULL, '2016-08-02 21:57:29', '2016-12-10 12:04:30'),
(44, '13000 người đã mua Theme của chúng tôi', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href="http://cms.botble.com/">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href="http://cms.botble.com/admin">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt="core" src="http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt="theme" src="http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/jmex2G4eC18?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href="http://nghiadev.com/">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, 0, 'uploads/1/news/1476893533-02.jpg', 1, NULL, NULL, '2016-11-12 18:25:08', '2016-11-25 09:37:37'),
(45, 'Lên trên Công cụ Tìm kiếm Tối ưu hóa các chiến lược!', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href="http://cms.botble.com/">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href="http://cms.botble.com/admin">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt="core" src="http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt="theme" src="http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/jmex2G4eC18?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href="http://nghiadev.com/">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'uploads/1/news/nmnkzkiyqsygikfjinsb-20140717-212636-3-660x330.jpg', 0, NULL, NULL, '2016-11-12 18:27:06', '2016-11-25 07:29:51');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(46, 'Bạn sẽ chọn công ty nào', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href="http://cms.botble.com/">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href="http://cms.botble.com/admin">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt="core" src="http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt="theme" src="http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/jmex2G4eC18?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href="http://nghiadev.com/">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 0, 'uploads/1/news/1476893532-01.jpg', 0, NULL, NULL, '2016-11-12 18:32:57', '2016-11-25 07:30:22'),
(47, 'Sử dụng xe Đại lý bán hàng Tricks xúc', 'Đây là bài viết mẫu, nội dung của những bài viết demo đều giống nhau, nó được dùng với mục đích làm ví dụ, các bài viết hiện tại trên trang demo đều có nội dung giống nhau về phần nội dung và mô tả ngắn.', '<p>Hi mọi người, &nbsp;dạo gần đ&acirc;y m&igrave;nh kh&ocirc;ng viết blog mới v&igrave; tập trung ph&aacute;t triển Botble CMS. Sau bao cố gắng th&igrave; h&ocirc;m nay m&igrave;nh đ&atilde; c&oacute; thể release version 2.0 với nhiều t&iacute;nh năng mới.</p>\r\n\r\n<p>Ở bản 1.0, m&igrave;nh cảm thấy n&oacute; c&oacute; qu&aacute; nhiều t&iacute;nh năng phức tạp, chỉ ph&ugrave; hợp với hệ thống lớn m&agrave; đa số c&aacute;c website nhỏ kh&ocirc;ng cần đến, v&igrave; vậy m&igrave;nh đ&atilde; đơn giản bớt đi trong phần n&agrave;y v&agrave; tập trung l&agrave;m sao cho Botble CMS dễ sử dụng nhất.</p>\r\n\r\n<p>Botble CMS đang sử dụng Laravel&nbsp;phi&ecirc;n bản mới nhất tại thời điểm n&agrave;y 5.3.</p>\r\n\r\n<h3>Demo:</h3>\r\n\r\n<p>Homepage:&nbsp;<a href="http://cms.botble.com/">http://cms.botble.com</a></p>\r\n\r\n<p>Admin:&nbsp;<a href="http://cms.botble.com/admin">http://cms.botble.com/admin</a></p>\r\n\r\n<p>Account: botble - 159357</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cấu tr&uacute;c thư mục:</h3>\r\n\r\n<p><img alt="core" src="http://sangplus.com/wp-content/uploads/2016/10/Core-700x328.png" /></p>\r\n\r\n<p>Botble version 2 đ&atilde; được tổ chức th&agrave;nh từng module theo dạng HMVC v&agrave; nằm ho&agrave;n to&agrave;n trong thư mục /core. Những thư mục kh&aacute;c hầu hết được giữ nguy&ecirc;n hiện trạng như bản c&agrave;i mới laravel. Điều n&agrave;y gi&uacute;p dễ d&agrave;ng hơn trong việc cập nhật, n&acirc;ng cấp sau n&agrave;y.</p>\r\n\r\n<p><img alt="theme" src="http://sangplus.com/wp-content/uploads/2016/10/Theme-700x326.png" /></p>\r\n\r\n<p>T&aacute;ch biệt thư mục theme v&agrave; chuẩn cấu tr&uacute;c theme.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&igrave;nh xin n&oacute;i sơ qua một số t&iacute;nh năng mới trong bản n&agrave;y.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<h3>Hỗ trợ c&agrave;i đặt.</h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>Nhiều người gặp kh&oacute; khăn trong việc c&agrave;i đặt Botble, đa số đ&oacute; l&agrave; những người mới l&agrave;m quen laravel. V&igrave; vậy m&igrave;nh đ&atilde; viết 1 đoạn script để hỗ trợ c&agrave;i đặt nhanh ch&oacute;ng qua command line.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/DAZe2V_A0wo?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>2. Tạo 1 module/plugin mới một c&aacute;ch nhanh ch&oacute;ng với CRUD v&agrave; permissions.</h3>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/8F4wfrS9svs?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc loại bỏ 1 module kh&ocirc;ng cần thiết cũng đơn giản hơn bao giờ hết.</p>\r\n\r\n<p><iframe frameborder="0" height="506" src="https://www.youtube.com/embed/jmex2G4eC18?feature=oembed" width="900"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Do hơi bận rộn n&ecirc;n m&igrave;nh chỉ c&oacute; thể quay một số video hướng dẫn tr&ecirc;n, sẽ bổ sung sau :D</p>\r\n\r\n<h3>3. Theme mới</h3>\r\n\r\n<p>Trong bản cập nhật n&agrave;y, nhờ sự gi&uacute;p đỡ của bạn&nbsp;<a href="http://nghiadev.com/">Minh Nghĩa</a>, Botble front page đ&atilde; được kho&aacute;c l&ecirc;n bộ &aacute;o mới m&agrave; m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; đẹp hơn rất nhiều so với theme mặc định cũ.</p>\r\n\r\n<p>Một số h&igrave;nh ảnh:</p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/GuJDOdVnDbOVIneN9Qwvo5G_CkX8lx09S0fqifpEvWODI5vFPk4qdvqHITQFbKbdlUoZhB1FMaiTS4-qG2c0qKNGnOoj0oe5Gh9bv9xLg_wp_mWFysuKj9R-WQEufFXzYMrwQ30HRnvebvJqeGCBXhU5RatFHTBbv-8lwoWXZVXd3G1eUSOPKn1S1dVTsoXf7XxzFzN-Vny8uypcJxT2ZenVA1jDQ4doIPky0LHLra08TnMJZ8zh4lMSm8r5PiWXPCpLhBr4OhFTWjYk4dMgo19rggDGJvFZnvFwl682bD0EBqbhITdR4tAni-CTiprbroUuBo5aKX3MFnKIMyVQcc5H5tNuJgtieDuVDe0ZjePxvQzwbG-Vzoz7cEMOLp7G23fTG3L_w3Czpt2p8TzE8nsa8xYdu5yWIetxoYfWRGMYQCHtINnbglYDKuK1wFnXu41rzOO8p4y7NF5rksoAuNleDD9RB24JR3a6J2zhOnvRL5EWlq3HlZbUdn7cybXn3rnJY9rWqBjubFUz8d-lPtObLi4dHzYxT6KfDMRzwMXcPx_RxZVc-6ZOEn2e051DsccRfb-IvurAzppoqnYlfxFEUYZMq8c5s-GNeRKOwqXFhEs4=w655-h324-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/0S7CR_aFNK7QzUEf8Oo6gnwBU1htFdqYLWmX5VQHMZusY47Xyk_jim18FiAwWlVz4WVtn56AMhlhTqtNDMdBpVi2w8pc4yShEYs2-5gr9qIDPxylbCOKfQqj-zzGS8kR7v5xBBph55FE5YFXWEnDQEYo0udhhoNAY-nDpmIi3t3Ho_BqUf8U0E13WDUf-Iu-UQSrvUfFqdqmVubGBuuSx6xXtnj3RBwUcoFdHkFihdXneylcNppQRnTPg3bMOcbhPaJt3JQNQmM3SJIS40fG4W1Yc9ALpK1N7GYt2sRcczWQTQRJveezh-zoPY-HACeQIViWXR_hktNrILo5o-3lhvlDy1kiB60elO3mWKA6bmHZstJ5pqEuBNR6A0DlpBJ-bbtqZBDqMVrjVoromcvucN3ybY3zUOWonD5g1_5kRfRo9C451BAMZ0W1uH4u5pmr3qNTcoxJJ55K_cT4X8ZFuqIV3DOooFuXOYQiXqPFpEgl--px4vvdQycJyhdtgrxb4FBff1vyMskx00rmA33a5DSqoBxt_HzzXqBWNTw6VXj0CLhXft6FQ-ojvWaxMMlzFqmB93heEtSrAczb8nTRIlT7fb6q-2MlCr3LxCjd9VhkVyzL=w1344-h662-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/mv9qalSsV8wrJjeugYDvhdVF-WEVfsNahKVIVg8CZ6NfN9tisVjGPch-VyQG4Ij4fCG6Z_LY5B-uwX30pI2BXBre3SxsWHF_v2pF-CwNGiB9Z5jj-_zEbqL5p2vGj3YRsUG2fY9TO1eAWZ-Pf3YiuS55cPdpc52cprwtRFpGBZ0NjpDAefNZYBHvabj5H_Rgg29U7R8KVvJj95bA_Dj12kqbxZFZB6otTfyikWskXTQa6Vy5yEqv7-KlU96jrowouyIQsXER0FaedD2X6aHPvA6dFhVmK5lJ9LwVr01Ani16vqjOcDf__FCh6o5iPTkLFPCccLPBhtT4kd2AotQCyopvmH8wyewYLFeG6mNi6bEnh35UfPix500VPTviZkW4UVMy5dIOWHalfdO7VXkbGIq--dsO7H9OPQ3BHLA5MKmjmER4Wg1Mi8vxI8xm7Rx6mTo8BQBNixAuVBPjgVIEjgUKJGTOFeXNrNVL685EuWTMVfhJSepjxjSNUtEjkeHxy03NjWd_8JUgfVFpr1Yer_5qGjg7zAFOB0XDbNn_nhl-CRZW_pRj4GQ_NwumV2ICD0IMPxOj17bxbA8tpf8rqWo9x__pgyWeeuYUMBWrnH1NfozG=w1345-h670-no" /></p>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/lF39CW32xGI1aCvNJU7eZmIKn94wkt9qiWqjqsaO7DR60azWq94_SnVPWG3cx0bDY-oX-vaZKCa_hA1jvjpZ7JTLVPo1HtYobNArbvP6HcrsBn0oTLs7I25ChfLsdlMI-GywLSMgrx4paTLJxEWuiqXBxkRGA7S59BH_CQ1w53H3cPvD34k3Ps9HxvTetDwjx6YiVe0JAMXGLHjtUYKDwaAi4pSxVnTRDwS84KSm9dTyhdU-I014QSP_RA6gHR8krt2Ddlwr9CaPWc2yAe214G1_gN1inUoTMmI6mZr3vY9qdB5JVLodTNEGtfqgpzy8s-wAGHhjI7JPsWbsa0UEOzS3WBpzbfiOR66L1ops7PiTRjvhr9HMS5er0a3P_lQUK8r7hq37lDMk9nflkyOkzcFhSvRGP6TS83TJR4X95tcal0uTP6pYPeC0C41IpomtXRalqIB9dx1tAQfBWlY9WRhZADnwLIkWxm5U8vqEhXBq6RQFhRBiWlInMwOI01bmInLvioAwd0bohHtNd2yP_pU-WeCu2slVxpG-HTRacW14vvpcBJKGy2k0sjCnngI1FFb8X7NHSdQy_etGkaggWJ2mfgAvD8DzSfNvScchUhbkcqq4=w1353-h669-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Quản l&yacute; plugin</h3>\r\n\r\n<p><img alt="" src="https://lh3.googleusercontent.com/03ZeATliabVof9wqnXaoI4a3m52QOYhC7bPpAyUihUpthcH2yilmrA45oX4w5PbG_99bDvy9tKPD0iOrDCqEpEMR0xfHxczuBxLISD96inWaZW6fHo9YMeHZm_8ULpZSQxK5bvORy9iQ2FBT6xBGuYPeVjVOzNcO839cC0ZjnaTxQUozTm8SA4Fe938L4kT4xeNAVYMHourqELmoC1tjgIr8oq66Wze_loZuY35kBZlX8iFGoFiC4gkjO_yT16q4wpeqRzP7rWOdztqmZpZ5wrbTSusbfi1Dn2ghIABvS4uqrF7gi_JIL9AlSEhnFTHY7QaDH4Q7N8m3r3n2rZWD43iaRIauOm4mXgP1XpaTzZjVjehXLfgG8BNNIq56KldAlroHbGblojOS_gPHuYCvsxk3mckq6oHvGLh4_HyxYl7JAuG0hYxN0sIimEd8GehVV-EqNnbPWAocxytigYnX4SiMndGOtVet6o2XvrDLMlHN8ASKxcO59IJ8Se7hzaCfcJ6wQpl5kvJE4oITxA4R-5_1ezvnZDPGt7jyPuIv1wGsks2YJ1apYIBMQEOhKdlCDkqQC_hBx0vLhq8zxgNgptZKv2opfPGZ9j6KQPqNL3khGoRv=w1352-h666-no" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>5. Sử dụng một số concept của Wordpress</h3>\r\n\r\n<p>Như c&aacute;c bạn đ&atilde; biết, Wordpress c&oacute; rất nhiều t&iacute;nh năng hay. V&igrave; vậy m&igrave;nh đ&atilde; &aacute;p dụng Filter, Action hook v&agrave; Metabox v&agrave;o Botble để c&oacute; thể dễ d&agrave;ng hơn cho c&aacute;c bạn can thiệp v&agrave;o core sau n&agrave;y.</p>\r\n\r\n<h3>Kết luận:</h3>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số t&iacute;nh năng mới của Botble version 2.0, hi vọng c&aacute;c bạn cảm thấy hứng th&uacute; với CMS n&agrave;y.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể mua ủng hộ m&igrave;nh tr&ecirc;n Codecanyon https://codecanyon.net/item/botble-cms-php-platform-based-on-laravel-framework/16928182 hoặc li&ecirc;n hệ trực tiếp với m&igrave;nh qua skype live:minsang2603 để được hỗ trợ.</p>\r\n', 1, 1, 1, 'uploads/1/news/old-car-660x330.jpg', 4, NULL, NULL, '2016-11-12 18:35:25', '2016-11-28 22:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE IF NOT EXISTS `post_category` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 1, 3, NULL, '2016-05-12 20:39:18', '2016-05-12 20:39:18'),
(37, 1, 1, NULL, '2016-07-09 15:35:49', '2016-07-09 15:35:49'),
(48, 1, 2, NULL, '2016-07-12 20:45:55', '2016-07-12 20:45:55'),
(94, 1, 22, NULL, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(162, 8, 22, NULL, '2016-10-14 08:23:44', '2016-10-14 08:23:44'),
(164, 6, 23, NULL, '2016-10-14 08:42:12', '2016-10-14 08:42:12'),
(165, 9, 26, NULL, '2016-10-14 08:47:25', '2016-10-14 08:47:25'),
(166, 7, 27, NULL, '2016-10-14 09:18:03', '2016-10-14 09:18:03'),
(167, 7, 28, NULL, '2016-10-14 10:48:55', '2016-10-14 10:48:55'),
(168, 8, 29, NULL, '2016-10-14 10:49:53', '2016-10-14 10:49:53'),
(171, 7, 30, NULL, '2016-10-14 11:33:15', '2016-10-14 11:33:15'),
(172, 8, 31, NULL, '2016-10-14 11:36:12', '2016-10-14 11:36:12'),
(173, 6, 37, NULL, '2016-10-14 11:41:31', '2016-10-14 11:41:31'),
(175, 8, 38, NULL, '2016-10-14 11:42:24', '2016-10-14 11:42:24'),
(176, 7, 39, NULL, '2016-10-14 12:15:05', '2016-10-14 12:15:05'),
(177, 8, 40, NULL, '2016-10-14 12:15:32', '2016-10-14 12:15:32'),
(179, 9, 41, NULL, '2016-10-14 12:16:14', '2016-10-14 12:16:14'),
(181, 7, 42, NULL, '2016-10-14 12:17:54', '2016-10-14 12:17:54'),
(186, 8, 43, NULL, '2016-10-15 10:43:42', '2016-10-15 10:43:42'),
(252, 11, 10, NULL, '2016-11-25 07:27:26', '2016-11-25 07:27:26'),
(255, 11, 13, NULL, '2016-11-25 07:27:37', '2016-11-25 07:27:37'),
(262, 1, 20, NULL, '2016-11-25 07:28:59', '2016-11-25 07:28:59'),
(263, 1, 21, NULL, '2016-11-25 07:29:03', '2016-11-25 07:29:03'),
(265, 7, 45, NULL, '2016-11-25 07:29:51', '2016-11-25 07:29:51'),
(266, 7, 47, NULL, '2016-11-25 07:29:56', '2016-11-25 07:29:56'),
(267, 6, 46, NULL, '2016-11-25 07:30:23', '2016-11-25 07:30:23'),
(269, 6, 44, NULL, '2016-11-25 09:37:38', '2016-11-25 09:37:38'),
(279, 1, 8, NULL, '2017-03-21 07:25:09', '2017-03-21 07:25:09'),
(280, 11, 9, NULL, '2017-03-21 07:26:08', '2017-03-21 07:26:08'),
(287, 6, 6, NULL, '2017-03-21 07:30:39', '2017-03-21 07:30:39'),
(289, 1, 5, NULL, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(290, 1, 7, NULL, '2017-04-30 20:03:27', '2017-04-30 20:03:27'),
(295, 8, 17, NULL, '2017-04-30 20:04:28', '2017-04-30 20:04:28'),
(302, 6, 18, NULL, '2017-04-30 20:08:55', '2017-04-30 20:08:55'),
(303, 7, 16, NULL, '2017-04-30 20:10:12', '2017-04-30 20:10:12'),
(306, 8, 15, NULL, '2017-04-30 20:11:07', '2017-04-30 20:11:07'),
(308, 1, 19, NULL, '2017-04-30 20:15:13', '2017-04-30 20:15:13'),
(310, 9, 14, NULL, '2017-04-30 20:15:49', '2017-04-30 20:15:49'),
(313, 11, 12, NULL, '2017-04-30 20:16:59', '2017-04-30 20:16:59'),
(314, 9, 11, NULL, '2017-04-30 20:17:16', '2017-04-30 20:17:16'),
(315, 6, 4, NULL, '2017-12-11 09:07:56', '2017-12-11 09:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(2, 2, 2, NULL, '2016-05-07 05:17:30', '2016-05-07 05:17:30'),
(3, 3, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(4, 4, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(5, 1, 1, NULL, '2016-05-24 15:53:44', '2016-05-24 15:53:44'),
(6, 5, 6, NULL, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(7, 6, 6, NULL, '2016-08-02 21:38:34', '2016-08-02 21:38:34'),
(8, 5, 8, NULL, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(9, 6, 8, NULL, '2016-08-02 21:40:56', '2016-08-02 21:40:56'),
(10, 5, 9, NULL, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(11, 6, 9, NULL, '2016-08-02 21:42:45', '2016-08-02 21:42:45'),
(12, 5, 10, NULL, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(13, 6, 10, NULL, '2016-08-02 21:44:20', '2016-08-02 21:44:20'),
(14, 5, 11, NULL, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(15, 6, 11, NULL, '2016-08-02 21:45:16', '2016-08-02 21:45:16'),
(16, 5, 12, NULL, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(17, 6, 12, NULL, '2016-08-02 21:46:22', '2016-08-02 21:46:22'),
(18, 5, 13, NULL, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(19, 6, 13, NULL, '2016-08-02 21:47:18', '2016-08-02 21:47:18'),
(20, 5, 14, NULL, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(21, 6, 14, NULL, '2016-08-02 21:50:39', '2016-08-02 21:50:39'),
(22, 5, 15, NULL, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(23, 6, 15, NULL, '2016-08-02 21:51:49', '2016-08-02 21:51:49'),
(24, 5, 16, NULL, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(25, 6, 16, NULL, '2016-08-02 21:52:39', '2016-08-02 21:52:39'),
(26, 5, 17, NULL, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(27, 6, 17, NULL, '2016-08-02 21:53:49', '2016-08-02 21:53:49'),
(28, 5, 18, NULL, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(29, 6, 18, NULL, '2016-08-02 21:54:31', '2016-08-02 21:54:31'),
(30, 5, 19, NULL, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(31, 6, 19, NULL, '2016-08-02 21:55:28', '2016-08-02 21:55:28'),
(32, 5, 20, NULL, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(33, 6, 20, NULL, '2016-08-02 21:56:32', '2016-08-02 21:56:32'),
(34, 5, 21, NULL, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(35, 6, 21, NULL, '2016-08-02 21:57:29', '2016-08-02 21:57:29'),
(36, 7, 22, NULL, '2016-08-14 19:12:55', '2016-08-14 19:12:55'),
(40, 7, 5, NULL, '2017-04-30 19:59:58', '2017-04-30 19:59:58'),
(41, 7, 7, NULL, '2017-04-30 20:03:27', '2017-04-30 20:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE IF NOT EXISTS `request_logs` (
  `id` int(10) unsigned NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://botble.dev/vendor/media/packages/dropzone/dropzone.js', 14, NULL, NULL, '2017-11-30 18:26:23', '2017-11-30 18:32:36'),
(2, 404, 'http://botble.dev/images/favicon.png', 122, NULL, NULL, '2017-11-30 18:26:24', '2017-12-11 09:09:44'),
(3, 404, 'http://botble.dev/vendor/core/images/ui/nav_arrow_right.pn', 81, NULL, NULL, '2017-11-30 18:27:36', '2017-12-11 09:09:05'),
(4, 404, 'http://botble.dev/vendor/core/packages/underscore/underscore-min.map', 64, NULL, NULL, '2017-11-30 18:28:01', '2017-12-01 10:23:36'),
(5, 404, 'http://botble.dev/vendor/core/js/app_modules/jsvalidation.js.map', 50, NULL, NULL, '2017-11-30 18:28:01', '2017-12-01 10:23:36'),
(6, 404, 'http://botble.dev/vendor/core/images/default-image-150x150.png', 2, NULL, NULL, '2017-11-30 18:38:11', '2017-11-30 18:39:18'),
(7, 404, 'http://botble.dev/uploads/1/5-xu-huong-vi-clutch-cam-tay-sanh-dieu-cho-mua-he-1-1025x1025-150x150.jpg', 6, NULL, NULL, '2017-12-08 19:37:42', '2017-12-08 20:23:36'),
(8, 404, 'http://botble.dev/uploads/1/logo/1493607187-1493225486-logo-150x150.png', 1, NULL, NULL, '2017-12-08 20:23:32', '2017-12-08 20:23:32'),
(9, 404, 'http://botble.dev/uploads/1/5-xu-huong-vi-clutch-cam-tay-sanh-dieu-cho-mua-he-1-1025x1025.jpg', 1, NULL, NULL, '2017-12-08 20:23:37', '2017-12-08 20:23:37'),
(10, 404, 'http://botble.local/vendor/core/images/ui/nav_arrow_right.pn', 54, NULL, NULL, '2018-01-17 18:00:03', '2018-03-13 20:04:49'),
(11, 404, 'http://botble.local/vendor/core/packages/underscore/underscore-min.map', 94, NULL, NULL, '2018-01-17 18:00:04', '2018-01-18 18:35:28'),
(12, 404, 'http://botble.local/images/favicon.png', 144, NULL, NULL, '2018-01-17 18:00:04', '2018-03-18 18:02:51'),
(13, 404, 'http://botble.local/uploads/1/logo/1493607187-1493225486-logo.png', 3, NULL, NULL, '2018-01-17 18:03:01', '2018-01-17 18:24:45'),
(14, 404, 'http://botble.local/themes/newstv/assets/images/bg/bg_trans20.png', 2, NULL, NULL, '2018-01-17 18:03:01', '2018-01-17 18:25:56'),
(15, 404, 'http://botble.local/uploads/1/logo/1493607187-1493225486-logo-150x150.png', 8, NULL, NULL, '2018-01-17 18:03:12', '2018-01-17 18:24:44'),
(16, 404, 'http://botble.local/vendor/core/media/packages/lodash/lodash.min.js', 8, NULL, NULL, '2018-01-17 18:03:50', '2018-01-17 18:21:41'),
(17, 404, 'http://botble.local/admin/theme/jquery.contextMenu.min.js.map', 4, NULL, NULL, '2018-01-17 18:24:29', '2018-01-17 18:30:59'),
(18, 404, 'http://botble.local/vendor/media/images/clippy.svg', 3, NULL, NULL, '2018-01-17 18:24:45', '2018-01-17 18:25:47'),
(19, 404, 'http://botble.local/admin/posts/edit/jquery.contextMenu.min.js.map', 2, '[1]', NULL, '2018-01-17 18:26:19', '2018-01-17 18:31:08'),
(20, 404, 'http://botble.local/uploads/1/news/photo-3-1513331298468-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(21, 404, 'http://botble.local/uploads/1/news/howtostart750x348-1513336577023-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(22, 404, 'http://botble.local/uploads/1/news/2copypsov-1513383877882-1-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(23, 404, 'http://botble.local/uploads/1/news/photo1513161216143-1513161216143-1513245588651-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(24, 404, 'http://botble.local/uploads/1/news/ap663991123816-1512965310455-158-0-717-1063-crop-1512965540738-1513223645767-150x150....', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:23'),
(25, 404, 'http://botble.local/uploads/1/news/hop-bao-cong-bo-luat-1513233096066-22-38-1025-1822-crop-1513233126758-1513238795115-1...', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(26, 404, 'http://botble.local/uploads/1/news/cho-va-nhan-1513183414909-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(27, 404, 'http://botble.local/uploads/1/news/image-1513135196294-150x150.png', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:23'),
(28, 404, 'http://botble.local/uploads/1/news/photo1513306925790-1513306925790-1513327991182-150x150.jpeg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:23'),
(29, 404, 'http://botble.local/uploads/1/news/1-1513305032857-150x150.png', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(30, 404, 'http://botble.local/uploads/1/news/photo-4-1513071198577-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(31, 404, 'http://botble.local/uploads/1/news/photo1513260327465-1513260327466-1513304033550-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(32, 404, 'http://botble.local/uploads/1/news/1-1513244376908-crop-1513244386438-1513307989962-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:19', '2018-01-17 18:33:22'),
(33, 404, 'http://botble.local/uploads/1/news/photo1513162521415-1513162521415-1513312586786-1513321516974-150x150.png', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:22'),
(34, 404, 'http://botble.local/uploads/1/news/1-1512841515091-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(35, 404, 'http://botble.local/uploads/1/news/photo1513237730170-1513237730171-1513305347556-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(36, 404, 'http://botble.local/uploads/1/news/keyboard-warrior-600x370-1513155889229-crop-1513155899084-1513215915731-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(37, 404, 'http://botble.local/uploads/1/news/photo1513242715273-1513242715273-1513245181024-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(38, 404, 'http://botble.local/uploads/1/news/photo1513149641528-1513149641528-1513211532897-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(39, 404, 'http://botble.local/uploads/1/news/1-crop-1513239638970-crop-1513241174547-1513304368398-150x150.png', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:22'),
(40, 404, 'http://botble.local/uploads/1/news/photo1513153032081-1513153032081-1513234528418-150x150.jpeg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:22'),
(41, 404, 'http://botble.local/uploads/1/news/design-thinking-business-success-1513237770696-crop-1513237787457-1513238383014-150x1...', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:22'),
(42, 404, 'http://botble.local/uploads/1/news/flood-moral-story-motivation-676x284-1513073783656-150x150.jpg', 2, NULL, NULL, '2018-01-17 18:32:20', '2018-01-17 18:33:23'),
(43, 404, 'http://botble.local/admin/galleries/edit/jquery.contextMenu.min.js.map', 2, '[1]', NULL, '2018-01-17 18:32:30', '2018-01-17 18:33:25'),
(44, 404, 'http://botble.local/vendor/core/plugins/custom-field/js/import-field-group.js', 2, NULL, NULL, '2018-01-17 18:34:13', '2018-01-17 18:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE IF NOT EXISTS `revisions` (
  `id` int(10) unsigned NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'administrators', 'Administrators', '{"analytics.general":true,"analytics.page":true,"analytics.browser":true,"analytics.referrer":true,"backups.list":true,"backups.create":true,"backups.restore":true,"backups.delete":true,"block.list":true,"block.create":true,"block.edit":true,"block.delete":true,"categories.list":true,"categories.create":true,"categories.edit":true,"categories.delete":true,"contacts.list":true,"contacts.create":true,"contacts.edit":true,"contacts.delete":true,"custom-fields.list":true,"custom-fields.create":true,"custom-fields.edit":true,"custom-fields.delete":true,"dashboard.index":true,"galleries.list":true,"galleries.create":true,"galleries.edit":true,"galleries.delete":true,"languages.list":true,"languages.create":true,"languages.edit":true,"languages.delete":true,"logs.list":true,"logs.delete":true,"media.index":true,"files.list":true,"files.create":true,"files.edit":true,"files.trash":true,"files.delete":true,"folders.list":true,"folders.create":true,"folders.edit":true,"folders.trash":true,"folders.delete":true,"member.list":true,"member.create":true,"member.edit":true,"member.delete":true,"menus.list":true,"menus.create":true,"menus.edit":true,"menus.delete":true,"pages.list":true,"pages.create":true,"pages.edit":true,"pages.delete":true,"plugins.list":true,"posts.list":true,"posts.create":true,"posts.edit":true,"posts.delete":true,"roles.list":true,"roles.create":true,"roles.edit":true,"roles.delete":true,"settings.options":true,"tags.list":true,"tags.create":true,"tags.edit":true,"tags.delete":true,"translations.list":true,"translations.create":true,"translations.edit":true,"translations.delete":true,"users.list":true,"users.create":true,"users.edit":true,"users.delete":true,"widgets.list":true}', 'Highest role in system', 0, 1, 1, NULL, '2018-01-17 18:00:45', '2018-03-14 21:49:45'),
(2, 'members', 'Members', '{"analytics.general":true,"analytics.page":true,"analytics.browser":true,"analytics.referrer":true,"block.list":true,"block.create":true,"block.edit":true,"block.delete":true,"categories.list":true,"categories.create":true,"categories.edit":true,"categories.delete":true,"contacts.list":true,"contacts.create":true,"contacts.edit":true,"contacts.delete":true,"custom-fields.list":true,"custom-fields.create":true,"custom-fields.edit":true,"custom-fields.delete":true,"dashboard.index":true,"galleries.list":true,"galleries.create":true,"galleries.edit":true,"galleries.delete":true,"media.index":true,"files.list":true,"files.create":true,"files.edit":true,"files.trash":true,"files.delete":true,"folders.list":true,"folders.create":true,"folders.edit":true,"folders.trash":true,"folders.delete":true,"menus.list":true,"menus.create":true,"menus.edit":true,"menus.delete":true,"pages.list":true,"pages.create":true,"pages.edit":true,"pages.delete":true,"posts.list":true,"posts.create":true,"posts.edit":true,"posts.delete":true,"tags.list":true,"tags.create":true,"tags.edit":true,"tags.delete":true}', 'Member role', 1, 1, 1, NULL, '2018-01-17 18:01:32', '2018-03-14 21:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE IF NOT EXISTS `role_users` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2018-01-18 08:11:34', '2018-01-18 08:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'PHP platform based on Laravel Framework', NULL, NULL),
(2, 'copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href="http://nghiadev.com" target="_blank">Nghia Minh</a>', NULL, NULL),
(3, 'admin_email', 'sangnguyenplus@gmail.com', NULL, NULL),
(4, 'google_analytics', 'UA-42586526-15', NULL, NULL),
(5, 'google_site_verification', 'hs2Js3WGGpf1pzyhUNehvVDSIrmO3XZpm7PggNZECxE', NULL, NULL),
(6, 'seo_title', 'Botble Platform', NULL, NULL),
(7, 'seo_description', 'Botble Platform - PHP platform base on Laravel Framework', NULL, NULL),
(8, 'seo_keywords', 'botble, botble team, botble platform, php platform, php framework, web development', NULL, NULL),
(9, 'contact_address', 'Elinext Building, 37 Phan Xich Long, ward 3, Phu Nhuan district, Ho Chi Minh, Vietnam', NULL, NULL),
(10, 'contact_email', 'sangnguyenplus@gmail.com', NULL, NULL),
(11, 'email_support', 'sangnguyenplus@gmail.com', NULL, NULL),
(12, 'contact_phone', '+84988606928', NULL, NULL),
(13, 'contact_hotline', '+84988606928', NULL, NULL),
(14, 'enable_captcha', '0', NULL, NULL),
(15, 'about', '<p>Content here</p>\r\n', NULL, NULL),
(16, 'show_admin_bar', '1', NULL, NULL),
(17, 'theme', 'ripple', NULL, NULL),
(18, 'enable_change_admin_theme', '1', NULL, NULL),
(19, 'enable_multi_language_in_admin', '1', NULL, NULL),
(20, 'enable_https', '0', NULL, NULL),
(21, 'google_plus', 'https://plus.google.com', NULL, NULL),
(22, 'facebook', 'https://www.facebook.com/botble.technologies', NULL, NULL),
(23, 'twitter', 'https://twitter.com/botble', NULL, NULL),
(24, 'enable_cache', '0', NULL, NULL),
(25, 'cache_time', '10', NULL, NULL),
(26, 'cache_time_site_map', '3600', NULL, NULL),
(27, 'language_hide_default', '1', NULL, NULL),
(28, 'language_switcher_display', 'dropdown', NULL, NULL),
(29, 'language_display', 'all', NULL, NULL),
(30, 'language_hide_languages', '[]', NULL, NULL),
(31, 'theme-ripple-site_title', '© 2016 Botble Technologies. All right reserved. Designed by <a href="http://nghiadev.com" target="_blank">Nghia Minh</a>', NULL, NULL),
(33, 'theme-ripple-logo', '', NULL, NULL),
(34, 'theme-ripple-copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href="http://nghiadev.com" target="_blank">Nghia Minh</a>', NULL, NULL),
(35, 'theme-newstv-copyright', '© Copyright 2017 by news-tv.com. All Rights Reserved.', NULL, NULL),
(36, 'theme-newstv-theme_color', 'red', NULL, NULL),
(37, 'theme-newstv-top_banner', '/themes/newstv/assets/images/banner.png', NULL, NULL),
(38, 'theme-newstv-logo', 'uploads/1/logo/logo.png', NULL, NULL),
(39, 'rich_editor', 'tinymce', NULL, NULL),
(40, 'admin_logo', '/vendor/core/images/logo_white.png', NULL, NULL),
(41, 'admin_title', 'Botble Technologies', NULL, NULL),
(42, 'analytics_view_id', '125311257', NULL, NULL),
(43, 'analytics_service_account_credentials', '{\r\n  "type": "service_account",\r\n  "project_id": "botble-cms",\r\n  "private_key_id": "f40c1c44478ec4161e141731f2289639b0292500",\r\n  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCm5eDiIW363mtW\\na/omcDTBkMvJLGwrkslsza0mod3Z1OhBmTEPNKYXznlcguzWqg/i8mJJ+pxjt4AT\\nHyunwjTnw8bDjcawH9jH7jbNTPx1ZNlRjXL8e19k/TG09LfJ4jnX0ZbHNZGZCU3l\\nzNKD0pynhR/X+R634YzYN2P9aIG+7Fd8YmswLmvRub2QUC28m3wmJzsKP3hyAzYy\\nixP2ebAfyB0/H4SmODEliznqRD/WDWwqpUDaiMYhX0I+xF8bvzdot+4BmTZ+KCLj\\n+9kE+MHxLWNXjER+n8wCDjQSTQjyQHY0NVanNS7g6qJLZNo99q3BF52zoZVdD5Ee\\nloOjjQBXAgMBAAECggEAG3sIb1N/z2nmFKHM251oImMcGvDUkswlnGO1WgIXDHIR\\nGBQITu+lVZAqzX/FTYdM/FpassGwFH83eG6Oep3wpiTHSpXCnGdyA2GG5oEBpLbJ\\nTbNTtpz91RwXnisZRAWa7p1VDVIVujQc/nSeSRRZtP+ngaFEXJSn40YjkasuiegO\\nXETgRlF3fSlVZmPd3kGy1Bq9MAfp2iylbM/pwrKCKJk9ZQUmIciTU1eQ6mqxI3/x\\nEyarQ74Vc6RQ/wZxMbAJcLPHYWJgdZvSr8VUvvOeCgDGP8jyjP2/f2CnEZBPNpoO\\nknISU/s4y7pBwu+FTVz82Ac+XokGznHTNsap7JaPUQKBgQDT7UqxxkjoSfTqvaTF\\nxX7mD7jkOwt4X+IitNWUYy1s1QVPOCMl7CxM+xyDd99auJV8HuhBfJESz8KSXnen\\nv3ICCGVmAIHcAoNoopPJvzwXTu95eC6oV2pJmtc1s9a7eeSxBvjjc2WAjPdSppPV\\nfzb9sX5ZqQHQNWh43nlRfnnM6QKBgQDJm039nTFcwFRunxy0CyUBj0PR2ENaJZIU\\nnnB5IcBAFjpM0rXKAYIshjid9vJMJEBjLHWCQ2+8k9RsCuucYkZBJjfpXI0Mn3WO\\n7B7D/bpFS8xFq0m4w98rBtKh/BJoim3qID5+34I6p0osxAel5sNuXskbSjGRBfNN\\neL6wTN8bPwKBgHlknzidv/1u/5/G6a9vpXTa5Km3OKbHJZ2DwCOze72vd88c9OUw\\nF2AxJvAXphUtTlM+0QNR+zevUmDNQ/UOsJuBe7Ol7ry7o9I37jfOFvmy+XG26eL7\\nz6JB06yrSwEwnVLaD48Z9rZgCPuK93t/11wSY7GwIZ3GOgWiShPoQpShAoGAGXid\\nqeUqT2WdRTylC7o8uq23C9Qe7kzA4AoEe8lf2Lj2NK6KeTMnlyh+DrccdbI+0EjV\\nr9eFTnX+6IeYrPFdnu2NMtaWm3mqCJycZnawCgFBlavGbKmSkIUUJ5MJYFvc9y+L\\ntcvXUEHChVVfAf7dwhwHnIMLMB9oVeljbjLIHVECgYEAulBNrt+dIFnXNYrPhvY1\\nJ+Hx444lPIO7XnVrN7Q8d+stBk4CtbU3nPYkIiaV8uucgE5ZSxVG5Fef2clSbjOk\\n3wmltVSXSs21s40Ti8XKzvgg1QUrNLIQbHA3xoa5qFiFtxwV+m+IUZKvZmNj1y3l\\nbHAjWQ4Sj+EM1MXMrrEGZP0=\\n-----END PRIVATE KEY-----\\n",\r\n  "client_email": "botble-cms@botble-cms.iam.gserviceaccount.com",\r\n  "client_id": "113101231196374159892",\r\n  "auth_uri": "https://accounts.google.com/o/oauth2/auth",\r\n  "token_uri": "https://accounts.google.com/o/oauth2/token",\r\n  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",\r\n  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/botble-cms%40botble-cms.iam.gserviceaccount.com"\r\n}', NULL, NULL),
(44, 'activated_plugins', '["translation","analytics","audit-log","backup","block","blog","captcha","contact","custom-field","gallery","member","log-viewer","language","note","request-log"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE IF NOT EXISTS `slugs` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '13000-people-have-bought-our-theme', 4, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(2, 'top-search-engine-optimization-strategies', 5, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(3, 'which-company-would-you-choose', 6, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(4, 'used-car-dealer-sales-tricks-exposed', 7, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(5, '20-ways-to-sell-your-product-faster', 8, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(6, 'the-secrets-of-rich-and-famous-writers', 9, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(7, 'imagine-losing-20-pounds-in-14-days', 10, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(8, 'are-you-still-using-that-slow-old-typewriter', 11, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(9, 'a-skin-cream-thats-proven-to-work', 12, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(10, '10-reasons-to-start-your-own-profitable-website', 13, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(11, 'simple-ways-to-reduce', 14, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(12, 'apple-imac-with-retina-5k-display-review', 15, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(13, '10-reasons-to-start-your-own-profitable-website-1', 16, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(14, 'unlock-the-secrets-of-selling-high-ticket-items', 17, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(15, '10000-web-site-visitors-in-one-monthguaranteed', 18, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(16, 'are-you-still-using-that-slow-old-typewriter-1', 19, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(17, 'a-skin-cream-thats-proven-to-work-1', 20, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(18, 'top-search-engine-optimization-strategies-1', 21, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(19, '13000-nguoi-da-mua-theme-cua-chung-toi', 44, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(20, 'len-tren-cong-cu-tim-kiem-toi-uu-hoa-cac-chien-luoc', 45, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(21, 'ban-se-chon-cong-ty-nao', 46, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(22, 'su-dung-xe-dai-ly-ban-hang-tricks-xuc', 47, 'post', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(23, 'uncategorized', 1, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(24, 'events', 6, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(25, 'projects', 7, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(26, 'portfolio', 8, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(27, 'business', 9, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(28, 'resources', 10, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(29, 'new-update', 11, 'category', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(30, 'botble', 5, 'tag', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(31, 'botble-cms', 6, 'tag', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(32, 'contact', 1, 'page', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(33, 'lien-he', 17, 'page', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(34, 'photography', 1, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(35, 'selfie', 2, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(36, 'new-day', 3, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(37, 'morning', 4, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(38, 'happy-day', 5, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09'),
(39, 'perfect', 6, 'gallery', NULL, '2017-11-30 18:26:09', '2017-11-30 18:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `user_id`, `description`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'download', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:37'),
(6, 'event', 1, '', 0, 1, '2016-08-02 21:38:34', '2016-09-27 09:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(5, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(7, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(9, 1, 'en', 'passwords', 'user', 'We can''t find a user with that e-mail address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(27, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(28, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(29, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(30, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(31, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(32, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(33, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(34, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(35, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(36, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(37, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(38, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(39, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(40, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(41, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(42, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(43, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(44, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(45, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(46, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(47, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(48, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(49, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(50, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(51, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(52, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(53, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(54, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(55, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(56, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(57, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(58, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(59, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(60, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(61, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(62, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(63, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(64, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(65, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(66, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(67, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(68, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(69, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(70, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(71, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(72, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(73, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(74, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(75, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(76, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(77, 1, 'en', 'core.acl/auth', 'login.username', 'Username', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(78, 1, 'en', 'core.acl/auth', 'login.email', 'Email', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(79, 1, 'en', 'core.acl/auth', 'login.password', 'Password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(80, 1, 'en', 'core.acl/auth', 'login.title', 'User Login', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(81, 1, 'en', 'core.acl/auth', 'login.remember', 'Remember me?', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(82, 1, 'en', 'core.acl/auth', 'login.login', 'Sign in', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(83, 1, 'en', 'core.acl/auth', 'login.placeholder.username', 'Please enter your username', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(84, 1, 'en', 'core.acl/auth', 'login.placeholder.email', 'Please enter your email', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(85, 1, 'en', 'core.acl/auth', 'login.success', 'Login successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(86, 1, 'en', 'core.acl/auth', 'login.fail', 'Wrong username or password.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(87, 1, 'en', 'core.acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(88, 1, 'en', 'core.acl/auth', 'login.banned', 'This account is banned.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(89, 1, 'en', 'core.acl/auth', 'login.logout_success', 'Logout successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(90, 1, 'en', 'core.acl/auth', 'login.dont_have_account', 'You don''t have account on this system, please contact administrator for more information!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(91, 1, 'en', 'core.acl/auth', 'forgot_password.title', 'Lost password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(92, 1, 'en', 'core.acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your username account. System will send a email with active link to reset your password.</p>', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(93, 1, 'en', 'core.acl/auth', 'forgot_password.submit', 'Submit', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(94, 1, 'en', 'core.acl/auth', 'reset.new_password', 'New password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(95, 1, 'en', 'core.acl/auth', 'reset.repassword', 'Confirm new password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(96, 1, 'en', 'core.acl/auth', 'reset.email', 'Email', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(97, 1, 'en', 'core.acl/auth', 'reset.title', 'Reset your password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(98, 1, 'en', 'core.acl/auth', 'reset.update', 'Update', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(99, 1, 'en', 'core.acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(100, 1, 'en', 'core.acl/auth', 'reset.user_not_found', 'This username is not exist.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(101, 1, 'en', 'core.acl/auth', 'reset.success', 'Reset password successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(102, 1, 'en', 'core.acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(103, 1, 'en', 'core.acl/auth', 'reset.reset.title', 'Email reset password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(104, 1, 'en', 'core.acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(105, 1, 'en', 'core.acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(106, 1, 'en', 'core.acl/auth', 'reset.new-password', 'New password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(107, 1, 'en', 'core.acl/auth', 'email.reminder.title', 'Email reset password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(108, 1, 'en', 'core.acl/auth', 'email.invite.title', 'Invite to join ', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(109, 1, 'en', 'core.acl/auth', 'repassword', 'Password confirm', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(110, 1, 'en', 'core.acl/auth', 'failed', 'Failed', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(111, 1, 'en', 'core.acl/auth', 'throttle', 'Throttle', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(112, 1, 'en', 'core.acl/auth', 'not_member', 'Not a member yet?', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(113, 1, 'en', 'core.acl/auth', 'register_now', 'Register now', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(114, 1, 'en', 'core.acl/auth', 'lost_your_password', 'Lost your password?', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(115, 1, 'en', 'core.acl/auth', 'login_title', 'Login to system', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(116, 1, 'en', 'core.acl/auth', 'login_via_social', 'Login with social networks', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(117, 1, 'en', 'core.acl/auth', 'back_to_login', 'Back to login page', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(118, 1, 'en', 'core.acl/auth', 'accept_invite', 'Accept invite', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(119, 1, 'en', 'core.acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(120, 1, 'en', 'core.acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(121, 1, 'en', 'core.acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(122, 1, 'en', 'core.acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(123, 1, 'en', 'core.acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(124, 1, 'en', 'core.acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(125, 1, 'en', 'core.acl/permissions', 'notices.create_success', 'The new role was successfully created', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(126, 1, 'en', 'core.acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(127, 1, 'en', 'core.acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(128, 1, 'en', 'core.acl/permissions', 'notices.not_found', 'Role not found', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(129, 1, 'en', 'core.acl/permissions', 'list', 'List Permissions', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(130, 1, 'en', 'core.acl/permissions', 'name', 'Name', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(131, 1, 'en', 'core.acl/permissions', 'current_role', 'Current Role', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(132, 1, 'en', 'core.acl/permissions', 'no_role_assigned', 'No role assigned', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(133, 1, 'en', 'core.acl/permissions', 'role_assigned', 'Assigned Role', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(134, 1, 'en', 'core.acl/permissions', 'create_role', 'Create New Role', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(135, 1, 'en', 'core.acl/permissions', 'role_name', 'Name', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(136, 1, 'en', 'core.acl/permissions', 'role_description', 'Description', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(137, 1, 'en', 'core.acl/permissions', 'permission_flags', 'Permission Flags', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(138, 1, 'en', 'core.acl/permissions', 'cancel', 'Cancel', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(139, 1, 'en', 'core.acl/permissions', 'reset', 'Reset', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(140, 1, 'en', 'core.acl/permissions', 'save', 'Save', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(141, 1, 'en', 'core.acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(142, 1, 'en', 'core.acl/permissions', 'details', 'Details', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(143, 1, 'en', 'core.acl/permissions', 'duplicate', 'Duplicate', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(144, 1, 'en', 'core.acl/permissions', 'all', 'All Permissions', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(145, 1, 'en', 'core.acl/permissions', 'list_role', 'List Roles', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(146, 1, 'en', 'core.acl/permissions', 'created_on', 'Created On', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(147, 1, 'en', 'core.acl/permissions', 'created_by', 'Created By', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(148, 1, 'en', 'core.acl/permissions', 'actions', 'Actions', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(149, 1, 'en', 'core.acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(150, 1, 'en', 'core.acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(151, 1, 'en', 'core.acl/permissions', 'delete_global_role', 'Can not delete global role', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(152, 1, 'en', 'core.acl/permissions', 'delete_success', 'Delete role successfully', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(153, 1, 'en', 'core.acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(154, 1, 'en', 'core.acl/permissions', 'not_found', 'No role found!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(155, 1, 'en', 'core.acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(156, 1, 'en', 'core.acl/permissions', 'modified_success', 'Modified successfully', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(157, 1, 'en', 'core.acl/permissions', 'create_success', 'Create successfully', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(158, 1, 'en', 'core.acl/permissions', 'duplicated_success', 'Duplicated successfully', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(159, 1, 'en', 'core.acl/permissions', 'options', 'Options', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(160, 1, 'en', 'core.acl/permissions', 'access_denied_message', 'You are not allowed to use this module', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(161, 1, 'en', 'core.acl/permissions', 'roles', 'Roles', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(162, 1, 'en', 'core.acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(163, 1, 'en', 'core.acl/reminders', 'user', 'We can''t find a user with that e-mail address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(164, 1, 'en', 'core.acl/reminders', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(165, 1, 'en', 'core.acl/reminders', 'sent', 'Password reminder sent!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(166, 1, 'en', 'core.acl/reminders', 'reset', 'Password has been reset!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(167, 1, 'en', 'core.acl/users', 'delete_user_logged_in', 'Can''t delete this user. This user is logged on!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(168, 1, 'en', 'core.acl/users', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(169, 1, 'en', 'core.acl/users', 'lock_user_logged_in', 'Can''t lock this user. This user is logged on!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(170, 1, 'en', 'core.acl/users', 'update_success', 'Update status successfully!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(171, 1, 'en', 'core.acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(172, 1, 'en', 'core.acl/users', 'not_found', 'User not found', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(173, 1, 'en', 'core.acl/users', 'email_exist', 'That email address already belongs to an existing account', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(174, 1, 'en', 'core.acl/users', 'username_exist', 'That username address already belongs to an existing account', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(175, 1, 'en', 'core.acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(176, 1, 'en', 'core.acl/users', 'password_update_success', 'Password successfully changed', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(177, 1, 'en', 'core.acl/users', 'current_password_not_valid', 'Current password is not valid', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(178, 1, 'en', 'core.acl/users', 'invite_success', 'A new user account has been created for this person and an email sent to the address to complete the process.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(179, 1, 'en', 'core.acl/users', 'invite_exist', 'User has already been invited.  A reminder notice has been sent.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(180, 1, 'en', 'core.acl/users', 'invite_not_exist', 'Invite does not exist.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(181, 1, 'en', 'core.acl/users', 'accept_invite_success', 'Welcome new member!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(182, 1, 'en', 'core.acl/users', 'user_exist_in', 'User is already a member', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(183, 1, 'en', 'core.acl/users', 'email', 'Email', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(184, 1, 'en', 'core.acl/users', 'role', 'Role', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(185, 1, 'en', 'core.acl/users', 'username', 'Username', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(186, 1, 'en', 'core.acl/users', 'invite_user', 'Invite User', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(187, 1, 'en', 'core.acl/users', 'invite_new_member', 'Invite new member?', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(188, 1, 'en', 'core.acl/users', 'invite_description', 'Invite a new member to join this system.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(189, 1, 'en', 'core.acl/users', 'last_name', 'Last Name', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(190, 1, 'en', 'core.acl/users', 'first_name', 'First Name', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(191, 1, 'en', 'core.acl/users', 'message', 'Message', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(192, 1, 'en', 'core.acl/users', 'cancel_btn', 'Cancel', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(193, 1, 'en', 'core.acl/users', 'invite_btn', 'Invite', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(194, 1, 'en', 'core.acl/users', 'change_password', 'Change password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(195, 1, 'en', 'core.acl/users', 'new_password', 'New Password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(196, 1, 'en', 'core.acl/users', 'confirm_new_password', 'Confirm New Password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(197, 1, 'en', 'core.acl/users', 'password', 'Password', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(198, 1, 'en', 'core.acl/users', 'save', 'Save', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(199, 1, 'en', 'core.acl/users', 'cannot_delete', 'User could not be deleted', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(200, 1, 'en', 'core.acl/users', 'deleted', 'User deleted', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(201, 1, 'en', 'core.acl/users', 'list', 'List Users', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(202, 1, 'en', 'core.acl/users', 'last_login', 'Last Login', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(203, 1, 'en', 'core.acl/users', 'error_update_profile_image', 'Error when update profile image', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(204, 1, 'en', 'core.acl/users', 'email_invite_template', '<h3>Hello :name</h3><p>You are invited to be a user in :site_title.</p><p>The sender included the following message with this invitation:</p><p>":content"</p><p>Please click this link to accept invite and join with us: <a href=":link">Join now</a></p>', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(205, 1, 'en', 'core.acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=":link">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(206, 1, 'en', 'core.acl/users', 'change_profile_image', 'Change Profile Image', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(207, 1, 'en', 'core.acl/users', 'new_image', 'New Image', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(208, 1, 'en', 'core.acl/users', 'loading', 'Loading', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(209, 1, 'en', 'core.acl/users', 'close', 'Close', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(210, 1, 'en', 'core.acl/users', 'update', 'Update', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(211, 1, 'en', 'core.acl/users', 'read_image_failed', 'Failed to read the image file', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(212, 1, 'en', 'core.acl/users', 'users', 'Users', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(213, 1, 'en', 'core.acl/users', 'update_avatar_success', 'Update profile image successfully!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(214, 1, 'en', 'core.acl/users', 'info.title', 'User profile', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(215, 1, 'en', 'core.acl/users', 'info.first_name', 'First Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(216, 1, 'en', 'core.acl/users', 'info.last_name', 'Last Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(217, 1, 'en', 'core.acl/users', 'info.email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(218, 1, 'en', 'core.acl/users', 'info.second_email', 'Secondary Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(219, 1, 'en', 'core.acl/users', 'info.address', 'Address', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(220, 1, 'en', 'core.acl/users', 'info.second_address', 'Secondary Address', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(221, 1, 'en', 'core.acl/users', 'info.birth_day', 'Date of birth', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(222, 1, 'en', 'core.acl/users', 'info.job', 'Job Position', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(223, 1, 'en', 'core.acl/users', 'info.mobile_number', 'Mobile Number', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(224, 1, 'en', 'core.acl/users', 'info.second_mobile_number', 'Secondary Phone', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(225, 1, 'en', 'core.acl/users', 'info.interes', 'Interests', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(226, 1, 'en', 'core.acl/users', 'info.about', 'About', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(227, 1, 'en', 'core.acl/users', 'gender.title', 'Gender', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(228, 1, 'en', 'core.acl/users', 'gender.male', 'Male', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(229, 1, 'en', 'core.acl/users', 'gender.female', 'Female', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(230, 1, 'vi', 'core.acl/auth', 'login.username', 'Tên truy cập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(231, 1, 'vi', 'core.acl/auth', 'login.password', 'Mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(232, 1, 'vi', 'core.acl/auth', 'login.title', 'Đăng nhập hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(233, 1, 'vi', 'core.acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(234, 1, 'vi', 'core.acl/auth', 'login.login', 'Đăng nhập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(235, 1, 'vi', 'core.acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(236, 1, 'vi', 'core.acl/auth', 'login.success', 'Đăng nhập thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(237, 1, 'vi', 'core.acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(238, 1, 'vi', 'core.acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(239, 1, 'vi', 'core.acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(240, 1, 'vi', 'core.acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(241, 1, 'vi', 'core.acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(242, 1, 'vi', 'core.acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(243, 1, 'vi', 'core.acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập tên đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(244, 1, 'vi', 'core.acl/auth', 'forgot_password.submit', 'Hoàn tất', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(245, 1, 'vi', 'core.acl/auth', 'reset.new_password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(246, 1, 'vi', 'core.acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(247, 1, 'vi', 'core.acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(248, 1, 'vi', 'core.acl/auth', 'reset.update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(249, 1, 'vi', 'core.acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(250, 1, 'vi', 'core.acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(251, 1, 'vi', 'core.acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(252, 1, 'vi', 'core.acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(253, 1, 'vi', 'core.acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(254, 1, 'vi', 'core.acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(255, 1, 'vi', 'core.acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(256, 1, 'vi', 'core.acl/auth', 'reset.new-password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(257, 1, 'vi', 'core.acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(258, 1, 'vi', 'core.acl/auth', 'email.invite.title', 'Mời tham gia hệ thống ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(259, 1, 'vi', 'core.acl/auth', 'failed', 'Không thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(260, 1, 'vi', 'core.acl/auth', 'repassword', 'Xác nhận mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(261, 1, 'vi', 'core.acl/auth', 'throttle', 'Throttle', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(262, 1, 'vi', 'core.acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(263, 1, 'vi', 'core.acl/auth', 'login_title', 'Đăng nhập với tài khoản hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(264, 1, 'vi', 'core.acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(265, 1, 'vi', 'core.acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(266, 1, 'vi', 'core.acl/auth', 'not_member', 'Chưa là thành viên?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(267, 1, 'vi', 'core.acl/auth', 'register_now', 'Đăng ký ngay', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(268, 1, 'vi', 'core.acl/auth', 'accept_invite', 'Xác nhận lời mời', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(269, 1, 'vi', 'core.acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(270, 1, 'vi', 'core.acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(271, 1, 'vi', 'core.acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(272, 1, 'vi', 'core.acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(273, 1, 'vi', 'core.acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(274, 1, 'vi', 'core.acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(275, 1, 'vi', 'core.acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(276, 1, 'vi', 'core.acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(277, 1, 'vi', 'core.acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(278, 1, 'vi', 'core.acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(279, 1, 'vi', 'core.acl/permissions', 'list', 'Danh sách phân quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(280, 1, 'vi', 'core.acl/permissions', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(281, 1, 'vi', 'core.acl/permissions', 'current_role', 'Quyền hiện tại', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(282, 1, 'vi', 'core.acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(283, 1, 'vi', 'core.acl/permissions', 'role_assigned', 'Quyền đã được gán', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(284, 1, 'vi', 'core.acl/permissions', 'create_role', 'Tạo quyền mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(285, 1, 'vi', 'core.acl/permissions', 'role_name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(286, 1, 'vi', 'core.acl/permissions', 'role_description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(287, 1, 'vi', 'core.acl/permissions', 'is_staff', 'Là người quản lý?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(288, 1, 'vi', 'core.acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(289, 1, 'vi', 'core.acl/permissions', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(290, 1, 'vi', 'core.acl/permissions', 'reset', 'Làm lại', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(291, 1, 'vi', 'core.acl/permissions', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(292, 1, 'vi', 'core.acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút "Nhân bản" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(293, 1, 'vi', 'core.acl/permissions', 'details', 'Chi tiết', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(294, 1, 'vi', 'core.acl/permissions', 'duplicate', 'Nhân bản', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(295, 1, 'vi', 'core.acl/permissions', 'all', 'Tất cả phân quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(296, 1, 'vi', 'core.acl/permissions', 'list_role', 'Danh sách quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(297, 1, 'vi', 'core.acl/permissions', 'created_on', 'Ngày tạo', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(298, 1, 'vi', 'core.acl/permissions', 'created_by', 'Được tạo bởi', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(299, 1, 'vi', 'core.acl/permissions', 'actions', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(300, 1, 'vi', 'core.acl/permissions', 'create_success', 'Tạo thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(301, 1, 'vi', 'core.acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(302, 1, 'vi', 'core.acl/permissions', 'delete_success', 'Xóa quyền thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(303, 1, 'vi', 'core.acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(304, 1, 'vi', 'core.acl/permissions', 'modified_success', 'Sửa thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(305, 1, 'vi', 'core.acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(306, 1, 'vi', 'core.acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(307, 1, 'vi', 'core.acl/permissions', 'options', 'Tùy chọn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(308, 1, 'vi', 'core.acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(309, 1, 'vi', 'core.acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(310, 1, 'vi', 'core.acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(311, 1, 'vi', 'core.acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(312, 1, 'vi', 'core.acl/permissions', 'roles', 'Quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(313, 1, 'vi', 'core.acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(314, 1, 'vi', 'core.acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(315, 1, 'vi', 'core.acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(316, 1, 'vi', 'core.acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(317, 1, 'vi', 'core.acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(318, 1, 'vi', 'core.acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(319, 1, 'vi', 'core.acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(320, 1, 'vi', 'core.acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(321, 1, 'vi', 'core.acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(322, 1, 'vi', 'core.acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(323, 1, 'vi', 'core.acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(324, 1, 'vi', 'core.acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(325, 1, 'vi', 'core.acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(326, 1, 'vi', 'core.acl/users', 'not_found', 'Không tìm thấy người dùng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(327, 1, 'vi', 'core.acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(328, 1, 'vi', 'core.acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(329, 1, 'vi', 'core.acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(330, 1, 'vi', 'core.acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(331, 1, 'vi', 'core.acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(332, 1, 'vi', 'core.acl/users', 'invite_success', 'Một tài khoản đã được tạo cho người này, email xác nhận đã được gửi để hoàn thành thao tác mời tham gia hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(333, 1, 'vi', 'core.acl/users', 'invite_exist', 'Người dùng này đã được mời.  Một thông báo nhắc nhở đã được gửi.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(334, 1, 'vi', 'core.acl/users', 'invite_not_exist', 'Mã mời không tồn tại.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(335, 1, 'vi', 'core.acl/users', 'accept_invite_success', 'Chào mừng thành viên mới!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(336, 1, 'vi', 'core.acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(337, 1, 'vi', 'core.acl/users', 'email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(338, 1, 'vi', 'core.acl/users', 'username', 'Tên đăng nhập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(339, 1, 'vi', 'core.acl/users', 'role', 'Phân quyền', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(340, 1, 'vi', 'core.acl/users', 'invite_user', 'Mời tham gia hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(341, 1, 'vi', 'core.acl/users', 'invite_new_member', 'Mời thành viên mới?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(342, 1, 'vi', 'core.acl/users', 'invite_description', 'Mời người dùng mới tham gia nhóm này.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(343, 1, 'vi', 'core.acl/users', 'first_name', 'Họ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(344, 1, 'vi', 'core.acl/users', 'last_name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(345, 1, 'vi', 'core.acl/users', 'message', 'Thông điệp', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(346, 1, 'vi', 'core.acl/users', 'invite_btn', 'Mời', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(347, 1, 'vi', 'core.acl/users', 'cancel_btn', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(348, 1, 'vi', 'core.acl/users', 'password', 'Mật khẩu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(349, 1, 'vi', 'core.acl/users', 'new_password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(350, 1, 'vi', 'core.acl/users', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(351, 1, 'vi', 'core.acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(352, 1, 'vi', 'core.acl/users', 'deleted', 'Xóa thành viên thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(353, 1, 'vi', 'core.acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(354, 1, 'vi', 'core.acl/users', 'can_not_get_list_roles', 'Không thể lấy danh sách phân quyền trong nhóm này.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(355, 1, 'vi', 'core.acl/users', 'list', 'Danh sách thành viên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(356, 1, 'vi', 'core.acl/users', 'last_login', 'Lần cuối đăng nhập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(357, 1, 'vi', 'core.acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(358, 1, 'vi', 'core.acl/users', 'email_invite_template', '<h3>Xin chào :name</h3><p>Bạn được mời tham gia vào hệ thống :site_title, người gửi đã kèm theo nội dung sau:</p><p>Người mời bạn tham gia đã gửi kèm thông điệp bên dưới:</p><p>":content"</p><p>Hãy nhấn vào liên kết bên dưới để xác nhận tham gia vào hệ thống: <a href=":link">Tham gia ngay</a></p>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(359, 1, 'vi', 'core.acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=":link">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(360, 1, 'vi', 'core.acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(361, 1, 'vi', 'core.acl/users', 'new_image', 'Ảnh mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(362, 1, 'vi', 'core.acl/users', 'loading', 'Đang tải', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(363, 1, 'vi', 'core.acl/users', 'close', 'Đóng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(364, 1, 'vi', 'core.acl/users', 'update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(365, 1, 'vi', 'core.acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(366, 1, 'vi', 'core.acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(367, 1, 'vi', 'core.acl/users', 'users', 'Thành viên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(368, 1, 'vi', 'core.acl/users', 'info.title', 'Thông tin người dùng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(369, 1, 'vi', 'core.acl/users', 'info.first_name', 'Họ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(370, 1, 'vi', 'core.acl/users', 'info.last_name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(371, 1, 'vi', 'core.acl/users', 'info.email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(372, 1, 'vi', 'core.acl/users', 'info.second_email', 'Email dự phòng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(373, 1, 'vi', 'core.acl/users', 'info.address', 'Địa chỉ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(374, 1, 'vi', 'core.acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(375, 1, 'vi', 'core.acl/users', 'info.birth_day', 'Ngày sinh', '2018-03-18 09:04:19', '2018-03-18 09:04:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(376, 1, 'vi', 'core.acl/users', 'info.job', 'Nghề nghiệp', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(377, 1, 'vi', 'core.acl/users', 'info.mobile_number', 'Số điện thoại di động', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(378, 1, 'vi', 'core.acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(379, 1, 'vi', 'core.acl/users', 'info.interes', 'Sở thích', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(380, 1, 'vi', 'core.acl/users', 'info.about', 'Giới thiệu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(381, 1, 'vi', 'core.acl/users', 'gender.title', 'Giới tính', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(382, 1, 'vi', 'core.acl/users', 'gender.male', 'nam', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(383, 1, 'vi', 'core.acl/users', 'gender.female', 'nữ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(384, 1, 'en', 'core.base/cache', 'cache_management', 'Cache management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(385, 1, 'en', 'core.base/cache', 'cache_commands', 'Clear cache commands', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(386, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(387, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don''t see the changes after updating data.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(388, 1, 'en', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(389, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(390, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(391, 1, 'en', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(392, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(393, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(394, 1, 'en', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(395, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(396, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(397, 1, 'en', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(398, 1, 'en', 'core.base/errors', '401_title', 'Permission Denied', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(399, 1, 'en', 'core.base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(400, 1, 'en', 'core.base/errors', '404_title', 'Page could not be found', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(401, 1, 'en', 'core.base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(402, 1, 'en', 'core.base/errors', '500_title', 'Page could not be loaded', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(403, 1, 'en', 'core.base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(404, 1, 'en', 'core.base/errors', 'reasons', 'This may have occurred because of several reasons', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(405, 1, 'en', 'core.base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the dashboard by <a href="http://botble.local/admin">clicking here</a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(406, 1, 'en', 'core.base/forms', 'choose_image', 'Choose image', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(407, 1, 'en', 'core.base/forms', 'actions', 'Actions', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(408, 1, 'en', 'core.base/forms', 'save', 'Save', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(409, 1, 'en', 'core.base/forms', 'save_and_continue', 'Save & Edit', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(410, 1, 'en', 'core.base/forms', 'image', 'Image', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(411, 1, 'en', 'core.base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(412, 1, 'en', 'core.base/forms', 'create', 'Create', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(413, 1, 'en', 'core.base/forms', 'edit', 'Edit', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(414, 1, 'en', 'core.base/forms', 'permalink', 'Permalink', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(415, 1, 'en', 'core.base/forms', 'ok', 'OK', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(416, 1, 'en', 'core.base/forms', 'cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(417, 1, 'en', 'core.base/forms', 'character_remain', 'character(s) remain', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(418, 1, 'en', 'core.base/forms', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(419, 1, 'en', 'core.base/forms', 'choose_file', 'Choose file', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(420, 1, 'en', 'core.base/forms', 'file', 'File', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(421, 1, 'en', 'core.base/forms', 'content', 'Content', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(422, 1, 'en', 'core.base/forms', 'description', 'Description', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(423, 1, 'en', 'core.base/forms', 'name', 'Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(424, 1, 'en', 'core.base/forms', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(425, 1, 'en', 'core.base/forms', 'title', 'Title', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(426, 1, 'en', 'core.base/forms', 'value', 'Value', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(427, 1, 'en', 'core.base/forms', 'name_placeholder', 'Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(428, 1, 'en', 'core.base/forms', 'alias_placeholder', 'Alias', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(429, 1, 'en', 'core.base/forms', 'description_placeholder', 'Short description', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(430, 1, 'en', 'core.base/forms', 'parent', 'Parent', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(431, 1, 'en', 'core.base/forms', 'icon', 'Icon', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(432, 1, 'en', 'core.base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(433, 1, 'en', 'core.base/forms', 'order_by', 'Order by', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(434, 1, 'en', 'core.base/forms', 'order_by_placeholder', 'Order by', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(435, 1, 'en', 'core.base/forms', 'featured', 'Is featured?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(436, 1, 'en', 'core.base/forms', 'is_default', 'Is default?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(437, 1, 'en', 'core.base/forms', 'update', 'Update', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(438, 1, 'en', 'core.base/forms', 'publish', 'Publish', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(439, 1, 'en', 'core.base/forms', 'remove_image', 'Remove image', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(440, 1, 'en', 'core.base/forms', 'order', 'Order', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(441, 1, 'en', 'core.base/forms', 'alias', 'Alias', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(442, 1, 'en', 'core.base/forms', 'basic_information', 'Basic information', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(443, 1, 'en', 'core.base/forms', 'short_code', 'Shortcode', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(444, 1, 'en', 'core.base/forms', 'add_short_code', 'Add a shortcode', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(445, 1, 'en', 'core.base/forms', 'add', 'Add', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(446, 1, 'en', 'core.base/forms', 'link', 'Link', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(447, 1, 'en', 'core.base/layouts', 'platform_admin', 'Platform Administration', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(448, 1, 'en', 'core.base/layouts', 'dashboard', 'Dashboard', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(449, 1, 'en', 'core.base/layouts', 'appearance', 'Appearance', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(450, 1, 'en', 'core.base/layouts', 'menu', 'Menu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(451, 1, 'en', 'core.base/layouts', 'widgets', 'Widgets', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(452, 1, 'en', 'core.base/layouts', 'theme_options', 'Theme options', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(453, 1, 'en', 'core.base/layouts', 'plugins', 'Plugins', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(454, 1, 'en', 'core.base/layouts', 'settings', 'Settings', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(455, 1, 'en', 'core.base/layouts', 'setting_general', 'General', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(456, 1, 'en', 'core.base/layouts', 'feature_access_control', 'Feature Access Control', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(457, 1, 'en', 'core.base/layouts', 'role_permission', 'Roles and Permissions', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(458, 1, 'en', 'core.base/layouts', 'user_management', 'User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(459, 1, 'en', 'core.base/layouts', 'super_user_management', 'Super User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(460, 1, 'en', 'core.base/layouts', 'system_information', 'System information', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(461, 1, 'en', 'core.base/layouts', 'theme', 'Theme', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(462, 1, 'en', 'core.base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(463, 1, 'en', 'core.base/layouts', 'profile', 'Profile', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(464, 1, 'en', 'core.base/layouts', 'logout', 'Logout', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(465, 1, 'en', 'core.base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(466, 1, 'en', 'core.base/layouts', 'home', 'Home', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(467, 1, 'en', 'core.base/layouts', 'search', 'Search', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(468, 1, 'en', 'core.base/layouts', 'add_new', 'Add new', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(469, 1, 'en', 'core.base/layouts', 'n_a', 'N/A', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(470, 1, 'en', 'core.base/layouts', 'page_loaded_time', 'Page loaded in', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(471, 1, 'en', 'core.base/layouts', 'view_website', 'View website', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(472, 1, 'en', 'core.base/mail', 'send-fail', 'Send email failed', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(473, 1, 'en', 'core.base/mail', 'happy_birthday', 'Happy birthday!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(474, 1, 'en', 'core.base/notices', 'create_success_message', 'Created successfully', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(475, 1, 'en', 'core.base/notices', 'update_success_message', 'Updated successfully', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(476, 1, 'en', 'core.base/notices', 'delete_success_message', 'Deleted successfully', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(477, 1, 'en', 'core.base/notices', 'success_header', 'Success!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(478, 1, 'en', 'core.base/notices', 'error_header', 'Error!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(479, 1, 'en', 'core.base/notices', 'cannot_delete', 'Can not delete this record!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(480, 1, 'en', 'core.base/notices', 'no_select', 'Please select at least one record to perform this action!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(481, 1, 'en', 'core.base/notices', 'processing_request', 'We are processing your request.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(482, 1, 'en', 'core.base/notices', 'error', 'Error', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(483, 1, 'en', 'core.base/notices', 'success', 'Success', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(484, 1, 'en', 'core.base/system', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(485, 1, 'en', 'core.base/system', 'cannot_find_user', 'Unable to find specified user', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(486, 1, 'en', 'core.base/system', 'supper_revoked', 'Super user access revoked', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(487, 1, 'en', 'core.base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(488, 1, 'en', 'core.base/system', 'cant_remove_supper', 'You don''t has permission to remove this super user', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(489, 1, 'en', 'core.base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(490, 1, 'en', 'core.base/system', 'supper_granted', 'Super user access granted', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(491, 1, 'en', 'core.base/system', 'delete_log_success', 'Delete log file successfully!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(492, 1, 'en', 'core.base/system', 'get_member_success', 'Member list retrieved successfully', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(493, 1, 'en', 'core.base/system', 'error_occur', 'The following errors occurred', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(494, 1, 'en', 'core.base/system', 'user_management', 'User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(495, 1, 'en', 'core.base/system', 'user_management_description', 'Manage users.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(496, 1, 'en', 'core.base/system', 'role_and_permission', 'Roles and Permissions', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(497, 1, 'en', 'core.base/system', 'role_and_permission_description', 'Manage the available roles.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(498, 1, 'en', 'core.base/system', 'user.list_super', 'List Super Users', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(499, 1, 'en', 'core.base/system', 'user.email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(500, 1, 'en', 'core.base/system', 'user.last_login', 'Last Login', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(501, 1, 'en', 'core.base/system', 'user.username', 'Username', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(502, 1, 'en', 'core.base/system', 'user.add_user', 'Add Super User', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(503, 1, 'en', 'core.base/system', 'user.cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(504, 1, 'en', 'core.base/system', 'user.create', 'Create', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(505, 1, 'en', 'core.base/system', 'options.features', 'Feature Access Control', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(506, 1, 'en', 'core.base/system', 'options.feature_description', 'Manage the available.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(507, 1, 'en', 'core.base/system', 'options.manage_super', 'Super User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(508, 1, 'en', 'core.base/system', 'options.manage_super_description', 'Add/remove super users.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(509, 1, 'en', 'core.base/system', 'options.info', 'System information', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(510, 1, 'en', 'core.base/system', 'options.info_description', 'All information about current system configuration.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(511, 1, 'en', 'core.base/system', 'info.title', 'System information', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(512, 1, 'en', 'core.base/system', 'info.cache', 'Cache', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(513, 1, 'en', 'core.base/system', 'info.locale', 'Active locale', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(514, 1, 'en', 'core.base/system', 'info.environment', 'Environment', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(515, 1, 'en', 'core.base/system', 'enabled', 'Enabled', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(516, 1, 'en', 'core.base/system', 'disabled', 'Disabled', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(517, 1, 'en', 'core.base/system', 'activated', 'Activated', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(518, 1, 'en', 'core.base/system', 'activate', 'Activate', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(519, 1, 'en', 'core.base/system', 'deactivate', 'Deactivate', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(520, 1, 'en', 'core.base/system', 'author', 'By', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(521, 1, 'en', 'core.base/system', 'update_plugin_status_success', 'Update plugin successfully', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(522, 1, 'en', 'core.base/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(523, 1, 'en', 'core.base/system', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(524, 1, 'en', 'core.base/system', 'version', 'Version', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(525, 1, 'en', 'core.base/system', 'report_description', 'Please share this information for troubleshooting', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(526, 1, 'en', 'core.base/system', 'get_system_report', 'Get System Report', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(527, 1, 'en', 'core.base/system', 'system_environment', 'System Environment', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(528, 1, 'en', 'core.base/system', 'framework_version', 'Framework Version', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(529, 1, 'en', 'core.base/system', 'timezone', 'Timezone', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(530, 1, 'en', 'core.base/system', 'debug_mode', 'Debug Mode', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(531, 1, 'en', 'core.base/system', 'storage_dir_writable', 'Storage Dir Writable', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(532, 1, 'en', 'core.base/system', 'cache_dir_writable', 'Cache Dir Writable', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(533, 1, 'en', 'core.base/system', 'app_size', 'App Size', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(534, 1, 'en', 'core.base/system', 'server_environment', 'Server Environment', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(535, 1, 'en', 'core.base/system', 'php_version', 'PHP Version', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(536, 1, 'en', 'core.base/system', 'server_software', 'Server Software', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(537, 1, 'en', 'core.base/system', 'server_os', 'Server OS', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(538, 1, 'en', 'core.base/system', 'database', 'Database', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(539, 1, 'en', 'core.base/system', 'ssl_installed', 'SSL Installed', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(540, 1, 'en', 'core.base/system', 'cache_driver', 'Cache Driver', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(541, 1, 'en', 'core.base/system', 'session_driver', 'Session Driver', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(542, 1, 'en', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(543, 1, 'en', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(544, 1, 'en', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(545, 1, 'en', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(546, 1, 'en', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(547, 1, 'en', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(548, 1, 'en', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(549, 1, 'en', 'core.base/system', 'extra_stats', 'Extra Stats', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(550, 1, 'en', 'core.base/system', 'installed_packages', 'Installed Packages and their version numbers', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(551, 1, 'en', 'core.base/system', 'extra_information', 'Extra Information', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(552, 1, 'en', 'core.base/system', 'copy_report', 'Copy Report', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(553, 1, 'en', 'core.base/system', 'package_name', 'Package Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(554, 1, 'en', 'core.base/system', 'dependency_name', 'Dependency Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(555, 1, 'en', 'core.base/system', 'plugins', 'Plugins', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(556, 1, 'en', 'core.base/tables', 'filter_enabled', 'Advanced search filters enabled.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(557, 1, 'en', 'core.base/tables', 'id', 'ID', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(558, 1, 'en', 'core.base/tables', 'name', 'Name', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(559, 1, 'en', 'core.base/tables', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(560, 1, 'en', 'core.base/tables', 'title', 'Title', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(561, 1, 'en', 'core.base/tables', 'order_by', 'Order By', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(562, 1, 'en', 'core.base/tables', 'order', 'Order', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(563, 1, 'en', 'core.base/tables', 'status', 'Status', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(564, 1, 'en', 'core.base/tables', 'created_at', 'Created At', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(565, 1, 'en', 'core.base/tables', 'updated_at', 'Updated At', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(566, 1, 'en', 'core.base/tables', 'description', 'Description', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(567, 1, 'en', 'core.base/tables', 'operations', 'Operations', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(568, 1, 'en', 'core.base/tables', 'loading_data', 'Loading data from server', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(569, 1, 'en', 'core.base/tables', 'url', 'URL', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(570, 1, 'en', 'core.base/tables', 'author', 'Author', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(571, 1, 'en', 'core.base/tables', 'notes', 'Notes', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(572, 1, 'en', 'core.base/tables', 'column', 'Column', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(573, 1, 'en', 'core.base/tables', 'origin', 'Origin', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(574, 1, 'en', 'core.base/tables', 'after_change', 'After changes', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(575, 1, 'en', 'core.base/tables', 'views', 'Views', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(576, 1, 'en', 'core.base/tables', 'browser', 'Browser', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(577, 1, 'en', 'core.base/tables', 'session', 'Session', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(578, 1, 'en', 'core.base/tables', 'activated', 'activated', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(579, 1, 'en', 'core.base/tables', 'deactivated', 'deactivated', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(580, 1, 'en', 'core.base/tables', 'is_featured', 'Is featured', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(581, 1, 'en', 'core.base/tables', 'edit', 'Edit', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(582, 1, 'en', 'core.base/tables', 'delete', 'Delete', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(583, 1, 'en', 'core.base/tables', 'restore', 'Restore', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(584, 1, 'en', 'core.base/tables', 'activate', 'Activate', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(585, 1, 'en', 'core.base/tables', 'deactivate', 'Deactivate', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(586, 1, 'en', 'core.base/tables', 'filter', 'Type to filter...', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(587, 1, 'en', 'core.base/tables', 'excel', 'Excel', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(588, 1, 'en', 'core.base/tables', 'export', 'Export', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(589, 1, 'en', 'core.base/tables', 'csv', 'CSV', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(590, 1, 'en', 'core.base/tables', 'pdf', 'PDF', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(591, 1, 'en', 'core.base/tables', 'print', 'Print', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(592, 1, 'en', 'core.base/tables', 'reset', 'Reset', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(593, 1, 'en', 'core.base/tables', 'reload', 'Reload', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(594, 1, 'en', 'core.base/tables', 'display', 'Display', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(595, 1, 'en', 'core.base/tables', 'all', 'All', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(596, 1, 'en', 'core.base/tables', 'add_new', 'Add New', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(597, 1, 'en', 'core.base/tables', 'action', 'Actions', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(598, 1, 'en', 'core.base/tables', 'delete_entry', 'Delete Entry', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(599, 1, 'en', 'core.base/tables', 'view', 'View Detail', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(600, 1, 'en', 'core.base/tables', 'save', 'Save', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(601, 1, 'en', 'core.base/tables', 'show_from', 'Show from', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(602, 1, 'en', 'core.base/tables', 'to', 'to', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(603, 1, 'en', 'core.base/tables', 'in', 'in', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(604, 1, 'en', 'core.base/tables', 'records', 'records', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(605, 1, 'en', 'core.base/tables', 'no_data', 'No data to display', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(606, 1, 'en', 'core.base/tables', 'no_record', 'No record', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(607, 1, 'en', 'core.base/tables', 'filtered_from', 'filtered from', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(608, 1, 'en', 'core.base/tables', 'loading', 'Loading data from server', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(609, 1, 'en', 'core.base/tables', 'confirm_delete', 'Confirm delete', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(610, 1, 'en', 'core.base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(611, 1, 'en', 'core.base/tables', 'cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(612, 1, 'en', 'core.base/tables', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(613, 1, 'en', 'core.base/tables', 'email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(614, 1, 'en', 'core.base/tables', 'last_login', 'Last login', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(615, 1, 'en', 'core.base/tables', 'shortcode', 'Shortcode', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(616, 1, 'en', 'core.base/tables', 'image', 'Image', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(617, 1, 'en', 'core.base/tabs', 'detail', 'Detail', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(618, 1, 'en', 'core.base/tabs', 'file', 'Files', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(619, 1, 'en', 'core.base/tabs', 'record_note', 'Record Note', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(620, 1, 'en', 'core.base/tabs', 'revision', 'Revision History', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(621, 1, 'vi', 'core.base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(622, 1, 'vi', 'core.base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(623, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(624, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(625, 1, 'vi', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(626, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(627, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(628, 1, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(629, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(630, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(631, 1, 'vi', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(632, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(633, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(634, 1, 'vi', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(635, 1, 'vi', 'core.base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(636, 1, 'vi', 'core.base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(637, 1, 'vi', 'core.base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(638, 1, 'vi', 'core.base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(639, 1, 'vi', 'core.base/errors', '500_title', 'Không thể tải trang', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(640, 1, 'vi', 'core.base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(641, 1, 'vi', 'core.base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(642, 1, 'vi', 'core.base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href="http://botble.local/admin"> nhấn vào đây </a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(643, 1, 'vi', 'core.base/errors', 'home_try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href="http://botble.local"> nhấn vào đây </a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(644, 1, 'vi', 'core.base/forms', 'choose_image', 'Chọn ảnh', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(645, 1, 'vi', 'core.base/forms', 'actions', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(646, 1, 'vi', 'core.base/forms', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(647, 1, 'vi', 'core.base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(648, 1, 'vi', 'core.base/forms', 'image', 'Hình ảnh', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(649, 1, 'vi', 'core.base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(650, 1, 'vi', 'core.base/forms', 'create', 'Tạo mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(651, 1, 'vi', 'core.base/forms', 'edit', 'Sửa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(652, 1, 'vi', 'core.base/forms', 'permalink', 'Đường dẫn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(653, 1, 'vi', 'core.base/forms', 'ok', 'OK', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(654, 1, 'vi', 'core.base/forms', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(655, 1, 'vi', 'core.base/forms', 'character_remain', 'kí tự còn lại', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(656, 1, 'vi', 'core.base/forms', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(657, 1, 'vi', 'core.base/forms', 'choose_file', 'Chọn tập tin', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(658, 1, 'vi', 'core.base/forms', 'file', 'Tập tin', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(659, 1, 'vi', 'core.base/forms', 'content', 'Nội dung', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(660, 1, 'vi', 'core.base/forms', 'description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(661, 1, 'vi', 'core.base/forms', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(662, 1, 'vi', 'core.base/forms', 'name_placeholder', 'Nhập tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(663, 1, 'vi', 'core.base/forms', 'description_placeholder', 'Mô tả ngắn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(664, 1, 'vi', 'core.base/forms', 'parent', 'Cha', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(665, 1, 'vi', 'core.base/forms', 'icon', 'Biểu tượng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(666, 1, 'vi', 'core.base/forms', 'order_by', 'Sắp xếp', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(667, 1, 'vi', 'core.base/forms', 'order_by_placeholder', 'Sắp xếp', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(668, 1, 'vi', 'core.base/forms', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(669, 1, 'vi', 'core.base/forms', 'featured', 'Nổi bật?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(670, 1, 'vi', 'core.base/forms', 'is_default', 'Mặc định?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(671, 1, 'vi', 'core.base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(672, 1, 'vi', 'core.base/forms', 'update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(673, 1, 'vi', 'core.base/forms', 'publish', 'Xuất bản', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(674, 1, 'vi', 'core.base/forms', 'remove_image', 'Xoá ảnh', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(675, 1, 'vi', 'core.base/layouts', 'platform_admin', 'Quản trị hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(676, 1, 'vi', 'core.base/layouts', 'dashboard', 'Bảng điều khiển', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(677, 1, 'vi', 'core.base/layouts', 'appearance', 'Hiển thị', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(678, 1, 'vi', 'core.base/layouts', 'menu', 'Trình đơn', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(679, 1, 'vi', 'core.base/layouts', 'widgets', 'Tiện ích', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(680, 1, 'vi', 'core.base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(681, 1, 'vi', 'core.base/layouts', 'plugins', 'Tiện ích mở rộng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(682, 1, 'vi', 'core.base/layouts', 'settings', 'Cài đặt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(683, 1, 'vi', 'core.base/layouts', 'setting_general', 'Cơ bản', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(684, 1, 'vi', 'core.base/layouts', 'system_information', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(685, 1, 'vi', 'core.base/layouts', 'theme', 'Giao diện', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(686, 1, 'vi', 'core.base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(687, 1, 'vi', 'core.base/layouts', 'profile', 'Thông tin cá nhân', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(688, 1, 'vi', 'core.base/layouts', 'logout', 'Đăng xuất', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(689, 1, 'vi', 'core.base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(690, 1, 'vi', 'core.base/layouts', 'home', 'Trang chủ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(691, 1, 'vi', 'core.base/layouts', 'search', 'Tìm kiếm', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(692, 1, 'vi', 'core.base/layouts', 'add_new', 'Thêm mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(693, 1, 'vi', 'core.base/layouts', 'n_a', 'N/A', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(694, 1, 'vi', 'core.base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(695, 1, 'vi', 'core.base/layouts', 'view_website', 'Xem trang ngoài', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(696, 1, 'vi', 'core.base/mail', 'send-fail', 'Gửi email không thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(697, 1, 'vi', 'core.base/notices', 'create_success_message', 'Tạo thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(698, 1, 'vi', 'core.base/notices', 'update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(699, 1, 'vi', 'core.base/notices', 'delete_success_message', 'Xóa thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(700, 1, 'vi', 'core.base/notices', 'success_header', 'Thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(701, 1, 'vi', 'core.base/notices', 'error_header', 'Lỗi!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(702, 1, 'vi', 'core.base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(703, 1, 'vi', 'core.base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(704, 1, 'vi', 'core.base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(705, 1, 'vi', 'core.base/notices', 'error', 'Lỗi', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(706, 1, 'vi', 'core.base/notices', 'success', 'Thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(707, 1, 'vi', 'core.base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(708, 1, 'vi', 'core.base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(709, 1, 'vi', 'core.base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(710, 1, 'vi', 'core.base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(711, 1, 'vi', 'core.base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(712, 1, 'vi', 'core.base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(713, 1, 'vi', 'core.base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(714, 1, 'vi', 'core.base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(715, 1, 'vi', 'core.base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(716, 1, 'vi', 'core.base/system', 'error_occur', 'Có lỗi dưới đây', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(717, 1, 'vi', 'core.base/system', 'role_and_permission', 'Phân quyền hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(718, 1, 'vi', 'core.base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(719, 1, 'vi', 'core.base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(720, 1, 'vi', 'core.base/system', 'user.username', 'Tên đăng nhập', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(721, 1, 'vi', 'core.base/system', 'user.email', 'Email', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(722, 1, 'vi', 'core.base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(723, 1, 'vi', 'core.base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(724, 1, 'vi', 'core.base/system', 'user.cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(725, 1, 'vi', 'core.base/system', 'user.create', 'Thêm', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(726, 1, 'vi', 'core.base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(727, 1, 'vi', 'core.base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(728, 1, 'vi', 'core.base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(729, 1, 'vi', 'core.base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(730, 1, 'vi', 'core.base/system', 'options.info', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(731, 1, 'vi', 'core.base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(732, 1, 'vi', 'core.base/system', 'info.title', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(733, 1, 'vi', 'core.base/system', 'info.cache', 'Bộ nhớ đệm', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(734, 1, 'vi', 'core.base/system', 'info.environment', 'Môi trường', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(735, 1, 'vi', 'core.base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(736, 1, 'vi', 'core.base/system', 'activate', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(737, 1, 'vi', 'core.base/system', 'author', 'Tác giả', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(738, 1, 'vi', 'core.base/system', 'deactivate', 'Hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(739, 1, 'vi', 'core.base/system', 'disabled', 'Đã vô hiệu', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(740, 1, 'vi', 'core.base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(741, 1, 'vi', 'core.base/system', 'enabled', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(742, 1, 'vi', 'core.base/system', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(743, 1, 'vi', 'core.base/system', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(744, 1, 'vi', 'core.base/system', 'user_management', 'Quản lý thành viên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(745, 1, 'vi', 'core.base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(746, 1, 'vi', 'core.base/system', 'version', 'Phiên bản', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(747, 1, 'vi', 'core.base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(748, 1, 'vi', 'core.base/tables', 'id', 'ID', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(749, 1, 'vi', 'core.base/tables', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(750, 1, 'vi', 'core.base/tables', 'order_by', 'Thứ tự', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(751, 1, 'vi', 'core.base/tables', 'status', 'Trạng thái', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(752, 1, 'vi', 'core.base/tables', 'created_at', 'Ngày tạo', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(753, 1, 'vi', 'core.base/tables', 'updated_at', 'Ngày cập nhật', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(754, 1, 'vi', 'core.base/tables', 'operations', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(755, 1, 'vi', 'core.base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(756, 1, 'vi', 'core.base/tables', 'url', 'URL', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(757, 1, 'vi', 'core.base/tables', 'author', 'Người tạo', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(758, 1, 'vi', 'core.base/tables', 'column', 'Cột', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(759, 1, 'vi', 'core.base/tables', 'origin', 'Bản cũ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(760, 1, 'vi', 'core.base/tables', 'after_change', 'Sau khi thay đổi', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(761, 1, 'vi', 'core.base/tables', 'notes', 'Ghi chú', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(762, 1, 'vi', 'core.base/tables', 'activated', 'kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(763, 1, 'vi', 'core.base/tables', 'browser', 'Trình duyệt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(764, 1, 'vi', 'core.base/tables', 'deactivated', 'hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(765, 1, 'vi', 'core.base/tables', 'description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(766, 1, 'vi', 'core.base/tables', 'session', 'Phiên', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(767, 1, 'vi', 'core.base/tables', 'views', 'Lượt xem', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(768, 1, 'vi', 'core.base/tables', 'restore', 'Khôi phục', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(769, 1, 'vi', 'core.base/tables', 'edit', 'Sửa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(770, 1, 'vi', 'core.base/tables', 'delete', 'Xóa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(771, 1, 'vi', 'core.base/tables', 'action', 'Hành động', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(772, 1, 'vi', 'core.base/tables', 'activate', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(773, 1, 'vi', 'core.base/tables', 'add_new', 'Thêm mới', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(774, 1, 'vi', 'core.base/tables', 'all', 'Tất cả', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(775, 1, 'vi', 'core.base/tables', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(776, 1, 'vi', 'core.base/tables', 'confirm_delete', 'Xác nhận xóa', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(777, 1, 'vi', 'core.base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(778, 1, 'vi', 'core.base/tables', 'csv', 'CSV', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(779, 1, 'vi', 'core.base/tables', 'deactivate', 'Hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(780, 1, 'vi', 'core.base/tables', 'delete_entry', 'Xóa bản ghi', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(781, 1, 'vi', 'core.base/tables', 'display', 'Hiển thị', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(782, 1, 'vi', 'core.base/tables', 'excel', 'Excel', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(783, 1, 'vi', 'core.base/tables', 'export', 'Xuất bản', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(784, 1, 'vi', 'core.base/tables', 'filter', 'Nhập từ khóa...', '2018-03-18 09:04:20', '2018-03-18 09:04:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(785, 1, 'vi', 'core.base/tables', 'filtered_from', 'được lọc từ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(786, 1, 'vi', 'core.base/tables', 'in', 'trong tổng số', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(787, 1, 'vi', 'core.base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(788, 1, 'vi', 'core.base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(789, 1, 'vi', 'core.base/tables', 'no_record', 'Không có dữ liệu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(790, 1, 'vi', 'core.base/tables', 'pdf', 'PDF', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(791, 1, 'vi', 'core.base/tables', 'print', 'In', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(792, 1, 'vi', 'core.base/tables', 'records', 'bản ghi', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(793, 1, 'vi', 'core.base/tables', 'reload', 'Tải lại', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(794, 1, 'vi', 'core.base/tables', 'reset', 'Làm mới', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(795, 1, 'vi', 'core.base/tables', 'save', 'Lưu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(796, 1, 'vi', 'core.base/tables', 'show_from', 'Hiển thị từ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(797, 1, 'vi', 'core.base/tables', 'template', 'Giao diện', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(798, 1, 'vi', 'core.base/tables', 'to', 'đến', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(799, 1, 'vi', 'core.base/tables', 'view', 'Xem chi tiết', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(800, 1, 'vi', 'core.base/tabs', 'detail', 'Chi tiết', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(801, 1, 'vi', 'core.base/tabs', 'file', 'Tập tin', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(802, 1, 'vi', 'core.base/tabs', 'record_note', 'Ghi chú', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(803, 1, 'vi', 'core.base/tabs', 'revision', 'Lịch sử thay đổi', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(804, 1, 'en', 'core.dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(805, 1, 'en', 'core.dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(806, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(807, 1, 'en', 'core.dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(808, 1, 'en', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(809, 1, 'en', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(810, 1, 'en', 'core.dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(811, 1, 'en', 'core.dashboard/dashboard', 'hide', 'Hide', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(812, 1, 'en', 'core.dashboard/dashboard', 'reload', 'Reload', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(813, 1, 'en', 'core.dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(814, 1, 'en', 'core.dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(815, 1, 'en', 'core.dashboard/dashboard', 'widget_posts_recent', 'Recent Posts', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(816, 1, 'en', 'core.dashboard/dashboard', 'widget_analytics_page', 'Top Most Visit Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(817, 1, 'en', 'core.dashboard/dashboard', 'widget_analytics_browser', 'Top Browsers', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(818, 1, 'en', 'core.dashboard/dashboard', 'widget_analytics_referrer', 'Top Referrers', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(819, 1, 'en', 'core.dashboard/dashboard', 'widget_analytics_general', 'Site Analytics', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(820, 1, 'en', 'core.dashboard/dashboard', 'widget_audit_logs', 'Activities Logs', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(821, 1, 'en', 'core.dashboard/dashboard', 'widget_request_errors', 'Request Errors', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(822, 1, 'en', 'core.dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(823, 1, 'en', 'core.dashboard/dashboard', 'fullscreen', 'Full screen', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(824, 1, 'en', 'core.dashboard/dashboard', 'title', 'Dashboard', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(825, 1, 'vi', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(826, 1, 'vi', 'core.dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(827, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(828, 1, 'vi', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(829, 1, 'vi', 'core.dashboard/dashboard', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=":link">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(830, 1, 'vi', 'core.dashboard/dashboard', 'hide', 'Ẩn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(831, 1, 'vi', 'core.dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(832, 1, 'vi', 'core.dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(833, 1, 'vi', 'core.dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(834, 1, 'vi', 'core.dashboard/dashboard', 'reload', 'Làm mới', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(835, 1, 'vi', 'core.dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(836, 1, 'vi', 'core.dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(837, 1, 'vi', 'core.dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(838, 1, 'vi', 'core.dashboard/dashboard', 'page', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(839, 1, 'vi', 'core.dashboard/dashboard', 'page_description', 'Bạn có :pages trang trong hệ thống. Nhấn vào nút "Xem tất cả trang" bên dưới để xem toàn bộ trang.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(840, 1, 'vi', 'core.dashboard/dashboard', 'post', 'Bài viết', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(841, 1, 'vi', 'core.dashboard/dashboard', 'post_description', 'Bạn có :posts bài viết trong hệ thống. Nhấn vào nút "Xem tất cả bài viết" bên dưới để xem toàn bộ bài viết.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(842, 1, 'vi', 'core.dashboard/dashboard', 'user', 'Thành viên', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(843, 1, 'vi', 'core.dashboard/dashboard', 'user_description', 'Bạn có :users thành viên trong hệ thống. Nhấn vào nút "Xem tất cả thành viên" bên dưới để xem toàn bộ thành viên.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(844, 1, 'vi', 'core.dashboard/dashboard', 'view_all_pages', 'Xem tất cả trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(845, 1, 'vi', 'core.dashboard/dashboard', 'view_all_posts', 'Xem tất cả bài viết', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(846, 1, 'vi', 'core.dashboard/dashboard', 'view_all_users', 'Xem tất cả thành viên', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(847, 1, 'vi', 'core.dashboard/dashboard', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(848, 1, 'vi', 'core.dashboard/dashboard', 'widget_analytics_general', 'Thống kê truy cập', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(849, 1, 'vi', 'core.dashboard/dashboard', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(850, 1, 'vi', 'core.dashboard/dashboard', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(851, 1, 'vi', 'core.dashboard/dashboard', 'widget_audit_logs', 'Lịch sử hoạt động', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(852, 1, 'vi', 'core.dashboard/dashboard', 'widget_posts_recent', 'Bài viết gần đây', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(853, 1, 'vi', 'core.dashboard/dashboard', 'widget_request_errors', 'Liên kết bị hỏng', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(854, 1, 'en', 'core.menu/menu', 'name', 'Menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(855, 1, 'en', 'core.menu/menu', 'key_name', 'Menu name (key: :key)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(856, 1, 'en', 'core.menu/menu', 'basic_info', 'Basic information', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(857, 1, 'en', 'core.menu/menu', 'add_to_menu', 'Add to menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(858, 1, 'en', 'core.menu/menu', 'custom_link', 'Custom link', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(859, 1, 'en', 'core.menu/menu', 'add_link', 'Add link', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(860, 1, 'en', 'core.menu/menu', 'structure', 'Menu structure', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(861, 1, 'en', 'core.menu/menu', 'remove', 'Remove', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(862, 1, 'en', 'core.menu/menu', 'cancel', 'Cancel', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(863, 1, 'en', 'core.menu/menu', 'title', 'Title', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(864, 1, 'en', 'core.menu/menu', 'icon', 'Icon', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(865, 1, 'en', 'core.menu/menu', 'url', 'URL', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(866, 1, 'en', 'core.menu/menu', 'target', 'Target', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(867, 1, 'en', 'core.menu/menu', 'css_class', 'CSS class', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(868, 1, 'en', 'core.menu/menu', 'self_open_link', 'Open link directly', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(869, 1, 'en', 'core.menu/menu', 'blank_open_link', 'Open link in new tab', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(870, 1, 'en', 'core.menu/menu', 'create', 'Create menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(871, 1, 'en', 'core.menu/menu', 'edit', 'Edit menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(872, 1, 'vi', 'core.menu/menu', 'name', 'Menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(873, 1, 'vi', 'core.menu/menu', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(874, 1, 'vi', 'core.menu/menu', 'add_link', 'Thêm liên kết', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(875, 1, 'vi', 'core.menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(876, 1, 'vi', 'core.menu/menu', 'basic_info', 'Thông tin cơ bản', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(877, 1, 'vi', 'core.menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(878, 1, 'vi', 'core.menu/menu', 'categories', 'Danh mục', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(879, 1, 'vi', 'core.menu/menu', 'css_class', 'CSS class', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(880, 1, 'vi', 'core.menu/menu', 'custom_link', 'Liên kết tùy chọn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(881, 1, 'vi', 'core.menu/menu', 'icon', 'Biểu tượng', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(882, 1, 'vi', 'core.menu/menu', 'key_name', 'Tên menu (key::key)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(883, 1, 'vi', 'core.menu/menu', 'pages', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(884, 1, 'vi', 'core.menu/menu', 'remove', 'Xóa', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(885, 1, 'vi', 'core.menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(886, 1, 'vi', 'core.menu/menu', 'structure', 'Cấu trúc trình đơn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(887, 1, 'vi', 'core.menu/menu', 'tags', 'Thẻ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(888, 1, 'vi', 'core.menu/menu', 'target', 'Target', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(889, 1, 'vi', 'core.menu/menu', 'title', 'Tiêu đề', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(890, 1, 'vi', 'core.menu/menu', 'url', 'URL', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(891, 1, 'en', 'core.page/pages', 'model', 'Page', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(892, 1, 'en', 'core.page/pages', 'models', 'Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(893, 1, 'en', 'core.page/pages', 'list', 'List Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(894, 1, 'en', 'core.page/pages', 'create', 'Create new page', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(895, 1, 'en', 'core.page/pages', 'edit', 'Edit page', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(896, 1, 'en', 'core.page/pages', 'form.name', 'Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(897, 1, 'en', 'core.page/pages', 'form.name_placeholder', 'Page''s name (Maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(898, 1, 'en', 'core.page/pages', 'form.content', 'Content', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(899, 1, 'en', 'core.page/pages', 'form.note', 'Note content', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(900, 1, 'en', 'core.page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(901, 1, 'en', 'core.page/pages', 'notices.update_success_message', 'Update successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(902, 1, 'en', 'core.page/pages', 'cannot_delete', 'Page could not be deleted', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(903, 1, 'en', 'core.page/pages', 'deleted', 'Page deleted', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(904, 1, 'en', 'core.page/pages', 'pages', 'Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(905, 1, 'en', 'core.page/pages', 'menu', 'Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(906, 1, 'en', 'core.page/pages', 'menu_name', 'Pages', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(907, 1, 'en', 'core.page/pages', 'edit_this_page', 'Edit this page', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(908, 1, 'vi', 'core.page/pages', 'model', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(909, 1, 'vi', 'core.page/pages', 'models', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(910, 1, 'vi', 'core.page/pages', 'list', 'Danh sách trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(911, 1, 'vi', 'core.page/pages', 'create', 'Thêm trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(912, 1, 'vi', 'core.page/pages', 'edit', 'Sửa trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(913, 1, 'vi', 'core.page/pages', 'form.name', 'Tiêu đề trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(914, 1, 'vi', 'core.page/pages', 'form.note', 'Nội dung ghi chú', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(915, 1, 'vi', 'core.page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(916, 1, 'vi', 'core.page/pages', 'form.content', 'Nội dung', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(917, 1, 'vi', 'core.page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(918, 1, 'vi', 'core.page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(919, 1, 'vi', 'core.page/pages', 'deleted', 'Xóa trang thành công', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(920, 1, 'vi', 'core.page/pages', 'cannot_delete', 'Không thể xóa trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(921, 1, 'vi', 'core.page/pages', 'menu', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(922, 1, 'vi', 'core.page/pages', 'menu_name', 'Trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(923, 1, 'en', 'core.setting/setting', 'title', 'Settings', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(924, 1, 'en', 'core.setting/setting', 'general.theme', 'Theme', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(925, 1, 'en', 'core.setting/setting', 'general.description', 'Setting site information', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(926, 1, 'en', 'core.setting/setting', 'general.title', 'General', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(927, 1, 'en', 'core.setting/setting', 'general.general_block', 'General Information', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(928, 1, 'en', 'core.setting/setting', 'general.rich_editor', 'Rich Editor', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(929, 1, 'en', 'core.setting/setting', 'general.site_title', 'Site title', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(930, 1, 'en', 'core.setting/setting', 'general.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(931, 1, 'en', 'core.setting/setting', 'general.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(932, 1, 'en', 'core.setting/setting', 'general.seo_block', 'SEO Configuration', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(933, 1, 'en', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(934, 1, 'en', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(935, 1, 'en', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(936, 1, 'en', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(937, 1, 'en', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(938, 1, 'en', 'core.setting/setting', 'general.enable_captcha', 'Enable Captcha?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(939, 1, 'en', 'core.setting/setting', 'general.contact_block', 'Contact Information', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(940, 1, 'en', 'core.setting/setting', 'general.address', 'Address', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(941, 1, 'en', 'core.setting/setting', 'general.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(942, 1, 'en', 'core.setting/setting', 'general.email_support', 'Email Support', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(943, 1, 'en', 'core.setting/setting', 'general.phone', 'Phone', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(944, 1, 'en', 'core.setting/setting', 'general.hotline', '	Hotline', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(945, 1, 'en', 'core.setting/setting', 'general.google_plus', 'Google Plus', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(946, 1, 'en', 'core.setting/setting', 'general.facebook', 'Facebook', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(947, 1, 'en', 'core.setting/setting', 'general.twitter', 'Twitter', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(948, 1, 'en', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(949, 1, 'en', 'core.setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(950, 1, 'en', 'core.setting/setting', 'general.placeholder.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(951, 1, 'en', 'core.setting/setting', 'general.placeholder.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(952, 1, 'en', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(953, 1, 'en', 'core.setting/setting', 'general.placeholder.email_support', 'Email Support', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(954, 1, 'en', 'core.setting/setting', 'general.placeholder.phone', 'Contact phone', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(955, 1, 'en', 'core.setting/setting', 'general.placeholder.address', 'Contact address', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(956, 1, 'en', 'core.setting/setting', 'general.placeholder.hotline', 'Hotline', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(957, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(958, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(959, 1, 'en', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (maximum 60 characters, separate by "," character)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(960, 1, 'en', 'core.setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(961, 1, 'en', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(962, 1, 'en', 'core.setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(963, 1, 'en', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(964, 1, 'en', 'core.setting/setting', 'general.enable', 'Enable', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(965, 1, 'en', 'core.setting/setting', 'general.disable', 'Disable', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(966, 1, 'en', 'core.setting/setting', 'general.enable_cache', 'Enable cache?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(967, 1, 'en', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(968, 1, 'en', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(969, 1, 'en', 'core.setting/setting', 'general.admin_logo', 'Admin logo', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(970, 1, 'en', 'core.setting/setting', 'general.admin_title', 'Admin title', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(971, 1, 'en', 'core.setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(972, 1, 'en', 'core.setting/setting', 'email.title', 'General settings for emails', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(973, 1, 'en', 'core.setting/setting', 'email.description', 'Config default value using in emails', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(974, 1, 'en', 'core.setting/setting', 'email.variable_title', 'Available variables can be use in email template', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(975, 1, 'vi', 'core.setting/setting', 'title', 'Cài đặt', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(976, 1, 'vi', 'core.setting/setting', 'general.theme', 'Giao diện', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(977, 1, 'vi', 'core.setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(978, 1, 'vi', 'core.setting/setting', 'general.title', 'Thông tin chung', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(979, 1, 'vi', 'core.setting/setting', 'general.general_block', 'Thông tin chung', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(980, 1, 'vi', 'core.setting/setting', 'general.site_title', 'Tên trang', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(981, 1, 'vi', 'core.setting/setting', 'general.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(982, 1, 'vi', 'core.setting/setting', 'general.admin_email', 'Email quản trị viên', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(983, 1, 'vi', 'core.setting/setting', 'general.seo_block', 'Cấu hình SEO', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(984, 1, 'vi', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(985, 1, 'vi', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(986, 1, 'vi', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(987, 1, 'vi', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(988, 1, 'vi', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(989, 1, 'vi', 'core.setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(990, 1, 'vi', 'core.setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(991, 1, 'vi', 'core.setting/setting', 'general.address', 'Địa chỉ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(992, 1, 'vi', 'core.setting/setting', 'general.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(993, 1, 'vi', 'core.setting/setting', 'general.email_support', 'Email Hỗ trợ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(994, 1, 'vi', 'core.setting/setting', 'general.phone', 'Điện thoại', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(995, 1, 'vi', 'core.setting/setting', 'general.hotline', 'Đường dây nóng', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(996, 1, 'vi', 'core.setting/setting', 'general.google_plus', 'Google Plus', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(997, 1, 'vi', 'core.setting/setting', 'general.facebook', 'Facebook', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(998, 1, 'vi', 'core.setting/setting', 'general.twitter', 'Twitter', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(999, 1, 'vi', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1000, 1, 'vi', 'core.setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1001, 1, 'vi', 'core.setting/setting', 'general.placeholder.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1002, 1, 'vi', 'core.setting/setting', 'general.placeholder.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1003, 1, 'vi', 'core.setting/setting', 'general.placeholder.address', 'Địa chỉ liên hệ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1004, 1, 'vi', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1005, 1, 'vi', 'core.setting/setting', 'general.placeholder.email_support', 'Email Hỗ trợ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1006, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1007, 1, 'vi', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1008, 1, 'vi', 'core.setting/setting', 'general.placeholder.hotline', 'Đường dây nóng', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1009, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1010, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1011, 1, 'vi', 'core.setting/setting', 'general.placeholder.phone', 'Điện thoại', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1012, 1, 'vi', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1013, 1, 'vi', 'core.setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1014, 1, 'vi', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1015, 1, 'vi', 'core.setting/setting', 'general.enable', 'Bật', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1016, 1, 'vi', 'core.setting/setting', 'general.disable', 'Tắt', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1017, 1, 'vi', 'core.setting/setting', 'general.enable_https', 'Bật https?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1018, 1, 'vi', 'core.setting/setting', 'general.enable_cache', 'Bật cache?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1019, 1, 'vi', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1020, 1, 'vi', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1021, 1, 'vi', 'core.setting/setting', 'email.title', 'Cấu hình chung cho emails', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1022, 1, 'vi', 'core.setting/setting', 'email.description', 'Cấu hình các gía trị mặc định cho emails', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1023, 1, 'vi', 'core.setting/setting', 'email.variable_title', 'Sử dụng các biến trong email template', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1024, 1, 'en', 'core.widget/global', 'name', 'Widgets', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1025, 1, 'en', 'core.widget/global', 'create', 'New widget', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1026, 1, 'en', 'core.widget/global', 'edit', 'Edit widget', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1027, 1, 'en', 'core.widget/global', 'delete', 'Delete', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1028, 1, 'en', 'core.widget/global', 'available', 'Available Widgets', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1029, 1, 'en', 'core.widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1030, 1, 'en', 'core.widget/global', 'number_tag_display', 'Number tags will be display', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1031, 1, 'en', 'core.widget/global', 'number_post_display', 'Number posts will be display', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1032, 1, 'en', 'core.widget/global', 'select_menu', 'Select Menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1033, 1, 'en', 'core.widget/global', 'widget_text', 'Text', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1034, 1, 'en', 'core.widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1035, 1, 'en', 'core.widget/global', 'widget_recent_post', 'Recent Posts', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1036, 1, 'en', 'core.widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1037, 1, 'en', 'core.widget/global', 'widget_custom_menu', 'Custom Menu', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1038, 1, 'en', 'core.widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1039, 1, 'en', 'core.widget/global', 'widget_tag', 'Tags', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1040, 1, 'en', 'core.widget/global', 'widget_tag_description', 'Popular tags', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1041, 1, 'en', 'core.widget/global', 'save_success', 'Save widget successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1042, 1, 'en', 'core.widget/global', 'delete_success', 'Delete widget successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1043, 1, 'vi', 'core.widget/global', 'name', 'Widgets', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1044, 1, 'vi', 'core.widget/global', 'create', 'New widget', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1045, 1, 'vi', 'core.widget/global', 'edit', 'Edit widget', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1046, 1, 'vi', 'core.widget/global', 'available', 'Tiện ích có sẵn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1047, 1, 'vi', 'core.widget/global', 'delete', 'Xóa', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1048, 1, 'vi', 'core.widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1049, 1, 'vi', 'core.widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1050, 1, 'vi', 'core.widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1051, 1, 'vi', 'core.widget/global', 'select_menu', 'Lựa chọn trình đơn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1052, 1, 'vi', 'core.widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1053, 1, 'vi', 'core.widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1054, 1, 'vi', 'core.widget/global', 'widget_recent_post', 'Bài viết gần đây', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1055, 1, 'vi', 'core.widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1056, 1, 'vi', 'core.widget/global', 'widget_tag', 'Thẻ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1057, 1, 'vi', 'core.widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1058, 1, 'vi', 'core.widget/global', 'widget_text', 'Văn bản', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1059, 1, 'vi', 'core.widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1060, 1, 'en', '/auth', 'login.username', 'Username', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1061, 1, 'en', '/auth', 'login.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1062, 1, 'en', '/auth', 'login.password', 'Password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1063, 1, 'en', '/auth', 'login.title', 'User Login', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1064, 1, 'en', '/auth', 'login.remember', 'Remember me?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1065, 1, 'en', '/auth', 'login.login', 'Sign in', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1066, 1, 'en', '/auth', 'login.placeholder.username', 'Please enter your username', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1067, 1, 'en', '/auth', 'login.placeholder.email', 'Please enter your email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1068, 1, 'en', '/auth', 'login.success', 'Login successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1069, 1, 'en', '/auth', 'login.fail', 'Wrong username or password.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1070, 1, 'en', '/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1071, 1, 'en', '/auth', 'login.banned', 'This account is banned.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1072, 1, 'en', '/auth', 'login.logout_success', 'Logout successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1073, 1, 'en', '/auth', 'login.dont_have_account', 'You don''t have account on this system, please contact administrator for more information!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1074, 1, 'en', '/auth', 'forgot_password.title', 'Lost password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1075, 1, 'en', '/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your username account. System will send a email with active link to reset your password.</p>', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1076, 1, 'en', '/auth', 'forgot_password.submit', 'Submit', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1077, 1, 'en', '/auth', 'reset.new_password', 'New password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1078, 1, 'en', '/auth', 'reset.repassword', 'Confirm new password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1079, 1, 'en', '/auth', 'reset.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1080, 1, 'en', '/auth', 'reset.title', 'Reset your password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1081, 1, 'en', '/auth', 'reset.update', 'Update', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1082, 1, 'en', '/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1083, 1, 'en', '/auth', 'reset.user_not_found', 'This username is not exist.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1084, 1, 'en', '/auth', 'reset.success', 'Reset password successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1085, 1, 'en', '/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1086, 1, 'en', '/auth', 'reset.reset.title', 'Email reset password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1087, 1, 'en', '/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1088, 1, 'en', '/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1089, 1, 'en', '/auth', 'reset.new-password', 'New password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1090, 1, 'en', '/auth', 'email.reminder.title', 'Email reset password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1091, 1, 'en', '/auth', 'email.invite.title', 'Invite to join ', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1092, 1, 'en', '/auth', 'repassword', 'Password confirm', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1093, 1, 'en', '/auth', 'failed', 'Failed', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1094, 1, 'en', '/auth', 'throttle', 'Throttle', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1095, 1, 'en', '/auth', 'not_member', 'Not a member yet?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1096, 1, 'en', '/auth', 'register_now', 'Register now', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1097, 1, 'en', '/auth', 'lost_your_password', 'Lost your password?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1098, 1, 'en', '/auth', 'login_title', 'Login to system', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1099, 1, 'en', '/auth', 'login_via_social', 'Login with social networks', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1100, 1, 'en', '/auth', 'back_to_login', 'Back to login page', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1101, 1, 'en', '/auth', 'accept_invite', 'Accept invite', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1102, 1, 'en', '/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1103, 1, 'en', '/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1104, 1, 'en', '/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1105, 1, 'en', '/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1106, 1, 'en', '/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1107, 1, 'en', '/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1108, 1, 'en', '/permissions', 'notices.create_success', 'The new role was successfully created', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1109, 1, 'en', '/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1110, 1, 'en', '/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1111, 1, 'en', '/permissions', 'notices.not_found', 'Role not found', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1112, 1, 'en', '/permissions', 'list', 'List Permissions', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1113, 1, 'en', '/permissions', 'name', 'Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1114, 1, 'en', '/permissions', 'current_role', 'Current Role', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1115, 1, 'en', '/permissions', 'no_role_assigned', 'No role assigned', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1116, 1, 'en', '/permissions', 'role_assigned', 'Assigned Role', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1117, 1, 'en', '/permissions', 'create_role', 'Create New Role', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1118, 1, 'en', '/permissions', 'role_name', 'Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1119, 1, 'en', '/permissions', 'role_description', 'Description', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1120, 1, 'en', '/permissions', 'permission_flags', 'Permission Flags', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1121, 1, 'en', '/permissions', 'cancel', 'Cancel', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1122, 1, 'en', '/permissions', 'reset', 'Reset', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1123, 1, 'en', '/permissions', 'save', 'Save', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1124, 1, 'en', '/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1125, 1, 'en', '/permissions', 'details', 'Details', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1126, 1, 'en', '/permissions', 'duplicate', 'Duplicate', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1127, 1, 'en', '/permissions', 'all', 'All Permissions', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1128, 1, 'en', '/permissions', 'list_role', 'List Roles', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1129, 1, 'en', '/permissions', 'created_on', 'Created On', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1130, 1, 'en', '/permissions', 'created_by', 'Created By', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1131, 1, 'en', '/permissions', 'actions', 'Actions', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1132, 1, 'en', '/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1133, 1, 'en', '/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1134, 1, 'en', '/permissions', 'delete_global_role', 'Can not delete global role', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1135, 1, 'en', '/permissions', 'delete_success', 'Delete role successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1136, 1, 'en', '/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1137, 1, 'en', '/permissions', 'not_found', 'No role found!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1138, 1, 'en', '/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1139, 1, 'en', '/permissions', 'modified_success', 'Modified successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1140, 1, 'en', '/permissions', 'create_success', 'Create successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1141, 1, 'en', '/permissions', 'duplicated_success', 'Duplicated successfully', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1142, 1, 'en', '/permissions', 'options', 'Options', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1143, 1, 'en', '/permissions', 'access_denied_message', 'You are not allowed to use this module', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1144, 1, 'en', '/permissions', 'roles', 'Roles', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1145, 1, 'en', '/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1146, 1, 'en', '/reminders', 'user', 'We can''t find a user with that e-mail address.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1147, 1, 'en', '/reminders', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1148, 1, 'en', '/reminders', 'sent', 'Password reminder sent!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1149, 1, 'en', '/reminders', 'reset', 'Password has been reset!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1150, 1, 'en', '/users', 'delete_user_logged_in', 'Can''t delete this user. This user is logged on!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1151, 1, 'en', '/users', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1152, 1, 'en', '/users', 'lock_user_logged_in', 'Can''t lock this user. This user is logged on!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1153, 1, 'en', '/users', 'update_success', 'Update status successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1154, 1, 'en', '/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1155, 1, 'en', '/users', 'not_found', 'User not found', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1156, 1, 'en', '/users', 'email_exist', 'That email address already belongs to an existing account', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1157, 1, 'en', '/users', 'username_exist', 'That username address already belongs to an existing account', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1158, 1, 'en', '/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1159, 1, 'en', '/users', 'password_update_success', 'Password successfully changed', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1160, 1, 'en', '/users', 'current_password_not_valid', 'Current password is not valid', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1161, 1, 'en', '/users', 'invite_success', 'A new user account has been created for this person and an email sent to the address to complete the process.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1162, 1, 'en', '/users', 'invite_exist', 'User has already been invited.  A reminder notice has been sent.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1163, 1, 'en', '/users', 'invite_not_exist', 'Invite does not exist.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1164, 1, 'en', '/users', 'accept_invite_success', 'Welcome new member!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1165, 1, 'en', '/users', 'user_exist_in', 'User is already a member', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1166, 1, 'en', '/users', 'email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1167, 1, 'en', '/users', 'role', 'Role', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1168, 1, 'en', '/users', 'username', 'Username', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1169, 1, 'en', '/users', 'invite_user', 'Invite User', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1170, 1, 'en', '/users', 'invite_new_member', 'Invite new member?', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1171, 1, 'en', '/users', 'invite_description', 'Invite a new member to join this system.', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1172, 1, 'en', '/users', 'last_name', 'Last Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1173, 1, 'en', '/users', 'first_name', 'First Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1174, 1, 'en', '/users', 'message', 'Message', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1175, 1, 'en', '/users', 'cancel_btn', 'Cancel', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1176, 1, 'en', '/users', 'invite_btn', 'Invite', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1177, 1, 'en', '/users', 'change_password', 'Change password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1178, 1, 'en', '/users', 'new_password', 'New Password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1179, 1, 'en', '/users', 'confirm_new_password', 'Confirm New Password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1180, 1, 'en', '/users', 'password', 'Password', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1181, 1, 'en', '/users', 'save', 'Save', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1182, 1, 'en', '/users', 'cannot_delete', 'User could not be deleted', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1183, 1, 'en', '/users', 'deleted', 'User deleted', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1184, 1, 'en', '/users', 'list', 'List Users', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1185, 1, 'en', '/users', 'last_login', 'Last Login', '2018-03-18 09:04:20', '2018-03-18 09:04:20');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1186, 1, 'en', '/users', 'error_update_profile_image', 'Error when update profile image', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1187, 1, 'en', '/users', 'email_invite_template', '<h3>Hello :name</h3><p>You are invited to be a user in :site_title.</p><p>The sender included the following message with this invitation:</p><p>":content"</p><p>Please click this link to accept invite and join with us: <a href=":link">Join now</a></p>', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1188, 1, 'en', '/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=":link">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1189, 1, 'en', '/users', 'change_profile_image', 'Change Profile Image', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1190, 1, 'en', '/users', 'new_image', 'New Image', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1191, 1, 'en', '/users', 'loading', 'Loading', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1192, 1, 'en', '/users', 'close', 'Close', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1193, 1, 'en', '/users', 'update', 'Update', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1194, 1, 'en', '/users', 'read_image_failed', 'Failed to read the image file', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1195, 1, 'en', '/users', 'users', 'Users', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1196, 1, 'en', '/users', 'update_avatar_success', 'Update profile image successfully!', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1197, 1, 'en', '/users', 'info.title', 'User profile', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1198, 1, 'en', '/users', 'info.first_name', 'First Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1199, 1, 'en', '/users', 'info.last_name', 'Last Name', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1200, 1, 'en', '/users', 'info.email', 'Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1201, 1, 'en', '/users', 'info.second_email', 'Secondary Email', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1202, 1, 'en', '/users', 'info.address', 'Address', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1203, 1, 'en', '/users', 'info.second_address', 'Secondary Address', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1204, 1, 'en', '/users', 'info.birth_day', 'Date of birth', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1205, 1, 'en', '/users', 'info.job', 'Job Position', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1206, 1, 'en', '/users', 'info.mobile_number', 'Mobile Number', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1207, 1, 'en', '/users', 'info.second_mobile_number', 'Secondary Phone', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1208, 1, 'en', '/users', 'info.interes', 'Interests', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1209, 1, 'en', '/users', 'info.about', 'About', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1210, 1, 'en', '/users', 'gender.title', 'Gender', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1211, 1, 'en', '/users', 'gender.male', 'Male', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1212, 1, 'en', '/users', 'gender.female', 'Female', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1213, 1, 'en', 'media/media', 'filter', 'Filter', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1214, 1, 'en', 'media/media', 'everything', 'Everything', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1215, 1, 'en', 'media/media', 'image', 'Image', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1216, 1, 'en', 'media/media', 'video', 'Video', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1217, 1, 'en', 'media/media', 'document', 'Document', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1218, 1, 'en', 'media/media', 'view_in', 'View in', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1219, 1, 'en', 'media/media', 'all_media', 'All media', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1220, 1, 'en', 'media/media', 'trash', 'Trash', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1221, 1, 'en', 'media/media', 'recent', 'Recent', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1222, 1, 'en', 'media/media', 'favorites', 'Favorites', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1223, 1, 'en', 'media/media', 'upload', 'Upload', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1224, 1, 'en', 'media/media', 'add_from', 'Add from', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1225, 1, 'en', 'media/media', 'youtube', 'Youtube', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1226, 1, 'en', 'media/media', 'vimeo', 'Vimeo', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1227, 1, 'en', 'media/media', 'vine', 'Vine', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1228, 1, 'en', 'media/media', 'daily_motion', 'Dailymotion', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1229, 1, 'en', 'media/media', 'create_folder', 'Create folder', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1230, 1, 'en', 'media/media', 'refresh', 'Refresh', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1231, 1, 'en', 'media/media', 'empty_trash', 'Empty trash', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1232, 1, 'en', 'media/media', 'search_file_and_folder', 'Search file and folder', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1233, 1, 'en', 'media/media', 'sort', 'Sort', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1234, 1, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1235, 1, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1236, 1, 'en', 'media/media', 'created_date_asc', 'Created date - ASC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1237, 1, 'en', 'media/media', 'created_date_desc', 'Created_date - DESC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1238, 1, 'en', 'media/media', 'uploaded_date_asc', 'Uploaed date - ASC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1239, 1, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1240, 1, 'en', 'media/media', 'size_asc', 'Size - ASC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1241, 1, 'en', 'media/media', 'size_desc', 'Size - DESC', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1242, 1, 'en', 'media/media', 'actions', 'Actions', '2018-03-18 09:04:20', '2018-03-18 09:04:20'),
(1243, 1, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1244, 1, 'en', 'media/media', 'insert', 'Insert', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1245, 1, 'en', 'media/media', 'coming_soon', 'Coming soon', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1246, 1, 'en', 'media/media', 'add_from_youtube', 'Add from youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1247, 1, 'en', 'media/media', 'playlist', 'Playlist', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1248, 1, 'en', 'media/media', 'add_url', 'Add URL', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1249, 1, 'en', 'media/media', 'folder_name', 'Folder name', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1250, 1, 'en', 'media/media', 'create', 'Create', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1251, 1, 'en', 'media/media', 'rename', 'Rename', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1252, 1, 'en', 'media/media', 'close', 'Close', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1253, 1, 'en', 'media/media', 'save_changes', 'Save changes', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1254, 1, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1255, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you wanna move these items to trash?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1256, 1, 'en', 'media/media', 'confirm', 'Confirm', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1257, 1, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1258, 1, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1259, 1, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1260, 1, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1261, 1, 'en', 'media/media', 'up_level', 'Up one level', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1262, 1, 'en', 'media/media', 'upload_progress', 'Upload progress', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1263, 1, 'en', 'media/media', 'name_reserved', 'The name is reserved', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1264, 1, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1265, 1, 'en', 'media/media', 'gallery', 'Media gallery', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1266, 1, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1267, 1, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1268, 1, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1269, 1, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1270, 1, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1271, 1, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1272, 1, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1273, 1, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1274, 1, 'en', 'media/media', 'is_reserved_name', ':name is reserved name!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1275, 1, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1276, 1, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1277, 1, 'en', 'media/media', 'emty_trash_success', 'Empty trash successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1278, 1, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1279, 1, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1280, 1, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1281, 1, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1282, 1, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1283, 1, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1284, 1, 'en', 'media/media', 'add_success', 'Add item successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1285, 1, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1286, 1, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1287, 1, 'en', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1288, 1, 'en', 'media/media', 'menu_name', 'Media', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1289, 1, 'en', 'media/media', 'add', 'Add media', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1290, 1, 'en', 'media/media', 'javascript.name', 'Name', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1291, 1, 'en', 'media/media', 'javascript.url', 'Url', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1292, 1, 'en', 'media/media', 'javascript.full_url', 'Full url', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1293, 1, 'en', 'media/media', 'javascript.size', 'Size', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1294, 1, 'en', 'media/media', 'javascript.mime_type', 'Type', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1295, 1, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1296, 1, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1297, 1, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1298, 1, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1299, 1, 'en', 'media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1300, 1, 'en', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1301, 1, 'en', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1302, 1, 'en', 'media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1303, 1, 'en', 'media/media', 'javascript.no_item.all_media.icon', 'fa fa-cloud-upload', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1304, 1, 'en', 'media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1305, 1, 'en', 'media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1306, 1, 'en', 'media/media', 'javascript.no_item.trash.icon', 'fa fa-trash', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1307, 1, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1308, 1, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1309, 1, 'en', 'media/media', 'javascript.no_item.favorites.icon', 'fa fa-star', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1310, 1, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1311, 1, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1312, 1, 'en', 'media/media', 'javascript.no_item.recent.icon', 'fa fa-clock-o', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1313, 1, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1314, 1, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1315, 1, 'en', 'media/media', 'javascript.no_item.default.icon', 'fa fa-refresh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1316, 1, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1317, 1, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1318, 1, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1319, 1, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1320, 1, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1321, 1, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1322, 1, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1323, 1, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1324, 1, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1325, 1, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1326, 1, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1327, 1, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1328, 1, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1329, 1, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1330, 1, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1331, 1, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1332, 1, 'vi', 'media/media', 'filter', 'Lọc', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1333, 1, 'vi', 'media/media', 'everything', 'Tất cả', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1334, 1, 'vi', 'media/media', 'image', 'Hình ảnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1335, 1, 'vi', 'media/media', 'video', 'Phim', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1336, 1, 'vi', 'media/media', 'document', 'Tài liệu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1337, 1, 'vi', 'media/media', 'view_in', 'Chế độ xem', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1338, 1, 'vi', 'media/media', 'all_media', 'Tất cả tập tin', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1339, 1, 'vi', 'media/media', 'trash', 'Thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1340, 1, 'vi', 'media/media', 'recent', 'Gần đây', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1341, 1, 'vi', 'media/media', 'favorites', 'Được gắn dấu sao', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1342, 1, 'vi', 'media/media', 'upload', 'Tải lên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1343, 1, 'vi', 'media/media', 'add_from', 'Thêm từ', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1344, 1, 'vi', 'media/media', 'youtube', 'Youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1345, 1, 'vi', 'media/media', 'vimeo', 'Vimeo', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1346, 1, 'vi', 'media/media', 'vine', 'Vine', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1347, 1, 'vi', 'media/media', 'daily_motion', 'Dailymotion', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1348, 1, 'vi', 'media/media', 'create_folder', 'Tạo thư mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1349, 1, 'vi', 'media/media', 'refresh', 'Làm mới', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1350, 1, 'vi', 'media/media', 'empty_trash', 'Dọn thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1351, 1, 'vi', 'media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1352, 1, 'vi', 'media/media', 'sort', 'Sắp xếp', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1353, 1, 'vi', 'media/media', 'file_name_asc', 'Tên tập tin - ASC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1354, 1, 'vi', 'media/media', 'file_name_desc', 'Tên tập tin - DESC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1355, 1, 'vi', 'media/media', 'created_date_asc', 'Ngày tạo - ASC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1356, 1, 'vi', 'media/media', 'created_date_desc', 'Ngày tạo - DESC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1357, 1, 'vi', 'media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1358, 1, 'vi', 'media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1359, 1, 'vi', 'media/media', 'size_asc', 'Kích thước - ASC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1360, 1, 'vi', 'media/media', 'size_desc', 'Kích thước - DESC', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1361, 1, 'vi', 'media/media', 'actions', 'Hành động', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1362, 1, 'vi', 'media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1363, 1, 'vi', 'media/media', 'insert', 'Chèn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1364, 1, 'vi', 'media/media', 'coming_soon', 'Đang phát triển', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1365, 1, 'vi', 'media/media', 'add_from_youtube', 'Thêm từ youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1366, 1, 'vi', 'media/media', 'playlist', 'Playlist', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1367, 1, 'vi', 'media/media', 'add_url', 'Thêm đường dẫn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1368, 1, 'vi', 'media/media', 'folder_name', 'Tên thư mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1369, 1, 'vi', 'media/media', 'create', 'Tạo', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1370, 1, 'vi', 'media/media', 'rename', 'Đổi tên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1371, 1, 'vi', 'media/media', 'close', 'Đóng', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1372, 1, 'vi', 'media/media', 'save_changes', 'Lưu thay đổi', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1373, 1, 'vi', 'media/media', 'move_to_trash', 'Đưa vào thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1374, 1, 'vi', 'media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1375, 1, 'vi', 'media/media', 'confirm', 'Xác nhận', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1376, 1, 'vi', 'media/media', 'confirm_delete', 'Xóa tập tin', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1377, 1, 'vi', 'media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1378, 1, 'vi', 'media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1379, 1, 'vi', 'media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1380, 1, 'vi', 'media/media', 'up_level', 'Quay lại một cấp', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1381, 1, 'vi', 'media/media', 'upload_progress', 'Tiến trình tải lên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1382, 1, 'vi', 'media/media', 'name_reserved', 'Tên này không được phép đặt', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1383, 1, 'vi', 'media/media', 'folder_created', 'Tạo thư mục thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1384, 1, 'vi', 'media/media', 'gallery', 'Thư viện tập tin', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1385, 1, 'vi', 'media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1386, 1, 'vi', 'media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1387, 1, 'vi', 'media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1388, 1, 'vi', 'media/media', 'restore_success', 'Khôi phục thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1389, 1, 'vi', 'media/media', 'copy_success', 'Sao chép thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1390, 1, 'vi', 'media/media', 'delete_success', 'Xóa thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1391, 1, 'vi', 'media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1392, 1, 'vi', 'media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1393, 1, 'vi', 'media/media', 'is_reserved_name', ':name không được phép đặt!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1394, 1, 'vi', 'media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1395, 1, 'vi', 'media/media', 'rename_success', 'Đổi tên thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1396, 1, 'vi', 'media/media', 'emty_trash_success', 'Dọn sạch thùng rác thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1397, 1, 'vi', 'media/media', 'invalid_action', 'Hành động không hợp lệ!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1398, 1, 'vi', 'media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1399, 1, 'vi', 'media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1400, 1, 'vi', 'media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1401, 1, 'vi', 'media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1402, 1, 'vi', 'media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1403, 1, 'vi', 'media/media', 'add_success', 'Thêm thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1404, 1, 'vi', 'media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1405, 1, 'vi', 'media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1406, 1, 'vi', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1407, 1, 'vi', 'media/media', 'menu_name', 'Quản lý tập tin', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1408, 1, 'vi', 'media/media', 'add', 'Thêm tập tin', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1409, 1, 'vi', 'media/media', 'javascript.name', 'Tên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1410, 1, 'vi', 'media/media', 'javascript.url', 'Đường dẫn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1411, 1, 'vi', 'media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1412, 1, 'vi', 'media/media', 'javascript.size', 'Kích thước', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1413, 1, 'vi', 'media/media', 'javascript.mime_type', 'Loại', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1414, 1, 'vi', 'media/media', 'javascript.created_at', 'Được tải lên lúc', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1415, 1, 'vi', 'media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1416, 1, 'vi', 'media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1417, 1, 'vi', 'media/media', 'javascript.visit_link', 'Mở liên kết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1418, 1, 'vi', 'media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1419, 1, 'vi', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1420, 1, 'vi', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1421, 1, 'vi', 'media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1422, 1, 'vi', 'media/media', 'javascript.no_item.all_media.icon', 'fa fa-cloud-upload', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1423, 1, 'vi', 'media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1424, 1, 'vi', 'media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1425, 1, 'vi', 'media/media', 'javascript.no_item.trash.icon', 'fa fa-trash', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1426, 1, 'vi', 'media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1427, 1, 'vi', 'media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1428, 1, 'vi', 'media/media', 'javascript.no_item.favorites.icon', 'fa fa-star', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1429, 1, 'vi', 'media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1430, 1, 'vi', 'media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1431, 1, 'vi', 'media/media', 'javascript.no_item.recent.icon', 'fa fa-clock-o', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1432, 1, 'vi', 'media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1433, 1, 'vi', 'media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1434, 1, 'vi', 'media/media', 'javascript.no_item.default.icon', 'fa fa-refresh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1435, 1, 'vi', 'media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1436, 1, 'vi', 'media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1437, 1, 'vi', 'media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1438, 1, 'vi', 'media/media', 'javascript.message.error_header', 'Lỗi', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1439, 1, 'vi', 'media/media', 'javascript.message.success_header', 'Thành công', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1440, 1, 'vi', 'media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1441, 1, 'vi', 'media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1442, 1, 'vi', 'media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1443, 1, 'vi', 'media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1444, 1, 'vi', 'media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1445, 1, 'vi', 'media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1446, 1, 'vi', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1447, 1, 'vi', 'media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1448, 1, 'vi', 'media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1449, 1, 'vi', 'media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1450, 1, 'vi', 'media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1451, 1, 'en', 'plugins.analytics/analytics', 'sessions', 'Sessions', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1452, 1, 'en', 'plugins.analytics/analytics', 'visitors', 'Visitors', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1453, 1, 'en', 'plugins.analytics/analytics', 'pageviews', 'Pageviews', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1454, 1, 'en', 'plugins.analytics/analytics', 'bounce_rate', 'Bounce Rate', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1455, 1, 'en', 'plugins.analytics/analytics', 'page_session', 'Pages/Session', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1456, 1, 'en', 'plugins.analytics/analytics', 'avg_duration', 'Avg. Duration', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1457, 1, 'en', 'plugins.analytics/analytics', 'percent_new_session', 'Percent new session', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1458, 1, 'en', 'plugins.analytics/analytics', 'new_users', 'New visitors', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1459, 1, 'en', 'plugins.analytics/analytics', 'visits', 'visits', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1460, 1, 'en', 'plugins.analytics/analytics', 'views', 'views', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1461, 1, 'en', 'plugins.analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1462, 1, 'en', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1463, 1, 'en', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1464, 1, 'en', 'plugins.analytics/analytics', 'wrong_configuration', 'To view analytics you''ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href="http://docs.botble.com/v/:version/analytics" target="_blank">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1465, 1, 'vi', 'plugins.analytics/analytics', 'avg_duration', 'Trung bình', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1466, 1, 'vi', 'plugins.analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1467, 1, 'vi', 'plugins.analytics/analytics', 'page_session', 'Trang/Phiên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1468, 1, 'vi', 'plugins.analytics/analytics', 'pageviews', 'Lượt xem', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1469, 1, 'vi', 'plugins.analytics/analytics', 'sessions', 'Phiên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1470, 1, 'vi', 'plugins.analytics/analytics', 'views', 'lượt xem', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1471, 1, 'vi', 'plugins.analytics/analytics', 'visitors', 'Người truy cập', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1472, 1, 'vi', 'plugins.analytics/analytics', 'visits', 'lượt ghé thăm', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1473, 1, 'en', 'plugins.audit-log/history', 'created', 'created', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1474, 1, 'en', 'plugins.audit-log/history', 'updated', 'updated', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1475, 1, 'en', 'plugins.audit-log/history', 'deleted', 'deleted', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1476, 1, 'en', 'plugins.audit-log/history', 'logged in', 'logged in', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1477, 1, 'en', 'plugins.audit-log/history', 'logged out', 'logged out', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1478, 1, 'en', 'plugins.audit-log/history', 'changed password', 'changed password', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1479, 1, 'en', 'plugins.audit-log/history', 'updated profile', 'updated profile', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1480, 1, 'en', 'plugins.audit-log/history', 'attached', 'attached', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1481, 1, 'en', 'plugins.audit-log/history', 'shared', 'shared', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1482, 1, 'en', 'plugins.audit-log/history', 'to the system', 'to the system', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1483, 1, 'en', 'plugins.audit-log/history', 'of the system', 'of the system', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1484, 1, 'en', 'plugins.audit-log/history', 'menu', 'menu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1485, 1, 'en', 'plugins.audit-log/history', 'post', 'post', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1486, 1, 'en', 'plugins.audit-log/history', 'page', 'page', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1487, 1, 'en', 'plugins.audit-log/history', 'category', 'category', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1488, 1, 'en', 'plugins.audit-log/history', 'tag', 'tag', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1489, 1, 'en', 'plugins.audit-log/history', 'user', 'user', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1490, 1, 'en', 'plugins.audit-log/history', 'contact', 'contact', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1491, 1, 'en', 'plugins.audit-log/history', 'backup', 'backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1492, 1, 'en', 'plugins.audit-log/history', 'custom-field', 'custom field', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1493, 1, 'vi', 'plugins.audit-log/history', 'created', ' đã tạo', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1494, 1, 'vi', 'plugins.audit-log/history', 'updated', ' đã cập nhật', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1495, 1, 'vi', 'plugins.audit-log/history', 'deleted', ' đã xóa', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1496, 1, 'vi', 'plugins.audit-log/history', 'attached', 'đính kèm', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1497, 1, 'vi', 'plugins.audit-log/history', 'backup', 'sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1498, 1, 'vi', 'plugins.audit-log/history', 'category', 'danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1499, 1, 'vi', 'plugins.audit-log/history', 'changed password', 'thay đổi mật khẩu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1500, 1, 'vi', 'plugins.audit-log/history', 'contact', 'liên hệ', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1501, 1, 'vi', 'plugins.audit-log/history', 'custom-field', 'khung mở rộng', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1502, 1, 'vi', 'plugins.audit-log/history', 'logged in', 'đăng nhập', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1503, 1, 'vi', 'plugins.audit-log/history', 'logged out', 'đăng xuất', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1504, 1, 'vi', 'plugins.audit-log/history', 'menu', 'trình đơn', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1505, 1, 'vi', 'plugins.audit-log/history', 'of the system', 'khỏi hệ thống', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1506, 1, 'vi', 'plugins.audit-log/history', 'page', 'trang', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1507, 1, 'vi', 'plugins.audit-log/history', 'post', 'bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1508, 1, 'vi', 'plugins.audit-log/history', 'shared', 'đã chia sẻ', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1509, 1, 'vi', 'plugins.audit-log/history', 'tag', 'thẻ', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1510, 1, 'vi', 'plugins.audit-log/history', 'to the system', 'vào hệ thống', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1511, 1, 'vi', 'plugins.audit-log/history', 'updated profile', 'cập nhật tài khoản', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1512, 1, 'vi', 'plugins.audit-log/history', 'user', 'thành viên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1513, 1, 'en', 'plugins.backup/backup', 'name', 'Backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1514, 1, 'en', 'plugins.backup/backup', 'backup_description', 'Backup database and uploads folder.', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1515, 1, 'en', 'plugins.backup/backup', 'create_backup_success', 'Created backup successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1516, 1, 'en', 'plugins.backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1517, 1, 'en', 'plugins.backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1518, 1, 'en', 'plugins.backup/backup', 'generate_btn', 'Generate backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1519, 1, 'en', 'plugins.backup/backup', 'create', 'Create backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1520, 1, 'en', 'plugins.backup/backup', 'restore', 'Restore backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1521, 1, 'en', 'plugins.backup/backup', 'create_btn', 'Create', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1522, 1, 'en', 'plugins.backup/backup', 'restore_btn', 'Restore', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1523, 1, 'en', 'plugins.backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1524, 1, 'en', 'plugins.backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1525, 1, 'en', 'plugins.backup/backup', 'download_database', 'Download backup of database', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1526, 1, 'en', 'plugins.backup/backup', 'restore_tooltip', 'Restore this backup', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1527, 1, 'en', 'plugins.backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=":link">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1528, 1, 'en', 'plugins.backup/backup', 'menu_name', 'Backups', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1529, 1, 'vi', 'plugins.backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1530, 1, 'vi', 'plugins.backup/backup', 'create', 'Tạo bản sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1531, 1, 'vi', 'plugins.backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1532, 1, 'vi', 'plugins.backup/backup', 'create_btn', 'Tạo', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1533, 1, 'vi', 'plugins.backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1534, 1, 'vi', 'plugins.backup/backup', 'generate_btn', 'Tạo sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1535, 1, 'vi', 'plugins.backup/backup', 'name', 'Sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1536, 1, 'vi', 'plugins.backup/backup', 'restore', 'Khôi phục bản sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1537, 1, 'vi', 'plugins.backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1538, 1, 'vi', 'plugins.backup/backup', 'restore_btn', 'Khôi phục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1539, 1, 'vi', 'plugins.backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1540, 1, 'vi', 'plugins.backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1541, 1, 'vi', 'plugins.backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1542, 1, 'vi', 'plugins.backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1543, 1, 'vi', 'plugins.backup/backup', 'menu_name', 'Sao lưu', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1544, 1, 'en', 'plugins.block/block', 'name', 'Block', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1545, 1, 'en', 'plugins.block/block', 'create', 'New block', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1546, 1, 'en', 'plugins.block/block', 'edit', 'Edit block', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1547, 1, 'en', 'plugins.block/block', 'list', 'List block', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1548, 1, 'en', 'plugins.block/block', 'menu', 'Static Blocks', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1549, 1, 'vi', 'plugins.block/block', 'name', 'Nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1550, 1, 'vi', 'plugins.block/block', 'create', 'Thêm nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1551, 1, 'vi', 'plugins.block/block', 'edit', 'Sửa nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1552, 1, 'vi', 'plugins.block/block', 'list', 'Danh sách nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1553, 1, 'vi', 'plugins.block/block', 'menu', 'Nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1554, 1, 'en', 'plugins.blog/categories', 'model', 'Category', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1555, 1, 'en', 'plugins.blog/categories', 'models', 'Categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1556, 1, 'en', 'plugins.blog/categories', 'create', 'Create new category', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1557, 1, 'en', 'plugins.blog/categories', 'edit', 'Edit category', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1558, 1, 'en', 'plugins.blog/categories', 'list', 'List categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1559, 1, 'en', 'plugins.blog/categories', 'menu', 'Categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1560, 1, 'en', 'plugins.blog/categories', 'edit_this_category', 'Edit this category', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1561, 1, 'en', 'plugins.blog/categories', 'menu_name', 'Categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1562, 1, 'en', 'plugins.blog/posts', 'model', 'Post', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1563, 1, 'en', 'plugins.blog/posts', 'models', 'Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1564, 1, 'en', 'plugins.blog/posts', 'list', 'List Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1565, 1, 'en', 'plugins.blog/posts', 'create', 'Create new post', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1566, 1, 'en', 'plugins.blog/posts', 'edit', 'Edit post', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1567, 1, 'en', 'plugins.blog/posts', 'form.name', 'Name', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1568, 1, 'en', 'plugins.blog/posts', 'form.name_placeholder', 'Post''s name (Maximum :c characters)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1569, 1, 'en', 'plugins.blog/posts', 'form.description', 'Description', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1570, 1, 'en', 'plugins.blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1571, 1, 'en', 'plugins.blog/posts', 'form.categories', 'Categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1572, 1, 'en', 'plugins.blog/posts', 'form.tags', 'Tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1573, 1, 'en', 'plugins.blog/posts', 'form.tags_placeholder', 'Tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1574, 1, 'en', 'plugins.blog/posts', 'form.content', 'Content', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1575, 1, 'en', 'plugins.blog/posts', 'form.featured', 'Is featured?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1576, 1, 'en', 'plugins.blog/posts', 'form.note', 'Note content', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1577, 1, 'en', 'plugins.blog/posts', 'form.format_type', 'Format', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1578, 1, 'en', 'plugins.blog/posts', 'cannot_delete', 'Post could not be deleted', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1579, 1, 'en', 'plugins.blog/posts', 'post_deleted', 'Post deleted', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1580, 1, 'en', 'plugins.blog/posts', 'posts', 'Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1581, 1, 'en', 'plugins.blog/posts', 'edit_this_post', 'Edit this post', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1582, 1, 'en', 'plugins.blog/posts', 'no_new_post_now', 'There is no new post now!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1583, 1, 'en', 'plugins.blog/posts', 'menu_name', 'Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1584, 1, 'en', 'plugins.blog/posts', 'all_posts', 'All Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1585, 1, 'en', 'plugins.blog/tags', 'model', 'Tag', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1586, 1, 'en', 'plugins.blog/tags', 'models', 'Tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1587, 1, 'en', 'plugins.blog/tags', 'form.name', 'Name', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1588, 1, 'en', 'plugins.blog/tags', 'form.name_placeholder', 'Tag''s name (Maximum 120 characters)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1589, 1, 'en', 'plugins.blog/tags', 'form.description', 'Description', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1590, 1, 'en', 'plugins.blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1591, 1, 'en', 'plugins.blog/tags', 'form.categories', 'Categories', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1592, 1, 'en', 'plugins.blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1593, 1, 'en', 'plugins.blog/tags', 'create', 'Create new tag', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1594, 1, 'en', 'plugins.blog/tags', 'edit', 'Edit tag', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1595, 1, 'en', 'plugins.blog/tags', 'list', 'List tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1596, 1, 'en', 'plugins.blog/tags', 'cannot_delete', 'Tag could not be deleted', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1597, 1, 'en', 'plugins.blog/tags', 'deleted', 'Tag deleted', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1598, 1, 'en', 'plugins.blog/tags', 'menu', 'Tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1599, 1, 'en', 'plugins.blog/tags', 'edit_this_tag', 'Edit this tag', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1600, 1, 'en', 'plugins.blog/tags', 'menu_name', 'Tags', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1601, 1, 'vi', 'plugins.blog/categories', 'model', 'Danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1602, 1, 'vi', 'plugins.blog/categories', 'models', 'Danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1603, 1, 'vi', 'plugins.blog/categories', 'list', 'Danh sách danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1604, 1, 'vi', 'plugins.blog/categories', 'create', 'Thêm danh mục mới', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1605, 1, 'vi', 'plugins.blog/categories', 'edit', 'Sửa danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1606, 1, 'vi', 'plugins.blog/categories', 'menu_name', 'Danh mục', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1607, 1, 'vi', 'plugins.blog/posts', 'model', 'Bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1608, 1, 'vi', 'plugins.blog/posts', 'models', 'Bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1609, 1, 'vi', 'plugins.blog/posts', 'list', 'Danh sách bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1610, 1, 'vi', 'plugins.blog/posts', 'create', 'Thêm bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1611, 1, 'vi', 'plugins.blog/posts', 'edit', 'Sửa bài viết', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1612, 1, 'vi', 'plugins.blog/posts', 'form.name', 'Tên', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1613, 1, 'vi', 'plugins.blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1614, 1, 'vi', 'plugins.blog/posts', 'form.description', 'Mô tả', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1615, 1, 'vi', 'plugins.blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1616, 1, 'vi', 'plugins.blog/posts', 'form.categories', 'Chuyên mục', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1617, 1, 'vi', 'plugins.blog/posts', 'form.tags', 'Từ khóa', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1618, 1, 'vi', 'plugins.blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1619, 1, 'vi', 'plugins.blog/posts', 'form.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1620, 1, 'vi', 'plugins.blog/posts', 'form.featured', 'Bài viết nổi bật?', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1621, 1, 'vi', 'plugins.blog/posts', 'form.note', 'Nội dung ghi chú', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1622, 1, 'vi', 'plugins.blog/posts', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1623, 1, 'vi', 'plugins.blog/posts', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1624, 1, 'vi', 'plugins.blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1625, 1, 'vi', 'plugins.blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1626, 1, 'vi', 'plugins.blog/posts', 'menu_name', 'Bài viết', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1627, 1, 'vi', 'plugins.blog/posts', 'all_posts', 'Tất cả bài viết', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1628, 1, 'vi', 'plugins.blog/tags', 'model', 'Tag', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1629, 1, 'vi', 'plugins.blog/tags', 'models', 'Tags', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1630, 1, 'vi', 'plugins.blog/tags', 'list', 'Danh sách tags', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1631, 1, 'vi', 'plugins.blog/tags', 'create', 'Thêm tag mới', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1632, 1, 'vi', 'plugins.blog/tags', 'edit', 'Sửa tag', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1633, 1, 'vi', 'plugins.blog/tags', 'form.name', 'Tên', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1634, 1, 'vi', 'plugins.blog/tags', 'form.name_placeholder', 'Tên tag (Tối đa 120 kí tự)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1635, 1, 'vi', 'plugins.blog/tags', 'form.description', 'Mô tả', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1636, 1, 'vi', 'plugins.blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1637, 1, 'vi', 'plugins.blog/tags', 'form.categories', 'Chuyên mục', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1638, 1, 'vi', 'plugins.blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1639, 1, 'vi', 'plugins.blog/tags', 'cannot_delete', 'Không thể xóa tag', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1640, 1, 'vi', 'plugins.blog/tags', 'deleted', 'Xóa tag thành công', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1641, 1, 'vi', 'plugins.blog/tags', 'menu_name', 'Thẻ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1642, 1, 'vi', 'plugins.blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1643, 1, 'vi', 'plugins.blog/tags', 'menu', 'Thẻ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1644, 1, 'en', 'plugins.contact/contact', 'menu', 'Contact', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1645, 1, 'en', 'plugins.contact/contact', 'model', 'Contact', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1646, 1, 'en', 'plugins.contact/contact', 'models', 'Contact', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1647, 1, 'en', 'plugins.contact/contact', 'list', 'List contact', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1648, 1, 'en', 'plugins.contact/contact', 'edit', 'View contact', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1649, 1, 'en', 'plugins.contact/contact', 'tables.phone', 'Phone', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1650, 1, 'en', 'plugins.contact/contact', 'tables.email', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1651, 1, 'en', 'plugins.contact/contact', 'tables.fullname', 'Fullname', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1652, 1, 'en', 'plugins.contact/contact', 'tables.address', 'Address', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1653, 1, 'en', 'plugins.contact/contact', 'tables.content', 'Content', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1654, 1, 'en', 'plugins.contact/contact', 'form.is_read', 'Read?', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1655, 1, 'en', 'plugins.contact/contact', 'form.status', 'Status', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1656, 1, 'en', 'plugins.contact/contact', 'notices.no_select', 'Please select at least one contact to take this action!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1657, 1, 'en', 'plugins.contact/contact', 'notices.update_success_message', 'Update successfully', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1658, 1, 'en', 'plugins.contact/contact', 'cannot_delete', 'Contact could not be deleted', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1659, 1, 'en', 'plugins.contact/contact', 'deleted', 'Contact deleted', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1660, 1, 'en', 'plugins.contact/contact', 'contact_information', 'Contact information', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1661, 1, 'en', 'plugins.contact/contact', 'email.header', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1662, 1, 'en', 'plugins.contact/contact', 'email.title', 'New contact from your site', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1663, 1, 'en', 'plugins.contact/contact', 'email.success', 'Send message successfully!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1664, 1, 'en', 'plugins.contact/contact', 'email.failed', 'Can''t send message on this time, please try again later!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1665, 1, 'en', 'plugins.contact/contact', 'name.required', 'Name is required', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1666, 1, 'en', 'plugins.contact/contact', 'email.required', 'Email is required', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1667, 1, 'en', 'plugins.contact/contact', 'email.email', 'The email address is not valid', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1668, 1, 'en', 'plugins.contact/contact', 'content.required', 'Content is required', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1669, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before send message.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1670, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm rotbot yet.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1671, 1, 'en', 'plugins.contact/contact', 'contact_sent_from', 'This contact information sent from', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1672, 1, 'en', 'plugins.contact/contact', 'sender', 'Sender', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1673, 1, 'en', 'plugins.contact/contact', 'sender_email', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1674, 1, 'en', 'plugins.contact/contact', 'sender_address', 'Address', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1675, 1, 'en', 'plugins.contact/contact', 'sender_phone', 'Phone', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1676, 1, 'en', 'plugins.contact/contact', 'message_content', 'Message content', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1677, 1, 'en', 'plugins.contact/contact', 'sent_from', 'Email sent from', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1678, 1, 'en', 'plugins.contact/contact', 'form_name', 'Name', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1679, 1, 'en', 'plugins.contact/contact', 'form_email', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1680, 1, 'en', 'plugins.contact/contact', 'form_address', 'Address', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1681, 1, 'en', 'plugins.contact/contact', 'form_phone', 'Phone', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1682, 1, 'en', 'plugins.contact/contact', 'form_message', 'Message', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1683, 1, 'en', 'plugins.contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1684, 1, 'en', 'plugins.contact/contact', 'required_field', 'The field with (<span style="color: red">*</span>) is required.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1685, 1, 'en', 'plugins.contact/contact', 'send_btn', 'Send message', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1686, 1, 'en', 'plugins.contact/contact', 'mark_as_read', 'Mark as read', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1687, 1, 'en', 'plugins.contact/contact', 'mark_as_unread', 'Mark as unread', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1688, 1, 'en', 'plugins.contact/contact', 'new_msg_notice', 'You have <span class="bold">:count New</span> Messages', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1689, 1, 'en', 'plugins.contact/contact', 'view_all', 'View all', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1690, 1, 'en', 'plugins.contact/contact', 'read', 'Read', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1691, 1, 'en', 'plugins.contact/contact', 'unread', 'UnRead', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1692, 1, 'en', 'plugins.contact/contact', 'phone', 'Phone', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1693, 1, 'en', 'plugins.contact/contact', 'address', 'Address', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1694, 1, 'en', 'plugins.contact/contact', 'message', 'Message', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1695, 1, 'vi', 'plugins.contact/contact', 'menu', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1696, 1, 'vi', 'plugins.contact/contact', 'model', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1697, 1, 'vi', 'plugins.contact/contact', 'models', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1698, 1, 'vi', 'plugins.contact/contact', 'list', 'Danh sách liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1699, 1, 'vi', 'plugins.contact/contact', 'edit', 'Xem liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1700, 1, 'vi', 'plugins.contact/contact', 'tables.phone', 'Điện thoại', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1701, 1, 'vi', 'plugins.contact/contact', 'tables.email', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1702, 1, 'vi', 'plugins.contact/contact', 'tables.fullname', 'Họ tên', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1703, 1, 'vi', 'plugins.contact/contact', 'tables.address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1704, 1, 'vi', 'plugins.contact/contact', 'tables.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1705, 1, 'vi', 'plugins.contact/contact', 'form.is_read', 'Đã xem?', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1706, 1, 'vi', 'plugins.contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1707, 1, 'vi', 'plugins.contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1708, 1, 'vi', 'plugins.contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1709, 1, 'vi', 'plugins.contact/contact', 'deleted', 'Liên hệ đã được xóa', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1710, 1, 'vi', 'plugins.contact/contact', 'contact_information', 'Thông tin liên hệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1711, 1, 'vi', 'plugins.contact/contact', 'email.title', 'Thông tin liên hệ mới', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1712, 1, 'vi', 'plugins.contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1713, 1, 'vi', 'plugins.contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1714, 1, 'vi', 'plugins.contact/contact', 'email.required', 'Email không được để trống', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1715, 1, 'vi', 'plugins.contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1716, 1, 'vi', 'plugins.contact/contact', 'name.required', 'Họ tên không được để trống', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1717, 1, 'vi', 'plugins.contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1718, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1719, 1, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1720, 1, 'vi', 'plugins.contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1721, 1, 'vi', 'plugins.contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1722, 1, 'vi', 'plugins.contact/contact', 'form_address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1723, 1, 'vi', 'plugins.contact/contact', 'form_email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1724, 1, 'vi', 'plugins.contact/contact', 'form_message', 'Thông điệp', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1725, 1, 'vi', 'plugins.contact/contact', 'form_name', 'Họ tên', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1726, 1, 'vi', 'plugins.contact/contact', 'form_phone', 'Số điện thoại', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1727, 1, 'vi', 'plugins.contact/contact', 'message_content', 'Nội dung thông điệp', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1728, 1, 'vi', 'plugins.contact/contact', 'required_field', 'Những trường có dấu (<span style="color: red">*</span>) là bắt buộc.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1729, 1, 'vi', 'plugins.contact/contact', 'send_btn', 'Gửi tin nhắn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1730, 1, 'vi', 'plugins.contact/contact', 'sender', 'Người gửi', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1731, 1, 'vi', 'plugins.contact/contact', 'sender_address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1732, 1, 'vi', 'plugins.contact/contact', 'sender_email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1733, 1, 'vi', 'plugins.contact/contact', 'sender_phone', 'Số điện thoại', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1734, 1, 'vi', 'plugins.contact/contact', 'sent_from', 'Thư được gửi từ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1735, 1, 'vi', 'plugins.contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1736, 1, 'vi', 'plugins.contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1737, 1, 'en', 'plugins.custom-field/base', 'admin_menu.title', 'Custom fields', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1738, 1, 'en', 'plugins.custom-field/base', 'page_title', 'Custom fields', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1739, 1, 'en', 'plugins.custom-field/base', 'all_field_groups', 'All field groups', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1740, 1, 'en', 'plugins.custom-field/base', 'form.create_field_group', 'Create field group', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1741, 1, 'en', 'plugins.custom-field/base', 'form.edit_field_group', 'Edit field group', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1742, 1, 'en', 'plugins.custom-field/base', 'form.field_items_information', 'Field items information', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1743, 1, 'en', 'plugins.custom-field/base', 'form.repeater_fields', 'Repeater', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1744, 1, 'en', 'plugins.custom-field/base', 'form.add_field', 'Add field', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1745, 1, 'en', 'plugins.custom-field/base', 'form.remove_field', 'Remove field', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1746, 1, 'en', 'plugins.custom-field/base', 'form.close_field', 'Close field', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1747, 1, 'en', 'plugins.custom-field/base', 'form.field_label', 'Label', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1748, 1, 'en', 'plugins.custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1749, 1, 'en', 'plugins.custom-field/base', 'form.field_name', 'Field name', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1750, 1, 'en', 'plugins.custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1751, 1, 'en', 'plugins.custom-field/base', 'form.field_type', 'Field type', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1752, 1, 'en', 'plugins.custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1753, 1, 'en', 'plugins.custom-field/base', 'form.field_instructions', 'Field instructions', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1754, 1, 'en', 'plugins.custom-field/base', 'form.field_instructions_helper', 'HThe instructions guide for user easier know what they need to input.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1755, 1, 'en', 'plugins.custom-field/base', 'form.default_value', 'Default value', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1756, 1, 'en', 'plugins.custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1757, 1, 'en', 'plugins.custom-field/base', 'form.placeholder', 'Placeholder', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1758, 1, 'en', 'plugins.custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1759, 1, 'en', 'plugins.custom-field/base', 'form.rows', 'Rows', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1760, 1, 'en', 'plugins.custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1761, 1, 'en', 'plugins.custom-field/base', 'form.toolbar', 'Toolbar', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1762, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_helper', 'The toolbar when use editor', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1763, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_basic', 'Basic', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1764, 1, 'en', 'plugins.custom-field/base', 'form.toolbar_full', 'Full', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1765, 1, 'en', 'plugins.custom-field/base', 'form.choices', 'Choices', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1766, 1, 'en', 'plugins.custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1767, 1, 'en', 'plugins.custom-field/base', 'form.button_label', 'Button for repeater', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1768, 1, 'en', 'plugins.custom-field/base', 'form.groups.basic', 'Basic', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1769, 1, 'en', 'plugins.custom-field/base', 'form.groups.content', 'Content', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1770, 1, 'en', 'plugins.custom-field/base', 'form.groups.choice', 'Choices', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1771, 1, 'en', 'plugins.custom-field/base', 'form.groups.other', 'Other', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1772, 1, 'en', 'plugins.custom-field/base', 'form.types.text', 'Text field', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1773, 1, 'en', 'plugins.custom-field/base', 'form.types.textarea', 'Textarea', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1774, 1, 'en', 'plugins.custom-field/base', 'form.types.number', 'Number', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1775, 1, 'en', 'plugins.custom-field/base', 'form.types.email', 'Email', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1776, 1, 'en', 'plugins.custom-field/base', 'form.types.password', 'Password', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1777, 1, 'en', 'plugins.custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1778, 1, 'en', 'plugins.custom-field/base', 'form.types.image', 'Image', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1779, 1, 'en', 'plugins.custom-field/base', 'form.types.file', 'File', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1780, 1, 'en', 'plugins.custom-field/base', 'form.types.select', 'Select', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1781, 1, 'en', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1782, 1, 'en', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1783, 1, 'en', 'plugins.custom-field/base', 'form.types.repeater', 'Repeater', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1784, 1, 'en', 'plugins.custom-field/base', 'form.rules.rules', 'Display rules', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1785, 1, 'en', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1786, 1, 'en', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1787, 1, 'en', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1788, 1, 'en', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1789, 1, 'en', 'plugins.custom-field/base', 'form.rules.and', 'And', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1790, 1, 'en', 'plugins.custom-field/base', 'form.rules.or', 'Or', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1791, 1, 'en', 'plugins.custom-field/base', 'import', 'Import', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1792, 1, 'en', 'plugins.custom-field/base', 'export', 'Export', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1793, 1, 'en', 'plugins.custom-field/permissions', 'view-custom-fields', 'View custom fields', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1794, 1, 'en', 'plugins.custom-field/permissions', 'create-field-groups', 'Create field groups', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1795, 1, 'en', 'plugins.custom-field/permissions', 'edit-field-groups', 'Edit field groups', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1796, 1, 'en', 'plugins.custom-field/permissions', 'delete-field-groups', 'Delete field groups', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1797, 1, 'en', 'plugins.custom-field/rules', 'groups.basic', 'Basic', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1798, 1, 'en', 'plugins.custom-field/rules', 'groups.other', 'Other', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1799, 1, 'en', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1800, 1, 'en', 'plugins.custom-field/rules', 'logged_in_user', 'Logged in user', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1801, 1, 'en', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1802, 1, 'en', 'plugins.custom-field/rules', 'page_template', 'Page template', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1803, 1, 'en', 'plugins.custom-field/rules', 'page', 'Page', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1804, 1, 'en', 'plugins.custom-field/rules', 'model_name', 'Model name', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1805, 1, 'en', 'plugins.custom-field/rules', 'model_name_page', 'Page', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1806, 1, 'en', 'plugins.custom-field/rules', 'category', 'Category', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1807, 1, 'en', 'plugins.custom-field/rules', 'post_with_related_category', 'Post with related category', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1808, 1, 'en', 'plugins.custom-field/rules', 'model_name_post', 'Post (blog)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1809, 1, 'en', 'plugins.custom-field/rules', 'model_name_category', 'Category (blog)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1810, 1, 'vi', 'plugins.custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1811, 1, 'vi', 'plugins.custom-field/base', 'page_title', 'Trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1812, 1, 'vi', 'plugins.custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1813, 1, 'vi', 'plugins.custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1814, 1, 'vi', 'plugins.custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1815, 1, 'vi', 'plugins.custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1816, 1, 'vi', 'plugins.custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1817, 1, 'vi', 'plugins.custom-field/base', 'form.add_field', 'Thêm trường', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1818, 1, 'vi', 'plugins.custom-field/base', 'form.remove_field', 'Xóa trường này', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1819, 1, 'vi', 'plugins.custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1820, 1, 'vi', 'plugins.custom-field/base', 'form.field_label', 'Nhãn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1821, 1, 'vi', 'plugins.custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1822, 1, 'vi', 'plugins.custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1823, 1, 'vi', 'plugins.custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1824, 1, 'vi', 'plugins.custom-field/base', 'form.field_type', 'Kiểu trường', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1825, 1, 'vi', 'plugins.custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1826, 1, 'vi', 'plugins.custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1827, 1, 'vi', 'plugins.custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1828, 1, 'vi', 'plugins.custom-field/base', 'form.default_value', 'Giá trị mặc định', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1829, 1, 'vi', 'plugins.custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1830, 1, 'vi', 'plugins.custom-field/base', 'form.placeholder', 'Mô tả trường', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1831, 1, 'vi', 'plugins.custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1832, 1, 'vi', 'plugins.custom-field/base', 'form.rows', 'Số dòng', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1833, 1, 'vi', 'plugins.custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1834, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar', 'Thanh công cụ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1835, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_helper', 'Tùy chỉnh kiểu thanh công cụ khi sử dụng trình nhập liệu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1836, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_basic', 'Thanh công cụ đơn giản', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1837, 1, 'vi', 'plugins.custom-field/base', 'form.toolbar_full', 'Thanh công cụ đầy đủ', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1838, 1, 'vi', 'plugins.custom-field/base', 'form.choices', 'Các mục lựa chọn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1839, 1, 'vi', 'plugins.custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1840, 1, 'vi', 'plugins.custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1841, 1, 'vi', 'plugins.custom-field/base', 'form.groups.basic', 'Cơ bản', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1842, 1, 'vi', 'plugins.custom-field/base', 'form.groups.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1843, 1, 'vi', 'plugins.custom-field/base', 'form.groups.choice', 'Lựa chọn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1844, 1, 'vi', 'plugins.custom-field/base', 'form.groups.other', 'Khác', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1845, 1, 'vi', 'plugins.custom-field/base', 'form.types.text', 'Văn bản', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1846, 1, 'vi', 'plugins.custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1847, 1, 'vi', 'plugins.custom-field/base', 'form.types.number', 'Số', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1848, 1, 'vi', 'plugins.custom-field/base', 'form.types.email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1849, 1, 'vi', 'plugins.custom-field/base', 'form.types.password', 'Mật khẩu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1850, 1, 'vi', 'plugins.custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1851, 1, 'vi', 'plugins.custom-field/base', 'form.types.image', 'Hình ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1852, 1, 'vi', 'plugins.custom-field/base', 'form.types.file', 'Tập tin', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1853, 1, 'vi', 'plugins.custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1854, 1, 'vi', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1855, 1, 'vi', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1856, 1, 'vi', 'plugins.custom-field/base', 'form.types.repeater', 'Bộ lặp', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1857, 1, 'vi', 'plugins.custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1858, 1, 'vi', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1859, 1, 'vi', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1860, 1, 'vi', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1861, 1, 'vi', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1862, 1, 'vi', 'plugins.custom-field/base', 'form.rules.and', 'Và', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1863, 1, 'vi', 'plugins.custom-field/base', 'form.rules.or', 'Hoặc', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1864, 1, 'vi', 'plugins.custom-field/base', 'import', 'Nhập dữ liệu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1865, 1, 'vi', 'plugins.custom-field/base', 'export', 'Xuất dữ liệu', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1866, 1, 'vi', 'plugins.custom-field/permissions', 'view-custom-fields', 'Xem trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1867, 1, 'vi', 'plugins.custom-field/permissions', 'create-field-groups', 'Tạo các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1868, 1, 'vi', 'plugins.custom-field/permissions', 'edit-field-groups', 'Chỉnh sửa các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1869, 1, 'vi', 'plugins.custom-field/permissions', 'delete-field-groups', 'Xóa các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1870, 1, 'vi', 'plugins.custom-field/rules', 'groups.basic', 'Cơ bản', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1871, 1, 'vi', 'plugins.custom-field/rules', 'groups.other', 'Khác', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1872, 1, 'vi', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1873, 1, 'vi', 'plugins.custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1874, 1, 'vi', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1875, 1, 'vi', 'plugins.custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1876, 1, 'vi', 'plugins.custom-field/rules', 'page', 'Trang tĩnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1877, 1, 'vi', 'plugins.custom-field/rules', 'model_name', 'Tên model', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1878, 1, 'vi', 'plugins.custom-field/rules', 'model_name_page', 'Trang tĩnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1879, 1, 'vi', 'plugins.custom-field/rules', 'category', 'Danh mục bài viết', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1880, 1, 'vi', 'plugins.custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1881, 1, 'vi', 'plugins.custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1882, 1, 'vi', 'plugins.custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1883, 1, 'en', 'plugins.gallery/gallery', 'create', 'Create new gallery', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1884, 1, 'en', 'plugins.gallery/gallery', 'edit', 'Edit gallery', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1885, 1, 'en', 'plugins.gallery/gallery', 'list', 'List galleries', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1886, 1, 'en', 'plugins.gallery/gallery', 'galleries', 'Galleries', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1887, 1, 'en', 'plugins.gallery/gallery', 'item', 'Gallery item', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1888, 1, 'en', 'plugins.gallery/gallery', 'select_image', 'Select images', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1889, 1, 'en', 'plugins.gallery/gallery', 'reset', 'Reset gallery', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1890, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description', 'Update photo''s description', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1891, 1, 'en', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Photo''s description...', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1892, 1, 'en', 'plugins.gallery/gallery', 'delete_photo', 'Delete this photo', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1893, 1, 'en', 'plugins.gallery/gallery', 'gallery_box', 'Gallery images', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1894, 1, 'en', 'plugins.gallery/gallery', 'by', 'By', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1895, 1, 'en', 'plugins.gallery/gallery', 'menu_name', 'Galleries', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1896, 1, 'vi', 'plugins.gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1897, 1, 'vi', 'plugins.gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1898, 1, 'vi', 'plugins.gallery/gallery', 'list', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1899, 1, 'vi', 'plugins.gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1900, 1, 'vi', 'plugins.gallery/gallery', 'galleries', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1901, 1, 'vi', 'plugins.gallery/gallery', 'item', 'Ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1902, 1, 'vi', 'plugins.gallery/gallery', 'reset', 'Làm mới thư viện', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1903, 1, 'vi', 'plugins.gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1904, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1905, 1, 'vi', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1906, 1, 'vi', 'plugins.gallery/gallery', 'by', 'Bởi', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1907, 1, 'vi', 'plugins.gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1908, 1, 'vi', 'plugins.gallery/gallery', 'menu_name', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1909, 1, 'en', 'plugins.language/language', 'menu', 'Language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1910, 1, 'en', 'plugins.language/language', 'name', 'Languages', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1911, 1, 'en', 'plugins.language/language', 'choose_language', 'Choose a language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1912, 1, 'en', 'plugins.language/language', 'select_language', 'Select language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1913, 1, 'en', 'plugins.language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1914, 1, 'en', 'plugins.language/language', 'full_name', 'Full name', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1915, 1, 'en', 'plugins.language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1916, 1, 'en', 'plugins.language/language', 'locale', 'Locale', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1917, 1, 'en', 'plugins.language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>). You will need to create <code>/resources/lang/en</code> directory if it''s not exists for this language.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1918, 1, 'en', 'plugins.language/language', 'language_code', 'Language code', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1919, 1, 'en', 'plugins.language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1920, 1, 'en', 'plugins.language/language', 'text_direction', 'Text direction', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1921, 1, 'en', 'plugins.language/language', 'text_direction_helper', 'Choose the text direction for the language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1922, 1, 'en', 'plugins.language/language', 'left_to_right', 'Left to right', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1923, 1, 'en', 'plugins.language/language', 'right_to_left', 'Right to left', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1924, 1, 'en', 'plugins.language/language', 'flag', 'Flag', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1925, 1, 'en', 'plugins.language/language', 'flag_helper', 'Choose a flag for the language.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1926, 1, 'en', 'plugins.language/language', 'order', 'Order', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1927, 1, 'en', 'plugins.language/language', 'order_helper', 'Position of the language in the language switcher', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1928, 1, 'en', 'plugins.language/language', 'add_new_language', 'Add new language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1929, 1, 'en', 'plugins.language/language', 'code', 'Code', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1930, 1, 'en', 'plugins.language/language', 'default_language', 'Default language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1931, 1, 'en', 'plugins.language/language', 'actions', 'Actions', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1932, 1, 'en', 'plugins.language/language', 'translations', 'Translations', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1933, 1, 'en', 'plugins.language/language', 'edit', 'Edit', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1934, 1, 'en', 'plugins.language/language', 'edit_tooltip', 'Edit this language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1935, 1, 'en', 'plugins.language/language', 'delete', 'Delete', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1936, 1, 'en', 'plugins.language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1937, 1, 'en', 'plugins.language/language', 'choose_default_language', 'Choose :language as default language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1938, 1, 'en', 'plugins.language/language', 'current_language', 'Current record''s language', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1939, 1, 'en', 'plugins.language/language', 'edit_related', 'Edit related language for this record', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1940, 1, 'en', 'plugins.language/language', 'add_language_for_item', 'Add other language version for this record', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1941, 1, 'en', 'plugins.language/language', 'settings', 'Settings', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1942, 1, 'en', 'plugins.language/language', 'language_hide_default', 'Hide default language?', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1943, 1, 'en', 'plugins.language/language', 'language_display_flag_only', 'Flag only', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1944, 1, 'en', 'plugins.language/language', 'language_display_name_only', 'Name only', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1945, 1, 'en', 'plugins.language/language', 'language_display_all', 'Display all flag and name', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1946, 1, 'en', 'plugins.language/language', 'language_display', 'Language display', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1947, 1, 'en', 'plugins.language/language', 'switcher_display', 'Switcher language display', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1948, 1, 'en', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1949, 1, 'en', 'plugins.language/language', 'language_switcher_display_list', 'List', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1950, 1, 'en', 'plugins.language/language', 'current_language_edit_notification', 'You are editing "<strrong class="current_language_text">:language</strrong>" version', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1951, 1, 'en', 'plugins.language/language', 'confirm-change-language', 'Confirm change language', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1952, 1, 'en', 'plugins.language/language', 'confirm-change-language-message', 'Do you really want to change language to "<strrong class="change_to_language_text"></strrong>" ? This action will be override "<strrong class="change_to_language_text"></strrong>" version if it''s existed!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1953, 1, 'en', 'plugins.language/language', 'confirm-change-language-btn', 'Confirm change', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1954, 1, 'en', 'plugins.language/language', 'hide_languages', 'Hide languages', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1955, 1, 'en', 'plugins.language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1956, 1, 'en', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1957, 1, 'en', 'plugins.language/language', 'show_all', 'Show all', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1958, 1, 'en', 'plugins.language/language', 'change_language', 'Language', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1959, 1, 'vi', 'plugins.language/language', 'name', 'Ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1960, 1, 'vi', 'plugins.language/language', 'choose_language', 'Chọn một ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1961, 1, 'vi', 'plugins.language/language', 'select_language', 'Chọn ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1962, 1, 'vi', 'plugins.language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1963, 1, 'vi', 'plugins.language/language', 'full_name', 'Tên đầy đủ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1964, 1, 'vi', 'plugins.language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1965, 1, 'vi', 'plugins.language/language', 'locale', 'Locale', '2018-03-18 09:04:23', '2018-03-18 09:04:23');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1966, 1, 'vi', 'plugins.language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1967, 1, 'vi', 'plugins.language/language', 'language_code', 'Mã ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1968, 1, 'vi', 'plugins.language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1969, 1, 'vi', 'plugins.language/language', 'text_direction', 'Hướng viết chữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1970, 1, 'vi', 'plugins.language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1971, 1, 'vi', 'plugins.language/language', 'left_to_right', 'Trái qua phải', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1972, 1, 'vi', 'plugins.language/language', 'right_to_left', 'Phải qua trái', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1973, 1, 'vi', 'plugins.language/language', 'flag', 'Cờ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1974, 1, 'vi', 'plugins.language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1975, 1, 'vi', 'plugins.language/language', 'order', 'Sắp xếp', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1976, 1, 'vi', 'plugins.language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1977, 1, 'vi', 'plugins.language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1978, 1, 'vi', 'plugins.language/language', 'code', 'Mã', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1979, 1, 'vi', 'plugins.language/language', 'default_language', 'Ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1980, 1, 'vi', 'plugins.language/language', 'actions', 'Hành động', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1981, 1, 'vi', 'plugins.language/language', 'translations', 'Dịch', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1982, 1, 'vi', 'plugins.language/language', 'edit', 'Sửa', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1983, 1, 'vi', 'plugins.language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1984, 1, 'vi', 'plugins.language/language', 'delete', 'Xóa', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1985, 1, 'vi', 'plugins.language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1986, 1, 'vi', 'plugins.language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1987, 1, 'vi', 'plugins.language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1988, 1, 'vi', 'plugins.language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1989, 1, 'vi', 'plugins.language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1990, 1, 'vi', 'plugins.language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1991, 1, 'vi', 'plugins.language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1992, 1, 'vi', 'plugins.language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng "<strrong class="change_to_language_text"></strrong>" ? Điều này sẽ ghi đè bản ghi tiếng "<strrong class="change_to_language_text"></strrong>" nếu nó đã tồn tại!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1993, 1, 'vi', 'plugins.language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng "<strrong class="current_language_text">:language</strrong>"', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1994, 1, 'vi', 'plugins.language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1995, 1, 'vi', 'plugins.language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1996, 1, 'vi', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1997, 1, 'vi', 'plugins.language/language', 'language_display', 'Hiển thị ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1998, 1, 'vi', 'plugins.language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(1999, 1, 'vi', 'plugins.language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2000, 1, 'vi', 'plugins.language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2001, 1, 'vi', 'plugins.language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2002, 1, 'vi', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2003, 1, 'vi', 'plugins.language/language', 'language_switcher_display_list', 'Danh sách', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2004, 1, 'vi', 'plugins.language/language', 'settings', 'Cài đặt', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2005, 1, 'vi', 'plugins.language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2006, 1, 'vi', 'plugins.language/language', 'menu', 'Ngôn ngữ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2007, 1, 'en', 'plugins.log-viewer/general', 'all', 'All', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2008, 1, 'en', 'plugins.log-viewer/general', 'date', 'Date', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2009, 1, 'en', 'plugins.log-viewer/general', 'name', 'Log viewer', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2010, 1, 'en', 'plugins.log-viewer/levels', 'all', 'All', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2011, 1, 'en', 'plugins.log-viewer/levels', 'emergency', 'Emergency', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2012, 1, 'en', 'plugins.log-viewer/levels', 'alert', 'Alert', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2013, 1, 'en', 'plugins.log-viewer/levels', 'critical', 'Critical', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2014, 1, 'en', 'plugins.log-viewer/levels', 'error', 'Error', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2015, 1, 'en', 'plugins.log-viewer/levels', 'warning', 'Warning', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2016, 1, 'en', 'plugins.log-viewer/levels', 'notice', 'Notice', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2017, 1, 'en', 'plugins.log-viewer/levels', 'info', 'Info', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2018, 1, 'en', 'plugins.log-viewer/levels', 'debug', 'Debug', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2019, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs', 'System Logs', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2020, 1, 'en', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2021, 1, 'en', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2022, 1, 'en', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2023, 1, 'en', 'plugins.log-viewer/log-viewer', 'levels', 'Levels', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2024, 1, 'en', 'plugins.log-viewer/log-viewer', 'no_error', 'There is no error now.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2025, 1, 'en', 'plugins.log-viewer/log-viewer', 'entries', 'entries', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2026, 1, 'en', 'plugins.log-viewer/log-viewer', 'actions', 'Actions', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2027, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2028, 1, 'en', 'plugins.log-viewer/log-viewer', 'loading', 'Loading...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2029, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete_button', 'Delete file', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2030, 1, 'en', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class="label label-danger">DELETE</span> this log file <span class="label label-primary"><span class="log_date">:date</span></span> ?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2031, 1, 'en', 'plugins.log-viewer/log-viewer', 'download', 'Download', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2032, 1, 'en', 'plugins.log-viewer/log-viewer', 'delete', 'Delete', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2033, 1, 'en', 'plugins.log-viewer/log-viewer', 'file_path', 'File path', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2034, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_entries', 'Log entries', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2035, 1, 'en', 'plugins.log-viewer/log-viewer', 'size', 'Size', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2036, 1, 'en', 'plugins.log-viewer/log-viewer', 'page', 'Page', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2037, 1, 'en', 'plugins.log-viewer/log-viewer', 'of', 'of', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2038, 1, 'en', 'plugins.log-viewer/log-viewer', 'env', 'Env', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2039, 1, 'en', 'plugins.log-viewer/log-viewer', 'level', 'Level', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2040, 1, 'en', 'plugins.log-viewer/log-viewer', 'time', 'Time', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2041, 1, 'en', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2042, 1, 'en', 'plugins.log-viewer/log-viewer', 'stack', 'Stack', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2043, 1, 'en', 'plugins.log-viewer/log-viewer', 'log_info', 'Log info', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2044, 1, 'en', 'plugins.log-viewer/log-viewer', 'menu_name', 'System logs', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2045, 1, 'vi', 'plugins.log-viewer/general', 'all', 'Tất cả', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2046, 1, 'vi', 'plugins.log-viewer/general', 'date', 'Ngày', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2047, 1, 'vi', 'plugins.log-viewer/general', 'name', 'Lỗi hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2048, 1, 'vi', 'plugins.log-viewer/levels', 'all', 'Tất cả', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2049, 1, 'vi', 'plugins.log-viewer/levels', 'emergency', 'Khẩn cấp', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2050, 1, 'vi', 'plugins.log-viewer/levels', 'alert', 'Báo động', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2051, 1, 'vi', 'plugins.log-viewer/levels', 'critical', 'Nguy kịch', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2052, 1, 'vi', 'plugins.log-viewer/levels', 'error', 'Lỗi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2053, 1, 'vi', 'plugins.log-viewer/levels', 'warning', 'Cảnh báo', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2054, 1, 'vi', 'plugins.log-viewer/levels', 'notice', 'Chú ý', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2055, 1, 'vi', 'plugins.log-viewer/levels', 'info', 'Thông tin', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2056, 1, 'vi', 'plugins.log-viewer/levels', 'debug', 'Gỡ lỗi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2057, 1, 'vi', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2058, 1, 'vi', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2059, 1, 'vi', 'plugins.log-viewer/log-viewer', 'actions', 'Hành động', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2060, 1, 'vi', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class="label label-danger">XÓA</span> tập tin này <span class="label label-primary"><span class="log_date">:date</span></span> ?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2061, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete', 'Xóa', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2062, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2063, 1, 'vi', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2064, 1, 'vi', 'plugins.log-viewer/log-viewer', 'download', 'Tải xuống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2065, 1, 'vi', 'plugins.log-viewer/log-viewer', 'entries', 'bản ghi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2066, 1, 'vi', 'plugins.log-viewer/log-viewer', 'env', 'Môi trường', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2067, 1, 'vi', 'plugins.log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2068, 1, 'vi', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2069, 1, 'vi', 'plugins.log-viewer/log-viewer', 'level', 'Cấp độ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2070, 1, 'vi', 'plugins.log-viewer/log-viewer', 'levels', 'Cấp độ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2071, 1, 'vi', 'plugins.log-viewer/log-viewer', 'loading', 'Đang tải...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2072, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2073, 1, 'vi', 'plugins.log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2074, 1, 'vi', 'plugins.log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2075, 1, 'vi', 'plugins.log-viewer/log-viewer', 'of', 'trong tổng số', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2076, 1, 'vi', 'plugins.log-viewer/log-viewer', 'page', 'Trang', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2077, 1, 'vi', 'plugins.log-viewer/log-viewer', 'size', 'Kích thước', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2078, 1, 'vi', 'plugins.log-viewer/log-viewer', 'stack', 'Chi tiết', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2079, 1, 'vi', 'plugins.log-viewer/log-viewer', 'time', 'Thời gian', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2080, 1, 'vi', 'plugins.log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2081, 1, 'en', 'plugins.request-log/request-log', 'status_code', 'Status Code', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2082, 1, 'en', 'plugins.request-log/request-log', 'no_request_error', 'No request error now!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2083, 1, 'vi', 'plugins.request-log/request-log', 'status_code', 'Mã lỗi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2084, 1, 'en', 'plugins.translation/translation', 'translations', 'Translations', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2085, 1, 'en', 'plugins.translation/translation', 'translations_description', 'Translate all words in system.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2086, 1, 'en', 'plugins.translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the app/lang file, using ''php artisan translation:export'' command or publish button.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2087, 1, 'en', 'plugins.translation/translation', 'import_done', 'Done importing, processed <strong class="counter">N</strong> items! Reload this page to refresh the groups!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2088, 1, 'en', 'plugins.translation/translation', 'translation_manager', 'Translations Manager', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2089, 1, 'en', 'plugins.translation/translation', 'done_searching', 'Done searching for translations, found <strong class="counter">N</strong> items!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2090, 1, 'en', 'plugins.translation/translation', 'done_publishing', 'Done publishing the translations for group', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2091, 1, 'en', 'plugins.translation/translation', 'append_translation', 'Append new translations', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2092, 1, 'en', 'plugins.translation/translation', 'replace_translation', 'Replace existing translations', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2093, 1, 'en', 'plugins.translation/translation', 'loading', 'Loading...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2094, 1, 'en', 'plugins.translation/translation', 'import_group', 'Import group', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2095, 1, 'en', 'plugins.translation/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2096, 1, 'en', 'plugins.translation/translation', 'searching', 'Searching...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2097, 1, 'en', 'plugins.translation/translation', 'find_translation_files', 'Find translations in files', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2098, 1, 'en', 'plugins.translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group ":group"? This will overwrite existing language files.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2099, 1, 'en', 'plugins.translation/translation', 'publishing', 'Publishing..', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2100, 1, 'en', 'plugins.translation/translation', 'publish_translations', 'Publish translations', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2101, 1, 'en', 'plugins.translation/translation', 'back', 'Back', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2102, 1, 'en', 'plugins.translation/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2103, 1, 'en', 'plugins.translation/translation', 'add_key_button', 'Add keys', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2104, 1, 'en', 'plugins.translation/translation', 'total', 'Total', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2105, 1, 'en', 'plugins.translation/translation', 'changed', 'changed', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2106, 1, 'en', 'plugins.translation/translation', 'key', 'Key', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2107, 1, 'en', 'plugins.translation/translation', 'edit_title', 'Enter translation', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2108, 1, 'en', 'plugins.translation/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2109, 1, 'en', 'plugins.translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2110, 1, 'en', 'plugins.translation/translation', 'choose_a_group', 'Choose a group', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2111, 1, 'en', 'plugins.translation/translation', 'menu_name', 'Translations', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2112, 1, 'vi', 'plugins.translation/translation', 'add_key_button', 'Thêm khóa', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2113, 1, 'vi', 'plugins.translation/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2114, 1, 'vi', 'plugins.translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2115, 1, 'vi', 'plugins.translation/translation', 'back', 'Quay lại', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2116, 1, 'vi', 'plugins.translation/translation', 'changed', 'thay đổi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2117, 1, 'vi', 'plugins.translation/translation', 'choose_a_group', 'Chọn một nhóm', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2118, 1, 'vi', 'plugins.translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2119, 1, 'vi', 'plugins.translation/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2120, 1, 'vi', 'plugins.translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm ":group"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2121, 1, 'vi', 'plugins.translation/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2122, 1, 'vi', 'plugins.translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2123, 1, 'vi', 'plugins.translation/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class="counter">N</strong> bản ghi!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2124, 1, 'vi', 'plugins.translation/translation', 'edit_title', 'Nhập nội dung dịch', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2125, 1, 'vi', 'plugins.translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh ''php artisan translations:export'' hoặc sử dụng nút xuất bản', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2126, 1, 'vi', 'plugins.translation/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2127, 1, 'vi', 'plugins.translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class="counter">N</strong> bản ghi!  ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2128, 1, 'vi', 'plugins.translation/translation', 'import_group', 'Nhập nhóm', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2129, 1, 'vi', 'plugins.translation/translation', 'key', 'Khóa', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2130, 1, 'vi', 'plugins.translation/translation', 'loading', 'Đang tải...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2131, 1, 'vi', 'plugins.translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2132, 1, 'vi', 'plugins.translation/translation', 'publishing', 'Đang xuất bản...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2133, 1, 'vi', 'plugins.translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2134, 1, 'vi', 'plugins.translation/translation', 'searching', 'Đang tìm kiếm...', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2135, 1, 'vi', 'plugins.translation/translation', 'total', 'Tổng cộng', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2136, 1, 'vi', 'plugins.translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2137, 1, 'vi', 'plugins.translation/translation', 'translations', 'Dịch thuật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2138, 1, 'vi', 'plugins.translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2139, 1, 'vi', 'plugins.translation/translation', 'menu_name', 'Dịch thuật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2140, 1, 'vi', '/auth', 'login.username', 'Tên truy cập', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2141, 1, 'vi', '/auth', 'login.password', 'Mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2142, 1, 'vi', '/auth', 'login.title', 'Đăng nhập hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2143, 1, 'vi', '/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2144, 1, 'vi', '/auth', 'login.login', 'Đăng nhập', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2145, 1, 'vi', '/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2146, 1, 'vi', '/auth', 'login.success', 'Đăng nhập thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2147, 1, 'vi', '/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2148, 1, 'vi', '/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2149, 1, 'vi', '/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2150, 1, 'vi', '/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2151, 1, 'vi', '/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2152, 1, 'vi', '/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2153, 1, 'vi', '/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập tên đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2154, 1, 'vi', '/auth', 'forgot_password.submit', 'Hoàn tất', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2155, 1, 'vi', '/auth', 'reset.new_password', 'Mật khẩu mới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2156, 1, 'vi', '/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2157, 1, 'vi', '/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2158, 1, 'vi', '/auth', 'reset.update', 'Cập nhật', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2159, 1, 'vi', '/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2160, 1, 'vi', '/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2161, 1, 'vi', '/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2162, 1, 'vi', '/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2163, 1, 'vi', '/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2164, 1, 'vi', '/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2165, 1, 'vi', '/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2166, 1, 'vi', '/auth', 'reset.new-password', 'Mật khẩu mới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2167, 1, 'vi', '/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2168, 1, 'vi', '/auth', 'email.invite.title', 'Mời tham gia hệ thống ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2169, 1, 'vi', '/auth', 'failed', 'Không thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2170, 1, 'vi', '/auth', 'repassword', 'Xác nhận mật khẩu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2171, 1, 'vi', '/auth', 'throttle', 'Throttle', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2172, 1, 'vi', '/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2173, 1, 'vi', '/auth', 'login_title', 'Đăng nhập với tài khoản hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2174, 1, 'vi', '/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2175, 1, 'vi', '/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2176, 1, 'vi', '/auth', 'not_member', 'Chưa là thành viên?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2177, 1, 'vi', '/auth', 'register_now', 'Đăng ký ngay', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2178, 1, 'vi', '/auth', 'accept_invite', 'Xác nhận lời mời', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2179, 1, 'vi', '/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2180, 1, 'vi', '/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2181, 1, 'vi', '/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2182, 1, 'vi', '/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2183, 1, 'vi', '/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2184, 1, 'vi', '/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2185, 1, 'vi', '/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2186, 1, 'vi', '/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2187, 1, 'vi', '/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2188, 1, 'vi', '/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2189, 1, 'vi', '/permissions', 'list', 'Danh sách phân quyền', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2190, 1, 'vi', '/permissions', 'name', 'Tên', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2191, 1, 'vi', '/permissions', 'current_role', 'Quyền hiện tại', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2192, 1, 'vi', '/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2193, 1, 'vi', '/permissions', 'role_assigned', 'Quyền đã được gán', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2194, 1, 'vi', '/permissions', 'create_role', 'Tạo quyền mới', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2195, 1, 'vi', '/permissions', 'role_name', 'Tên', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2196, 1, 'vi', '/permissions', 'role_description', 'Mô tả', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2197, 1, 'vi', '/permissions', 'is_staff', 'Là người quản lý?', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2198, 1, 'vi', '/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2199, 1, 'vi', '/permissions', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2200, 1, 'vi', '/permissions', 'reset', 'Làm lại', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2201, 1, 'vi', '/permissions', 'save', 'Lưu', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2202, 1, 'vi', '/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút "Nhân bản" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2203, 1, 'vi', '/permissions', 'details', 'Chi tiết', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2204, 1, 'vi', '/permissions', 'duplicate', 'Nhân bản', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2205, 1, 'vi', '/permissions', 'all', 'Tất cả phân quyền', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2206, 1, 'vi', '/permissions', 'list_role', 'Danh sách quyền', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2207, 1, 'vi', '/permissions', 'created_on', 'Ngày tạo', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2208, 1, 'vi', '/permissions', 'created_by', 'Được tạo bởi', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2209, 1, 'vi', '/permissions', 'actions', 'Tác vụ', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2210, 1, 'vi', '/permissions', 'create_success', 'Tạo thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2211, 1, 'vi', '/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2212, 1, 'vi', '/permissions', 'delete_success', 'Xóa quyền thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2213, 1, 'vi', '/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2214, 1, 'vi', '/permissions', 'modified_success', 'Sửa thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2215, 1, 'vi', '/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2216, 1, 'vi', '/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2217, 1, 'vi', '/permissions', 'options', 'Tùy chọn', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2218, 1, 'vi', '/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2219, 1, 'vi', '/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2220, 1, 'vi', '/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2221, 1, 'vi', '/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2222, 1, 'vi', '/permissions', 'roles', 'Quyền', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2223, 1, 'vi', '/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2224, 1, 'vi', '/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2225, 1, 'vi', '/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2226, 1, 'vi', '/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2227, 1, 'vi', '/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2228, 1, 'vi', '/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2229, 1, 'vi', '/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2230, 1, 'vi', '/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2231, 1, 'vi', '/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2232, 1, 'vi', '/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2233, 1, 'vi', '/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2234, 1, 'vi', '/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2235, 1, 'vi', '/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2236, 1, 'vi', '/users', 'not_found', 'Không tìm thấy người dùng', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2237, 1, 'vi', '/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2238, 1, 'vi', '/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2239, 1, 'vi', '/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2240, 1, 'vi', '/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2241, 1, 'vi', '/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2242, 1, 'vi', '/users', 'invite_success', 'Một tài khoản đã được tạo cho người này, email xác nhận đã được gửi để hoàn thành thao tác mời tham gia hệ thống', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2243, 1, 'vi', '/users', 'invite_exist', 'Người dùng này đã được mời.  Một thông báo nhắc nhở đã được gửi.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2244, 1, 'vi', '/users', 'invite_not_exist', 'Mã mời không tồn tại.', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2245, 1, 'vi', '/users', 'accept_invite_success', 'Chào mừng thành viên mới!', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2246, 1, 'vi', '/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-03-18 09:04:23', '2018-03-18 09:04:23'),
(2247, 1, 'vi', '/users', 'email', 'Email', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2248, 1, 'vi', '/users', 'username', 'Tên đăng nhập', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2249, 1, 'vi', '/users', 'role', 'Phân quyền', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2250, 1, 'vi', '/users', 'invite_user', 'Mời tham gia hệ thống', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2251, 1, 'vi', '/users', 'invite_new_member', 'Mời thành viên mới?', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2252, 1, 'vi', '/users', 'invite_description', 'Mời người dùng mới tham gia nhóm này.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2253, 1, 'vi', '/users', 'first_name', 'Họ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2254, 1, 'vi', '/users', 'last_name', 'Tên', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2255, 1, 'vi', '/users', 'message', 'Thông điệp', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2256, 1, 'vi', '/users', 'invite_btn', 'Mời', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2257, 1, 'vi', '/users', 'cancel_btn', 'Hủy bỏ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2258, 1, 'vi', '/users', 'password', 'Mật khẩu', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2259, 1, 'vi', '/users', 'new_password', 'Mật khẩu mới', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2260, 1, 'vi', '/users', 'save', 'Lưu', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2261, 1, 'vi', '/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2262, 1, 'vi', '/users', 'deleted', 'Xóa thành viên thành công', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2263, 1, 'vi', '/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2264, 1, 'vi', '/users', 'can_not_get_list_roles', 'Không thể lấy danh sách phân quyền trong nhóm này.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2265, 1, 'vi', '/users', 'list', 'Danh sách thành viên', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2266, 1, 'vi', '/users', 'last_login', 'Lần cuối đăng nhập', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2267, 1, 'vi', '/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2268, 1, 'vi', '/users', 'email_invite_template', '<h3>Xin chào :name</h3><p>Bạn được mời tham gia vào hệ thống :site_title, người gửi đã kèm theo nội dung sau:</p><p>Người mời bạn tham gia đã gửi kèm thông điệp bên dưới:</p><p>":content"</p><p>Hãy nhấn vào liên kết bên dưới để xác nhận tham gia vào hệ thống: <a href=":link">Tham gia ngay</a></p>', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2269, 1, 'vi', '/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=":link">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2270, 1, 'vi', '/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2271, 1, 'vi', '/users', 'new_image', 'Ảnh mới', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2272, 1, 'vi', '/users', 'loading', 'Đang tải', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2273, 1, 'vi', '/users', 'close', 'Đóng', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2274, 1, 'vi', '/users', 'update', 'Cập nhật', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2275, 1, 'vi', '/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2276, 1, 'vi', '/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2277, 1, 'vi', '/users', 'users', 'Thành viên', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2278, 1, 'vi', '/users', 'info.title', 'Thông tin người dùng', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2279, 1, 'vi', '/users', 'info.first_name', 'Họ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2280, 1, 'vi', '/users', 'info.last_name', 'Tên', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2281, 1, 'vi', '/users', 'info.email', 'Email', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2282, 1, 'vi', '/users', 'info.second_email', 'Email dự phòng', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2283, 1, 'vi', '/users', 'info.address', 'Địa chỉ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2284, 1, 'vi', '/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2285, 1, 'vi', '/users', 'info.birth_day', 'Ngày sinh', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2286, 1, 'vi', '/users', 'info.job', 'Nghề nghiệp', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2287, 1, 'vi', '/users', 'info.mobile_number', 'Số điện thoại di động', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2288, 1, 'vi', '/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2289, 1, 'vi', '/users', 'info.interes', 'Sở thích', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2290, 1, 'vi', '/users', 'info.about', 'Giới thiệu', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2291, 1, 'vi', '/users', 'gender.title', 'Giới tính', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2292, 1, 'vi', '/users', 'gender.male', 'nam', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2293, 1, 'vi', '/users', 'gender.female', 'nữ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2294, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2295, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2296, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2297, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2298, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2299, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2300, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2301, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2302, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2303, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2304, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2305, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2306, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2307, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2308, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2309, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2310, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2311, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2312, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2313, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2314, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2315, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2316, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2317, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2318, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2319, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2320, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2321, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2322, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2323, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2324, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2325, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2326, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2327, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2328, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2329, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2330, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2331, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2332, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2333, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2334, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2335, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2336, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2337, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2338, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2339, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2340, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2341, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2342, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2343, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2344, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2345, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2346, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2347, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2348, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2349, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2350, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2351, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2352, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2353, 1, 'vi', 'validation', 'uploaded', 'Không thể tải lên, hãy thử lại.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2354, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2355, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2356, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2357, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2358, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2359, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2360, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2361, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2362, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2363, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2364, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2365, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2018-03-18 09:04:24', '2018-03-18 09:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_position` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `completed_profile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `dob`, `address`, `secondary_address`, `job_position`, `phone`, `secondary_phone`, `secondary_email`, `gender`, `website`, `skype`, `facebook`, `twitter`, `google_plus`, `youtube`, `github`, `interest`, `about`, `profile_image`, `super_user`, `manage_supers`, `completed_profile`) VALUES
(1, 'minhsang2603@gmail.com', '$2y$10$A.uOgqPJthpIKaaUQ3QaueO19/dtXbntkRuNCRM4DA1D0wN33Jsd6', 'T6oMhHkxtgcWaK5vAGmrYZydpt4wfGcRPmk9JNAK8lrXbsMyrbAN1QHBXExJ', '2017-11-15 06:57:09', '2018-03-14 21:49:45', '{"analytics.general":true,"analytics.page":true,"analytics.browser":true,"analytics.referrer":true,"backups.list":true,"backups.create":true,"backups.restore":true,"backups.delete":true,"block.list":true,"block.create":true,"block.edit":true,"block.delete":true,"categories.list":true,"categories.create":true,"categories.edit":true,"categories.delete":true,"contacts.list":true,"contacts.create":true,"contacts.edit":true,"contacts.delete":true,"custom-fields.list":true,"custom-fields.create":true,"custom-fields.edit":true,"custom-fields.delete":true,"dashboard.index":true,"galleries.list":true,"galleries.create":true,"galleries.edit":true,"galleries.delete":true,"languages.list":true,"languages.create":true,"languages.edit":true,"languages.delete":true,"logs.list":true,"logs.delete":true,"media.index":true,"files.list":true,"files.create":true,"files.edit":true,"files.trash":true,"files.delete":true,"folders.list":true,"folders.create":true,"folders.edit":true,"folders.trash":true,"folders.delete":true,"member.list":true,"member.create":true,"member.edit":true,"member.delete":true,"menus.list":true,"menus.create":true,"menus.edit":true,"menus.delete":true,"pages.list":true,"pages.create":true,"pages.edit":true,"pages.delete":true,"plugins.list":true,"posts.list":true,"posts.create":true,"posts.edit":true,"posts.delete":true,"roles.list":true,"roles.create":true,"roles.edit":true,"roles.delete":true,"settings.options":true,"tags.list":true,"tags.create":true,"tags.edit":true,"tags.delete":true,"translations.list":true,"translations.create":true,"translations.edit":true,"translations.delete":true,"users.list":true,"users.create":true,"users.edit":true,"users.delete":true,"widgets.list":true,"superuser":true,"manage_supers":true}', '2018-03-13 20:02:26', 'Sang', 'Nguyen', 'botble', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/vendor/core/images/default-avatar.jpg', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'en_US', 1, '2017-11-30 18:27:51', '2017-11-30 18:27:51'),
(2, 'admin-theme', 'default', 1, '2018-03-07 03:42:13', '2018-03-13 20:02:36'),
(3, 'admin-locale', 'en', 1, '2018-03-07 03:42:14', '2018-03-07 03:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(10) unsigned NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Widget\\Widgets\\Text', 'second_sidebar', 'demo', 0, '{"id":"Botble\\\\Widget\\\\Widgets\\\\Text","name":"Text","content":""}', '2016-12-18 04:47:20', '2016-12-18 04:47:20'),
(7, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{"id":"RecentPostsWidget","name":"Recent Posts","number_display":"5"}', '2016-12-18 04:48:00', '2016-12-18 04:48:00'),
(9, 'Botble\\Widget\\Widgets\\Text', 'primary_sidebar', 'demo', 0, '{"id":"Botble\\\\Widget\\\\Widgets\\\\Text","name":"Text","content":""}', '2016-12-18 04:50:57', '2016-12-18 04:50:57'),
(19, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{"id":"TagsWidget","name":"Tags","number_display":"5"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(20, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{"id":"CustomMenuWidget","name":"Categories","menu_id":"featured-categories"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(21, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{"id":"CustomMenuWidget","name":"Social","menu_id":"social"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(30, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{"id":"RecentPostsWidget","name":"Recent Posts","number_display":"5"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(31, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{"id":"CustomMenuWidget","name":"Favorite website","menu_id":"favorite-website"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(32, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{"id":"CustomMenuWidget","name":"My links","menu_id":"my-links"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(42, 'PopularPostsWidget', 'primary_sidebar', 'newstv', 0, '{"id":"PopularPostsWidget","name":"Top Views","number_display":"5"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(43, 'VideoPostsWidget', 'primary_sidebar', 'newstv', 1, '{"id":"VideoPostsWidget","name":"Videos","number_display":"1"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(44, 'FacebookWidget', 'primary_sidebar', 'newstv', 2, '{"id":"FacebookWidget","name":"Facebook","facebook_name":"T\\u00f4i y\\u00eau l\\u1eadp tr\\u00ecnh","facebook_id":"https:\\/\\/www.facebook.com\\/LoveCodingFC\\/"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(61, 'RecentPostsWidget', 'footer_sidebar', 'newstv', 0, '{"id":"RecentPostsWidget","name":"Recent posts","number_display":"6"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(62, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 1, '{"id":"CustomMenuWidget","name":"Favorite websites","menu_id":"favorite-website"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(63, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 2, '{"id":"CustomMenuWidget","name":"My links","menu_id":"my-links"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(64, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 3, '{"id":"CustomMenuWidget","name":"Categories","menu_id":"featured-categories"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_history`
--
ALTER TABLE `audit_history`
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_foreign` (`field_item_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_foreign` (`created_by`),
  ADD KEY `field_groups_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_foreign` (`field_group_id`),
  ADD KEY `field_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`content_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`lang_meta_content_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`related_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`content_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_type_index` (`revisionable_type`),
  ADD KEY `revisions_revisionable_id_index` (`revisionable_id`),
  ADD KEY `revisions_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`user_id`),
  ADD KEY `tags_parent_id_index` (`parent_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=610;
--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2366;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `field_items`
--
ALTER TABLE `field_items`
  ADD CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
