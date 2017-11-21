SELECT * FROM pdc;
INSERT INTO pdc (pdc_nit, tipo_pdc_Codigo, pdc_nombre, pdc_direccion, pdc_hora_apertura, pdc_hora_cierre, pdc_latitud, pdc_longitud, pdc_estado, pdc_telefono, pdc_celular)
         VALUES (8464228, 1,             'La perrera', 'Clle 70 60-11', '10:00:00', '20:00:00', '6.167568', '-75.614671',             '1',      2472345,     3113524614);
         
SELECT * FROM pdc WHERE pdc_nit=8464228;         


SELECT * FROM pdc;
UPDATE pdc SET pdc_nit=43414841, tipo_pdc_Codigo=4, pdc_nombre='Fredy-chuzos', pdc_direccion='Calle 70 -80-32', pdc_hora_apertura='10:00', 
pdc_hora_cierre='18:00', pdc_latitud='-6.00000', pdc_longitud='7.00000', pdc_estado='1', pdc_telefono='5893160', pdc_celular='3137972381' 
WHERE pdc_id=14;