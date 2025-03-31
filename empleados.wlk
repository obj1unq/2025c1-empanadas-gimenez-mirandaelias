//Escribir aqui los objetos

object galvan{
    
    var sueldoBase = 15000

    method sueldo() {
      return sueldoBase
    }

    method actualizarSueldo(actualizacion) {
      sueldoBase = actualizacion
    }

        method cobrar(monto) {
        
    }
}

object baigorria{
    const precioEmpanada = 15
    var empanadasVendidasEsteMes = 0 //necesito recordar cuantas empandas vendió
    var ahorro    = 0

    method sueldo(){
       return empanadasVendidasEsteMes * precioEmpanada
    }
    
    method empanadasVendidas(cant) {
      empanadasVendidasEsteMes = empanadasVendidasEsteMes + cant
    }

    method totalCobrado(){
      return  ahorro 
    }

    method cobrar(monto) { //Necesito que cuando cobre el contador vuelva a 0
      ahorro = ahorro + monto 
      empanadasVendidasEsteMes = 0
    }
}

object gimenez {
  
  var fondoSueldo = 300000 

  method pagar(empleado) {
      fondoSueldo = fondoSueldo - empleado.sueldo()
      empleado.cobrar(empleado.sueldo())
  }
  method fondoActual() {
    return fondoSueldo
  }
}