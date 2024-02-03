CREATE TABLE `Product Type` (
  `id` interger PRIMARY KEY,
  `Blush` varchar(255),
  `Bronzer` varchar(255),
  `Eyebrow` varchar(255),
  `Eyeliner` varchar(255),
  `Eyeshadow` varchar(255),
  `Foundation` varchar(255),
  `Lip Liner` varchar(255),
  `Lipstick` varchar(255),
  `Mascara` varchar(255),
  `Nail Polish` varchar(255)
);

CREATE TABLE `Blush` (
  `id` interger PRIMARY KEY,
  `Powder` varchar(255),
  `Cream` varchar(255)
);

CREATE TABLE `Bronzer` (
  `id` interger PRIMARY KEY,
  `Powder` varchar(255)
);

CREATE TABLE `Eyebrow` (
  `id` interger,
  `Pencil` varchars
);

CREATE TABLE `Eyeshadow` (
  `id` interger PRIMARY KEY,
  `Palette` varchar(255),
  `Pencil` varchar(255),
  `Cream` varchar(255)
);

CREATE TABLE `Eyeliner` (
  `id` interger PRIMARY KEY,
  `Liquid` varchar(255),
  `Pencil` varchar(255),
  `Gel` varchar(255),
  `Cream` varchar(255)
);

CREATE TABLE `Foundation` (
  `id` interger PRIMARY KEY,
  `Concealer` varchar(255),
  `Liquid` varchar(255),
  `Contour` varchar(255),
  `BB CC` varchar(255),
  `Cream` varchar(255),
  `Mineral` varchar(255),
  `Powder` varchar(255),
  `Highlighter` varchar(255)
);

CREATE TABLE `Lipliner` (
  `id` interger PRIMARY KEY,
  `Pencil` varchar(255)
);

CREATE TABLE `Lipstick` (
  `id` interger PRIMARY KEY,
  `Lipstick` varchar(255),
  `Lip Gloss` varchar(255),
  `Liquid` varchar(255),
  `Lip Stain` varchar(255)
);

CREATE TABLE `Mascara` (
  `id` interger PRIMARY KEY,
  `Mascara` varchar(255)
);

CREATE TABLE `Nail Polish` (
  `id` interger PRIMARY KEY,
  `Nail Polish` varchar(255)
);

CREATE TABLE `Cream` (
  `id` interger PRIMARY KEY,
  `Holographic Halo Cream Eyeliner` varchar(255),
  `Cake That! Powder Eyeliner` varchar(255),
  `Epic Black Mousse Line` varchar(255)
);

CREATE TABLE `Holographic Halo Cream Eyeliner Colors` (
  `id` interger PRIMARY KEY,
  `Killing It` varchar(255),
  `Crystal Vault` varchar(255),
  `Cotton Candy` varchar(255),
  `Frost` varchar(255),
  `Palisade Paradise` varchar(255)
);

CREATE TABLE `Gel` (
  `id` interger PRIMARY KEY,
  `Gel Liner` varchar(255),
  `Cosmic Gel Liner` varchar(255),
  `Gel Liner and Smudger` varchar(255)
);

CREATE TABLE `Cosmic Gel Liner Colors` (
  `id` interger PRIMARY KEY,
  `Supernatural` varchar(255),
  `Infinite Star` varchar(255),
  `Interstellar` varchar(255)
);

CREATE TABLE `Gel Liner and Smudger Colors` (
  `id` interger PRIMARY KEY,
  `Danielle` varchar(255),
  `Betty` varchar(255),
  `Samantha` varchar(255),
  `Scarlette` varchar(255),
  `Annie` varchar(255),
  `Charlotte` varchar(255),
  `Emma` varchar(255)
);

CREATE TABLE `Pencil` (
  `id` interger PRIMARY KEY,
  `Fearless Eyeliner` varchar(255),
  `Metallic Eyeliner` varchar(255),
  `Faux Whites Eye Brightener` varchar(255),
  `Faux Blacks Eyeliner` varchar(255)
);

CREATE TABLE `Metallic Eyeliner Colors` (
  `id` interger PRIMARY KEY,
  `Black Metal` varchar(255),
  `Gunmetal` varchar(255),
  `Silver` varchar(255),
  `Copper` varchar(255),
  `Rose Gold` varchar(255),
  `Gold` varchar(255)
);

