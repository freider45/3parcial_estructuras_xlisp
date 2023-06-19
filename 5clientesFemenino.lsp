
;en esta funcion contamos la cantidad de clientes que son de genero femenino de un banco en especifico
(defun clientes_femenino()
    (format t "~%-----------------------------------~%")
    (format t "|   Consultar Clientes Femenino   |~%")
    (format t "-----------------------------------~%")      
    ;Creamos la instancia del banco y le asignamos lo que nos retorne la funcion de buscar              
    (setq banco (make-Banco))
    (setq banco (buscar_banco))  
    (setq cliente (make-Cliente))
    (setq pos 0)
    (setq contador 0)
    ;Validamos que el banco se haya encontrado, en caso contrario mostramos mensaje
    (if banco
        (progn 
            (loop 
                ;preguntamos si en la posicion no hay un cero (cliente)
                (if (not (eq (aref (Banco-v_clientes banco) pos) 0))
                    (progn 
                        ;Como sabemos que hay un cliente, lo asignamos a la instancia
                        (setq cliente (aref (Banco-v_clientes banco) pos))
                        ;comparamos el genero femenino con el de cada cliente para hacer el conteo
                        (if (string-equal (Cliente-genero cliente) "FEMENINO")
                            (setq contador (+ 1 contador))
                        )
                    )
                )
                ;buscamos hasta el tamaño del vector
                (setq pos (1+ pos))
                (when (> pos (1- (length (Banco-v_clientes banco))))(return))
            )
            ;Validamos la cantidad para mostrar el mensaje adecuado
            (if (eq contador 1)
                (format t "~%Hay ~D cliente registrado en el banco ~S que es de genero femenino~%"contador (Banco-nombre banco))
                (format t "~%Hay ~D clientes registrados en el banco ~S que son de genero femenino~%"contador (Banco-nombre banco))
            )
        )
        ;En caso de no encontrar el banco
        (format t "~%El banco con el nit que ingreso no existe!~%")
    )
)