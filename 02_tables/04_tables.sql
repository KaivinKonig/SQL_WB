\! cls

-- PW / Verschlüsselung


-- DB wechseln
USE boo;

-- Tabelle löschen, falls existent
-- Nur bei Test / Entwicklung
DROP TABLE IF EXISTS kunde;

-- Tabelle anlegen
CREATE TABLE IF NOT EXISTS kunde
(
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(45) NOT NULL DEFAULT "TBA",
    k_alter TINYINT,
    k_mail VARCHAR(100) UNIQUE,
    k_pw VARCHAR(100)
);


-- Struktur anzeigen
DESCRIBE kunde;

-- Datensätze/Zeilen
INSERT INTO kunde(k_name,k_alter,k_mail,k_pw) VALUES("Meier", 28, "meier@web.de", 'maier1234');
INSERT INTO kunde(k_name,k_alter,k_mail,k_pw) VALUES("Hussein", 32, "hussein@web.de", 'hus#123');
INSERT INTO kunde(k_name,k_alter,k_mail,k_pw) VALUES("Li", 26, "li@web.de", 'lilalu');
INSERT INTO kunde(k_name,k_alter,k_mail,k_pw) VALUES("Li", 40, "li2@web.de", 'wauwau');
INSERT INTO kunde(k_name,k_alter,k_mail,k_pw) VALUES("Li", 61, "li_shanghai@web.de", 'shanghai');


-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM kunde;
