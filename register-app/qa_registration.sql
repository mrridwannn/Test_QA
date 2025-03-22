-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2025 pada 19.02
-- Versi server: 11.7.2-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qa_registration`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth_day` int(11) DEFAULT NULL,
  `birth_month` int(11) DEFAULT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `birth_day`, `birth_month`, `birth_year`, `newsletter`) VALUES
(1, 'Yusi', 'Yustikasari', 'yusi123@gmail.com', '$2y$10$3j5wdqVr0T98adPeKDaSrOGAnxQNQWVfHexW0HES6n1i2jTxSccEK', 'Female', 1, 1, 2003, 1),
(2, 'Muhamad', 'Ridwan', 'ridwan12@gmail.com', '$2y$10$QbzGCQ8HAy3r/xj.HBgj5eaEs3Ak64bqAD6PaotQJwA9U7jsjXdpG', 'Male', 5, 7, 2000, 1),
(3, 'ab', 'cd', 'abcd@gmail.com', '$2y$10$oat.Zwhqq0b1vRVgFf1U4ezguzX18wmP5bRh/GWc6qbSr37n/M/jO', 'Male', 1, 1, 2000, 1),
(4, 'ridwan123', 'apriasnayh12', 'ridwan98@gmail.com', '$2y$10$qdwXolFDDnHiMq0Mhm3Ho.ZBv0dFQuHcumrxfvmt2Riz/s8d6x5Qu', 'Male', 6, 7, 2008, 1),
(5, 'fasfasf', 'sfasfasf', 'example@temp-mail.org', '$2y$10$NtqTWDkof88K9/h/k5.q5OJpL12UKZmSAPNZG.0Y1d0FUXGg3k4x2', 'Female', 1, 1, 2000, 1),
(6, 'Saepul', 'Rijal', 'saepul123@gmail.com', '$2y$10$ZAEQ53gkY5qqngjVs0FFb.lagCGURXV8y.uMnbl/ugzhnOMnIuecG', 'Male', 1, 1, 2000, 1),
(7, 'agung', 'nur', 'agungnur@gmail.com', '$2y$10$hMz6nPwCZt6r3oqpbO.ZvO4EEwmRqXphFGNwYL2lGI7O0/2RrSfHW', 'Male', 1, 1, 2000, 1),
(8, 'furqon', 'ada', 'furqon123@gmail.com', '$2y$10$6bVNv0RVIxPj5zG8HDjBt.cFAyuK/rQFoYpyhxuLjQusO7EvIOGVC', 'Male', 30, 9, 2005, 1),
(9, 'yyeryeryer', 'reyeryerye', 'rafiahma3d123@gmail.com', '$2y$10$0yGLzJ7oXNEvVmtGTLj.LeKDdmjkhycke7eow1EW/7DmcBaEnDIYO', 'Female', 1, 1, 2000, 1),
(10, 'Ridwan', 'QA', 'ridwanqa@example.com', '$2y$10$oVSbdZMZgG.Cais.umQI9.6ndzPeJFkdQQi2bLFu9cpNecLBdnReO', 'Male', 1, 1, 2000, 0),
(11, 'Ri', 'QA', 'test@example.com', '$2y$10$2/dEmKRtlaOMt/qV2Rytcuc.5tBET/JCP3b17AEJLKpFd0V5M5qmy', 'Male', 1, 1, 2000, 0),
(13, 'rio', 'dani', 'riodani12@gmail.com', '$2y$10$D0i7vBDlufKA.cmc37ty..tctjGP8ne5iQP3VT2PWg/heDCSbyfFi', 'Male', 1, 1, 2000, 1),
(14, 'Ridwan', 'QA', 'ridwanqa1@example.com', '$2y$10$tfM7H0NEDC.Pz1c50WH27Oa64yZjxkSJ0p/IJzhEAFzDFoz1GFCmu', 'Male', 1, 1, 2000, 0),
(15, 'Ridwan', 'QA', 'ridwanqa44@example.com', '$2y$10$wEaVke.7VliX.gfeIRg5Su2Mkjcm6rImktRmKrvpu9DkflwkVBLz.', 'Male', 1, 1, 2000, 0),
(16, 'Ridwan', 'QA', 'ridwanqa11@example.com', '$2y$10$5316uAdRlSAVgcpYZLhQRux3yISjNGlBYt4etq3oJViRD3vZjrSJu', 'Male', 1, 1, 2000, 0),
(17, 'Ridwan', 'QA', 'ridwanqa12@example.com', '$2y$10$hblUOc3nru.QszFZDQYRF.QwonVifBjPtwiPBZuXBWX0dOH.O.mcW', 'Male', 1, 1, 2000, 0),
(18, 'Ridwan', 'QA', 'ridwanqa13@example.com', '$2y$10$RtEy6h/zbaOPFXaeL/j82Op4am8bvKwyHFqYYGVpMONZLgqmunbwC', 'Male', 1, 1, 2000, 0),
(19, 'Ridwan', 'QA', 'ridwanqa14@example.com', '$2y$10$SHGIKXsbY.k5hWYHbFzsju9mjbxCzKo8a4L2P/Aa.bT0RjjHEd1Ki', 'Male', 1, 1, 2000, 0),
(20, 'Rida ', 'Yuna', 'ridwany@gmail.com', '$2y$10$NYTCJDkrqU1qFd1ZGaWSLewkXDfBlLp3CCFvDYp.UOOxZ8ruUsgf2', 'Female', 1, 1, 2000, 1),
(21, 'Ridwan', 'QA', 'ridwanqa15@example.com', '$2y$10$fi/ahj5hfHGt32lLtfdbL.Lanx0sBlVj8GlaP0jTDzEGv64s9K0ou', 'Male', 1, 1, 2000, 0),
(22, 'Ridwan', 'QA', 'ridwanqa16@example.com', '$2y$10$5qr3oUJ6dBYP1YnnQTxgWuYlbVLvEmD2yjLcaAJ7IrjbkXQ165gNm', 'Male', 1, 1, 2000, 0),
(23, 'kuyup', 'abs', 'kuyup@gmail.com', '$2y$10$5Dsj2uwXvIq7i/uDMDsi4uJSpYse4aNPqYG/GGK6Md5ULBzJQzDai', 'Female', 1, 1, 2000, 1),
(24, 'Ridwan', 'QA', 'ridwanqa17@example.com', '$2y$10$ydq9nYJAIvFACCdR9Rmmju8UhvMzJijJOAY1H7XNQ6sNPVFt2SKPG', 'Male', 1, 1, 2000, 0),
(25, 'ridwan', 'abc', 'abcridwan@gmail.com', '$2y$10$/AAazLvjvu7qJdaiwJSaWO/RXNwOT5DuXj2i4v46ici8htn7Nt5mG', 'Male', 1, 1, 2000, 1),
(26, 'Ridwan', 'QA', 'ridwanqa18@example.com', '$2y$10$nxys7gi0UZVARglSeibi0esze5Y8IluY6ABONMD7SxR8pkPRbTucm', 'Male', 1, 1, 2000, 0),
(27, 'Ridwan', 'QA', 'ridwanqa19@example.com', '$2y$10$wS8kwFIR36vCh1.Gm6s9.OLELjaOJ0fSJqztvCXHaZTtjIJzb8Nrq', 'Male', 1, 1, 2000, 0),
(29, 'Ridwan', 'QA', 'ridwanqa20@example.com', '$2y$10$fi2oxZBJmRY.6Uk6PrnoTunPyM6hwUKhrx1tzNcRmXmabOvLHQWfu', 'Male', 1, 1, 2000, 0),
(30, 'Ridwan', 'QA', 'temp@mailinator.com', '$2y$10$.kEqj5Pqc.LFzzsE2lBKRusefmqf5i00ouram6VuAeovhj3UsxESO', 'Male', 1, 1, 2000, 0),
(31, 'Ridwan', 'QA', 'mridwan_qa@gmail.com', '$2y$10$q.1KtfJhH4ji8DndopuAiOtnjuo1XRQK7tPAoJEOJsi5iK4OQyEUu', 'Male', 6, 7, 2000, 0),
(32, 'Ridwan', 'QA', 'mridwan_qa1@gmail.com', '$2y$10$VeaGDfk6ZTZPqPmYj1oMeeAmIUiPCT7Njvk5rD9eUsxFCkyHDQU4q', 'Male', 6, 7, 2000, 0),
(33, 'Ridwan', 'QA', 'temp@temp-mail.org', '$2y$10$h1ubwSdY5x63QSEuqHBSbuDOmr6YQXucFU86YKzoZ6hSg2h4gsYVy', 'Male', 6, 7, 2000, 0),
(34, 'Ridwan', 'QA', 'temp1@temp-mail.org', '$2y$10$1BKJPp5WfLOpXIt3v7HjEuN2homTr9WoCa.jrVYEMvjVpWM3fW4x.', 'Male', 6, 7, 2000, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
