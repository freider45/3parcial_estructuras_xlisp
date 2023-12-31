;;Autores:
;Jorge Ayerbe
;Freider Escobar


(load "0crear.lsp")
(load "1agregarBanco.lsp")
(load "2agregarCliente.lsp")
(load "3buscarBancoNit.lsp")
(load "4buscarBancoCliente.lsp")
(load "5clientesFemenino")
(load "buscar.lsp")
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
		(4 
			(buscar_banco_cliente)
		)
		(5 
			(clientes_femenino)
		)
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )