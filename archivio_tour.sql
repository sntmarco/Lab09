-- --------------------------------------------------------
-- Database: archivio_tour
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Creazione database archivio_tour
CREATE DATABASE IF NOT EXISTS `archivio_tour` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `archivio_tour`;

-- Drop tables se già esistono
DROP TABLE IF EXISTS `tour_attrazione`;
DROP TABLE IF EXISTS `attrazione`;
DROP TABLE IF EXISTS `tour`;
DROP TABLE IF EXISTS `regione`;

-- Creazione tabella regione
CREATE TABLE IF NOT EXISTS `regione` (
    id VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Inserimento regioni
/*!40000 ALTER TABLE `regione` DISABLE KEYS */;
INSERT INTO `regione` (id, nome) VALUES
('ABR', 'Abruzzo'), ('BAS', 'Basilicata'), ('CAL', 'Calabria'), ('CAM', 'Campania'),
('EMR', 'Emilia-Romagna'), ('FVG', 'Friuli-Venezia Giulia'), ('LAZ', 'Lazio'),
('LIG', 'Liguria'), ('LOM', 'Lombardia'), ('MAR', 'Marche'), ('MOL', 'Molise'),
('PIE', 'Piemonte'), ('PUG', 'Puglia'), ('SAR', 'Sardegna'), ('SIC', 'Sicilia'),
('TOS', 'Toscana'), ('TAA', 'Trentino-Alto Adige'), ('UMB', 'Umbria'),
('VDA', 'Valle d\'Aosta'), ('VEN', 'Veneto');
/*!40000 ALTER TABLE `regione` ENABLE KEYS */;

-- Creazione tabella tour
CREATE TABLE IF NOT EXISTS `tour` (
    id VARCHAR(5) PRIMARY KEY,
    id_regione VARCHAR(5) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    durata_giorni INT NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_regione) REFERENCES regione(id) ON DELETE CASCADE
);

