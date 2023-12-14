htmltextinput = "
             #estacion {
               border-radius: 15px; /* Bordes redondeados */
               font-family: 'Arial'; /* Fuente Comic Sans */
               font-weight: bold; /* Texto en negrita */
               font-size: 16px; /* Tamaño de fuente más grande */
               color: #777777; /* Color de fuente gris */
               background-color: #FFFFFF; /* Color crema */
               border: 2px solid black; /* Contorno de línea negra */
             }
           "

backgroundDerecha = "background-color: #f9f9f9; border-radius: 15px; padding: 15px; margin-rigth: 15px;"

intro_json <- '
      $("#estacion").on("keydown", function(e) {
        if (e.key === "Enter") {
          var valor = $(this).val().trim();
          if (valor !== "") {
            Shiny.setInputValue("input_enter", valor);
            $(this).val("");  // Limpiar el cuadro de texto
          }
        }
      });
    '