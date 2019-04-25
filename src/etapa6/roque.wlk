import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilos = []
	
	method tuPupiloEs(ave) { 
		pupilos = ave
	} 
	
	method pupiloActual() { return pupilos }
	
    method dejarPupilo(ave) { pupilos.remove(ave)}
    method agregarPupilo(ave) { pupilos.add(ave) }
    method tieneComoPupilo(ave) { pupilos.contains(ave) }
    method cuantosPupilosTiene() { return pupilos.size() }
    method pupilosCapacesDeVolar(unosKms) { return pupilos.filter
    	 ({ pupilo => pupilo.puedeVolar(unosKms)})
    }
    //mas de 100 de energia
    method pupilosFortachones() { return pupilo.filter 
    	({ pupilo => pupilo.energia() >= 100})
    }
	
	method entrenar() { 
		pupilos.forEach ( {pupilo => 
		pupilo.volar(10)
		pupilo.comer(alpiste,30)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
	} )
	
	}
}