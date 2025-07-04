if (invocou == false) {
    if (pool == 1 && array_length(global.weapons1) > 0) {
        var _arma = irandom(array_length(global.weapons1) - 1);
        while (_arma >= array_length(global.weapons1)) {
            _arma = irandom(array_length(global.weapons1) - 1);  // Realeatoriza se o índice não for válido
        }
        instance_create_layer(self.x, self.y, "Armas", global.weapons1[_arma]);
        array_delete(global.weapons1, _arma, 1);
        invocou = true;
    } else if (pool == 2 && array_length(global.weapons2) > 0) {
        var _arma = irandom(array_length(global.weapons2) - 1);
        while (_arma >= array_length(global.weapons2)) {
            _arma = irandom(array_length(global.weapons2) - 1);  // Realeatoriza se o índice não for válido
        }
        instance_create_layer(self.x, self.y, "Armas", global.weapons2[_arma]);
        array_delete(global.weapons2, _arma, 1);
        invocou = true;
    } else if (pool == 3 && array_length(global.weapons3) > 0) {
        var _arma = irandom(array_length(global.weapons3) - 1);
        while (_arma >= array_length(global.weapons3)) {
            _arma = irandom(array_length(global.weapons3) - 1);  // Realeatoriza se o índice não for válido
        }
        instance_create_layer(self.x, self.y, "Armas", global.weapons3[_arma]);
        array_delete(global.weapons3, _arma, 1);
        invocou = true;
    } else if (pool == 4 && array_length(global.weapons4) > 0) {
        var _arma = irandom(array_length(global.weapons4) - 1);
        while (_arma >= array_length(global.weapons4)) {
            _arma = irandom(array_length(global.weapons4) - 1);  // Realeatoriza se o índice não for válido
        }
        instance_create_layer(self.x, self.y, "Armas", global.weapons4[_arma]);
        array_delete(global.weapons4, _arma, 1);
        invocou = true;
    }
}