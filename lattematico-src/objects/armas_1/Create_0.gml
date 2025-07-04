if (!instance_exists(obj_f)) {
    var texto = "Pressione F para soltar a arma atual (longe de paredes!)";

    var tempx = 374
    var tempy = 294;

    instance_create_layer(tempx, tempy, "Instances", obj_f);
}