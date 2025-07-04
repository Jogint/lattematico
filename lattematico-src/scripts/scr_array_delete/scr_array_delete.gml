function array_delete(array, index, count) {
    if (index < 0 || index >= array_length(array)) return array; // Índice inválido
    if (count < 1) return array; // Nada a remover
    var len = array_length(array);
    var new_array = array_create(len - count);
    var i = 0;
    for (var j = 0; j < len; j++) {
        if (j < index || j >= index + count) {
            new_array[i++] = array[j];
        }
    }
    return new_array;
}