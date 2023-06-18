
(load "0crear.lsp")
(load "1agregarBanco.lsp")
(load "2agregarCliente.lsp")
(load "3buscarBancoNit.lsp")
(load "buscarBanco.lsp")
(load "validar.lsp")

(crear)
(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar Banco")
	(print "   2.   Registrar Cliente")
	(print "   3.   Buscar Banco")
	(print "   4.   Buscar Cliente de un Banco")
	(print "   5.   Consultar Clientes Femenino")
	(print "   6.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
	  (setq opcion (validar_numero opcion))
  	(case opcion
		(1 
            (agregar_banco)
        )
		(2 
			(agregar_cliente)
		)
		(3 
			(buscar_banco_nit)
		)
		(4 (print "Buscar Cliente en un Banco"))
		(5 (print "Consultar el Numero de clientes Femenino"))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )