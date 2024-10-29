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
class PersonaForm extends HTMLElement { 
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Personas</h2>
                <ul id="personas-list"></ul>
            </div>
            <div>
                <h2>Agregar Persona</h2>
                <input type="text" id="nombre-persona" placeholder="Nombre de la persona" />
                <input type="text" id="apellido-persona" placeholder="Apellido de la persona" />
                <button onclick="createPersona()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Persona</h2>
                <input type="number" id="id-persona" placeholder="ID de la persona" />
                <input type="text" id="nuevo-nombre-persona" placeholder="Nuevo nombre de la persona" />
                <input type="text" id="nuevo-apellido-persona" placeholder="Nuevo apellido de la persona" />
                <button onclick="updatePersona()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Persona</h2>
                <input type="number" id="eliminar-id-persona" placeholder="ID de la persona" />
                <button onclick="deletePersona()">Eliminar</button>
            </div>
        </div>
        `;

        this.loadPersonas();
    }

    async loadPersonas() {
        const response = await fetch('http://localhost:8080/persona'); // URL de la API
        const personas = await response.json();
        const personasList = this.querySelector('#personas-list');
        personasList.innerHTML = personas.map(persona => `<li>${persona.nombre} ${persona.apellido} (ID: ${persona.id})</li>`).join('');
    }

    async createPersona() {
        const nombre = this.querySelector('#nombre-persona').value;
        const apellido = this.querySelector('#apellido-persona').value;
        await fetch('http://localhost:8080/persona', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre, apellido: apellido })
        });
        await this.loadPersonas(); // Recargar la lista después de agregar
    }

    async updatePersona() {
        const id = this.querySelector('#id-persona').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-persona').value;
        const nuevoApellido = this.querySelector('#nuevo-apellido-persona').value;
        await fetch(`http://localhost:8080/persona/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre, apellido: nuevoApellido })
        });
        await this.loadPersonas(); // Recargar la lista después de actualizar
    }

    async deletePersona() {
        const id = this.querySelector('#eliminar-id-persona').value;
        await fetch(`http://localhost:8080/persona/${id}`, {
            method: 'DELETE'
        });
        await this.loadPersonas(); // Recargar la lista después de eliminar
    }
}


customElements.define('orden-trabajo-form', OrdenTrabajoForm);
customElements.define('servicio-form',  ServicioForm);
customElements.define('orden-servicio-form', OrdenServicioForm);
customElements.define('persona-form', PersonaForm);

document.addEventListener("DOMContentLoaded", function() {
    const rightSection = document.querySelector('.right');

    document.querySelectorAll('button').forEach(button => {
        button.addEventListener('click', function() {
            const label = this.querySelector('.label').innerText.trim();
            rightSection.innerHTML = ''; // Limpiar la sección derecha

            switch (label) {
                case 'Ordenes de Trabajo':
                    rightSection.appendChild(document.createElement('orden-trabajo-form'));
                    break;
                case 'Servicios':
                    rightSection.appendChild(document.createElement('servicio-form'));
                    break;
                case 'Responsables de Servicios':
                    rightSection.appendChild(document.createElement('orden-servicio-form'));
                    break;
                case 'Empleados':
                    rightSection.appendChild(document.createElement('persona-form'));
                    break;
            }
        });
    });
});