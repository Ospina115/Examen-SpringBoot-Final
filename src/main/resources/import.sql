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

-- 10

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

-- 20

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

-- 30

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

--  40

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

-- 50

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

-- 60

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

-- 70

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

-- 80

-- SERVICIO MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_SERVICIOS', '', 'GET', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_SERVICIO', '/[0-9]*', 'GET', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_SERVICIO', '', 'POST', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_SERVICIO', '/[0-9]*', 'PUT', false, 18);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_SERVICIO', '/[0-9]*/disabled', 'PUT', false, 18);

-- 85

-- SUCURSAL MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_SUCURSALES','', 'GET', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_SUCURSAL','/[0-9]*', 'GET', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_SUCURSAL','', 'POST', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_SUCURSAL','/[0-9]*', 'PUT', false, 19);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_SUCURSAL','/[0-9]*/disabled', 'PUT', false, 19);

-- 90

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

-- 100

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

-- 110

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TELPERSONAS','', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TELPERSONA','/[0-9]*', 'GET', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TELPERSONA','', 'POST', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TELPERSONA','/[0-9]*', 'PUT', false, 24);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TELPERSONA','/[0-9]*/disabled', 'PUT', false, 24);

-- 115

-- TIPOPERSONA MODULE OPERATIONS
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ALL_TIPOTELEFONOS','', 'GET', false, 25);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('READ_ONE_TIPOTELEFONO','/[0-9]*', 'GET', false, 25);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('CREATE_ONE_TIPOTELEFONO','', 'POST', false, 25);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('UPDATE_ONE_TIPOTELEFONO','/[0-9]*', 'PUT', false, 25);
INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('DISABLE_ONE_TIPOTELEFONO','/[0-9]*/disabled', 'PUT', false, 25);

INSERT INTO operation (name, path, http_method, permit_all, module_id) VALUES ('LOGOUT_MY_PROFILE','/logout','POST', false, 26);
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

        -- permisos cliente
INSERT INTO granted_permission (role_id, operation_id) VALUES (1, 5);
INSERT INTO granted_permission (role_id, operation_id) VALUES (1, 121);

        -- permisos administrador

INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 68);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 69);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 70);
INSERT INTO granted_permission (role_id, operation_id) VALUES (2, 121);

        -- permisos JEFE_RECURSOS_HUMANOS

INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 68);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 69);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 82);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 83);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 84);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 76);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 77);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 78);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 79);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 71);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 72);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 73);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 74);
INSERT INTO granted_permission (role_id, operation_id) VALUES (3, 121);

        -- permisos JEFE_BODEGA

INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 58);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 59);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 23);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 24);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 25);
INSERT INTO granted_permission (role_id, operation_id) VALUES (4, 121);
        -- permisos JEFE_INVENTARIO

INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 82);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 83);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 84);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 85);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 58);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 59);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 60);
INSERT INTO granted_permission (role_id, operation_id) VALUES (5, 121);
        -- permisos JEFE_MARKETING

INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 106);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 107);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 71);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 72);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 36);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 37);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 16);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 17);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 11);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 12);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 6);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 7);
INSERT INTO granted_permission (role_id, operation_id) VALUES (6, 121);
        -- permisos JEFE_SISTEMAS

INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 1);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 2);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 3);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 4);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 5);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 6);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 7);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 8);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 9);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 10);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 11);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 12);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 13);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 14);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 15);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 16);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 17);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 18);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 19);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 20);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 23);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 24);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 25);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 26);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 27);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 28);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 29);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 30);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 31);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 32);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 33);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 34);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 35);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 36);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 37);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 38);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 39);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 40);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 41);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 42);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 43);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 44);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 45);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 46);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 47);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 48);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 49);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 50);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 51);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 52);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 53);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 54);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 55);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 58);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 59);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 60);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 61);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 62);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 63);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 64);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 65);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 68);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 69);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 70);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 71);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 72);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 73);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 74);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 75);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 76);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 77);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 78);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 79);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 80);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 82);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 83);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 84);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 85);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 86);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 87);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 88);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 89);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 90);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 91);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 92);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 93);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 94);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 95);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 96);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 97);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 98);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 99);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 101);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 102);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 103);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 104);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 105);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 106);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 107);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 108);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 109);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 110);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 111);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 112);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 113);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 114);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 115);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 116);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 117);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 118);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 119);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 120);
INSERT INTO granted_permission (role_id, operation_id) VALUES (7, 121);
        -- permisos GERENTE

INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 1);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 2);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 3);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 4);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 5);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 6);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 7);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 8);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 9);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 10);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 11);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 12);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 13);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 14);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 15);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 16);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 17);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 18);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 19);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 20);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 23);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 24);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 25);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 26);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 27);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 28);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 29);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 30);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 31);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 32);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 33);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 34);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 35);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 36);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 37);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 38);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 39);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 40);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 41);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 42);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 43);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 44);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 45);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 46);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 47);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 48);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 49);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 50);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 51);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 52);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 53);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 54);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 55);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 58);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 59);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 60);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 61);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 62);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 63);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 64);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 65);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 68);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 69);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 70);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 71);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 72);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 73);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 74);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 75);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 76);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 77);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 78);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 79);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 80);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 82);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 83);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 84);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 85);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 86);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 87);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 88);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 89);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 90);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 91);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 92);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 93);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 94);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 95);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 96);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 97);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 98);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 99);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 101);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 102);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 103);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 104);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 105);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 106);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 107);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 108);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 109);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 110);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 111);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 112);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 113);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 114);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 115);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 116);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 117);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 118);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 119);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 120);
INSERT INTO granted_permission (role_id, operation_id) VALUES (8, 121);
        -- permisos PROFESIONAL

INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 61);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 62);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 71);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 72);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 76);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 77);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 27);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 26);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 31);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 32);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 81);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 82);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 51);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 52);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (9, 121);
        -- permisos AUXILIAR_BODEGA

INSERT INTO granted_permission (role_id, operation_id) VALUES (10, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (10, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (10, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (10, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (10, 121);
        -- permisos PROVEEDOR

INSERT INTO granted_permission (role_id, operation_id) VALUES (11, 21);
INSERT INTO granted_permission (role_id, operation_id) VALUES (11, 22);
INSERT INTO granted_permission (role_id, operation_id) VALUES (11, 66);
INSERT INTO granted_permission (role_id, operation_id) VALUES (11, 67);
INSERT INTO granted_permission (role_id, operation_id) VALUES (11, 121);
        -- permisos JEFE_COMPRA

INSERT INTO granted_permission (role_id, operation_id) VALUES (12, 76);
INSERT INTO granted_permission (role_id, operation_id) VALUES (12, 77);
INSERT INTO granted_permission (role_id, operation_id) VALUES (12, 56);
INSERT INTO granted_permission (role_id, operation_id) VALUES (12, 57);
INSERT INTO granted_permission (role_id, operation_id) VALUES (12, 121);
-- CREACIÓN DE USUARIOS


INSERT INTO PrestService1.`user` (name, password, username, role_id) VALUES('marco', '$2a$10$GiN/Ggyix7JPEQS1VNH6BesX.CnX0RN8CZPGezoiDVRcdbDnSX0Va', 'sistemas', 7);
