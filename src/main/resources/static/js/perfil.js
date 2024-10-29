class RegistrarServicioForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="form">
                <div>
                    <h2>Registrar Servicio</h2>
                    <input type="text" id="nombre-servicio" placeholder="Nombre del servicio" />
                    <input type="checkbox" id="requiereinsumo" name="insumo">
                    <label for="insumo"> Requiere Insumo</label><br>
                    <div id="insumo-form" style="display: none;">
                        <h3>Insumos Requeridos</h3>
                        <input type="text" id="nombre-insumo" placeholder="Nombre del Insumo" />
                        <input type="number" id="cantidad-insumo" placeholder="Cantidad" />
                    </div>
                    <button onclick="createServicio()">Registrar</button>
                </div>
            </div>
        `;

        this.querySelector('#requiereinsumo').addEventListener('change', (event) => {
            const insumoForm = this.querySelector('#insumo-form');
            insumoForm.style.display = event.target.checked ? 'block' : 'none';
        });
    }

    async createServicio() {
        const nombre = this.querySelector('#nombre-servicio').value;
        const requiereInsumo = this.querySelector('#requiereinsumo').checked;
    
        // si requiere insumo, abre un nuevo formulario
        let insumos = [];
        if (requiereInsumo) {
            const nombreInsumo = this.querySelector('#nombre-insumo').value;
            const cantidadInsumo = this.querySelector('#cantidad-insumo').value;
    
            insumos.push({ nombre: nombreInsumo, cantidad: cantidadInsumo });
        }
    
        await fetch('http://localhost:8080/servicios', {  // Actualiza la URL aquí
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre, insumos: insumos })
        });
        await this.loadServicios(); // Recargar la lista después de agregar
    }
}
class BuscarServicioForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="form">
                <div>
                    <h2>Lista de Servicios</h2>
                    <ul id="servicios-list"></ul>
                </div>
            </div>
        `;

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    async loadServicios() {
        const response = await fetch('http://localhost:8080/Servicio'); // URL de la API
        const servicios = await response.json();
        const serviciosList = this.querySelector('#servicios-list');
        serviciosList.innerHTML = servicios.map(servicio => `<li>${servicio.nombre} (ID: ${servicio.id})</li>`).join('');
    }
}
class ComprarInsumoForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Insumos</h2>
                <ul id="insumos-list"></ul>
            </div>
            <div>
                <h2>Solicitar Insumo</h2>
                <input placeholder="Nombre del Insumo" type="text" id="nombre" name="nombre">
                <input placeholder="Cantidad" type="number" id="cantidad" name="cantidad">
                <button id="register-button">Registrar</button>      
            </div>
        </div>
        `;

        this.querySelector('#register-button').addEventListener('click', () => {
            this.createInsumo();
        });
    }

    async createInsumo() {
        const nombre = this.querySelector('#nombre').value;
        const cantidad = this.querySelector('#cantidad').value;

        const insumo = { nombre: nombre, cantidad: cantidad };

        await fetch('http://localhost:8080/insumo', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(insumo)
        });

        // Limpiar los campos después de registrar
        this.querySelector('#nombre').value = '';
        this.querySelector('#cantidad').value = '';

        // Recargar la lista de insumos
        await this.loadInsumos();
    }

    async loadInsumos() {
        const response = await fetch('http://localhost:8080/insumo'); // URL de la API
        const insumos = await response.json();
        const insumosList = this.querySelector('#insumos-list');
        insumosList.innerHTML = insumos.map(insumo => `<li>${insumo.nombre} (ID: ${insumo.id})</li>`).join('');
    }

    resetForm() {
        const form = this.querySelector('#register-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}
class CancelarPedidoForm extends HTMLElement{
    connectedCallback(){
        this.innerHTML = `
            <div class="form">
                <div>
                    <h2>Cancelar Pedido</h2>
                    <input type="number" id="eliminar-id-servicio" placeholder="ID del servicio" />
                    <button onclick="deleteServicio()">Eliminar</button>
                </div>
            </div>
        `;
    }
    async deleteServicio() {
        const id = this.querySelector('#eliminar-id-servicio').value;
        await fetch(`http://localhost:8080/Servicio/${id}`, {
            method: 'DELETE'
        });
        await this.loadServicios(); // Recargar la lista después de eliminar
    }
}


customElements.define('registrar-servicio-form', RegistrarServicioForm);
customElements.define('buscar-servicio-form', BuscarServicioForm);
customElements.define('comprar-insumo-form', ComprarInsumoForm);
customElements.define('cancelar-pedido-form', CancelarPedidoForm);

document.addEventListener("DOMContentLoaded", function() {
    const rightSection = document.querySelector('.right');

    document.querySelectorAll('button').forEach(button => {
        button.addEventListener('click', function() {
            const label = this.querySelector('.label').innerText.trim();
            rightSection.innerHTML = ''; // Limpiar la sección derecha

            switch (label) {
                case 'Comprar Insumo':
                    rightSection.appendChild(document.createElement('comprar-insumo-form'));
                    break;
                case 'Buscar Servicio':
                    rightSection.appendChild(document.createElement('buscar-servicio-form'));
                    break;
                case 'Registrar Servicio':
                    rightSection.appendChild(document.createElement('registrar-servicio-form'));
                    break;
                case 'Cancelar Pedido':
                    rightSection.appendChild(document.createElement('cancelar-pedido-form'));
                    break;
            }
        });
    });
});