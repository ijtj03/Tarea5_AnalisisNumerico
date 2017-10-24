#main: funcion principal para correr 
function main()

  hi = input ("Escoja un valor para h para la grafica de la ecuacion diferencial !! ") # input para el h inicial
  graphED (hi) #  se llama a la funcion que grafica la ED, que se despliega en la figura 1
  graphByPass() # se llama a la funcion que grafica los pasos y el error asociado, que se despliega en la figura 2
  compareMethods() # se llama a la funcion que grafica las funciones de octave y la creada, barras comparativas de pasos y tiempos, que despliega se en la figura 3