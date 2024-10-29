class PedidosListForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="form">
                <div>
                    <h2>Lista de Pedidos</h2>
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
class PedidosDeleteForm extends HTMLElement {
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
class ComprasInsumosListForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Compras de Insumo</h2>
                <ul id="personas-insumo-list"></ul>
            </div>
        </div>
        `;

        this.querySelector('#register-button').addEventListener('click', () => {
            this.createInsumo();
        });
    }

    async loadPersonasInsumo() {
        const response = await fetch('http://localhost:8080/perinsumo'); // URL de la API
        const personasInsumo = await response.json();
        const personasInsumoList = this.querySelector('#personas-insumo-list');
        personasInsumoList.innerHTML = personasInsumo.map(persona => `<li>${persona.nombre} (ID: ${persona.id})</li>`).join('');
    }
}
class ComprasInsumosDeleteForm extends HTMLElement{
    connectedCallback(){
        this.innerHTML = `
            <div class="form">
                <div>
                    <h2>Eliminar Compras de Insumos</h2>
                    <input type="number" id="eliminar-id-persona-insumo" placeholder="ID de la persona insumo" />
                    <button onclick="deletePersonaInsumo()">Eliminar</button>
                </div>
            </div>
        `;
    }
    async deletePersonaInsumo() {
        const id = this.querySelector('#eliminar-id-persona-insumo').value;
        await fetch(`http://localhost:8080/perinsumo/${id}`, {
            method: 'DELETE'
        });
        await this.loadPersonasInsumo(); // Recargar la lista después de eliminar
    }
}


customElements.define('pedidos-list-form', PedidosListForm);
customElements.define('pedidos-delete-form', PedidosDeleteForm);
customElements.define('compras-insumos-list-form', ComprasInsumosListForm);
customElements.define('compras-insumos-delete-form', ComprasInsumosDeleteForm);

document.addEventListener("DOMContentLoaded", function() {
    const rightSection = document.querySelector('.right');

    document.querySelectorAll('button').forEach(button => {
        button.addEventListener('click', function() {
            const label = this.querySelector('.label').innerText.trim();
            rightSection.innerHTML = ''; // Limpiar la sección derecha

            switch (label) {
                case 'Lista de Pedidos':
                    rightSection.appendChild(document.createElement('pedidos-list-form'));
                    break;
                case 'Eliminar Pedido':
                    rightSection.appendChild(document.createElement('pedidos-delete-form'));
                    break;
                case 'Lista de Compras de Insumos':
                    rightSection.appendChild(document.createElement('compras-insumos-list-form'));
                    break;
                case 'Eliminar Compras de Insumos':
                    rightSection.appendChild(document.createElement('compras-insumos-delete-form'));
                    break;
            }
        });
    });
});