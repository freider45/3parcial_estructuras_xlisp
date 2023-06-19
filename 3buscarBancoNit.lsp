;En esta funcion buscamos un banco por medio de su nit, donde imprimimos 
;su informacion y la de sus clientes registrados

(defun buscar_banco_nit()
    (format t "~%-----------------------------------~%")
    (format t "|           Buscar Banco          |~%")
    (format t "-----------------------------------~%")      
    ;Creamos la instancia del banco y le asignamos lo que nos retorne la funcion de buscar              
    (setq banco (make-Banco))
    (setq banco (buscar_banco))   
    (setq pos 0)     
    (setq cliente (make-Cliente))   
    ;Validamos que el banco se haya encontrado, en caso contrario mostramos mensaje
    (if banco
        (progn 
            ;Mostramos la informacion del banco que encontramos
            (format t "~%---------------------~%")
            (format t "Informacion del banco~%")
            (format t "Nit: ~D~%"(Banco-nit banco))
            (format t "Nombre: ~S~%"(Banco-nombre banco))
            (format t "Numero de empleados: ~D~%"(Banco-num_empleados banco))
            (format t "~%---------------------~%")
            (format t "Informacion de clientes del banco ~S~%"(Banco-nombre banco))
            ;Imprimimos la informacion de los clientes que tenga el banco registrados
            (loop 
                (if (not (eq (aref (Banco-v_clientes banco) pos) 0))
                    (progn
                        ;Asignamos a la instancia cliente, el cliente del vector 
                        (setq cliente (aref (Banco-v_clientes banco) pos))
                        (format t "~%Cliente ~D: ~%"(+ 1 pos))
                        (format t "Numero de identificacion: ~D~%"(Cliente-num_identificacion cliente))
                        (format t "Nombre: ~S~%"(Cliente-nombre cliente))
                        (format t "Genero: ~S~%"(Cliente-genero cliente))
                    )
                )
                (setq pos (+ 1 pos))
                (when  (> pos (1- (length (Banco-v_clientes banco))))(return))
            )
        )
        (format t "~%El banco con el nit que ingreso no existe!~%")
    )
)