;En esta funcion buscamos un banco y para ese banco le buscamos
;un cliente en especifico

(defun buscar_banco_cliente()
    (format t "~%-----------------------------------~%")
    (format t "|    Buscar Cliente de un Banco    |~%")
    (format t "-----------------------------------~%")
    ;Pedimos el nit del banco, validamos y buscamos con la ayuda de la funcion buscar_banco
    (print "Digite el nit del banco: ")
    (setq nit (read))
    (setq nit (validar_numero nit))                     
    (setq banco (make-Banco))
    (setq banco (buscar_banco nit))  
    ;En caso de que el banco exista, procedemos a pedir la identificacion del cliente
    (if banco
        (progn 
            ;Pedimos la identificacion, validamos y buscamos con la ayuda de la funcion buscar-cliente
            (print "Digite el numero de identificacion del cliente: ")
            (setq num_identificacion (read))
            (setq num_identificacion (validar_numero num_identificacion))                     
            (setq cliente (make-Cliente))
            (setq cliente (buscar_cliente banco num_identificacion))  
            ;En caso de que el cliente exista, imprimimos la informacion del cliente de ese banco
            (if cliente
                (progn 
                    ;Mostramos la informacion del cliente y el nombre del banco al que pertenece
                    (format t "~%----------------------------------~%")
                    (format t "Informacion del cliente del banco ~S~%"(Banco-nombre banco))
                    (format t "~%Numero de identificacion: ~D~%"(Cliente-num_identificacion cliente))
                    (format t "Nombre: ~S~%"(Cliente-nombre cliente))
                    (format t "Genero: ~S~%"(Cliente-genero cliente))
                )
                ;En caso de no encontrar el cliente del banco especifico
                (format t "~%El cliente con numero de identificacion ~D no existe~%"num_identificacion)
            )
        )
        ;En caso de no encontrar el banco
        (format t "~%El banco con nit ~D no existe~%"nit)
    ) 
)