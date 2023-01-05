CREATE TABLE Quartos(
ID_Qartos int IDENTITY(1,1) NOT NULL,
Numero_Quarto char(3) NOT NULL,
Tipo_Cama varchar(15) NOT NULL,
Tarifa smallmoney NOT NULL
);

INSERT INTO Quartos(Numero_Quarto, Tipo_Cama, Tarifa)
VALUES
('101', 'Luxo', 110),
('102', 'Standard', 100),
('103', 'Duplo', 90),
('201', 'Luxo', 110),
('202', 'Luxo', 120),
('203', 'Duplo', 90)

SELECT	ID_Qartos, 
		Numero_Quarto, 
		Tipo_Cama, 
		Tarifa
	FROM LandonHotel.dbo.Quartos;

SELECT	Tipo_Cama,
		Numero_Quarto
	FROM LandonHotel.dbo.Quartos;

SELECT *
	FROM LandonHotel.dbo.Quartos;

SELECT *
	FROM LandonHotel.dbo.Quartos
 WHERE Tipo_Cama = 'Luxo';

SELECT Numero_Quarto, Tarifa
	FROM LandonHotel.dbo.Quartos
 WHERE Tipo_Cama = 'Luxo';

SELECT Numero_Quarto, Tarifa
	FROM LandonHotel.dbo.Quartos
 WHERE Tarifa >= 120;

SELECT Numero_Quarto, Tarifa, Tipo_Cama
	FROM LandonHotel.dbo.Quartos
 WHERE Tipo_Cama != 'Luxo';

SELECT *
	FROM LandonHotel.dbo.Quartos
 WHERE Tipo_Cama != 'Luxo' 
	and Tarifa = 100;

SELECT *
	FROM LandonHotel.dbo.Quartos
 ORDER BY Tarifa;

SELECT *
	FROM LandonHotel.dbo.Quartos
 ORDER BY Tarifa desc;

SELECT *
	FROM LandonHotel.dbo.Quartos
 ORDER BY Tarifa, Numero_Quarto desc;

SELECT *
	FROM LandonHotel.dbo.Quartos
 WHERE Tipo_Cama = 'Luxo'
 ORDER BY Tarifa, Numero_Quarto desc;