CREATE TABLE `Faux Whites Eye Brightener Colors` (
  `id` interger PRIMARY KEY,
  `Baby Powder` varchar(255),
  `Mint Cream` varchar(255),
  `White Smoke` varchar(255),
  `Honeydew` varchar(255),
  `Lavendar Blush` varchar(255),
  `Vanilla` varchar(255),
  `Seashell` varchar(255),
  `Linen` varchar(255)
);

CREATE TABLE `Faux Blacks Eyeliner Colors` (
  `id` interger PRIMARY KEY,
  `Obsidian` varchar(255),
  `Onyx` varchar(255),
  `Midnight` varchar(255),
  `Black Hole` varchar(255),
  `Black Olive` varchar(255),
  `Blackberry` varchar(255),
  `Burnt Sienna` varchar(255),
  `Oxblood` varchar(255)
);

CREATE TABLE `Liquid` (
  `id` interger PRIMARY KEY,
  `Two Timer Dual Ended Eyeliner` varchar(255),
  `Strictly Vinyl Eyeliner` varchar(255),
  `Super Fat Eye Marker` varchar(255),
  `Felt Tip Liner` varchar(255)
);

CREATE TABLE `Strictly Vinyl Eyeliner Colors` (
  `id` interger PRIMARY KEY,
  `Anchor` varchar(255),
  `Savvy` varchar(255),
  `Visceral` varchar(255),
  `Dauntless` varchar(255),
  `Crone` varchar(255),
  `Extra` varchar(255),
  `Alliance` varchar(255),
  `Hazy` varchar(255)
);

CREATE TABLE `Felt Tip Liner Colors` (
  `id` interger PRIMARY KEY,
  `Extreme Black` varchar(255),
  `Jet Black` varchar(255),
  `Dark Brown` varchar(255)
);

ALTER TABLE `Blush` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Blush`);

ALTER TABLE `Bronzer` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Bronzer`);

ALTER TABLE `Eyebrow` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Eyebrow`);

ALTER TABLE `Eyeliner` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Eyeliner`);

ALTER TABLE `Eyeshadow` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Eyeshadow`);

ALTER TABLE `Foundation` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Foundation`);

ALTER TABLE `Lipliner` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Lip Liner`);

ALTER TABLE `Lipstick` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Lipstick`);

ALTER TABLE `Mascara` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Mascara`);

ALTER TABLE `Nail Polish` ADD FOREIGN KEY (`id`) REFERENCES `Product Type` (`Nail Polish`);

ALTER TABLE `Gel` ADD FOREIGN KEY (`id`) REFERENCES `Eyeliner` (`Gel`);

ALTER TABLE `Cream` ADD FOREIGN KEY (`id`) REFERENCES `Eyeliner` (`Cream`);

ALTER TABLE `Pencil` ADD FOREIGN KEY (`id`) REFERENCES `Eyeliner` (`Pencil`);

ALTER TABLE `Liquid` ADD FOREIGN KEY (`id`) REFERENCES `Eyeliner` (`Liquid`);

ALTER TABLE `Holographic Halo Cream Eyeliner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Cream` (`Holographic Halo Cream Eyeliner`);

ALTER TABLE `Cosmic Gel Liner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Gel` (`Cosmic Gel Liner`);

ALTER TABLE `Gel Liner and Smudger Colors` ADD FOREIGN KEY (`id`) REFERENCES `Gel` (`Gel Liner and Smudger`);

ALTER TABLE `Metallic Eyeliner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Pencil` (`Metallic Eyeliner`);

ALTER TABLE `Faux Whites Eye Brightener Colors` ADD FOREIGN KEY (`id`) REFERENCES `Pencil` (`Faux Whites Eye Brightener`);

ALTER TABLE `Faux Blacks Eyeliner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Pencil` (`Faux Blacks Eyeliner`);

ALTER TABLE `Strictly Vinyl Eyeliner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Liquid` (`Strictly Vinyl Eyeliner`);

ALTER TABLE `Felt Tip Liner Colors` ADD FOREIGN KEY (`id`) REFERENCES `Liquid` (`Felt Tip Liner`);
