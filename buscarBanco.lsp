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
