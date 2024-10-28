-- CREACIÓN DE MODULOS


INSERT INTO module (name, base_path) VALUES ('CLIENTE', '/clientes');
INSERT INTO module (name, base_path) VALUES ('AUTH', '/auth');
INSERT INTO module (name, base_path) VALUES ('PAIS', '/paises');
INSERT INTO module (name, base_path) VALUES ('REGION', '/regiones');
INSERT INTO module (name, base_path) VALUES ('CIUDAD', '/ciudades');
INSERT INTO module (name, base_path) VALUES ('APROBACIONSERVICIO', '/aproservicio');
INSERT INTO module (name, base_path) VALUES ('DETALLEORDEN', '/detorden');
INSERT INTO module (name, base_path) VALUES ('DETALLEORDENTRABAJO', '/detordtrabajo');
INSERT INTO module (name, base_path) VALUES ('DIRECCION', '/direcciones');
INSERT INTO module (name, base_path) VALUES ('EMAILPERSONA', '/emailperson');
INSERT INTO module (name, base_path) VALUES ('EMPRESA', '/empresas');
INSERT INTO module (name, base_path) VALUES ('ESTADOAPROVACION', '/estaprovacion');
INSERT INTO module (name, base_path) VALUES ('INSUMO', '/insumo');
INSERT INTO module (name, base_path) VALUES ('ORDENSERVICIO', '/ordenservicio');
INSERT INTO module (name, base_path) VALUES ('ORDENTRABAJO', '/ordtrabajo');
INSERT INTO module (name, base_path) VALUES ('PERSONA', '/persona');
INSERT INTO module (name, base_path) VALUES ('PERSONAINSUMO', '/perinsumo');
INSERT INTO module (name, base_path) VALUES ('SERVICIO', '/servicios');
INSERT INTO module (name, base_path) VALUES ('SUCURSAL', '/sucursales');
INSERT INTO module (name, base_path) VALUES ('TIPOEMAIL', '/tpemail');
INSERT INTO module (name, base_path) VALUES ('TIPOEMPRESA', '/tpempresas');
INSERT INTO module (name, base_path) VALUES ('TIPOPERSONA', '/tipopersona');

INSERT INTO module (name, base_path) VALUES ('ESTADOORDEN', '/estordenes');
INSERT INTO module (name, base_path) VALUES ('TELPERSONA', '/telpersonas');
INSERT INTO module (name, base_path) VALUES ('TIPOTELEFONO', '/tptelefonos');


-- CREACIÓN DE OPERACIONES


INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_CLIENTES','', 'GET', false, 1);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('REGISTER_ONE','', 'POST', true, 1);

INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('AUTHENTICATE','/authenticate', 'POST', true, 2);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('VALIDATE-TOKEN','/validate-token', 'GET', true, 2);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_MY_PROFILE','/profile','GET', false, 2);

INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_PAISES','', 'GET', false, 3);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_PAIS','/[0-9]*', 'GET', false, 3);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_PAIS','', 'POST', false, 3);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_PAIS','/[0-9]*', 'PUT', false, 3);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_PAIS','/[0-9]*/disabled', 'PUT', false, 3);

INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_REGIONES','', 'GET', false, 4);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_REGION','/[0-9]*', 'GET', false, 4);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_REGION','', 'POST', false, 4);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_REGION','/[0-9]*', 'PUT', false, 4);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_REGION','/[0-9]*/disabled', 'PUT', false, 4);

-- CIUDAD MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_CIUDADES', '', 'GET', false, 5);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_CIUDAD', '/[0-9]*', 'GET', false, 5);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_CIUDAD', '', 'POST', false, 5);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_CIUDAD', '/[0-9]*', 'PUT', false, 5);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_CIUDAD', '/[0-9]*/disabled', 'PUT', false, 5);

-- APROBACIONSERVICIO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_APROBACIONSERVICIOS', '', 'GET', false, 6);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_APROBACIONSERVICIO', '/[0-9]*', 'GET', false, 6);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_APROBACIONSERVICIO', '', 'POST', false, 6);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_APROBACIONSERVICIO', '/[0-9]*', 'PUT', false, 6);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_APROBACIONSERVICIO', '/[0-9]*/disabled', 'PUT', false, 6);