-- Inserimento tour
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` (id, id_regione, nome, durata_giorni, costo) VALUES
('T001','ABR','Tour Abruzzo Monti e Borghi',3,250.00),
('T002','ABR','Tour Costa dei Trabocchi',2,220.00),
('T003','ABR','Tour Parco Nazionale Gran Sasso',2,280.00),
('T004','ABR','Tour L’Aquila Storica',2,200.00),
('T005','ABR','Tour Rocca Calascio e Castelli',1,100.00),
('T006','ABR','Tour Sulmona e Confetti',2,210.00),
('T007','ABR','Tour Scanno e Lago di Scanno',3,260.00),
('T008','ABR','Tour Pescara e Spiagge',2,220.00),
('T009','ABR','Tour Teramo e Borghi Medievali',2,250.00),
('T010','ABR','Tour Majella e Natura',3,300.00),
('T011','BAS','Tour Matera e Sassi',2,280.00),
('T012','BAS','Tour Craco e Borghi Fantasma',1,120.00),
('T013','BAS','Tour Parco del Pollino',2,300.00),
('T014','BAS','Tour Maratea e Costa Tirrenica',3,320.00),
('T015','BAS','Tour Venosa e Villaggi Romani',2,240.00),
('T016','BAS','Tour Potenza e Castello',1,130.00),
('T017','BAS','Tour Metaponto e Magna Grecia',3,280.00),
('T018','BAS','Tour Cripta del Peccato Originale',1,120.00),
('T019','BAS','Tour Vulture e Vini',2,260.00),
('T020','BAS','Tour Laghi e Montagne Lucane',3,400.00),
('T021','CAL','Tour Calabria Costa Viola',3,380.00),
('T022','CAL','Tour Reggio Calabria e Bronzi',2,260.00),
('T023','CAL','Tour Scilla e Chianalea',1,120.00),
('T024','CAL','Tour Aspromonte e Parco',2,250.00),
('T025','CAL','Tour Tropea e Spiagge',2,230.00),
('T026','CAL','Tour Gerace e Borghi',2,240.00),
('T027','CAL','Tour Cosenza Storica',1,200.00),
('T028','CAL','Tour Capo Vaticano',2,250.00),
('T029','CAL','Tour Pizzo e Gelateria',1,130.00),
('T030','CAL','Tour Serra San Bruno',2,260.00),
('T031','CAM','Tour Napoli Storico',3,300.00),
('T032','CAM','Tour Pompei e Ercolano',2,280.00),
('T033','CAM','Tour Costiera Amalfitana',3,550.00),
('T034','CAM','Tour Capri e Anacapri',2,320.00),
('T035','CAM','Tour Caserta Reale',1,250.00),
('T036','CAM','Tour Sorrento e Marina Grande',2,300.00),
('T037','CAM','Tour Amalfi e Ravello',2,330.00),
('T038','CAM','Tour Vesuvio e Vigneti',1,180.00),
('T039','CAM','Tour Ischia',2,290.00),
('T040','CAM','Tour Salerno e Lungomare',2,260.00),
('T041','EMR','Tour Bologna Storica',2,280.00),
('T042','EMR','Tour Ferrara Rinascimentale',1,140.00),
('T043','EMR','Tour Ravenna Mosaici Bizantini',2,260.00),
('T044','EMR','Tour Parma e Tradizioni',2,290.00),
('T045','EMR','Tour Modena e Aceto Balsamico',3,450.00),
('T046','EMR','Tour Rimini e Malatesta',2,270.00),
('T047','EMR','Tour Appennino Emiliano',3,310.00),
('T048','EMR','Tour Piacenza e Castelli',2,280.00),
('T049','EMR','Tour Comacchio e Valli',1,110.00),
('T050','EMR','Tour Reggio Emilia e Tricolore',2,240.00),
('T051','FVG','Tour Trieste Storica',3,290.00),
('T052','FVG','Tour Castello di Miramare',1,130.00),
('T053','FVG','Tour Udine Rinascimentale',1,150.00),
('T054','FVG','Tour Cividale Longobarda',2,280.00),
('T055','FVG','Tour Gorizia e Collio',2,230.00),
('T056','FVG','Tour Dolomiti Friulane',3,320.00),
('T057','FVG','Tour Aquileia Romana',1,150.00),
('T058','FVG','Tour Lignano Sabbiadoro',1,120.00),
('T059','FVG','Tour Gradisca e Fortezze',2,230.00),
('T060','FVG','Tour Tarvisio e Foreste',4,470.00),
('T061','LAZ','Tour Roma Antica',2,320.00),
('T062','LAZ','Tour Vaticano e Musei',1,200.00),
('T063','LAZ','Tour Tivoli e Ville',2,270.00),
('T064','LAZ','Tour Ostia Antica',3,350.00),
('T065','LAZ','Tour Viterbo Medievale',2,260.00),
('T066','LAZ','Tour Lago di Bracciano',1,140.00),
('T067','LAZ','Tour Castelli Romani',2,280.00),
('T068','LAZ','Tour Gaeta e Sperlonga',2,290.00),
('T069','LAZ','Tour Tarquinia Etrusca',1,160.00),
('T070','LAZ','Tour Rieti e Santuario',2,230.00),
('T071','LIG','Tour Genova Storica',2,390.00),
('T072','LIG','Tour Cinque Terre',1,280.00),
('T073','LIG','Tour Portofino e Paraggi',1,300.00),
('T074','LIG','Tour La Spezia Golfo dei Poeti',2,350.00),
('T075','LIG','Tour Sanremo e Riviera',2,330.00),
('T076','LIG','Tour Savona Medievale',1,140.00),
('T077','LIG','Tour Alassio e Muretto',1,250.00),
('T078','LIG','Tour Porto Venere',1,160.00),
('T079','LIG','Tour Imperia e Olio',1,140.00),
('T080','LIG','Tour Finalborgo e Borghi Liguri',1,200.00),
('T081','LOM','Tour Milano Storica',3,320.00),
('T082','LOM','Tour Lago di Como',3,280.00),
('T083','LOM','Tour Bergamo Alta',2,260.00),
('T084','LOM','Tour Brescia Romana e Longobarda',1,250.00),
('T085','LOM','Tour Mantova Ducale',2,370.00),
('T086','LOM','Tour Cremona e Liuteria',2,250.00),
('T087','LOM','Tour Pavia e Certosa',1,260.00),
('T088','LOM','Tour Valtellina e Vini',2,300.00),
('T089','LOM','Tour Lago d’Iseo e Montisola',2,250.00),
('T090','LOM','Tour Monza e Villa Reale',1,130.00),
('T091','MAR','Tour Ancona Storica',2,250.00),
('T092','MAR','Tour Urbino Rinascimentale',3,270.00),
('T093','MAR','Tour Riviera del Conero',3,260.00),
('T094','MAR','Tour Ascoli Piceno e Olive',1,150.00),
('T095','MAR','Tour Loreto e Santuario',2,240.00),
('T096','MAR','Tour Macerata e Sferisterio',3,280.00),
('T097','MAR','Tour Frasassi Grotte',2,280.00),
('T098','MAR','Tour Pesaro e Rossini',2,250.00),
('T099','MAR','Tour Fermo Storica',1,140.00),
('T100','MAR','Tour Recanati e Leopardi',2,250.00),
('T101','MOL','Tour Campobasso Storica',2,230.00),
('T102','MOL','Tour Isernia Archeologica',3,340.00),
('T103','MOL','Tour Termoli e Costa Adriatica',1,150.00),
('T104','MOL','Tour Agnone e Campane',1,130.00),
('T105','MOL','Tour Sepino e Altilia Romana',2,360.00),
('T106','MOL','Tour Monti del Matese',2,280.00),
('T107','MOL','Tour Castel San Vincenzo',1,140.00),
('T108','MOL','Tour Pietrabbondante Sannita',1,150.00),
('T109','MOL','Tour Larino e Anfiteatro',3,350.00),
('T110','MOL','Tour Tratturi e Pastorizia',3,260.00),
('T111','PIE','Tour Torino Reale',1,180.00),
('T112','PIE','Tour Langhe e Vini',2,320.00),
('T113','PIE','Tour Lago Maggiore',1,220.00),
('T114','PIE','Tour Sacra di San Michele',1,160.00),
('T115','PIE','Tour Ivrea e Arduino',2,250.00),
('T116','PIE','Tour Monferrato e Cantine',2,310.00),
('T117','PIE','Tour Alba e Tartufo',1,200.00),
('T118','PIE','Tour Stresa e Isole Borromee',1,220.00),
('T119','PIE','Tour Biella e Oasi Zegna',2,360.00),
('T120','PIE','Tour Verbania e Giardini',1,210.00),
('T121','PUG','Tour Bari Storica',1,160.00),
('T122','PUG','Tour Polignano Mare',1,150.00),
('T123','PUG','Tour Alberobello Trulli',2,270.00),
('T124','PUG','Tour Lecce Barocca',1,280.00),
('T125','PUG','Tour Otranto e Coste',3,375.00),
('T126','PUG','Tour Gargano e Foresta Umbra',2,300.00),
('T127','PUG','Tour Castel del Monte',1,160.00),
('T128','PUG','Tour Valle d’Itria',2,290.00),
('T129','PUG','Tour Taranto e Mare',1,150.00),
('T130','PUG','Tour Gallipoli Storica',1,160.00),
('T131','SAR','Tour Cagliari Storica',1,170.00),
('T132','SAR','Tour Alghero Catalana',2,280.00),
('T133','SAR','Tour Costa Smeralda',2,320.00),
('T134','SAR','Tour Oristano e Tharros',2,370.00),
('T135','SAR','Tour Barumini Su Nuraxi',2,280.00),
('T136','SAR','Tour Ogliastra e Cala Goloritzè',2,310.00),
('T137','SAR','Tour Sassari e Dintorni',1,160.00),
('T138','SAR','Tour Nuoro e Grazia Deledda',2,280.00),
('T139','SAR','Tour Bosa e Fiume Temo',2,270.00),
('T140','SAR','Tour La Maddalena',2,300.00),
('T141','SIC','Tour Palermo Storica',1,180.00),
('T142','SIC','Tour Catania e Etna',2,300.00),
('T143','SIC','Tour Taormina e Teatro Greco',2,290.00),
('T144','SIC','Tour Siracusa Ortigia',2,285.00),
('T145','SIC','Tour Agrigento e Valle dei Templi',1,200.00),
('T146','SIC','Tour Ragusa e Modica',2,320.00),
('T147','SIC','Tour Trapani e Erice',3,400.00),
('T148','SIC','Tour Cefalù e Spiagge',4,510.00),
('T149','SIC','Tour Noto Barocca',1,175.00),
('T150','SIC','Tour Isole Eolie',3,650.00),
('T151','TOS','Tour Firenze Rinascimentale',2,300.00),
('T152','TOS','Tour Pisa e Torre',1,120.00),
('T153','TOS','Tour Siena e Palio',1,220.00),
('T154','TOS','Tour Lucca e Mura',2,260.00),
('T155','TOS','Tour Chianti e Vini',3,390.00),
('T156','TOS','Tour San Gimignano',1,205.00),
('T157','TOS','Tour Val d’Orcia',2,320.00),
('T158','TOS','Tour Arezzo Storica',1,150.00),
('T159','TOS','Tour Elba e Mare',2,230.00),
('T160','TOS','Tour Pienza e Monteriggioni',2,265.00),
('T161','TAA','Tour Trento Storica',2,270.00),
('T162','TAA','Tour Bolzano e Museion',2,280.00),
('T163','TAA','Tour Dolomiti Panorama',3,340.00),
('T164','TAA','Tour Merano e Giardini Trauttmansdorff',1,190.00),
('T165','TAA','Tour Lago di Braies',1,160.00),
('T166','TAA','Tour Val Gardena',2,275.00),
('T167','TAA','Tour Alpe di Siusi',2,285.00),
('T168','TAA','Tour Castel Tirolo',1,210.00),
('T169','TAA','Tour Bressanone e Abbazia',2,265.00),
('T170','TAA','Tour Rovereto Museo della Guerra',1,155.00),
('T171','UMB','Tour Perugia Storica',2,260.00),
('T172','UMB','Tour Assisi e San Francesco',2,270.00),
('T173','UMB','Tour Lago Trasimeno',1,150.00),
('T174','UMB','Tour Gubbio Medievale',2,260.00),
('T175','UMB','Tour Spoleto e Duomo',2,285.00),
('T176','UMB','Tour Orvieto e Duomo',2,275.00),
('T177','UMB','Tour Todi e Borghi',1,155.00),
('T178','UMB','Tour Norcia e Monti Sibillini',1,180.00),
('T179','UMB','Tour Cascata delle Marmore',3,340.00),
('T180','UMB','Tour Montefalco e Vini Sagrantino',1,175.00),
('T181','VDA','Tour Aosta Storica',2,250.00),
('T182','VDA','Tour Castello di Fenis',2,240.00),
('T183','VDA','Tour Cervino e Breuil-Cervinia',2,220.00),
('T184','VDA','Tour Gran Paradiso',2,240.00),
('T185','VDA','Tour Courmayeur e Mont Blanc',2,800.00),
('T186','VDA','Tour Cogne e Parchi',2,280.00),
('T187','VDA','Tour Castello di Issogne',1,160.00),
('T188','VDA','Tour Saint-Vincent Terme e Casinò',2,650.00),
('T189','VDA','Tour Monte Rosa e Rifugi',2,320.00),
('T190','VDA','Tour Champorcher e Valle di Champorcher',2,300.00),
('T191','VEN','Tour Venezia Storica',1,200.00),
('T192','VEN','Tour Verona Arena',2,280.00),
('T193','VEN','Tour Lago di Garda',2,320.00),
('T194','VEN','Tour Padova e Cappella degli Scrovegni',1,170.00),
('T195','VEN','Tour Treviso e Ville Venete',1,160.00),
('T196','VEN','Tour Vicenza e Palladio',2,280.00),
('T197','VEN','Tour Bassano del Grappa',3,360.00),
('T198','VEN','Tour Chioggia e Laguna',2,250.00),
('T199','VEN','Tour Dolomiti Bellunesi',2,320.00),
('T200','VEN','Tour Asolo e Colli Asolani',1,165.00);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;

-- Creazione tabella attrazione
CREATE TABLE IF NOT EXISTS `attrazione` (
    id VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valore_culturale INT NOT NULL
);

-- Inserimento attrazioni
/*!40000 ALTER TABLE `attrazione` DISABLE KEYS */;
INSERT INTO `attrazione` (id, nome, valore_culturale) VALUES
-- Abruzzo
('A001','Gran Sasso',10),('A002','Rocca Calascio',9),('A003','L’Aquila Centro Storico',8),
('A004','Scanno',7),('A005','Sulmona',6),('A006','Pescara Spiagge',5),
('A007','Teramo Borghi',4),('A008','Majella',3),
-- Basilicata
('A009','Costa dei Trabocchi',5),('A010','Matera Sassi',10),('A011','Craco',8),
('A012','Parco del Pollino',9),('A013','Maratea',7),('A014','Venosa',6),('A015','Potenza Centro Storico',4),
('A016','Metaponto',3),('A017','Cripta del Peccato Originale',7),('A018','Laghi Lucani',5),
('A019','Vulture',6),('A020','Montagne Lucane',8),
-- Calabria
('A021','Costa Viola',6),('A022','Bronzi di Riace',10),('A023','Chianalea di Scilla',5),
('A024','Parco Nazionale Aspromonte',8),('A025','Tropea Spiagge',7),('A026','Gerace Borghi',6),
('A027','Cosenza Centro Storico',4),('A028','Capo Vaticano',5),('A029','Pizzo Calabro',3),
-- Campania
('A030','Serra San Bruno',6),('A031','Napoli Centro Storico',10),('A032','Pompei',9),
('A033','Costiera Amalfitana',8),('A034','Capri',7),('A035','Reggia di Caserta',10),('A036','Sorrento',6),
('A037','Amalfi',5),('A038','Vesuvio',8),('A039','Ischia',4),('A040','Salerno Lungomare',3),
-- Emilia Romagna
('A041','Bologna Centro Storico',10),('A042','Castello Estense Ferrara',9),('A043','Mosaici di Ravenna',10),
('A044','Parma Duomo e Battistero',8),('A045','Acetaia Tradizionale Modena',7),('A046','Tempio Malatestiano',6),
('A047','Appennino Emiliano',5),('A048','Castelli del Piacentino',4),('A049','Comacchio e Valli',3),
('A050','Museo del Tricolore',2),
-- Friuli Venezia Giulia
('A051','Trieste Centro Storico',9),('A052','Castello di Miramare',10),('A053','Udine Centro Rinascimentale',8),
('A054','Cividale Longobarda',7),('A055','Collio Vitivinicolo',6),('A056','Dolomiti Friulane',5),
('A057','Aquileia Area Archeologica',10),('A058','Lignano Sabbiadoro',4),
('A059','Fortezze di Gradisca',3),('A060','Foreste di Tarvisio',2),
-- Lazio
('A061','Colosseo',10),('A062','Musei Vaticani',9),('A063','Villa d’Este',8),('A064','Ostia Antica',7),
('A065','Viterbo Centro Medievale',6),('A066','Lago di Bracciano',5),('A067','Castelli Romani',4),
('A068','Gaeta Centro Storico',3),('A069','Tarquinia Necropoli Etrusca',8),('A070','Rieti Santuario',2),
-- Liguria
('A071','Genova Centro Storico',9),('A072','Cinque Terre',10),('A073','Portofino',8),('A074','Golfo dei Poeti',7),
('A075','Sanremo',6),('A076','Savona Centro Medievale',5),('A077','Alassio Muretto',4),('A078','Porto Venere',8),
('A079','Imperia e Frantoi',3),('A080','Finalborgo',2),
-- Lombardia
('A081','Duomo di Milano',10),('A082','Lago di Como',9),('A083','Città Alta Bergamo',8),('A084','Brescia Romana',7),
('A085','Mantova Palazzo Ducale',9),('A086','Cremona Liuteria',6),('A087','Certosa di Pavia',8),
('A088','Valtellina',5),('A089','Montisola',4),('A090','Villa Reale di Monza',7),
-- Marche
('A091','Ancona Centro Storico',5),('A092','Urbino Ducale',10),('A093','Riviera del Conero',9),
('A094','Ascoli Piceno',7),('A095','Santuario di Loreto',8),('A096','Sferisterio',6),('A097','Grotte di Frasassi',10),
('A098','Pesaro Rossini',4),('A099','Fermo Storica',3),('A100','Casa Leopardi',7),
-- Molise
('A101','Campobasso Castello Monforte',6),('A102','Isernia Museo Paleolitico',8),('A103','Termoli Borgo Vecchio',5),
('A104','Agnone Pontificia Fonderia',4),('A105','Sepino Altilia',9),('A106','Monti del Matese',8),
('A107','Castel San Vincenzo',5),('A108','Pietrabbondante Teatro Sannita',7),('A109','Larino Anfiteatro',6),
('A110','Antichi Tratturi',3),
-- Piemonte
('A111','Palazzo Reale Torino',10),('A112','Langhe Vigneti',9),('A113','Lago Maggiore',8),
('A114','Sacra di San Michele',10),('A115','Ivrea Centro Storico',7),('A116','Monferrato Colline',6),
('A117','Alba Tartufo',8),('A118','Isole Borromee',7),('A119','Oasi Zegna',6),('A120','Giardini Botanici Verbania',5),
-- Puglia
('A121','Bari Basilica San Nicola',9),('A122','Polignano Lama Monachile',7),('A123','Alberobello Trulli',10),
('A124','Lecce Centro Barocco',8),('A125','Otranto Cattedrale',6),('A126','Gargano Foresta Umbra',9),
('A127','Castel del Monte',10),('A128','Valle d’Itria Ulivi e Masserie',7),('A129','Taranto Museo Marta',5),
('A130','Gallipoli Centro Storico',6),
-- Sardegna
('A131','Cagliari Castello',8),('A132','Alghero Centro Storico',7),('A133','Costa Smeralda Spiagge',10),
('A134','Tharros Area Archeologica',9),('A135','Su Nuraxi Barumini',10),('A136','Cala Goloritzè',10),
('A137','Sassari Duomo',6),('A138','Nuoro Museo Deledda',5),('A139','Bosa Castello Malaspina',4),
('A140','Arcipelago La Maddalena',9),
-- Sicilia
('A141','Palermo Cattedrale',8),('A142','Etna Vulcano',10),('A143','Taormina Teatro Greco',9),
('A144','Ortigia Centro Storico',7),('A145','Valle dei Templi',10),('A146','Ragusa Ibla',6),
('A147','Erice Borgo Medievale',5),('A148','Cefalù Duomo',4),('A149','Noto Barocco',7),
('A150','Isole Eolie Arcipelago',10),
-- Toscana
('A151','Firenze Duomo',10),('A152','Pisa Torre Pendente',9),('A153','Siena Piazza del Campo',8),
('A154','Lucca Mura Storiche',7),('A155','Chianti Vigneti',9),('A156','San Gimignano Torri',8),
('A157','Val d’Orcia Panorama UNESCO',10),('A158','Arezzo Centro Storico',6),('A159','Isola d’Elba Spiagge',7),
('A160','Pienza Centro Rinascimentale',8),
-- Trentino Alto Adige
('A161','Trento Duomo',8),('A162','Bolzano Museion',7),('A163','Dolomiti UNESCO',10),
('A164','Giardini Trauttmansdorff',9),('A165','Lago di Braies',10),('A166','Val Gardena Sentieri',8),
('A167','Alpe di Siusi Altopiano',7),('A168','Castel Tirolo',6),('A169','Abbazia di Novacella',5),
('A170','Museo della Guerra Rovereto',4),
-- Umbria
('A171','Perugia Centro Storico',6),('A172','Basilica di San Francesco',10),('A173','Lago Trasimeno',5),
('A174','Gubbio Centro Medievale',7),('A175','Spoleto Duomo',8),('A176','Orvieto Duomo',10),
('A177','Todi Borghi',6),('A178','Monti Sibillini',9),('A179','Cascata delle Marmore',8),
('A180','Montefalco Vini Sagrantino',5),
-- Valle D'Aosta
('A181','Aosta Centro Storico',9),('A182','Castello di Fenis',10),('A183','Cervino',10),
('A184','Parco Nazionale Gran Paradiso',8),('A185','Mont Blanc e Courmayeur',10),('A186','Valle di Cogne',7),
('A187','Castello di Issogne',6),('A188','Terme di Saint-Vincent',5),('A189','Monte Rosa',10),
('A190','Champorcher',4),
-- Veneto
('A191','Piazza San Marco Venezia',10),('A192','Arena di Verona',9),('A193','Lago di Garda',10),
('A194','Cappella degli Scrovegni',8),('A195','Ville Venete Treviso',7),('A196','Vicenza Palladio Ville',9),
('A197','Bassano del Grappa Ponte',6),('A198','Chioggia Centro Storico',5),('A199','Dolomiti Bellunesi',10),
('A200','Asolo Centro Storico',4);
/*!40000 ALTER TABLE `attrazione` ENABLE KEYS */;

-- Creazione tabella tour_attrazione (N:N)
CREATE TABLE IF NOT EXISTS `tour_attrazione` (
    id_tour VARCHAR(5) NOT NULL,
    id_attrazione VARCHAR(5) NOT NULL,
    PRIMARY KEY (id_tour, id_attrazione),
    FOREIGN KEY (id_tour) REFERENCES tour(id) ON DELETE CASCADE,
    FOREIGN KEY (id_attrazione) REFERENCES attrazione(id) ON DELETE CASCADE
);

/*!40000 ALTER TABLE `tour_attrazione` DISABLE KEYS */;
-- Inserimento relazioni tour_attrazione
INSERT INTO `tour_attrazione` (id_tour, id_attrazione) VALUES
-- Abruzzo
('T001','A001'),('T001','A002'),('T001','A004'),('T002','A004'),('T002','A006'),
('T003','A001'),('T003','A008'),('T004','A003'),('T004','A002'),('T005','A002'),
('T005','A008'),('T006','A005'),('T006','A006'),('T007','A004'),('T007','A008'),
('T008','A006'),('T009','A007'),('T009','A003'),('T010','A008'),('T010','A001'),
-- Basilicata
('T011','A010'),('T011','A014'),('T012','A011'),('T013','A012'),('T013','A020'),
('T014','A013'),('T014','A012'),('T015','A014'),('T015','A010'),('T016','A015'),
('T017','A016'),('T017','A019'),('T018','A017'),('T019','A019'),('T019','A014'),
('T020','A018'),('T020','A020'),
-- Calabria
('T021','A021'),('T021','A024'),('T021','A025'),('T022','A022'),('T022','A021'),
('T023','A023'),('T023','A021'),('T024','A024'),('T024','A026'),('T025','A025'),
('T025','A028'),('T026','A026'),('T026','A027'),('T027','A027'),('T027','A024'),
('T028','A028'),('T028','A025'),('T029','A029'),('T029','A025'),('T030','A030'),
('T030','A024'),
-- Campania
('T031','A031'),('T031','A038'),('T032','A032'),('T032','A031'),('T033','A033'),
('T033','A037'),('T034','A034'),('T034','A037'),('T035','A035'),('T035','A031'),
('T036','A036'),('T036','A034'),('T037','A037'),('T037','A033'),('T038','A038'),
('T038','A032'),('T039','A039'),('T039','A034'),('T040','A040'),('T040','A033'),
-- Emilia Romagna
('T041','A041'),('T041','A047'),('T042','A042'),('T042','A048'),('T043','A043'),
('T043','A049'),('T044','A044'),('T044','A048'),('T045','A045'),('T045','A044'),
('T046','A046'),('T046','A049'),('T047','A047'),('T047','A048'),('T048','A048'),
('T048','A050'),('T049','A049'),('T049','A042'),('T050','A050'),('T050','A044'),
-- Friuli Venezia Giulia
('T051','A051'),('T051','A056'),('T052','A052'),('T052','A051'),('T053','A053'),
('T053','A054'),('T054','A054'),('T054','A057'),('T055','A055'),('T055','A056'),
('T056','A056'),('T056','A060'),('T057','A057'),('T057','A053'),('T058','A058'),
('T058','A051'),('T059','A059'),('T059','A055'),('T060','A060'),('T060','A056'),
-- Lazio
('T061','A061'),('T061','A064'),('T062','A062'),('T062','A061'),('T063','A063'),
('T063','A065'),('T064','A064'),('T064','A066'),('T065','A065'),('T065','A069'),
('T066','A066'),('T066','A067'),('T067','A067'),('T067','A063'),('T068','A068'),
('T068','A067'),('T069','A069'),('T069','A065'),('T070','A070'),('T070','A063'),
-- Liguria
('T071','A071'),('T072','A072'),('T073','A073'),('T074','A074'),('T075','A075'),
('T076','A076'),('T077','A077'),('T078','A078'),('T079','A079'),('T080','A080'),
('T081','A081'),('T081','A087'),('T081','A090'),('T082','A082'),('T082','A089'),
('T083','A083'),('T083','A084'),('T084','A084'),('T084','A081'),('T085','A085'),
('T085','A090'),('T086','A086'),('T086','A087'),('T087','A087'),('T087','A081'),
('T088','A088'),('T088','A089'),('T089','A089'),('T089','A082'),('T090','A090'),
('T090','A081'),
-- Marche
('T091','A091'),('T091','A099'),('T092','A092'),('T092','A100'),('T093','A093'),
('T093','A097'),('T094','A094'),('T094','A098'),('T095','A095'),('T095','A100'),
('T096','A096'),('T096','A091'),('T097','A097'),('T097','A093'),('T098','A098'),
('T098','A092'),('T099','A099'),('T099','A091'),('T100','A100'),('T100','A098'),
-- Molise
('T101','A101'),('T101','A105'),('T102','A102'),('T102','A108'),('T103','A103'),
('T103','A109'),('T104','A104'),('T104','A110'),('T105','A105'),('T105','A101'),
('T106','A106'),('T106','A107'),('T107','A107'),('T107','A102'),('T108','A108'),
('T108','A104'),('T109','A109'),('T109','A101'),('T110','A110'),('T110','A106'),
-- Piemonte
('T111','A111'),('T111','A114'),('T112','A112'),('T112','A116'),('T113','A113'),
('T113','A118'),('T114','A114'),('T114','A119'),('T115','A115'),('T115','A111'),
('T116','A116'),('T116','A112'),('T117','A117'),('T117','A112'),('T118','A118'),
('T118','A113'),('T119','A119'),('T119','A116'),('T120','A120'),('T120','A113'),
-- Puglia
('T121','A121'),('T121','A127'),('T122','A122'),('T122','A121'),('T123','A123'),
('T123','A128'),('T124','A124'),('T124','A121'),('T125','A125'),('T125','A130'),
('T126','A126'),('T126','A125'),('T127','A127'),('T127','A121'),('T128','A128'),
('T128','A123'),('T129','A129'),('T129','A122'),('T130','A130'),('T130','A125'),
-- Sardegna
('T131','A131'),('T131','A134'),('T132','A132'),('T132','A140'),('T133','A133'),
('T133','A140'),('T134','A134'),('T134','A139'),('T135','A135'),('T135','A131'),
('T136','A136'),('T136','A138'),('T137','A137'),('T137','A132'),('T138','A138'),
('T138','A135'),('T139','A139'),('T139','A132'),('T140','A140'),('T140','A133'),
-- Sicilia
('T141','A141'),('T141','A148'),('T142','A142'),('T142','A141'),('T143','A143'),
('T143','A148'),('T144','A144'),('T144','A149'),('T145','A145'),('T145','A143'),
('T146','A146'),('T146','A149'),('T147','A147'),('T147','A141'),('T148','A148'),
('T148','A150'),('T149','A149'),('T149','A144'),('T150','A150'),('T150','A142'),
-- Toscana
('T151','A151'),('T151','A153'),('T152','A152'),('T152','A151'),('T153','A153'),
('T153','A156'),('T154','A154'),('T154','A151'),('T155','A155'),('T155','A157'),
('T156','A156'),('T156','A153'),('T157','A157'),('T157','A160'),('T158','A158'),
('T158','A151'),('T159','A159'),('T159','A157'),('T160','A160'),('T160','A156'),
-- Trentino Alto Adige
('T161','A161'),('T161','A169'),('T162','A162'),('T162','A161'),('T163','A163'),
('T163','A165'),('T164','A164'),('T164','A168'),('T165','A165'),('T165','A163'),
('T166','A166'),('T166','A163'),('T167','A167'),('T167','A165'),('T168','A168'),
('T168','A169'),('T169','A169'),('T169','A161'),('T170','A170'),('T170','A162'),
-- Umbria
('T171','A171'),('T171','A172'),('T172','A172'),('T172','A175'),('T173','A173'),
('T173','A179'),('T174','A174'),('T174','A171'),('T175','A175'),('T175','A178'),
('T176','A176'),('T176','A171'),('T177','A177'),('T177','A171'),('T178','A178'),
('T178','A179'),('T179','A179'),('T179','A173'),('T180','A180'),('T180','A176'),
-- Valle D'Aosta
('T181','A181'),('T181','A182'),('T182','A182'),('T182','A187'),('T183','A183'),
('T183','A185'),('T184','A184'),('T184','A183'),('T185','A185'),('T185','A183'),
('T186','A186'),('T186','A184'),('T187','A187'),('T187','A181'),('T188','A188'),
('T188','A181'),('T189','A189'),('T189','A183'),('T190','A190'),('T190','A186'),
-- Veneto
('T191','A191'),('T191','A193'),('T192','A192'),('T192','A191'),('T193','A193'),
('T193','A199'),('T194','A194'),('T194','A191'),('T195','A195'),('T195','A196'),
('T196','A196'),('T196','A192'),('T197','A197'),('T197','A196'),('T198','A198'),
('T198','A191'),('T199','A199'),('T199','A193'),('T200','A200'),('T200','A195');
/*!40000 ALTER TABLE `tour_attrazione` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
