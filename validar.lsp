;En este archivo hacemos funciones de validacion

;Validamos que se ingrese un numero correcto y retornamos el nuevo numero 
(defun validar_numero(numero)
    (if (< numero 1)
        (progn 
            (loop 
                (format t "El numero ~D debe ser mayor a 0. Ingrese un nuevo numero: "numero)
                (setq numero (read))
                (when (> numero 0)(return-from validar_numero numero))
            )
            
        )
    )
    (return-from validar_numero numero)
)
