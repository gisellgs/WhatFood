
SELECT reserva.reseCodigo, reserva.reseNumeMesa, reserva.reseFecha, usuario.usuaPrimNombre

from reserva
inner JOIN usuario_por_reserva ON reserva.reseCodigo=usuario_por_reserva.reseCodigo
INNER JOIN usuario on usuario_por_reserva.NumeDocumento=usuario.usuaNumeDocumento
where usuario.usuaCorreo='daneilatoro@gmail.com'