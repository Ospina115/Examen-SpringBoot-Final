// CREACION DE LOS WEB COMPONENTS DE TODAS LAS TABLAS PARA QUE LAS EDITE EL ADMINISTRADOR
class EstadoOrdenForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Estados de Orden</h2>
                <ul id="estados-orden-list"></ul>
            </div>
            <div>
                <h2>Agregar Estado de Orden</h2>
                <input type="text" id="nombre-estado-orden" placeholder="Nombre del estado de orden" />
                <button onclick="createEstadoOrden()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Estado de Orden</h2>
                <input type="number" id="id-estado-orden" placeholder="ID del estado de orden" />
                <input type="text" id="nuevo-nombre-estado-orden" placeholder="Nuevo nombre del estado de orden" />
                <button onclick="updateEstadoOrden()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Estado de Orden</h2>
                <input type="number" id="eliminar-id-estado-orden" placeholder="ID del estado de orden" />
                <button onclick="deleteEstadoOrden()">Eliminar</button>
            </div> 
        </div>
        `;

        this.loadEstadosOrden();
    }

    async loadEstadosOrden() {
        const response = await fetch('/api/estado-orden'); // Cambia la URL según tu API
        const estadosOrden = await response.json();
        const estadosOrdenList = this.querySelector('#estados-orden-list');
        estadosOrdenList.innerHTML = estadosOrden.map(estado => `<li>${estado.nombre} (ID: ${estado.id})</li>`).join('');
    }

    async createEstadoOrden() {
        const nombre = this.querySelector('#nombre-estado-orden').value;
        await fetch('/api/estado-orden', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre })
        });
        await this.loadEstadosOrden(); // Recargar la lista después de agregar
    }

    async updateEstadoOrden() {
        const id = this.querySelector('#id-estado-orden').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-estado-orden').value;
        await fetch(`/api/estado-orden/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre })
        });
        await this.loadEstadosOrden(); // Recargar la lista después de actualizar
    }

    async deleteEstadoOrden() {
        const id = this.querySelector('#eliminar-id-estado-orden').value;
        await fetch(`/api/estado-orden/${id}`, {
            method: 'DELETE'
        });
        await this.loadEstadosOrden(); // Recargar la lista después de eliminar
    }
}
class OrdenServicioForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Órdenes de Servicio</h2>
                <ul id="ordenes-servicio-list"></ul>
            </div>
            <div>
                <h2>Agregar Orden de Servicio</h2>
                <input type="text" id="nombre-orden" placeholder="Nombre de la orden" />
                <button onclick="createOrdenServicio()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Orden de Servicio</h2>
                <input type="number" id="id-orden" placeholder="ID de la orden" />
                <input type="text" id="nuevo-nombre-orden" placeholder="Nuevo nombre de la orden" />
                <button onclick="updateOrdenServicio()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Orden de Servicio</h2>
                <input type="number" id="eliminar-id-orden" placeholder="ID de la orden" />
                <button onclick="deleteOrdenServicio()">Eliminar</button>
            </div>
        </div>
        `;

        this.loadOrdenesServicio();
    }

    async loadOrdenesServicio() {
        const response = await fetch('http://localhost:8080/ordenservicio'); // URL de la API
        const ordenes = await response.json();
        const ordenesList = this.querySelector('#ordenes-servicio-list');
        ordenesList.innerHTML = ordenes.map(orden => `<li>${orden.nombre} (ID: ${orden.id})</li>`).join('');
    }

    async createOrdenServicio() {
        const nombre = this.querySelector('#nombre-orden').value;
        await fetch('http://localhost:8080/ordenservicio', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre })
        });
        await this.loadOrdenesServicio(); // Recargar la lista después de agregar
    }

    async updateOrdenServicio() {
        const id = this.querySelector('#id-orden').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-orden').value;
        await fetch(`http://localhost:8080/ordenservicio/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre })
        });
        await this.loadOrdenesServicio(); // Recargar la lista después de actualizar
    }

    async deleteOrdenServicio() {
        const id = this.querySelector('#eliminar-id-orden').value;
        await fetch(`http://localhost:8080/ordenservicio/${id}`, {
            method: 'DELETE'
        });
        await this.loadOrdenesServicio(); // Recargar la lista después de eliminar
    }
}
class OrdenTrabajoForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Órdenes de Trabajo</h2>
                <ul id="ordenes-trabajo-list"></ul>
            </div>
            <div>
                <h2>Agregar Orden de Trabajo</h2>
                <input type="text" id="nombre-orden-trabajo" placeholder="Nombre de la orden de trabajo" />
                <button onclick="createOrdenTrabajo()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Orden de Trabajo</h2>
                <input type="number" id="id-orden-trabajo" placeholder="ID de la orden de trabajo" />
                <input type="text" id="nuevo-nombre-orden-trabajo" placeholder="Nuevo nombre de la orden de trabajo" />
                <button onclick="updateOrdenTrabajo()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Orden de Trabajo</h2>
                <input type="number" id="eliminar-id-orden-trabajo" placeholder="ID de la orden de trabajo" />
                <button onclick="deleteOrdenTrabajo()">Eliminar</button>
            </div>
        </div>
        `;

        this.loadOrdenesTrabajo();
    }

    async loadOrdenesTrabajo() {
        const response = await fetch('http://localhost:8080/ordtrabajo'); // URL de la API
        const ordenes = await response.json();
        const ordenesList = this.querySelector('#ordenes-trabajo-list');
        ordenesList.innerHTML = ordenes.map(orden => `<li>${orden.nombre} (ID: ${orden.id})</li>`).join('');
    }

    async createOrdenTrabajo() {
        const nombre = this.querySelector('#nombre-orden-trabajo').value;
        await fetch('http://localhost:8080/ordtrabajo', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre })
        });
        await this.loadOrdenesTrabajo(); // Recargar la lista después de agregar
    }

    async updateOrdenTrabajo() {
        const id = this.querySelector('#id-orden-trabajo').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-orden-trabajo').value;
        await fetch(`http://localhost:8080/ordtrabajo/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre })
        });
        await this.loadOrdenesTrabajo(); // Recargar la lista después de actualizar
    }

    async deleteOrdenTrabajo() {
        const id = this.querySelector('#eliminar-id-orden-trabajo').value;
        await fetch(`http://localhost:8080/ordtrabajo/${id}`, {
            method: 'DELETE'
        });
        await this.loadOrdenesTrabajo(); // Recargar la lista después de eliminar
    }
}
class ServicioForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Servicios</h2>
                <ul id="servicios-list"></ul>
            </div>
            <div>
                <h2>Agregar Servicio</h2>
                <input type="text" id="nombre-servicio" placeholder="Nombre del servicio" />
                <button onclick="createServicio()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Servicio</h2>
                <input type="number" id="id-servicio" placeholder="ID del servicio" />
                <input type="text" id="nuevo-nombre-servicio" placeholder="Nuevo nombre del servicio" />
                <button onclick="updateServicio()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Servicio</h2>
                <input type="number" id="eliminar-id-servicio" placeholder="ID del servicio" />
                <button onclick="deleteServicio()">Eliminar</button>
            </div>
        </div>
        `;

        this.loadServicios();
    }

    async loadServicios() {
        const response = await fetch('http://localhost:8080/Servicio'); // URL de la API
        const servicios = await response.json();
        const serviciosList = this.querySelector('#servicios-list');
        serviciosList.innerHTML = servicios.map(servicio => `<li>${servicio.nombre} (ID: ${servicio.id})</li>`).join('');
    }

    async createServicio() {
        const nombre = this.querySelector('#nombre-servicio').value;
        await fetch('http://localhost:8080/Servicio', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre })
        });
        await this.loadServicios(); // Recargar la lista después de agregar
    }

    async updateServicio() {
        const id = this.querySelector('#id-servicio').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-servicio').value;
        await fetch(`http://localhost:8080/Servicio/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre })
        });
        await this.loadServicios(); // Recargar la lista después de actualizar
    }

    async deleteServicio() {
        const id = this.querySelector('#eliminar-id-servicio').value;
        await fetch(`http://localhost:8080/Servicio/${id}`, {
            method: 'DELETE'
        });
        await this.loadServicios(); // Recargar la lista después de eliminar
    }
}

