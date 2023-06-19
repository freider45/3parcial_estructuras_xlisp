;En esta funcion buscamos un banco y para ese banco le buscamos
;un cliente en especifico

(defun buscar_banco_cliente()
    (format t "~%-----------------------------------~%")
    (format t "|    Buscar Cliente de un Banco    |~%")
    (format t "-----------------------------------~%")
    ;Creamos la instancia del banco y le asignamos lo que nos retorne la funcion de buscar               
    (setq banco (make-Banco))
    (setq banco (buscar_banco))  
    ;En caso de que el banco exista, procedemos a pedir la identificacion del cliente
    (if banco
        (progn 
            ;Creamos la instancia del cliente y le asignamos lo que nos retorne la funcion de buscar   
            (setq cliente (make-Cliente))
            (setq cliente (buscar_cliente banco))  
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
                (format t "~%El cliente con el numero de identificacion que ingreso no existe!~%")
            )
        )
        ;En caso de no encontrar el banco
        (format t "~%El banco con el nit que ingreso no existe!~%")
    ) 
)