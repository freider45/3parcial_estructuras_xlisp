;


(defun crear()
    ;Crear el vector de bancos
    (setq v_bancos (make-array 2))

    ;Crear el vector de clientes
    (setq v_clientes (make-array 3))

    ;Crear la estructura banco
    (defstruct Banco
        nit
        nombre
        num_empleados
    )

    ;Crear la estrucutra cliente
    (defstruct Cliente
        num_identificacion
        nombre
        genero
    )

    ;Creamos las instancias para manipular las estructuras
    (setq banco (make-Banco))
    (setq cliente (make-Cliente))

    ;Incializacion del vector con ceros
    (setq b 0)
    (loop
        (setf (aref v_bancos b)0)
        (setq b (+ 1 b))  ; 
        (when (> b 2)(return))
    )
)