// DEFINICION DE LOS COMPONENTES DEL FORMULARIO
customElements.define('estado-orden-form', EstadoOrdenForm); //este no se ha actializado
customElements.define('orden-servicio-form', OrdenServicioForm);
customElements.define('orden-trabajo-form', OrdenTrabajoForm);
customElements.define('servicio-form',  ServicioForm);

document.addEventListener("DOMContentLoaded", function() { 
    const rightSection = document.querySelector('.right'); 

    document.querySelectorAll('button').forEach(button => { 
        button.addEventListener('click', function() { 
            const label = this.querySelector('.label').innerText.trim(); 
            rightSection.innerHTML = '';

            // MOSTRAR EL COMPONENTE SEGUN EL BOTON QUE PULSEN
            switch (label) { 
                case 'Estados de Orden': 
                    rightSection.appendChild(document.createElement('estado-orden-form')); 
                    break;  
                case 'Órdenes de Servicio': 
                    rightSection.appendChild(document.createElement('orden-servicio-form')); 
                    break; 
                case 'Órdenes de Trabajo': 
                    rightSection.appendChild(document.createElement('orden-trabajo-form')); 
                    break; 
                case 'Servicios':
                    rightSection.appendChild(document.createElement('servicio-form'));
                    break;
                // TODOS LOS CASOS DE LOS COMPONENTES YA DEFINIDOS
            } 
        }); 
    }); 
});