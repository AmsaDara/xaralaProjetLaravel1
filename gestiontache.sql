-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 01 sep. 2023 à 23:12
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestiontache`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noSerie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esDisponible` tinyint(1) NOT NULL DEFAULT 1,
  `type_article_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `noSerie`, `imageUrl`, `esDisponible`, `type_article_id`, `created_at`, `updated_at`) VALUES
(1, 'Stoltenberg', 'NUXRFA0EI5H', 'https://via.placeholder.com/640x480.png/0011cc?text=deserunt', 1, 3, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(2, 'Friesen', 'SJZKFJWV', 'https://via.placeholder.com/640x480.png/00cc00?text=aspernatur', 1, 2, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(3, 'Toy', 'YZHJYRBW', 'https://via.placeholder.com/640x480.png/0055bb?text=debitis', 1, 4, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(4, 'Howell', 'SQRGWH0H', 'https://via.placeholder.com/640x480.png/0011aa?text=similique', 0, 4, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(5, 'Batz', 'RMKVCY9DID4', 'https://via.placeholder.com/640x480.png/007755?text=et', 0, 1, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(6, 'Doyle', 'CHVAYLSP7Q8', 'https://via.placeholder.com/640x480.png/00cc22?text=sequi', 0, 1, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(7, 'Smith', 'GGKJOGM1XPZ', 'https://via.placeholder.com/640x480.png/005544?text=eos', 0, 4, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(8, 'Beier', 'BITHEPN2', 'https://via.placeholder.com/640x480.png/002255?text=autem', 0, 2, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(9, 'Lueilwitz', 'FKFWORE98WZ', 'https://via.placeholder.com/640x480.png/00bb66?text=illum', 0, 4, '2023-08-31 18:01:05', '2023-08-31 18:01:05'),
(10, 'Beer', 'MIPAFSTX11R', 'https://via.placeholder.com/640x480.png/0022aa?text=exercitationem', 1, 4, '2023-08-31 18:01:05', '2023-08-31 18:01:05');

-- --------------------------------------------------------

--
-- Structure de la table `article_location`
--

CREATE TABLE `article_location` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `article_propriete`
--

CREATE TABLE `article_propriete` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `propriete_article_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` date NOT NULL,
  `lieuNaissance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieceIdentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroPieceIdentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `sexe`, `dateNaissance`, `lieuNaissance`, `nationalite`, `ville`, `pays`, `adresse`, `telephone1`, `telephone2`, `pieceIdentite`, `numeroPieceIdentite`, `created_at`, `updated_at`) VALUES
