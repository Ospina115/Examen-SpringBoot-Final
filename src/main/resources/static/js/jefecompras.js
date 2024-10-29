class InsumoForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Insumos</h2>
                <ul id="insumos-list"></ul>
            </div>
            <div>
                <h2>Agregar Insumo</h2>
                <input type="text" id="nombre-insumo" placeholder="Nombre del insumo" />
                <button onclick="createInsumo()">Agregar</button>
            </div>
            <div>
                <h2>Actualizar Insumo</h2>
                <input type="number" id="id-insumo" placeholder="ID del insumo" />
                <input type="text" id="nuevo-nombre-insumo" placeholder="Nuevo nombre del insumo" />
                <button onclick="updateInsumo()">Actualizar</button>
            </div>
            <div>
                <h2>Eliminar Insumo</h2>
                <input type="number" id="eliminar-id-insumo" placeholder="ID del insumo" />
                <button onclick="deleteInsumo()">Eliminar</button>
            </div>
        </div>
        `;

        this.loadInsumos();
    }

    async loadInsumos() {
        const response = await fetch('http://localhost:8080/insumo'); // URL de la API
        const insumos = await response.json();
        const insumosList = this.querySelector('#insumos-list');
        insumosList.innerHTML = insumos.map(insumo => `<li>${insumo.nombre} (ID: ${insumo.id})</li>`).join('');
    }

    async createInsumo() {
        const nombre = this.querySelector('#nombre-insumo').value;
        await fetch('http://localhost:8080/insumo', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nombre })
        });
        await this.loadInsumos(); // Recargar la lista después de agregar
    }

    async updateInsumo() {
        const id = this.querySelector('#id-insumo').value;
        const nuevoNombre = this.querySelector('#nuevo-nombre-insumo').value;
        await fetch(`http://localhost:8080/insumo/${id}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ nombre: nuevoNombre })
        });
        await this.loadInsumos(); // Recargar la lista después de actualizar
    }

    async deleteInsumo() {
        const id = this.querySelector('#eliminar-id-insumo').value;
        await fetch(`http://localhost:8080/insumo/${id}`, {
            method: 'DELETE'
        });
        await this.loadInsumos(); // Recargar la lista después de eliminar
    }
}

customElements.define('insumo-form', InsumoForm);