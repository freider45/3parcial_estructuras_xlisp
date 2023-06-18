;En esta funcion se crea las estructuras de cliente y banco
;tambien tenemos el vector de bancos que es en general e inicializamos con ceros

(defun crear()
    ;Crear el vector de bancos
    (setq v_bancos (make-array 2))

    ;Crear la estructura banco
    (defstruct Banco
        nit
        nombre
        num_empleados
        v_clientes
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

    ;Incializacion del vector de bancos con ceros
    (setq b 0)
    (loop
        (setf (aref v_bancos b)0)
        (setq b (+ 1 b))  ; 
        (when (> b 1)(return))
    )
)