CREATE PROCEDURE mantenimiento.pr_altaProducto
    @p_codigo char(5), @p_descripcion varchar(60),
	@p_precio smallmoney, @p_tipo char(3)
AS
BEGIN
   -- COMPROBAMOS LA EXISTENCIA DEL
   -- TIPO DE PRODUCTO
   IF NOT EXISTS (select *
                  from mantenimiento.tiposEquipos
				  where codigoTipo=@p_tipo)
		RETURN -1

   -- EXISTE
   INSERT INTO mantenimiento.productos
       (codigoProducto,descripcion,
	    precioreferencia,tipoProducto)
	VALUES (@p_codigo,@p_descripcion,
	        @p_precio,@p_tipo)

	RETURN 0
END