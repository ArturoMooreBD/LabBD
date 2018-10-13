SELECT * FROM( SELECT Edad, COUNT(Edad) as [cantidad]
	FROM Empleados
	GROUP BY Edad) as NC
WHERE NC.Cantidad > 1