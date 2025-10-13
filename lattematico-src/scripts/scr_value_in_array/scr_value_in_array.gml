// Creditos a "D_W" em forum.gamemaker.io
function value_in_array(value,array) {
    //    Failsafes:
    if( !is_array(array) ){
        return false;
    }
    if( array_length(array) == 0 ){
        return false;
    }
    
    //    Find Value
    for( var i = 0; i < array_length(array); i++ ){
        if( array[i] == value ){ return true; }
    }
    
    //    Not Found:
    return false;
}