-- DETALLEORDEN MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_DETALLEORDENES', '', 'GET', false, 7);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_DETALLEORDEN', '/[0-9]*', 'GET', false, 7);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_DETALLEORDEN', '', 'POST', false, 7);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_DETALLEORDEN', '/[0-9]*', 'PUT', false, 7);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_DETALLEORDEN', '/[0-9]*/disabled', 'PUT', false, 7);

-- DETALLEORDENTRABAJO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_DETALLEORDENTRABAJOS', '', 'GET', false, 8);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_DETALLEORDENTRABAJO', '/[0-9]*', 'GET', false, 8);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_DETALLEORDENTRABAJO', '', 'POST', false, 8);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_DETALLEORDENTRABAJO', '/[0-9]*', 'PUT', false, 8);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_DETALLEORDENTRABAJO', '/[0-9]*/disabled', 'PUT', false, 8);

-- DIRECCION MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_DIRECCIONES', '', 'GET', false, 9);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_DIRECCION', '/[0-9]*', 'GET', false, 9);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_DIRECCION', '', 'POST', false, 9);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_DIRECCION', '/[0-9]*', 'PUT', false, 9);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_DIRECCION', '/[0-9]*/disabled', 'PUT', false, 9);

-- EMAILPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_EMAILPERSONAS', '', 'GET', false, 10);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_EMAILPERSONA', '/[0-9]*', 'GET', false, 10);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_EMAILPERSONA', '', 'POST', false, 10);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_EMAILPERSONA', '/[0-9]*', 'PUT', false, 10);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_EMAILPERSONA', '/[0-9]*/disabled', 'PUT', false, 10);

-- EMPRESA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_EMPRESAS', '', 'GET', false, 11);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_EMPRESA', '/[0-9]*', 'GET', false, 11);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_EMPRESA', '', 'POST', false, 11);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_EMPRESA', '/[0-9]*', 'PUT', false, 11);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_EMPRESA', '/[0-9]*/disabled', 'PUT', false, 11);

-- ESTADOAPROVACION MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_ESTADOAPROVACIONES', '', 'GET', false, 12);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_ESTADOAPROVACION', '/[0-9]*', 'GET', false, 12);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_ESTADOAPROVACION', '', 'POST', false, 12);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_ESTADOAPROVACION', '/[0-9]*', 'PUT', false, 12);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_ESTADOAPROVACION', '/[0-9]*/disabled', 'PUT', false, 12);

-- INSUMO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_INSUMOS', '', 'GET', false, 13);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_INSUMO', '/[0-9]*', 'GET', false, 13);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_INSUMO', '', 'POST', false, 13);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_INSUMO', '/[0-9]*', 'PUT', false, 13);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_INSUMO', '/[0-9]*/disabled', 'PUT', false, 13);

-- ORDENSERVICIO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_ORDENSERVICIOS', '', 'GET', false, 14);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_ORDENSERVICIO', '/[0-9]*', 'GET', false, 14);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_ORDENSERVICIO', '', 'POST', false, 14);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_ORDENSERVICIO', '/[0-9]*', 'PUT', false, 14);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_ORDENSERVICIO', '/[0-9]*/disabled', 'PUT', false, 14);

-- ORDENTRABAJO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_ORDENTRABAJOS', '', 'GET', false, 15);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_ORDENTRABAJO', '/[0-9]*', 'GET', false, 15);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_ORDENTRABAJO', '', 'POST', false, 15);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_ORDENTRABAJO', '/[0-9]*', 'PUT', false, 15);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_ORDENTRABAJO', '/[0-9]*/disabled', 'PUT', false, 15);

-- PERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_PERSONAS', '', 'GET', false, 16);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_PERSONA', '/[0-9]*', 'GET', false, 16);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_PERSONA', '', 'POST', false, 16);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_PERSONA', '/[0-9]*', 'PUT', false, 16);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_PERSONA', '/[0-9]*/disabled', 'PUT', false, 16);

-- PERSONAINSUMO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_PERSONAINSUMOS', '', 'GET', false, 17);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_PERSONAINSUMO', '/[0-9]*', 'GET', false, 17);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_PERSONAINSUMO', '', 'POST', false, 17);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_PERSONAINSUMO', '/[0-9]*', 'PUT', false, 17);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_PERSONAINSUMO', '/[0-9]*/disabled', 'PUT', false, 17);

