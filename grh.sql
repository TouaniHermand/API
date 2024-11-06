-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 25 sep. 2024 à 12:19
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `grh`
--

-- --------------------------------------------------------

--
-- Structure de la table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, 'database/migrations/1718917229395_departements', 1, '2024-07-08 12:09:33'),
(2, 'database/migrations/1718918598866_employes', 1, '2024-07-08 12:09:35'),
(3, 'database/migrations/1718989822947_presences', 1, '2024-07-08 12:09:35'),
(4, 'database/migrations/1719359393075_candidats', 1, '2024-07-08 12:09:35'),
(5, 'database/migrations/1720386884401_events', 1, '2024-07-08 12:09:36');

-- --------------------------------------------------------

--
-- Structure de la table `adonis_schema_versions`
--

CREATE TABLE `adonis_schema_versions` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adonis_schema_versions`
--

INSERT INTO `adonis_schema_versions` (`version`) VALUES
(2);

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(80) NOT NULL,
  `prenom` varchar(80) NOT NULL,
  `date_naissance` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `experience_1` text NOT NULL,
  `experience_2` text DEFAULT NULL,
  `experience_3` text DEFAULT NULL,
  `diplomes` enum('Baccalaureat','BTS','Licence','Master') NOT NULL,
  `domaine` enum('communication','comptabilite','informatique','ressources_humaines') NOT NULL,
  `lettre_motivation` text NOT NULL,
  `annees_experience` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` enum('Expectation','Reject','Validate') NOT NULL DEFAULT 'Expectation',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`id`, `nom`, `prenom`, `date_naissance`, `email`, `experience_1`, `experience_2`, `experience_3`, `diplomes`, `domaine`, `lettre_motivation`, `annees_experience`, `thumbnail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Touani', 'Willfried', '2003-03-12', 'willfriedtouani@gmail.com', 'Stagiaire a Faroty', NULL, NULL, 'Licence', 'informatique', 'Je suis particulièrement attiré(e) par le poste proposé car [expliquez pourquoi vous êtes intéressé par ce poste et cette entreprise en particulier : les valeurs de l\'entreprise, ses projets, son secteur d\'activité, etc.]. De plus, ma capacité à [mentionnez des compétences ou qualités spécifiques, comme travailler en équipe, gérer des projets, résoudre des problèmes, etc.] serait un atout majeur pour FAROTY.', 1, 'Touaniwillfriedtouani@gmail.com.pdf', 'Validate', '2024-07-08 15:51:51', '2024-07-08 15:51:51'),
(2, 'Djoumgoue', 'Ariane', '1993-06-02', 'Djoumgoue@gmail.com', 'du2ebyuwb', NULL, NULL, 'Master', 'communication', 'dfi3bicdfbi3bfibi', 8, 'DjoumgoueDjoumgoue@gmail.com.pdf', 'Expectation', '2024-07-08 15:02:49', '2024-07-08 15:02:49'),
(3, 'TSASSE', 'Hanniel', '2002-05-08', 'tatsabonghanniel@gmail.com', 'gfyufg', NULL, NULL, 'Licence', 'informatique', 'csdygywegcwgvcfw', 10, 'TSASSEtatsabonghanniel@gmail.com.pdf', 'Validate', '2024-08-13 16:00:18', '2024-08-13 16:00:18'),
(4, 'Djoumgoue', 'Ariane', '1996-07-27', 'ariane@gmail.com', 'J\'ai eu a travailler dans une entreprise nommee stand up dans le departement de la communication', NULL, NULL, 'Master', 'communication', 'j\'espere que ma demande sera prise en compte', 2, 'Djoumgoueariane@gmail.com.pdf', 'Expectation', '2024-07-19 10:23:51', '2024-07-19 10:23:51'),
(5, 'Foulla', 'salame', '1997-05-12', 'foulla@gmail.com', 'j\'ai eu a  realiser des applications tels que: la gestion des stocks, un gestionnaire de tache', NULL, NULL, 'Licence', 'informatique', 'j\'espere que ma candidature sera retenue', 3, 'Foullafoulla@gmail.com.pdf', 'Validate', '2024-07-30 10:15:11', '2024-07-30 10:15:11'),
(6, 'salam', 'salam', '2001-09-09', 'salam@gmail.com', 'cdwiebdwbvduvwudfvuw', NULL, NULL, 'BTS', 'comptabilite', 'djhxqdhqb hwe', 1, 'salamsalam@gmail.com.pdf', 'Validate', '2024-07-19 19:49:59', '2024-07-19 19:49:59');

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'informatique', '2024-07-08 14:41:38', '0000-00-00 00:00:00'),
(2, 'Comptabilite', '2024-07-08 15:39:04', '2024-07-08 15:39:04'),
(4, 'Communication', '2024-07-19 10:02:46', '2024-07-19 10:02:46'),
(5, 'Ressource Humaines', '2024-07-19 10:02:52', '2024-07-19 10:02:52'),
(6, 'Logistique', '2024-07-24 17:52:12', '2024-07-24 17:52:12'),
(7, 'cflbifc43g5f5', '2024-07-30 10:11:31', '2024-07-30 10:11:31');

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `departement_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `nom`, `prenom`, `email`, `contact`, `password`, `role`, `departement_id`, `created_at`, `updated_at`) VALUES
(3, 'TSASSE', 'Hanniel', 'tatsabonghanniel@gmail.com', '654491597', '$scrypt$n=16384,r=8,p=1$aw8cBXEGdX8ydSXTitMlZA$bjNU8I6MzXS8pVAwYdmruGSGgI68MoarlwEMgwwUlNQmuvl6Bj8+GHt63AhmN7cjGT/NC+TDds69/bCOQ6VEow', 'admin', 2, '2024-07-08 15:40:21', '2024-07-08 15:40:21'),
(4, 'ngandeu', 'somdeu', 'somdeu@gmail.com', '691454161', '$scrypt$n=16384,r=8,p=1$bXSNT3n+zV+m0tfVtmwq9g$FjXnNCY+S4qJl8xYO8U7hbfVtMNz6bBHSvdW/YJUWHtupryvMlzWqN7lkpHO6dSK8dY/KiQ06cbVqMl4w2vdjA', 'user', 2, '2024-07-08 15:41:42', '2024-07-08 15:41:42'),
(6, 'Roosevelt', 'Kamou', 'kamou@gmail.com', '676478456', '$scrypt$n=16384,r=8,p=1$YaSZO7e6mVpnTmO0Kfu8DQ$cX7ZjZCz+pgxbiA4MQmUnnUikwa/k8aj6gMeLeh72nOdvG3A4mkpuIX5Ul29yaDImwX3K25HuckQOHSANhkoTw', 'user', 2, '2024-07-19 10:03:38', '2024-07-19 10:03:38'),
(7, 'Steve', 'Kameni', 'kameni@gmail.com', '676538172', '$scrypt$n=16384,r=8,p=1$dbzPiw6aRtv1fVIIKrXwwA$Cia7U35lvadKUjNepLVIgeA6I7jQGxIrUvOugNXW0GTY34NbYR2eRYDbDcDuFBoS7KE+nDpB2uQtiz+9YaZfMg', 'user', 5, '2024-07-19 10:05:21', '2024-07-19 10:05:21'),
(8, 'Guylaine', 'Tchomeni', 'tchomeni@gmail.com', '675378294', '$scrypt$n=16384,r=8,p=1$FqOgh5uECwJ2Mtnoiv5zXg$uyU02wXvZcAjgJW645wRMVGjM7h8CJsfniGxwGTPxwMofGMFWYlG6XE2MpnoxWSTVLKa+wV7I723PAMu5UQizw', 'user', 2, '2024-07-19 10:08:20', '2024-07-19 10:08:20'),
(9, 'Willfried', 'Touani', 'willfried@gmail.com', '691454161', '$scrypt$n=16384,r=8,p=1$4om52hh2S1N75gkhkrkS7A$xhqZeCugBCYdlhTooCw2XBDw5v40GiCWdLj+hDpvlmcwtmyQlJNFbnF5WMM3cZWHw0WllZgScEUujj40YbrJQw', 'admin', 1, '2024-07-19 10:10:23', '2024-07-19 10:10:23'),
(10, 'Samira', 'Fokam', 'fokam@gmail.com', '676353475', '$scrypt$n=16384,r=8,p=1$mSSNgLqjnuemWj2tgwipYA$ZeycCTvljfRMb6Tv1pIUL6jPubuUsFL7oQC+Gqve834SgQq3N4BfQqyjNLoZpEFUiEwE+F5nmaT/1fsRVUXRxA', 'user', 4, '2024-07-19 10:11:32', '2024-07-19 10:11:32'),
(11, 'Fally', 'Donfack', 'donfack@gmail.com', '696353475', '$scrypt$n=16384,r=8,p=1$JOJaXhYDe7HnRKJUSYu5Ow$FUKwGa4o4HBei31yNMkDBs2oE+kDTkjCsd3KgLYfWBovJmPdRWW+OX4pD1h8wVqh9i9QEKEsTN/G/SC+POX7SQ', 'user', 4, '2024-07-19 10:12:19', '2024-07-19 10:12:19'),
(12, 'salame', 'salame', 'salmane@gmail.com', '675459182', '$scrypt$n=16384,r=8,p=1$Bj57P7mtR1ZVi836/zylKQ$igsuDy7wSDbcJV8Vg+hLMQZTv2Ixqo82f2/H00xfZSazA/CjuDFHncH/tZDLkPcstN1V7xu/qUjcuUIyHg9cbw', 'user', 5, '2024-07-19 10:13:26', '2024-07-19 10:13:26');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_naissance` varchar(255) NOT NULL,
  `heure` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `date_naissance`, `heure`, `created_at`, `updated_at`) VALUES
(1, '2024-08-10', '12:00', '2024-07-08 12:29:39', '2024-07-08 12:29:39');

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

CREATE TABLE `presences` (
  `id` int(10) UNSIGNED NOT NULL,
  `heure_arrivee` varchar(255) NOT NULL,
  `heure_depart` varchar(255) NOT NULL,
  `mois` varchar(255) NOT NULL,
  `jours_present` int(11) DEFAULT NULL,
  `employe_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `presences`
