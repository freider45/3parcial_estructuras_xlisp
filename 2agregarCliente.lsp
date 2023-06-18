;Esta funcion se encarga de registrar un cliente a un banco en especifico
;donde pedimos el nit y validamos que exista el banco, si existe, procedemos 
;a crear el cliente 

(defun agregar_cliente()
    (format t "~%-----------------------------------~%")
    (format t "|         Registrar Cliente        |~%")
    (format t "-----------------------------------~%")
    ;Pedimos el nit para saber a que vango se desea registrar el cliente
    (print "Digite el nit del banco al que desea registrarse: ")
    (setq nit (read))
    (setq nit (validar_numero nit))      
    ;Creamos la instancia del banco y le asignamos lo que nos retorne la funcion de buscar              
    (setq banco (make-Banco))
    (setq banco (buscar_banco nit))   
    ;Validamos que el banco que se busco sea distinto de nil, en caso contrario se imprime el mensaje     
    (if banco
        (progn 
            (setq cliente (make-Cliente))
            (setq pos 0) 
            (loop 
                ;Preguntamos si en el vector de clientes del banco tiene espacio para registrar
                (if (eq (aref (Banco-v_clientes banco) pos) 0)
                    (progn   
                        ;Pedimos los datos y validamos para hacer el registro
                        (format t "~%Cliente ~D del banco: ~S~%"(+ 1 pos) (Banco-nombre banco))
                        (print "Digite el numero de identificacion: ")
                        (setq num_identificacion (read))
                        (setq num_identificacion (validar_numero num_identificacion))
                        (setf (Cliente-num_identificacion cliente) num_identificacion) 
                        (print "Escriba el nombre: ")
                        (setq nombre (read-line))
                        (setf (Cliente-nombre cliente) nombre)
                        (print "Escriba el genero: ")
                        (setq genero (read-line)) 
                        (setq genero (validar_genero genero))  
                        (setf (Cliente-genero cliente) (string-upcase genero))
                        ;Agregamos el cliente al vector de clientes del banco
                        (setf (aref (Banco-v_clientes banco) pos) cliente) 
                        (format t "~%Cliente registrado con exito!~%")
                        ;Se registra el cliente y se termina 
                        (return)
                    )
                    ;Seguir buscando espacio en otras posiciones
                    (setq pos (+ 1 pos))
                )
                ;Cuando no hay mas espacios disponibles
                (when (> pos 2)(format t "~%No se puede registrar mas clientes a este banco por el momento~%")(return))
            )
        )
        (format t "~%El banco con nit ~D no existe, no se puede registrar cliente~%"nit)
    )
)