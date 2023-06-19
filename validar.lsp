;En este archivo hacemos funciones de validacion

;Validamos que se ingrese un numero correcto y retornamos el nuevo numero 
(defun validar_numero(numero)
    ;En caso de que el numero no sea correcto, volvemos a pedir y retornamos el nuevo numero 
    ;con numberp verificamos que no sea una cadena
    (if (not (and (numberp numero) (> numero 0)))
        (progn 
            (loop 
                (format t "El valor ingresado no es un numero valido o no es mayor a 0. Ingrese un nuevo numero: ")
                (setq numero (read))
                (when (and (numberp numero) (> numero 0))(return-from validar_numero numero))
            )      
        )
        ;En caso que el numero sea correcto, retornamos el mismo numero
        (return-from validar_numero numero)
    )  
)

;Validamos que un genero que escriba el uaurio este entre los predefinidos
(defun validar_genero(genero)
    ;Usamos string-equal para saber si una cadena es igual a otra sin importar mayuscula o minuscula
    ;nos devuelve T en caso de ser iguales
    (if (not (or (string-equal genero "femenino") (string-equal genero "masculino") 
                (string-equal genero "no definido")))
        (progn 
            (loop 
                ;Volvemos a pedir el genero en caso de no ser igual a los predefinidos
                (format t "~S debe ser un genero entre (femenino, masculino o no definido), vuelva a escribir el genero: "genero)
                (setq genero (read-line))
                ;Salimos cuando el genero sea igual a alguno de los predefinidos y retornamos el genero correcto
                (when (or (string-equal genero "femenino") (string-equal genero "masculino")
                        (string-equal genero "no definido"))(return-from validar_genero genero))
            )
        )
        ;En caso de ser igual a alguno de los predefinidos, retornamos el mismo genero que recibio
        (return-from validar_genero genero)
    )
)

