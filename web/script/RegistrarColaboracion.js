function hola() {
    var combo = document.getElementById("combo");
    for (var i = 0; i < 2; i++) {
        combo.options[i] = new Option('prueba');
    }
}