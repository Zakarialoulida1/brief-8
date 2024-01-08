
--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `équipe_ID` int(11) NOT NULL,
  `Nom_Équipe` varchar(200) DEFAULT NULL,
  `Date_de_Création` date DEFAULT NULL,
  `project_ID` int(11) DEFAULT NULL,
  `scrummuster_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`équipe_ID`, `Nom_Équipe`, `Date_de_Création`, `project_ID`, `scrummuster_id`) VALUES
(37, 'nightcrawlers14', '2023-12-26', 4, 11),
(38, 'team44', '2024-01-01', 4, 11),
(39, 'nightcrawlers', '2024-01-01', 4, 16),
(40, 'team1', '2024-01-03', 4, 21);

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `project_ID` int(11) NOT NULL,
  `Nom_project` varchar(200) DEFAULT NULL,
  `descrip` varchar(3000) DEFAULT NULL,
  `Date_de_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`project_ID`, `Nom_project`, `descrip`, `Date_de_debut`, `date_fin`) VALUES
(4, 'brief-8', 'ejfndgbfrfrfff', '2023-12-18', '2023-12-19'),
(6, 'brief-5', 'ddddddddd', '2023-12-13', '2023-12-29'),
(7, 'brief-61', 'gfvv yfcvhbbhbb hbbhhbhn', '2023-12-20', '2023-12-28'),
(8, 'brief-7', 'ddddddddddd  dddddddddddddddddd', '2024-01-01', '2024-01-02');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `Membre_ID` int(11) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `nom` varchar(200) DEFAULT NULL,
  `prénom` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `motdepasse` varchar(255) DEFAULT NULL,
  `téléphone` int(11) DEFAULT NULL,
  `roleuser` varchar(255) DEFAULT NULL,
  `équipe_ID` int(11) DEFAULT NULL,
  `project_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`Membre_ID`, `image`, `nom`, `prénom`, `email`, `motdepasse`, `téléphone`, `roleuser`, `équipe_ID`, `project_ID`) VALUES
(3, 'souf.jpg', 'rhoumri', 'zouheir', 'zh@gmail.com', '$2y$10$qT8eWKPgo5oaPrN.qcTWqupt./qCzDsEPPAeuU47bttKDCudSVeNm', 645689545, 'PO', NULL, NULL),
(9, 'toto.jpg', 'tfdrfe', 'toto', 'toto.way13@gmail.com', '$2y$10$qT8eWKPgo5oaPrN.qcTWqupt./qCzDsEPPAeuU47bttKDCudSVeNm', 652967676, 'scrummuster', NULL, NULL),
(10, 'imad.jpg', 'ooooooo', 'zazhjgzege', 'oooo92@gmail.com', '$2y$10$hV3Xq4YWbrZsgyWrlSol/O0/qlUzIgvFlSD6S.hA65ls4noosqUgq', 645689825, 'scrummuster', NULL, NULL),
(11, 'Designimg.png', 'ghjh', 'redfss', 'zakarialou@gmail.com', '$2y$10$WQcz0/DmrYA8uIxeJddMXOPiyxijoRQVV6HH00wVL2rT2bf/bsXly', 655510544, 'scrummuster', NULL, 4),
(15, 'abdellah.jpg', 'zzzzzzzz', 'zzzzzzzz', 'zzzzaaaaaa@gmailcom', '$2y$10$SVJbBbyXvRGVO2Rj32htwebY1pcEb.gYtu0caOZn1I7usF22WvV7W', 654879745, 'Choose a rol', NULL, NULL),
(16, 'daali.jpg', 'tfdrfe', 'zakaria', 'lllllllll@gmail.com', '$2y$10$.c3rUzSeeqQ0/O3HtUQUOOAsKPfiJM2dvK9xz.wWiFHdIRWSraNni', 645689825, 'scrummuster', NULL, 4),
(17, 'med.jpg', 'fff', 'med', 'med92@gmail.com', '$2y$10$USYo8gSbqePB1btNXfMY6eQZwfaZbTLn834zZ1GRoC8Q8kfaqUt5O', 645689825, 'user', 37, NULL),
(18, 'med.jpg', 'ddddd', 'edddddddd', 'zakariadd@gmail.com', '$2y$10$wMxqhlfJ1NN32lpembg63.CMXk3icUKjroTdPJ0Fyt9BzJ4pQhg22', 654879745, 'user', NULL, NULL),
(19, 'abdellah.jpg', 'abdellah', 'abdellah', 'abdellah@gmail.com', '$2y$10$Ha484C9shfZ1BZf1H8FkKejH40NWYfmpQP.7elSttOFQQIUzbq0Xm', 652967676, 'user', 40, 4),
(20, 'Designimg.png', 'aaaaaaa', 'aaaaaaaaa', 'aaaaaaaa@gmail.com', '$2y$10$QNRjRsGn5KJol67KPmi7.eMsHkAxSJOQBibj6cWtnNfEf84vN5wxC', 655554544, 'user', 38, 4),
(21, 'zak.jpg', 'bbbbbbb', 'bbbbbbb', 'bbbbbbb2@gmail.com', '$2y$10$kIJDZIlJBzoQMKkI/rIF8OUNhLEvRa71se/SSQePJJ352.czVajLO', 645689825, 'scrummuster', 38, 4),
(22, 'med.jpg', 'med', 'med', 'zakaria2@gmail.com', '$2y$10$s40idAPWS4ManNiB2/GKcu6x3RcbW9sDfyUNVbLNKNgQ3pceqNg.q', 4512514, 'user', 39, 4),
(23, 'toto.jpg', 'toto', 'toto', 'tooto92@gmail.com', '$2y$10$wea0Lg5ExEdabpy7Udgn7O.o9SYTJrkHjYXf1d.KlSDDDQxQ6iCw6', 645689825, 'user', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`équipe_ID`),
  ADD KEY `project_ID` (`project_ID`),
  ADD KEY `scrummuster_id_frk` (`scrummuster_id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Membre_ID`,`email`),
  ADD KEY `équipe_ID` (`équipe_ID`),
  ADD KEY `fk_project` (`project_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `équipe_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `Membre_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD CONSTRAINT `project_IDcontrainte` FOREIGN KEY (`project_ID`) REFERENCES `projects` (`project_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `scrummuster_id_frk` FOREIGN KEY (`scrummuster_id`) REFERENCES `users` (`Membre_ID`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `nouvelle_contrainte` FOREIGN KEY (`project_ID`) REFERENCES `projects` (`project_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`équipe_ID`) REFERENCES `equipes` (`équipe_ID`) ON DELETE SET NULL;
COMMIT;

