SELECT * FROM pdc;
INSERT INTO pdc (pdc_nit, tipo_pdc_Codigo, pdc_nombre, pdc_direccion, pdc_hora_apertura, pdc_hora_cierre, pdc_latitud, pdc_longitud, pdc_estado, pdc_telefono, pdc_celular)
         VALUES (8464228, 1,             'La perrera', 'Clle 70 60-11', '10:00:00', '20:00:00', '6.167568', '-75.614671',             '1',      2472345,     3113524614);
         
SELECT * FROM pdc WHERE pdc_nit=8464228;         

UPDATE pdc SET pdc_nit=, tipo_pdc_Codigo=, pdc_nombre=, pdc_direccion=, pdc_hora_apertura=, pdc_hora_cierre=, pdc_latitud=, pdc_longitud=, pdc_estado=, pdc_telefono=, pdc_celular=;

