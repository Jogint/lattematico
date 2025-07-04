if (!invocou) {
    var pools = [global.weapons1, global.weapons2, global.weapons3, global.weapons4];
    if (pool >= 1 && pool <= 4) {
        var arma_pool = pools[pool - 1];
        if (array_length(arma_pool) > 0) {
            var _arma = irandom(array_length(arma_pool) - 1);
            instance_create_layer(x, y, "Armas", arma_pool[_arma]);
            array_delete(arma_pool, _arma, 1);
            // Atualiza o pool correspondente
            switch (pool) {
                case 1: global.weapons1 = arma_pool; break;
                case 2: global.weapons2 = arma_pool; break;
                case 3: global.weapons3 = arma_pool; break;
                case 4: global.weapons4 = arma_pool; break;
            }
            invocou = true;
        }
    }
}