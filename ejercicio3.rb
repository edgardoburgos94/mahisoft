# 3.- Se dice que un número es omirp, si su inverso es un número primo.
# Se desea que implemente un programa que decida si un número es omirp.
# Sin embargo, su programa no debe hacer uso de ningún tipo de datos que no sea
# entero o su equivalente (no puede usar cadenas de caracteres, arreglos, listas,
# etc.)
#
# Por ejemplo, el número 92 es omirp, ya que su reverso, 29, es primo.


def is_omirp?(number)
  is_prime?(inverse(number))
end

def inverse(number)

  decimals = 1
  if number/10 != 0
    n=number
    while n/10 != 0
      decimals = decimals + 1
      n=n/10
    end
  end

  inverse_number = 0
  reduce_number = number

  (decimals).times do |i|
    inverse_number = inverse_number + (reduce_number/10**(decimals-i-1))*10**(i)
    reduce_number=reduce_number%10**(decimals-i-1)
  end
  inverse_number
end

def is_prime?(number)
  count = 0
  (1..number).each do |divisor|
    if number%divisor == 0 then count += 1 end
  end
  count == 2 ? true : false
end


puts(is_omirp?(71))
puts(is_omirp?(7))
puts(is_omirp?(71))
puts(is_omirp?(21))