--

INSERT INTO `presences` (`id`, `heure_arrivee`, `heure_depart`, `mois`, `jours_present`, `employe_id`, `created_at`, `updated_at`) VALUES
(1, '16:47', '16:48', 'Juillet', 8, 4, '2024-07-08 15:48:15', '2024-07-08 15:48:15'),
(2, '11:15', '11:15', 'Juillet', 19, 4, '2024-07-19 10:15:13', '2024-07-19 10:15:13'),
(3, '11:15', '11:15', 'Juillet', 19, 6, '2024-07-19 10:15:54', '2024-07-19 10:15:54'),
(4, '11:16', '11:16', 'Juillet', 19, 7, '2024-07-19 10:16:38', '2024-07-19 10:16:38'),
(5, '11:17', '11:17', 'Juillet', 19, 8, '2024-07-19 10:17:31', '2024-07-19 10:17:31'),
(6, '11:19', '11:19', 'Juillet', 19, 12, '2024-07-19 10:19:16', '2024-07-19 10:19:16'),
(7, '11:20', '11:20', 'Juillet', 19, 12, '2024-07-19 10:20:30', '2024-07-19 10:20:30'),
(8, '20:9', '20:9', 'Juillet', 19, 9, '2024-07-19 19:09:32', '2024-07-19 19:09:32'),
(9, '11:8', '11:8', 'Juillet', 30, 9, '2024-07-30 10:08:43', '2024-07-30 10:08:43'),
(10, '11:9', '11:9', 'Juillet', 30, 9, '2024-07-30 10:09:14', '2024-07-30 10:09:14'),
(11, '17:2', '17:2', 'Août', 13, 9, '2024-08-13 16:02:17', '2024-08-13 16:02:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `candidats_email_unique` (`email`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departements_nom_unique` (`nom`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employes_email_unique` (`email`),
  ADD KEY `employes_departement_id_foreign` (`departement_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presences_employe_id_foreign` (`employe_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `candidats`
--
ALTER TABLE `candidats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `departements`
--
ALTER TABLE `departements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `presences`
--
ALTER TABLE `presences`
  ADD CONSTRAINT `presences_employe_id_foreign` FOREIGN KEY (`employe_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
