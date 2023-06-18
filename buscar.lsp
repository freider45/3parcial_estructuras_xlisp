;En este archivo nos encargamos de hacer las busquedas de los bancos 
;y de los clientes

;Esta funcion nos permite buscar un banco, donde recibimos el nit
;y en caso de encontrarlo retorna un banco, en otro caso retorna nil
(defun buscar_banco(nit)
    (setq banco (make-Banco))
    (setq pos 0)
    (loop 
        ;preguntamos si en la posicion no hay un cero (banco)
        (if (not (eq (aref v_bancos pos) 0))
            (progn 
                ;Como sabemos que hay un banco, lo asignamos a la instancia
                (setq banco (aref v_bancos pos))
                ;comparamos el nit recibido con el codigo de cada uno de los bancos
                (if (eq nit (Banco-nit banco))
                    (progn 
                        ;retornamos el banco encontrado
                        (return-from buscar_banco banco)
                    )
                )
            )
        )
        ;buscamos hasta el tamaño del vector
        (setq pos (1+ pos))
        (when (> pos 1)(return))
    )
)


;Esta funcion se encarga de buscar un cliente de un banco especifico
(defun buscar_cliente(banco num_identificacion)
    (setq cliente (make-Cliente))
    (setq pos 0)
    (loop 
        ;preguntamos si en la posicion no hay un cero (cliente)
        (if (not (eq (aref (Banco-v_clientes banco) pos) 0))
            (progn 
                ;Como sabemos que hay un cliente, lo asignamos a la instancia
                (setq cliente (aref (Banco-v_clientes banco) pos))
                ;comparamos el numero de identificacion recibido, con el codigo de cada uno de los clientes
                (if (eq num_identificacion (Cliente-num_identificacion cliente))
                    (progn 
                        ;retornamos el banco encontrado
                        (return-from buscar_cliente cliente)
                    )
                )
            )
        )
        ;buscamos hasta el tamaño del vector
        (setq pos (1+ pos))
        (when (> pos 2)(return))
    )
)
