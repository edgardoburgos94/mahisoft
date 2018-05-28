# 1.- Se dice que un número es palíndromo o capicúo, si se lee igual de
 # izquierda a derecha que de derecha a izquierda. Se desea que implemente
 # una función que, dado un número N, devuelva el menor número M ≥ N, tal
 # que M sea palíndromo.


 def palindromo(n)
   palindromo = false
   number = n

   while not palindromo

     array = number.to_s.split('')

     if is_palindromo?(array)
       palindromo = true
     else
       number += 1
     end

   end
   return number
 end

 def is_palindromo?(array)
   array.reverse == array ? true : false
 end


 puts (palindromo(12))
 puts (palindromo(1234))
 puts (palindromo(986))