-- SERVICIO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_SERVICIOS', '', 'GET', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_SERVICIO', '/[0-9]*', 'GET', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_SERVICIO', '', 'POST', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_SERVICIO', '/[0-9]*', 'PUT', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_SERVICIO', '/[0-9]*/disabled', 'PUT', false, 18);

-- SUCURSAL MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_SUCURSALES','', 'GET', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_SUCURSAL','/[0-9]*', 'GET', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_SUCURSAL','', 'POST', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_SUCURSAL','/[0-9]*', 'PUT', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_SUCURSAL','/[0-9]*/disabled', 'PUT', false, 19);

-- TIPOEMAIL MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TIPOEMAILS','', 'GET', false, 20);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TIPOEMAIL','/[0-9]*', 'GET', false, 20);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TIPOEMAIL','', 'POST', false, 20);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TIPOEMAIL','/[0-9]*', 'PUT', false, 20);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TIPOEMAIL','/[0-9]*/disabled', 'PUT', false, 20);

-- TIPOEMPRESA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TIPOEMPRESAS','', 'GET', false, 21);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TIPOEMPRESA','/[0-9]*', 'GET', false, 21);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TIPOEMPRESA','', 'POST', false, 21);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TIPOEMPRESA','/[0-9]*', 'PUT', false, 21);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TIPOEMPRESA','/[0-9]*/disabled', 'PUT', false, 21);

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TIPOPERSONAS','', 'GET', false, 22);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TIPOPERSONA','/[0-9]*', 'GET', false, 22);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TIPOPERSONA','', 'POST', false, 22);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TIPOPERSONA','/[0-9]*', 'PUT', false, 22);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TIPOPERSONA','/[0-9]*/disabled', 'PUT', false, 22);

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_ESTADOORDENES','', 'GET', false, 23);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_ESTADOORDEN','/[0-9]*', 'GET', false, 23);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_ESTADOORDEN','', 'POST', false, 23);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_ESTADOORDEN','/[0-9]*', 'PUT', false, 23);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_ESTADOORDEN','/[0-9]*/disabled', 'PUT', false, 23);

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TELPERSONAS','', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TELPERSONA','/[0-9]*', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TELPERSONA','', 'POST', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TELPERSONA','/[0-9]*', 'PUT', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TELPERSONA','/[0-9]*/disabled', 'PUT', false, 24);

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TIPOTELEFONOS','', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TIPOTELEFONO','/[0-9]*', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TIPOTELEFONO','', 'POST', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TIPOTELEFONO','/[0-9]*', 'PUT', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TIPOTELEFONO','/[0-9]*/disabled', 'PUT', false, 24);
-- CREACIÓN DE ROLES


INSERT INTO role (name) VALUES ('CLEINTE');
INSERT INTO role (name) VALUES ('ADMINISTRADOR');
INSERT INTO role (name) VALUES ('JEFE_RECURSOS_HUMANOS');
INSERT INTO role (name) VALUES ('JEFE_BODEGA');
INSERT INTO role (name) VALUES ('JEFE_INVENTARIO');
INSERT INTO role (name) VALUES ('JEFE_MARKETING');
INSERT INTO role (name) VALUES ('JEFE_SISTEMAS');
INSERT INTO role (name) VALUES ('GERENTE');
INSERT INTO role (name) VALUES ('PROFESIONAL');
INSERT INTO role (name) VALUES ('AUXILIAR_BODEGA');
INSERT INTO role (name) VALUES ('PROVEEDOR');
INSERT INTO role (name) VALUES ('JEFE_COMPRA');


-- CREACIÓN DE PERMISOS


INSERT INTO granted_permission (role_id, operation_id) VALUES (1, 5);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 5);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 6);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 7);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 8);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 9);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 10);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 11);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 12);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 13);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 14);


-- CREACIÓN DE USUARIOS


INSERT INTO PrestService1.`user` (name, password, username, role_id) VALUES('marco', '$2a$10$GiN/Ggyix7JPEQS1VNH6BesX.CnX0RN8CZPGezoiDVRcdbDnSX0Va', 'sistemas', 7);
