//Escribir aqui los objetos
object galvan {
 // var dinero=0
  //var deuda =0
  var saldo = 0
  var sueldoBase = 15000
  
  method gastar(cantidad) {
    saldo -= cantidad/*
    if(dinero < cantidad){
      deuda += (dinero - cantidad).abs()
      dinero=0
    }else{
      dinero -= cantidad
    }*/
  }


  method deuda() {
    return if (saldo < 0 ) saldo.abs() // mul (-1)
            else 0
  }//Otra forma saldo.min(0).abs()

  method dinero() {
    return if(saldo >= 0) saldo else 0
           
            
      }//Otra forma saldo.max(0)

 // method sueldo() = sueldoBase
  
  method actualizarSueldo(actualizacion) {
    sueldoBase = actualizacion
  }
  
  method sueldo(_sueldo) {
    sueldoBase = _sueldo 
  }

  method sueldo() {//Getter
    return sueldoBase
  }

  method cobrarSueldo() {
    saldo += self.sueldo()
  }
  
}

object baigorria {
  var precioEmpanada = 15
  var empanadasVendidasEsteMes = 0 //necesito recordar cuantas empandas vendió
  var totalCobrado = 0
  
  method sueldo() = empanadasVendidasEsteMes * precioEmpanada //Getter
  
  method vender(cant) {
    empanadasVendidasEsteMes += cant
  }
  
  method totalCobrado() = totalCobrado
  
  method cobrarSueldo(monto) {
    //Necesito que cuando cobre el contador vuelva a 0
    totalCobrado += self.sueldo()
    empanadasVendidasEsteMes = 0
  }

  method precioEmpanada(_precioEmpanada) {//Setter
    precioEmpanada = _precioEmpanada
  }
}

object gimenez {
  var fondoSueldo = 300000
  
  method pagar(empleado) {
    fondoSueldo -= empleado.sueldo()
    empleado.cobrarSueldo()
   // empleado.cobrar(empleado.sueldo())
    
  }
  
  method fondoActual() = fondoSueldo//Getter
}