(1, 'Bogan', 'Jaylon', '0', '1999-10-24', 'Mauritius, Prohaskaport', 'Bermuda', 'Prohaskaport', 'Mauritius', '674 Metz Inlet\nSouth Baileetown, AL 66944', '+1-270-601-1534', '803-727-2663', '0', '4916715199020031', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(2, 'Dare', 'Stella', '1', '1982-02-11', 'Italy, South Kristy', 'Fiji', 'South Kristy', 'Italy', '6369 Hartmann Cliff Suite 134\nJoseland, NY 40241', '+1-463-297-6423', '434.908.3012', '2', '4532539881704', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(3, 'Goldner', 'Vivienne', '1', '1999-11-06', 'Lao People\'s Democratic Republic, South Melvinmouth', 'Lebanon', 'South Melvinmouth', 'Lao People\'s Democratic Republic', '5515 Schiller Radial\nPort Armando, AK 99891', '+19293021909', '+19795938968', '1', '2720180125169370', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(4, 'Harvey', 'Madelyn', '0', '1989-02-10', 'Chad, Ikeburgh', 'Cape Verde', 'Ikeburgh', 'Chad', '35308 Bogan Square\nSouth Leonoraton, IN 26126', '+1-929-609-3506', '702-347-7093', '1', '4556368626269261', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(5, 'Gutkowski', 'Tristin', '1', '1989-05-28', 'Niue, Schroederview', 'Micronesia', 'Schroederview', 'Niue', '8003 Eino Views Suite 370\nPfeffermouth, SD 28700-4890', '1-864-385-2332', '386.338.4076', '0', '4916521090315532', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(6, 'Kuphal', 'Malinda', '0', '1987-09-14', 'French Southern Territories, Mitchellfurt', 'Poland', 'Mitchellfurt', 'French Southern Territories', '856 Mayert Squares\nShyanneberg, IL 11718', '929.215.5342', '701.266.5855', '0', '6011031695938349', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(7, 'Halvorson', 'Vito', '1', '1999-07-11', 'Gabon, Caseyfurt', 'Guadeloupe', 'Caseyfurt', 'Gabon', '727 Nitzsche Crossing\nNew Darenstad, GA 11507-4535', '1-341-595-6831', '(260) 589-0763', '2', '2720239124797332', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(8, 'Morissette', 'Vida', '0', '1992-10-20', 'Pakistan, South Elvischester', 'Vietnam', 'South Elvischester', 'Pakistan', '9915 Thora Junctions Suite 135\nLebsackmouth, TX 79329', '808-464-0635', '(872) 228-0398', '0', '4485752349303307', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(9, 'Pfannerstill', 'Carolanne', '1', '1990-10-02', 'Guatemala, Strackefurt', 'Kiribati', 'Strackefurt', 'Guatemala', '1713 Zion Burgs Suite 538\nKayside, WV 14932-2806', '1-727-749-8598', '+1-203-431-4470', '2', '5221244072291830', '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(10, 'O\'Keefe', 'Sherman', '1', '1991-07-17', 'Costa Rica, Joannefurt', 'Guernsey', 'Joannefurt', 'Costa Rica', '5705 Moises Crescent Suite 916\nKuphalburgh, AR 10557', '272.242.8283', '580.961.7082', '0', '2358464329306486', '2023-08-31 18:01:06', '2023-08-31 18:01:06');

-- --------------------------------------------------------

--
-- Structure de la table `duree_locations`
--

CREATE TABLE `duree_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valeurEnHeure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `duree_locations`
--

INSERT INTO `duree_locations` (`id`, `libelle`, `valeurEnHeure`) VALUES
(1, 'Journée', 24),
(2, 'Demi-Journée', 12);

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
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `statut_location_id` bigint(20) UNSIGNED NOT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_21_144397_create_type_articles_table', 1),
(6, '2023_08_21_144400_create_articles_table', 1),
(7, '2023_08_21_144420_create_clients_table', 1),
(8, '2023_08_21_145204_create_propriete_articles_table', 1),
(9, '2023_08_21_145557_create_permissions_table', 1),
(10, '2023_08_21_145815_create_statut_locations_table', 1),
(11, '2023_08_21_145918_create_locations_table', 1),
(12, '2023_08_21_145920_create_paiements_table', 1),
(13, '2023_08_21_150333_create_roles_table', 1),
(14, '2023_08_21_151403_create_duree_locations_table', 1),
(15, '2023_08_21_151553_create_tarifications_table', 1),
(16, '2023_08_21_154011_create_article_location_table', 1),
(17, '2023_08_21_155420_create_user_role_table', 1),
(18, '2023_08_21_155449_create_user_permission_table', 1),
(19, '2023_08_21_155554_create_article_propriete_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montantPaye` double NOT NULL,
  `datePaiement` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `nom`) VALUES
(1, 'Ajouter un client'),
(2, 'Consulter un client'),
(3, 'Editer un client'),
(4, 'Ajouter une location'),
(5, 'Consulter une location'),
(6, 'Editer une location'),
(7, 'Ajouter un article'),
(8, 'Consulter un article'),
(9, 'Editer un article');

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
-- Structure de la table `propriete_articles`
--

CREATE TABLE `propriete_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esObligatoir` tinyint(1) NOT NULL DEFAULT 1,
  `type_article_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`) VALUES
(1, 'Superviseur'),
(2, 'Admin'),
(3, 'Manager'),
(4, 'Employe');

-- --------------------------------------------------------

--
-- Structure de la table `statut_locations`
--

CREATE TABLE `statut_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statut_locations`
--

INSERT INTO `statut_locations` (`id`, `nom`) VALUES
(1, 'En Attente'),
(2, 'En Cours'),
(3, 'Terminée');

-- --------------------------------------------------------

--
-- Structure de la table `tarifications`
--

CREATE TABLE `tarifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prix` double NOT NULL,
  `duree_location_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_articles`
--

CREATE TABLE `type_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_articles`
--

INSERT INTO `type_articles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Voiture', NULL, NULL),
(2, 'Immobilier', NULL, NULL),
(3, 'Appareils Electronique', NULL, NULL),
(4, 'Salle', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieceIdentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroPieceIdentite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `sexe`, `telephone1`, `telephone2`, `pieceIdentite`, `numeroPieceIdentite`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hettinger', 'Keira', '1', '4108559175', '469-638-9384', '1', '4532273719229264', 'iyost@example.org', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/002255?text=quia', NULL, '2023-08-31 18:01:06', '2023-09-01 19:59:48'),
(2, 'Eichmann', 'Waylon', '0', '5208870763', '931-971-0667', '2', '2720443103458060', 'thiel.bonnie@example.net', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/00eedd?text=consequatur', NULL, '2023-08-31 18:01:06', '2023-09-01 19:39:42'),
(3, 'Kiehn', 'Hector', '1', '17126283105', '+1-970-569-5952', 'CNI', '4024007112184', 'hane.effie@example.net', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/0088cc?text=distinctio', NULL, '2023-08-31 18:01:06', '2023-09-01 19:42:04'),
(4, 'Bahringer', 'Mariane', '0', '254.297.5972', '772-202-3936', '1', '4024007133383959', 'conner16@example.net', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/003344?text=assumenda', NULL, '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(5, 'White', 'Geoffrey', '0', '1-925-642-3726', '254.346.1682', '2', '4716845020015728', 'violet.sipes@example.org', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/004499?text=corporis', NULL, '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(7, 'Medhurst', 'Raven', '0', '18642356638', '+1-802-651-6335', 'PASSPORT', '4486892860658', 'streich.harmony@example.net', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/0077dd?text=quaerat', NULL, '2023-08-31 18:01:06', '2023-09-01 19:45:29'),
(8, 'McGlynn', 'Amelia', '0', '+1-773-925-9727', '986-327-8644', '1', '2677988058077367', 'alysson09@example.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/00ccdd?text=dolor', NULL, '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(9, 'Collier', 'Rosa', '1', '(828) 963-9415', '312-994-1701', '1', '375532602463266', 'pkoelpin@example.org', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/00ee55?text=explicabo', NULL, '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(10, 'Cronin', 'Velma', '0', '+1.657.237.5191', '562.958.0439', '1', '5489443842663115', 'rtowne@example.org', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/640x480.png/005544?text=dolor', NULL, '2023-08-31 18:01:06', '2023-08-31 18:01:06'),
(21, 'Sy', 'Papa', '1', '77792296', NULL, 'PASSPORT', '1313199500037', 'thiiba95@gail.com', NULL, 'password', NULL, NULL, '2023-09-01 19:52:52', '2023-09-01 20:55:14');

-- --------------------------------------------------------

--
-- Structure de la table `user_permission`
--

CREATE TABLE `user_permission` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 4, NULL, NULL),
(4, 4, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_type_article_id_foreign` (`type_article_id`);

--
-- Index pour la table `article_location`
--
ALTER TABLE `article_location`
  ADD KEY `article_location_article_id_foreign` (`article_id`),
  ADD KEY `article_location_location_id_foreign` (`location_id`);

--
-- Index pour la table `article_propriete`
--
ALTER TABLE `article_propriete`
  ADD KEY `article_propriete_article_id_foreign` (`article_id`),
  ADD KEY `article_propriete_propriete_article_id_foreign` (`propriete_article_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `duree_locations`
--
ALTER TABLE `duree_locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_client_id_foreign` (`client_id`),
  ADD KEY `locations_user_id_foreign` (`user_id`),
  ADD KEY `locations_statut_location_id_foreign` (`statut_location_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paiements_user_id_foreign` (`user_id`),
  ADD KEY `paiements_location_id_foreign` (`location_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `propriete_articles`
--
ALTER TABLE `propriete_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propriete_articles_type_article_id_foreign` (`type_article_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `statut_locations`
--
ALTER TABLE `statut_locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tarifications`
--
ALTER TABLE `tarifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tarifications_duree_location_id_foreign` (`duree_location_id`),
  ADD KEY `tarifications_article_id_foreign` (`article_id`);

--
-- Index pour la table `type_articles`
--
ALTER TABLE `type_articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_articles_nom_unique` (`nom`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `duree_locations`
--
ALTER TABLE `duree_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `propriete_articles`
--
ALTER TABLE `propriete_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `statut_locations`
--
ALTER TABLE `statut_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tarifications`
--
ALTER TABLE `tarifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_articles`
--
ALTER TABLE `type_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_type_article_id_foreign` FOREIGN KEY (`type_article_id`) REFERENCES `type_articles` (`id`);

--
-- Contraintes pour la table `article_location`
--
ALTER TABLE `article_location`
  ADD CONSTRAINT `article_location_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_location_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Contraintes pour la table `article_propriete`
--
ALTER TABLE `article_propriete`
  ADD CONSTRAINT `article_propriete_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_propriete_propriete_article_id_foreign` FOREIGN KEY (`propriete_article_id`) REFERENCES `propriete_articles` (`id`);

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `locations_statut_location_id_foreign` FOREIGN KEY (`statut_location_id`) REFERENCES `statut_locations` (`id`),
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `paiements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `propriete_articles`
--
ALTER TABLE `propriete_articles`
  ADD CONSTRAINT `propriete_articles_type_article_id_foreign` FOREIGN KEY (`type_article_id`) REFERENCES `type_articles` (`id`);

--
-- Contraintes pour la table `tarifications`
--
ALTER TABLE `tarifications`
  ADD CONSTRAINT `tarifications_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tarifications_duree_location_id_foreign` FOREIGN KEY (`duree_location_id`) REFERENCES `duree_locations` (`id`);

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
