class Dependencia{
    const cantidadDeEmpleados
    const flotaDeRodados = []
    const pedidos = []

    method agregarARodado(rodado) {flotaDeRodados.add(rodado)}
    method agregarARodados(listaDeRodado) {flotaDeRodados.addAll(listaDeRodado)}
    method quitarDeFlota(rodado) {flotaDeRodados.remove(rodado)}
    

    method pesoTotal() = flotaDeRodados.sum({r => r.peso()})
    method estaBienEquipada() = flotaDeRodados.size() >= 3 and flotaDeRodados.all({r => r.velocidadMaxima() > 100})
    method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({r => r.capacidad()}) 
    method rodadosDeColor(color) = flotaDeRodados.filter({r => r.color() == color})
    method colorDelRodadoMasRapido() = flotaDeRodados.max({r => r.velocidadMaxima()}).color()
    method capacidadFaltante() = cantidadDeEmpleados - self.cantidadTotalDeFlota() 
    method cantidadTotalDeFlota() = flotaDeRodados.sum({r => r.capacidad()})
    method esGrande() = cantidadDeEmpleados >= 40 and flotaDeRodados.size() >= 5

    // para pedidos
    method agregarPedido(pedido) {pedidos.add(pedido)}
    method agregarPedidos(listaDePedidos) {pedidos.addAll(listaDePedidos)}
    method removerPedido(pedido) {pedidos.remove(pedido)}
    method removerPedidos(listaDePedidos) {pedidos.removeAll(listaDePedidos)}

    method totalDePasajerosEnPedidos() = pedidos.sum({p => p.cantidaDePasajeros()})
    method pedidosQueNPuedenSerSatisfacechosPorNingunAuto()= pedidos.filter({pedido => self.ningunoPuedeSerSatisfacer(pedido)})
    method ningunoPuedeSerSatisfacer(pedido) = flotaDeRodados.all({rodado => !pedido.puedeSerSatisfechoConAuto(rodado)})
    method todosLosPedidosTienenIncombatible(color) = pedidos.all({p => p.coloresIncombatibles().contains(color)})
    method relajarTodosLosPedidos() { pedidos.forEach({p => p.relajar()}) }
}