;En esta funcion tenemos la instancia de un banco y a ese banco le
;creamos sun vector de clientes, luego vvalidamos espacio en el vector
;dde bancos y si lo hay agregamos los datos para cada banco

(defun agregar_banco()
    (format t "~%-----------------------------------~%")
    (format t "|         Registrar Banco         |~%")
    (format t "-----------------------------------~%")
    (setq banco (make-Banco))
    ;Creamos el vetor de clientes para cada banco e inicializamos con ceros 
    (setf (Banco-v_clientes banco)(make-array 3))  
    (setq c 0)
    (loop
        (setf (aref (Banco-v_clientes banco) c)0)
        (setq c (+ 1 c))  ; 
        (when (> c (1- (length (Banco-v_clientes banco))))(return))
    ) 
    (setq pos 0)
    (loop 
        ;Buscamos espacio para registrar un banco
        (if (eq (aref v_bancos pos) 0)
            (progn   
                ;Pedimos los datos y validamos para hacer el registro
                (format t "Banco ~D: ~%"(+ 1 pos))
                (print "Digite el nit: ")
                (setq nit (read))
                (setq nit (validar_numero nit))
                (setf (Banco-nit banco) nit) 
                (print "Escriba el nombre: ")
                (setq nombre (read-line))
                (setf (Banco-nombre banco) nombre)
                (print "Digite el numero de empleados: ")
                (setq num_empleados (read))   
                (setq num_empleados (validar_numero num_empleados))
                (setf (Banco-num_empleados banco) num_empleados)
                ;Agregamos el banco al vector de bancos 
                (setf (aref v_bancos pos) banco)
                (format t "~%Banco registrado con exito!~%")
                ;Una vez se registra el banco, salimos   
                (return)
            )
            ;En caso de uqe toque buscar un espacio para registrar
            (setq pos (+ 1 pos))
        )
        ;Cuando se llenen los espacios de registro, ya no deja registrar mas
        (when (> pos (1- (length v_bancos)))(format t "~%No se puede registrar mas bancos por el momento~%")(return))
    )
)