
(defun agregar_banco()
    (format t "~%-----------------------------------~%")
    (format t "|         Registrar Banco         |~%")
    (format t "-----------------------------------~%")
    (setq pos 0)
    (loop 
        (if (eq (aref v_bancos pos) 0)
            (progn   
                (format t "Banco ~D: ~%"(+ 1 pos))
                (print "Digite el nit: ")
                (setq nit (read))
                (validar_numero nit)
                (setf (Banco-nit banco) nit) 
                (print "Escriba el nombre: ")
                (setq nombre (read))
                (setf (Banco-nombre banco) nombre)
                (print "Digite el numero de empleados: ")
                (setq num_empleados (read))   
                (validar_numero num_empleados)
                (setf (Banco-num_empleados banco) num_empleados)
                (setf (aref v_bancos pos) banco)  
                (return)
            )
            (setq pos (+ 1 pos))
        )
        (when (> pos 1)(format t "~%No se puede registrar mas bancos~%")(return))
    )


    
    
)