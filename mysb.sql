-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 5 月 21 日 13:42
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `mydb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `items`
--

INSERT INTO `items` (`id`, `name`) VALUES
(1, '商品１'),
(2, '商品２'),
(3, '商品３'),
(100, '商品１００');

-- --------------------------------------------------------

--
-- テーブルの構造 `makers`
--

CREATE TABLE `makers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `tel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `makers`
--

INSERT INTO `makers` (`id`, `name`, `address`, `tel`) VALUES
(1, '馬田さん', '大阪市', '09011242882'),
(2, '鎌田さん', '名古屋市', '０９０１２４５６３５３'),
(3, '時田', '宮城市', '０９０１２４４２２２４');

-- --------------------------------------------------------

--
-- テーブルの構造 `my_items`
--

CREATE TABLE `my_items` (
  `id` int(11) NOT NULL,
  `maker_id` int(11) NOT NULL,
  `items_name` text,
  `item_name_kana` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `my_items`
--

INSERT INTO `my_items` (`id`, `maker_id`, `items_name`, `item_name_kana`, `price`, `keyword`) VALUES
(1, 1, 'いちご', 'イチゴ', 180, '赤い、甘い、ケーキ'),
(2, 2, 'りんご', 'リンゴ', 90, '丸い、赤い、パイ'),
(3, 3, 'バナナ', 'バナナ', 120, 'パック、甘い、黄色'),
(4, 3, 'ブルーベリー', 'ブルーベリー', 200, '袋入、青い、眼精疲労'),
(5, 0, '栗', 'クリ', 80, '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `makers`
--
ALTER TABLE `makers`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `my_items`
--
ALTER TABLE `my_items`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `makers`
--
ALTER TABLE `makers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `my_items`
--
ALTER TABLE `my_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
