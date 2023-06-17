
(load "crear.lsp")
(load "agregarBanco.lsp")
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
  	(case opcion
		(1 
            (agregar_banco)
        )
		(2 (print "Registro de un Cliente"))
		(3 (print "Buscar Banco"))
		(4 (print "Buscar Cliente en un Banco"))
		(5 (print "Consultar el Numero de clientes Femenino"))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )