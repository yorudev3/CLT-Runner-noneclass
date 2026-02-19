/// @description chance(percent)
/// @param percent Porcentagem de chance (0-100)
/// @return Retorna true se a chance ocorrer

function chance(percent){
    return (irandom(99) < percent);
}