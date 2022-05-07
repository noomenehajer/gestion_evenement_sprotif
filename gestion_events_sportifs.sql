-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 06 mai 2022 à 23:29
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_events_sportifs`
--

-- --------------------------------------------------------

--
-- Structure de la table `athletes`
--

CREATE TABLE `athletes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` enum('HOMME','FEMME') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `equipe_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `athletes`
--

INSERT INTO `athletes` (`id`, `nom`, `prenom`, `sexe`, `photo`, `score`, `categorie_id`, `equipe_id`, `created_at`, `updated_at`) VALUES
(1, 'Teresa', 'Langworth', 'HOMME', 'https://via.placeholder.com/360x360.png/00ccdd?text=1+atque', 0, 3, 1, '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(2, 'Jensen', 'Bechtelar', 'HOMME', 'https://via.placeholder.com/360x360.png/00ccbb?text=1+ipsa', 0, 3, 1, '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(3, 'Xzavier', 'Leannon', 'FEMME', 'https://via.placeholder.com/360x360.png/001133?text=1+voluptate', 0, 4, 1, '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(4, 'Janice', 'Weimann', 'FEMME', 'https://via.placeholder.com/360x360.png/00ffdd?text=1+itaque', 0, 4, 1, '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(5, 'Willis', 'Thiel', 'HOMME', 'https://via.placeholder.com/360x360.png/008899?text=1+sed', 0, 5, 1, '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(6, 'Braden', 'Schuster', 'HOMME', 'https://via.placeholder.com/360x360.png/00eeaa?text=1+sed', 0, 5, 1, '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(7, 'Elroy', 'Rogahn', 'FEMME', 'https://via.placeholder.com/360x360.png/00ffcc?text=1+possimus', 0, 6, 1, '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(8, 'Jaqueline', 'Greenholt', 'FEMME', 'https://via.placeholder.com/360x360.png/0077dd?text=1+dolorum', 0, 6, 1, '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(9, 'Holden', 'Bartell', 'HOMME', 'https://via.placeholder.com/360x360.png/000088?text=1+earum', 0, 7, 1, '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(10, 'Frederick', 'Maggio', 'HOMME', 'https://via.placeholder.com/360x360.png/0066dd?text=1+sit', 0, 7, 1, '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(11, 'Leora', 'Koss', 'FEMME', 'https://via.placeholder.com/360x360.png/007799?text=1+qui', 0, 8, 1, '2022-05-06 19:27:23', '2022-05-06 19:27:23'),
(12, 'Kelsie', 'Olson', 'FEMME', 'https://via.placeholder.com/360x360.png/007722?text=1+quasi', 0, 8, 1, '2022-05-06 19:27:25', '2022-05-06 19:27:25');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` enum('HOMME','FEMME') COLLATE utf8mb4_unicode_ci NOT NULL,
  `poids` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evenement_sportif_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `sexe`, `poids`, `evenement_sportif_id`, `created_at`, `updated_at`) VALUES
(1, 'Minim', 'HOMME', '-40 KG', 1, '2022-05-06 19:24:22', '2022-05-06 19:24:22'),
(2, 'Minim', 'HOMME', '-40 KG', 2, '2022-05-06 19:25:50', '2022-05-06 19:25:50'),
(3, 'Minim', 'HOMME', '-40 KG', 3, '2022-05-06 19:27:18', '2022-05-06 19:27:18'),
(4, 'Cadet', 'FEMME', '-50 KG', 3, '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(5, 'Senior', 'HOMME', '+50 KG', 3, '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(6, 'Minim', 'FEMME', '-40 KG', 4, '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(7, 'Cadet', 'HOMME', '-50 KG', 4, '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(8, 'Senior', 'FEMME', '+50 KG', 4, '2022-05-06 19:27:22', '2022-05-06 19:27:22');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateAjout` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `body`, `dateAjout`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'reprehenderit vero ea', '2022-05-06 19:27:19', 1, 'App\\Models\\Athlete', '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(2, 'voluptates aut commodi', '2022-05-06 19:27:19', 1, 'App\\Models\\Athlete', '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(3, 'voluptatem est autem', '2022-05-06 19:27:19', 2, 'App\\Models\\Athlete', '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(4, 'dolorem veniam iure', '2022-05-06 19:27:19', 2, 'App\\Models\\Athlete', '2022-05-06 19:27:19', '2022-05-06 19:27:19'),
(5, 'itaque dolor ab', '2022-05-06 19:27:20', 3, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(6, 'laudantium autem consequatur', '2022-05-06 19:27:20', 3, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(7, 'doloribus dignissimos quam', '2022-05-06 19:27:20', 4, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(8, 'atque et doloribus', '2022-05-06 19:27:20', 4, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(9, 'ducimus quisquam tenetur', '2022-05-06 19:27:20', 5, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(10, 'iure perspiciatis est', '2022-05-06 19:27:20', 5, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(11, 'beatae libero sunt', '2022-05-06 19:27:20', 6, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(12, 'quia perferendis voluptate', '2022-05-06 19:27:20', 6, 'App\\Models\\Athlete', '2022-05-06 19:27:20', '2022-05-06 19:27:20'),
(13, 'esse ut eum', '2022-05-06 19:27:21', 3, 'App\\Models\\EvenementSportif', '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(14, 'molestias tempore molestiae', '2022-05-06 19:27:21', 3, 'App\\Models\\EvenementSportif', '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(15, 'nihil numquam nesciunt', '2022-05-06 19:27:21', 7, 'App\\Models\\Athlete', '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(16, 'dolor labore libero', '2022-05-06 19:27:21', 7, 'App\\Models\\Athlete', '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(17, 'aperiam et harum', '2022-05-06 19:27:21', 8, 'App\\Models\\Athlete', '2022-05-06 19:27:21', '2022-05-06 19:27:21'),
(18, 'nesciunt magni molestiae', '2022-05-06 19:27:21', 8, 'App\\Models\\Athlete', '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(19, 'et laboriosam dolores', '2022-05-06 19:27:22', 9, 'App\\Models\\Athlete', '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(20, 'quis omnis blanditiis', '2022-05-06 19:27:22', 9, 'App\\Models\\Athlete', '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(21, 'magnam architecto praesentium', '2022-05-06 19:27:22', 10, 'App\\Models\\Athlete', '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(22, 'quae esse sint', '2022-05-06 19:27:22', 10, 'App\\Models\\Athlete', '2022-05-06 19:27:22', '2022-05-06 19:27:22'),
(23, 'praesentium illum temporibus', '2022-05-06 19:27:25', 11, 'App\\Models\\Athlete', '2022-05-06 19:27:25', '2022-05-06 19:27:25'),
(24, 'est deleniti quia', '2022-05-06 19:27:25', 11, 'App\\Models\\Athlete', '2022-05-06 19:27:25', '2022-05-06 19:27:25'),
(25, 'accusamus unde ratione', '2022-05-06 19:27:26', 12, 'App\\Models\\Athlete', '2022-05-06 19:27:26', '2022-05-06 19:27:26'),
(26, 'et vel ut', '2022-05-06 19:27:26', 12, 'App\\Models\\Athlete', '2022-05-06 19:27:26', '2022-05-06 19:27:26'),
(27, 'maiores sed libero', '2022-05-06 19:27:27', 4, 'App\\Models\\EvenementSportif', '2022-05-06 19:27:27', '2022-05-06 19:27:27'),
(28, 'perspiciatis occaecati vel', '2022-05-06 19:27:27', 4, 'App\\Models\\EvenementSportif', '2022-05-06 19:27:27', '2022-05-06 19:27:27');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id`, `nom`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Nitzsche Inc', 'https://via.placeholder.com/360x360.png/009977?text=1+rerum', '2022-05-06 19:27:19', '2022-05-06 19:27:19');

-- --------------------------------------------------------

--
-- Structure de la table `evenement_sportifs`
--

CREATE TABLE `evenement_sportifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenement_sportifs`
--

INSERT INTO `evenement_sportifs` (`id`, `nom`, `description`, `lieu`, `poster`, `dateDebut`, `dateFin`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Accusamus dolor omnis natus rem.', 'nobis commodi', 'Wisconsin', 'https://via.placeholder.com/360x360.png/004455?text=1+et', '2000-03-01', '1992-03-07', 1, '2022-05-06 19:24:22', '2022-05-06 19:24:22'),
(2, 'Sint qui asperiores cupiditate ipsum animi quibusdam dignissimos distinctio.', 'excepturi assumenda', 'Alaska', 'https://via.placeholder.com/360x360.png/00aabb?text=1+non', '1985-06-13', '1998-10-30', 2, '2022-05-06 19:25:49', '2022-05-06 19:25:49'),
(3, 'Ut non aspernatur rerum dolores doloremque enim enim.', 'fuga eos', 'South Dakota', 'https://via.placeholder.com/360x360.png/00cc11?text=1+exercitationem', '2011-12-29', '1990-09-21', 3, '2022-05-06 19:27:18', '2022-05-06 19:27:18'),
(4, 'Repellendus iste dolores ut dignissimos omnis qui expedita.', 'neque cum', 'Idaho', 'https://via.placeholder.com/360x360.png/00dd11?text=1+sed', '2004-06-22', '1995-11-05', 4, '2022-05-06 19:27:21', '2022-05-06 19:27:21');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2022_04_23_084710_create_evenement_sportifs_table', 1),
(33, '2022_04_23_084857_create_categories_table', 1),
(34, '2022_04_23_084920_create_equipes_table', 1),
(35, '2022_04_23_084942_create_athletes_table', 1),
(36, '2022_04_23_085002_create_commentaires_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kraig Smitham', 'jrunte@example.org', '2022-05-06 19:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZREprzPJh5', '2022-05-06 19:24:22', '2022-05-06 19:24:22'),
(2, 'Dr. Webster Williamson', 'casimir.will@example.com', '2022-05-06 19:25:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aIGtOphtEa', '2022-05-06 19:25:49', '2022-05-06 19:25:49'),
(3, 'Amelie Hills III', 'rowland49@example.com', '2022-05-06 19:27:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zBJkboXL8B', '2022-05-06 19:27:18', '2022-05-06 19:27:18'),
(4, 'Zachary Maggio', 'fhirthe@example.net', '2022-05-06 19:27:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o6nlgqvRZj', '2022-05-06 19:27:21', '2022-05-06 19:27:21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `athletes`
--
ALTER TABLE `athletes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `athletes_categorie_id_foreign` (`categorie_id`),
  ADD KEY `athletes_equipe_id_foreign` (`equipe_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_evenement_sportif_id_foreign` (`evenement_sportif_id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenement_sportifs`
--
ALTER TABLE `evenement_sportifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evenement_sportifs_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `athletes`
--
ALTER TABLE `athletes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `evenement_sportifs`
--
ALTER TABLE `evenement_sportifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `athletes`
--
ALTER TABLE `athletes`
  ADD CONSTRAINT `athletes_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `athletes_equipe_id_foreign` FOREIGN KEY (`equipe_id`) REFERENCES `equipes` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_evenement_sportif_id_foreign` FOREIGN KEY (`evenement_sportif_id`) REFERENCES `evenement_sportifs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `evenement_sportifs`
--
ALTER TABLE `evenement_sportifs`
  ADD CONSTRAINT `evenement_sportifs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
