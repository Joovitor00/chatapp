-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2021 às 03:16
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chatapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 517661842, 328058957, 'aoba!'),
(2, 328058957, 517661842, 'Fala aí man'),
(3, 517661842, 328058957, 'Suave?'),
(4, 328058957, 517661842, 'De boa man, e tu como tá?'),
(5, 517661842, 328058957, 'Tamo aí né, daquele jeito '),
(7, 1124526158, 517661842, 'ARIANA COME TO BRAZIL!!!'),
(8, 517661842, 1153872415, 'Hello there.'),
(10, 1153872415, 517661842, 'General Kenobi. You are a bold one.  Kill him!'),
(11, 517661842, 1368340488, 'The worst thing about prison was the dementors'),
(12, 328058957, 517661842, 'Doidera'),
(13, 328058957, 517661842, 'Fazendo o que da vida? ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 517661842, 'João ', 'Vitor', 'joaovom0@gmail.com', 'e8d95a51f3af4a3b134bf6bb680a213a', '1638902386astronaut-jellyfish-space-digital-art-uhdpaper.com-4K-107.jpg', 'Active'),
(2, 328058957, 'Berg', 'Cunha', 'bergao@gmail.com', 'e07d04ab7c57156836b9e1da796d0f47', '1638902439qua.jpg', 'Offline now'),
(3, 1124526158, 'Ariana', 'Grande', 'thankyounext@gmail.com', 'af5d97f43ff2fb264b7d18042a5c6112', '1638903009ariana-grande-rabo-de-cavalo.jpg', 'Active now'),
(4, 1153872415, 'Obi-Wan', 'Kenobi', 'benkenobi@gmail.com', '8f899c6ed1102371328c97f4a42e80d0', '1638908666obi-wan-kenobi-1024x635.jpg', 'Offline now'),
(5, 1368340488, 'Prison ', 'Mike', 'prisonmike@gmail.com', '7193529abbf96dcc058f06d45121d8b1', '1638923080Screenshot_1.png', 'Offline now');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
