-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2021 a las 16:23:16
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tvlix_services`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinions`
--

CREATE TABLE `opinions` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `rate` varchar(255) NOT NULL,
  `fk_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opinions`
--

INSERT INTO `opinions` (`id`, `comment`, `date`, `rate`, `fk_user`) VALUES
(10, '« Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam. » ', '2021-02-18 19:49', '5', 1),
(16, 'Se trata de una aplicación con buenas intenciones, pero que tiene que mejorar mucho', '2021-04-08 18:30', '1', 20),
(17, 'La inferfaz es limpia y agradable\r\n', '2021-04-14 20:41', '3', 10),
(18, 'Me encanta esta aplicación porque tiene la información exacta que necesito y me permite tener controlados aquellos capítulos que he visto y los que no.\n', '2021-05-03 19:25', '5', 1),
(19, 'Su uso es muy sencillo, por lo que cualquiera puede utilizarla', '2021-05-03 19:26', '3', 16),
(20, 'Es una aplicación que podría mostrar más información, como la de los actores o los directores. \n\nSí me gusta, cómo gestionar mis listas de series.', '2021-05-03 19:27', '3', 17),
(21, 'Considero que se trata de una aplicación muy útil y sencilla de utilizar', '2021-05-19 19:13', '3', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tvshows`
--

CREATE TABLE `tvshows` (
  `id` bigint(20) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `run_time` varchar(255) DEFAULT NULL,
  `seasons` varchar(255) DEFAULT NULL,
  `sinopsis` longtext,
  `status` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `episodes` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rating_count` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tvshows`
--

INSERT INTO `tvshows` (`id`, `genre`, `name`, `rating`, `run_time`, `seasons`, `sinopsis`, `status`, `end_date`, `episodes`, `image`, `rating_count`, `start_date`, `genres`) VALUES
(2825, 'Crime, drama, medical', 'Bones', '9.0698', '60', '12', 'The premise of the show is an alliance between forensic anthropologist Dr. Temperance \"Bones\" Brennan and FBI Special Agent Seeley Booth. Brennan is the central character and team leader of the fictional Jeffersonian Institute Medico-Legal Lab, a federal institution that collaborates with the FBI, mirroring the real-life relationship between the FBI and the Smithsonian Institution. Set in Washington, D.C., the show revolves around solving Federal legal cases by examining the human remains of possible murder victims. Dr. Brennan and her team provide scientific expertise and Special Agent Booth provides FBI criminal investigation technique. In addition to the prospective murder cases featured in each episode, the series explores the backgrounds and relationships of its characters. An important ongoing dynamic between Brennan and Booth is their disagreement about science and faith. Brennan argues for science, evidence, and atheism. Booth argues for faith, God, and the unproven. The series is also known for its dark comedic undertones to, in essence, lighten the gravity of the show\'s intense subject matter.', 'Ended', NULL, '246', 'https://static.episodate.com/images/tv-show/full/2825.jpg', NULL, '2005-09-13', NULL),
(5348, 'Drama,Action,Supernatural', 'Supernatural', '9.6524', '60', '15', 'Supernatural is an American fantasy horror television series created by Eric Kripke. It was first broadcast on September 13, 2005, on The WB and subsequently became part of successor The CW\'s lineup. Starring Jared Padalecki as Sam Winchester and Jensen Ackles as Dean Winchester, the series follows the two brothers as they hunt demons, ghosts, monsters, and other supernatural beings in the world. The series is produced by Warner Bros. Television, in association with Wonderland Sound and Vision. Along with Kripke, executive producers have been McG, Robert Singer, Phil Sgriccia, Sera Gamble, Jeremy Carver, John Shiban, Ben Edlund and Adam Glass. Former executive producer and director Kim Manners died of lung cancer during production of the fourth season.<br>The series is filmed in Vancouver, British Columbia and surrounding areas and was in development for nearly ten years, as creator Kripke spent several years unsuccessfully pitching it. The pilot was viewed by an estimated 5.69 million viewers, and the ratings of the first four episodes prompted The WB to pick up the series for a full season. Originally, Kripke planned the series for three seasons but later expanded it to five. The fifth season concluded the series\' main storyline, and Kripke departed the series as showrunner. The series has continued on for several more seasons with Sera Gamble and Jeremy Carver assuming the role of showrunner.', 'Ended', NULL, '326', 'https://static.episodate.com/images/tv-show/full/5348.jpg', NULL, '2005-09-13', NULL),
(8362, 'Comedy', 'The Big Bang Theory', '9.2736', '30', '12', 'Leonard and Sheldon are brilliant physicists - geniuses in the laboratory, but socially challenged everywhere else. Enter beautiful, street-smart neighbor, Penny, who aims to teach them a thing or two about life. Despite their on-again, off-again relationship in the past, Leonard believes he\'s found true love with Penny. Even Sheldon has found a female companion, entering into a \"Relationship Agreement\" with neurobiologist Amy Farrah Fowler. In their free time, Leonard and Sheldon continue to enjoy frequent trips to the comic book store and fantasy role-playing games with their ever-expanding universe of friends, including fellow scientists Koothrappali, Wolowitz and Wolowitz\'s adorable microbiologist wife, Bernadette.', 'Ended', NULL, '278', 'https://static.episodate.com/images/tv-show/full/8362.jpg', NULL, '2007-09-24', NULL),
(20793, 'Comedy,Drama', '10 Things I Hate About You', '10.0000', '30', '1', 'After just one term, the Stratford sisters are making their mark on Padua High. Outspoken Kat is a known campus activist, and she\'s let down her guard just enough to hook up with mysterious bad boy Patrick. Meanwhile, her social-butterfly sister, Bianca, has taken on self-centered head cheerleader Chastity, and just might be dating her ex, would-be male model Joey... much to the sorrow of love-struck nerd Cameron.Things just keep getting more interesting as these changes rock Padua\'s social order. Meanwhile, back at home, overprotective Dr. Stratford is NOT happy about this boy invasion, but he has ways of keeping his girls in line.', 'Ended', NULL, '19', 'https://static.episodate.com/images/tv-show/full/20793.jpg', NULL, '2009-07-07', NULL),
(22410, 'Crime,Drama,Mystery', 'Sherlock', '9.4533', '90', '4', 'Sherlock depicts \"consulting detective\" Sherlock Holmes (Benedict Cumberbatch) solving various mysteries in London. Holmes is assisted by his flatmate and friend, Dr. John Watson (Martin Freeman), who has returned from military service in Afghanistan with the Royal Army Medical Corps. Although Metropolitan Police Service Detective Inspector Greg Lestrade (Rupert Graves) and others are at first skeptical of Holmes, over time his remarkable intellect and powers of observation persuade them of his value. In part through Watson\'s blog documenting their adventures, Holmes becomes a reluctant celebrity with the press reporting on his cases and eccentric personal life. Both ordinary people and the British government ask for his help.\r\n<br><br>\r\nAlthough the series depicts a variety of crimes and perpetrators, Holmes\' conflict with archnemesis Jim Moriarty (Andrew Scott) is a recurring feature. Molly Hooper (Louise Brealey), a pathologist at St. Bart\'s Hospital occasionally assists Holmes in his cases. Other recurring roles include Una Stubbs as Mrs Hudson, Holmes and Watson\'s landlady, and series co-creator Mark Gatiss as Holmes\' elder brother Mycroft.', 'To Be Determined', NULL, '11', 'https://static.episodate.com/images/tv-show/full/22410.jpg', NULL, '2010-07-25', NULL),
(23455, '\"Drama\", \"Adventure\", \"Fantasy\"', 'Game of Thrones', '9.4568', '60', '8', 'Nine noble families fight for control of the mythical land of Westeros. Political and sexual intrigue is pervasive. Robert Baratheon, King of Westeros, asks his old friend Eddard, Lord Stark, to serve as Hand of the King, or highest official. Secretly war', 'Ended', NULL, '76', 'https://static.episodate.com/images/tv-show/full/23455.jpg', '722', '2011-04-17', NULL),
(24010, 'Drama, action, horror', 'The Walking Dead', '9.0235', '60', '10', 'Rick Grimes is a former Sheriff\'s deputy who has been in a coma for several months after being shot while on duty. When he wakes, he discovers that the world has been taken over by zombies, and that he seems to be the only person still alive. After returning home to discover his wife and son missing, he heads for Atlanta to search for his family. Narrowly escaping death at the hands of the zombies on arrival in Atlanta, he is aided by another survivor,Glenn,who takes Rick to a camp outside the town. There,Rick finds his wife Lori and his son,Carl, along with his partner/best friend Shane and a small group of survivors who struggle to fend off the zombie hordes; as well as competing with other survivor groups who are prepared to do whatever it takes to survive.<br><br>The Walking Dead is an American horror drama television series developed by Frank Darabont. It is based on the comic book series of the same name by Robert Kirkman, Tony Moore, and Charlie Adlard. Andrew Lincoln stars as sheriff\'s deputy Rick Grimes, who awakens from a coma to find an apocalyptic world dominated by flesh-eating zombies, called \"walkers\". He sets out to find his family and encounters many other survivors along the way.', 'Running', NULL, '152', 'https://static.episodate.com/images/tv-show/full/24010.jpg', NULL, '2010-10-31', NULL),
(29560, 'Drama,Action,Science-Fiction', 'Arrow', '9.1120', '60', '8', 'Arrow is an American television series developed by writer/producers Greg Berlanti, Marc Guggenheim, and Andrew Kreisberg. It is based on the DC Comics character Green Arrow, a costumed crime-fighter created by Mort Weisinger and George Papp. It premiered in North America on The CW on October 10, 2012, with international broadcasting taking place in late 2012. Primarily filmed in Vancouver, British Columbia, Canada, the series follows billionaire playboy Oliver Queen, portrayed by Stephen Amell, who, five years after being stranded on a hostile island, returns home to fight crime and corruption as a secret vigilante whose weapon of choice is a bow and arrow. Unlike in the comic books, Queen does not go by the alias \"Green Arrow\". The series takes a realistic look at the Green Arrow character, as well as other characters from the DC Comics universe. Although Oliver Queen/Green Arrow had been featured in the television series Smallville from 2006 to 2011, the producers decided to start clean and find a new actor (Amell) to portray the character. Arrow focuses on the humanity of Oliver Queen, and how he was changed by time spent shipwrecked on an island. Most episodes have flashback scenes to the five years in which Oliver was missing.', 'Ended', NULL, '169', 'https://static.episodate.com/images/tv-show/full/29560.jpg', NULL, '2012-10-10', NULL),
(31452, 'Action,Adventure,Science-Fiction', 'Marvel\'s Agents of S.H.I.E.L.D.', '9.2172', '60', '7', 'Phil Coulson heads an elite team of fellow agents with the worldwide law-enforcement organization known as S.H.I.E.L.D. (Strategic Homeland Intervention Enforcement and Logistics Division), as they investigate strange occurrences around the globe. Its members -- each of whom brings a specialty to the group -- work with Coulson to protect those who cannot protect themselves from extraordinary and inconceivable threats.', 'Ended', NULL, '135', 'https://static.episodate.com/images/tv-show/full/31452.jpg', NULL, '2013-09-24', NULL),
(33514, 'Action, adventure, science-fiction', 'The 100', '9.0394', '60', '7', 'The series is set 97 years after a devastating nuclear war wiped out almost all life on Earth. The only known survivors are the residents of twelve space stations in Earth\'s orbit prior to the war. The space stations banded together to form a single massive station named \"The Ark\", where about 2,400 people live under the leadership of Chancellor Jaha. Resources are scarce and all crimes, no matter their nature or severity, are punishable by ejection into space (\"floating\") unless the perpetrator is under 18 years of age. After the Ark\'s life-support systems are found to be critically failing, 100 juvenile prisoners are declared \"expendable\" and sent to the surface—nearby former Washington, D.C.—in a last ditch attempt to determine if Earth is habitable again in a program called \"The 100\", for which the show is named. The teens arrive on a seemingly pristine planet they have only seen from space. They are meant to find refuge and supplies at the old military installation, Mount Weather Emergency Operations Center, located at the Blue Ridge Mountains. However, they have landed a fair distance from it and soon face other problems. Confronting both the wonders and the dangers of this rugged new world, they struggle to form a tentative community. However, they discover not all humanity was wiped out; some people on Earth, called Grounders, survived the war, and there are even more dangers lurking – Reapers (Grounders who have become cannibals) and Mountain Men (who live in Mount Weather, the original destination of the 100).', 'Ended', NULL, '99', 'https://static.episodate.com/images/tv-show/full/33514.jpg', NULL, '2014-03-19', NULL),
(34912, 'Adventure,Romance,Science-Fiction', 'Outlander', '9.4203', '60', '5', '<b>Outlander </b>follows the story of Claire Randall, a married combat nurse from 1945 who is mysteriously swept back in time to 1743, where she is immediately thrown into an unknown world where her life is threatened. When she is forced to marry Jamie, a chivalrous and romantic young Scottish warrior, a passionate affair is ignited that tears Claire\'s heart between two vastly different men in two irreconcilable lives.The <i>Outlander</i> series, adapted from Diana Gabaldon\'s international best-selling books, spans the genres of romance, science fiction, history and adventure into one epic tale.', 'Running', NULL, '67', 'https://static.episodate.com/images/tv-show/full/34912.jpg', NULL, '2014-08-09', NULL),
(35624, 'Drama', 'The Flash', '9.3720', '60', '7', 'Barry Allen is a Central City police forensic scientist with a reasonably happy life, despite the childhood trauma of a mysterious red and yellow being killing his mother and framing his father. All that changes when a massive particle accelerator acciden', 'Running', 'null', '134', 'https://static.episodate.com/images/tv-show/thumbnail/35624.jpg', '1484', '2014-10-07', NULL),
(37444, 'Crime,Drama,Action', 'Marvel\'s Daredevil', '9.1686', '60', '3', 'Marvel\'s Daredevil, or simply Daredevil, is an American web television series created for Netflix by Drew Goddard, based on the Marvel Comics character of the same name. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films of the franchise, and is the first in a series of shows that will lead up to a Defenders crossover miniseries. The series is produced by Marvel Television in association with ABC Studios, DeKnight Prods. and Goddard Textiles, with Steven S. DeKnight serving as showrunner on the first season, and Goddard acting as consultant. Doug Petrie and Marco Ramirez will take over as showrunners for the show\'s second season.\r\n<br><br>\r\nCharlie Cox stars as Matt Murdock / Daredevil, a lawyer-by-day who fights crime at night. The series chronicles the character\'s early days fighting crime, juxtaposed with the rise of crime lord Wilson Fisk, played by Vincent D\'Onofrio. Daredevil entered development in late 2013, a year after the film rights to the character reverted to Marvel, with Goddard initially hired in December 2013. DeKnight replaced him as showrunner and Cox was hired to star in May 2014, with Deborah Ann Woll, Elden Henson, Toby Leonard Moore, Vondie Curtis-Hall, Bob Gunton, Ayelet Zurer, and Rosario Dawson also starring. Filming takes place in New York City, in areas that still look like the old Hell’s Kitchen.', 'Ended', NULL, '38', 'https://static.episodate.com/images/tv-show/full/37444.jpg', NULL, '2015-04-10', NULL),
(43234, NULL, 'Supergirl', '9.0000', '60', '6', 'Supergirl is an upcoming American television series developed by writer/producers Greg Berlanti, Ali Adler and Andrew Kreisberg set to air on CBS. It is based on the DC Comics character Supergirl (Kara Zor-El), created by Otto Binder and Al Plastino. Supergirl is a costumed superhero who is the biological cousin to Superman and one of the last surviving Kryptonians. The series was officially picked up on May 6, 2015 after receiving a series commitment in September 2014, and will debut in November 2015.<br><br>Twenty-four-year-old Kara Zor-El, who was taken in by the Danvers family when she was 12 after being sent away from Krypton, must learn to embrace her powers after previously hiding them. The Danvers teach her to be careful with her powers, until she has to reveal them during an unexpected disaster, setting her on her journey of heroism.\r\n<br><br>\r\nThe costume for Supergirl was created by Colleen Atwood, who also designed the costumes for Arrow and The Flash. Benoist stated that she is aware of the costume worn by Kara in the comics books, and expressed that the \"micro-mini hemline\" of the skirt could be \"a little daunting but that\'s good. I like being pushed.\"Promotional photos of Benoist wearing Atwood\'s design were released on March 6, 2015. Atwood indicated that she wanted to \"embrace the past  but more importantly, thrust her into the street-style action hero of today.\"', 'Running', NULL, '112', 'https://static.episodate.com/images/tv-show/full/43234.jpg', NULL, '2015-10-26', NULL),
(43467, '\"Crime\", \"Drama\", \"Supernatural\"', 'Lucifer', '9.6675', '45', '5', 'The Devil has come to Los Angeles…Based upon the characters created by Neil Gaiman, Sam Kieth and Mike Dringenberg for DC Entertainment\'s Vertigo imprint, <b>Lucifer</b> is the story of the original fallen angel. Bored and unhappy as the Lord of Hell, Luc', 'Running', NULL, '87', 'https://static.episodate.com/images/tv-show/full/43467.com', '803', '2016-01-25', NULL),
(46692, 'Drama,Action,Science-Fiction', 'DC\'s Legends of Tomorrow', '8.9395', '60', '6', 'When heroes alone are not enough... the world needs legends. Having seen the future, one he will desperately try to prevent from happening, time-traveling rogue Rip Hunter is tasked with assembling a disparate group of both heroes and villains to confront an unstoppable threat - one in which not only is the planet at stake, but all of time itself. Can this ragtag team defeat an immortal threat unlike anything they have ever known?', 'Running', NULL, '92', 'https://static.episodate.com/images/tv-show/full/46692.jpg', NULL, '2016-01-21', NULL),
(46778, 'Drama,Fantasy,Science-Fiction', 'Stranger Things', '9.3435', '60', '3', 'A love letter to the \'80s classics that captivated a generation, <b>Stranger Things</b> is set in 1983 Indiana, where a young boy vanishes into thin air. As friends, family and local police search for answers, they are drawn into an extraordinary mystery involving top-secret government experiments, terrifying supernatural forces and one very strange little girl.', 'Running', NULL, '24', 'https://static.episodate.com/images/tv-show/full/46778.jpg', NULL, '2016-07-15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `type_media` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `genres` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `genre`, `location`, `name`, `password`, `surname`, `type_media`, `user_name`, `genres`) VALUES
(1, 'cristina@gmail.com', 'Aventuras', 'Pamplona', 'Cristina', 'Cristina', 'Pérez', 'películas', 'Cristina', NULL),
(10, 'pau@gmail.com', 'Drama', 'Madrid', 'Pau', 'pau', 'Garcias', 'Películas', 'pau', NULL),
(12, 'luis@gmail.com', 'Thriller', 'Pamplona', 'luis', 'luis', 'Pérez', 'películas', 'luis', NULL),
(16, 'jon@gmail.com', 'Acción', 'Jaurrieta', 'jon', 'jon', 'jon', 'Películas', 'jon', NULL),
(17, 'maria@gmail.com', 'Aventuras', 'Sangüesa', 'maria', 'maria', 'maria', 'Películas', 'maria', NULL),
(19, 'pedro@gmail.com', 'Drama', 'Pamplona', 'pedro', 'pedro', 'Pérez', 'películas', 'pedro', NULL),
(20, 'ana@gmail.com', 'Thriller', 'Lérida', 'ana', 'ana', 'ana', 'Películas', 'ana', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_tv_shows`
--

CREATE TABLE `user_tv_shows` (
  `id` bigint(20) NOT NULL,
  `episode_watched` varchar(255) DEFAULT NULL,
  `opinion` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `season_watched` varchar(255) DEFAULT NULL,
  `watched_status` varchar(255) NOT NULL,
  `fk_tvshow` bigint(20) NOT NULL,
  `fk_user` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_tv_shows`
--

INSERT INTO `user_tv_shows` (`id`, `episode_watched`, `opinion`, `platform`, `rate`, `reason`, `season_watched`, `watched_status`, `fk_tvshow`, `fk_user`, `date`) VALUES
(16, '3', NULL, NULL, NULL, NULL, '3', 'watching', 23455, 12, NULL),
(17, '3', NULL, NULL, NULL, NULL, '3', 'watching', 43467, 12, NULL),
(25, NULL, NULL, 'disney plus', NULL, 'En versiones anteriores de Access, hemos usado el tipo de datos Memo para almacenar grandes cantidades de texto y escriba los datos de texto para almacenar cadenas de más corto (hasta 255 caracteres). En Access 2013 y 2016 de Access, estos dos tipos de da', NULL, 'wished', 35624, 1, NULL),
(26, '2', NULL, NULL, NULL, NULL, '2', 'watching', 35624, 12, NULL),
(28, '5', NULL, NULL, NULL, NULL, '5', 'watching', 23455, 1, NULL),
(32, NULL, 'Normalita, para entretener', NULL, '3', NULL, NULL, 'finished', 43234, 10, '2021-03-15'),
(34, '34', 'No me ha gustado porque es muy lenta', 'Disney Plus', '2', 'Es una serie muy premiada', '2', 'finished', 46692, 10, '2021-03-24'),
(38, NULL, 'Decente, aunque hay capítulos que se hacen un poco largos', NULL, '3', NULL, NULL, 'finished', 29560, 10, '2021-03-17'),
(44, NULL, 'Es una gran serie, con grandes actores. Las novelas están fielmente reflejadas en cada uno de los capítulos', NULL, '5', NULL, NULL, 'finished', 22410, 10, '2021-03-17'),
(45, '4', NULL, 'Netflix', NULL, 'Me encantan los actores principales', '1', 'watching', 35624, 10, '2021-05-19'),
(52, '1', NULL, 'Netflix', NULL, 'Por la historia', '3', 'watching', 34912, 10, '2021-04-30'),
(53, '2', 'Muy espectacular', NULL, '5', NULL, '2', 'finished', 23455, 10, '2021-03-24'),
(54, NULL, 'Es una gran serie', NULL, '3', NULL, NULL, 'finished', 31452, 10, '2021-03-24'),
(55, NULL, NULL, 'Netflix', NULL, 'Me la han recomendado', NULL, 'wished', 35624, 20, '2021-04-21'),
(58, NULL, NULL, 'Netflix', NULL, 'Me han recomendado esta serie porque es muy dinámica. Además, tiene bastantes golpes de humor, y un poquito de ciencia.', NULL, 'wished', 2825, 10, '2021-05-03'),
(59, NULL, 'Es una buena serie', NULL, '3', NULL, NULL, 'finished', 33514, 10, '2021-05-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt0vlri7w038vwbxoj4b26919m` (`fk_user`);

--
-- Indices de la tabla `tvshows`
--
ALTER TABLE `tvshows`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_tv_shows`
--
ALTER TABLE `user_tv_shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3qgb5wbtef5tipq9hki2jiy1f` (`fk_tvshow`),
  ADD KEY `FK23prcq9e6kv4nm7gux4wt4ooi` (`fk_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user_tv_shows`
--
ALTER TABLE `user_tv_shows`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `opinions`
--
ALTER TABLE `opinions`
  ADD CONSTRAINT `FKt0vlri7w038vwbxoj4b26919m` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_tv_shows`
--
ALTER TABLE `user_tv_shows`
  ADD CONSTRAINT `FK23prcq9e6kv4nm7gux4wt4ooi` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK3qgb5wbtef5tipq9hki2jiy1f` FOREIGN KEY (`fk_tvshow`) REFERENCES `tvshows` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
