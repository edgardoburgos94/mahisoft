# 2.- En Mahisoft, ocasionalmente hace falta detener los servicios para
# realizar una actualización del servidor. Cada servicio es un proceso iterativo,
#  donde cada iteración del servicio Si toma Ti horas. Para evitar inconsistencia
#   en el estado del servidor, los servicios solo pueden detenerse antes de
#   iniciar cada iteración. Por lo tanto, la actualización sólo puede realizarse
#   cuando todos los servicios están en dicho estado (a punto de iniciar una
#     iteración). ¿Cada cuanto tiempo se puede realizar esta actualización?
#
# Se desea que implemente una función que dado un arreglo con los tiempo Ti de
# las iteraciones de cada servicio, calcule el período con el que se pueden
# realizar las actualizaciones del servidor.
#
# Por ejemplo, si T = [1,3,4], las actualizaciones se pueden realizar cada 12 horas.


def actualizaciones(time_array)
  time_array.reduce(1, :lcm)
end

puts (actualizaciones([1,3,4]))
puts (actualizaciones([5,3,4]))
