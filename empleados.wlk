//Escribir aqui los objetos

object galvan{
    
    var sueldoBase = 15000
    method sueldo() {
      return sueldoBase
    }

    method actualizarSueldo(actualizacion) {
       sueldoBase = actualizacion
    }
}

object baigorria{
    var empanadas = 0
    method sueldo(){
       return empanadas * 15
    }
    
    method empanadasVendidas(cant) {
       empanadas = cant
    }
}

object gimenez {
  
  var fondoSueldo = 300000 
  method pagar(empleado) {
      fondoSueldo = fondoSueldo - empleado.sueldo()
  }
}