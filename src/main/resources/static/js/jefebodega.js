// CREACION DE LOS CRUDS PARA CADA COSA QUE SEA NECESARIA
class RegisterForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <form id="register-form">
            <h2>Registrar Insumo</h2>
            <input placeholder="Codigo Interno" type="text" id="insumo" name="insumo" required>
            <input placeholder="Nombre del Insumo" type="text" id="nombre" name="nombre">
            <input placeholder="Valor Unidad" type="number" id="precio" name="precio">
            <input placeholder="Cantidad" type="number" id="cantidad" name="cantidad">
            <input placeholder="Stock Minimo" type="number" id="stock_min" name="stock_min">
            <input placeholder="Stock Maximo" type="number" id="stock_max" name="stock_max">
            <div class="buttons">
                <button type="submit">Registrar</button>
                <button type="button" id="clear-button">Limpiar</button>        
            </div>
        </form>
        `;

        this.querySelector('#register-form').addEventListener('submit', (event) => {
            event.preventDefault(); // Evita el envío del formulario por defecto
            const insumoData = {
                insumo: this.querySelector('#insumo').value,
                nombre: this.querySelector('#nombre').value,
                precio: this.querySelector('#precio').value,
                cantidad: this.querySelector('#cantidad').value,
                stock_min: this.querySelector('#stock_min').value,
                stock_max: this.querySelector('#stock_max').value,
            };

            fetch('/insumo', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(insumoData),
            })
            .then(response => {
                if (response.ok) {
                    alert('Insumo registrado exitosamente');
                    this.resetForm();
                } else {
                    alert('Error al registrar el insumo');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error en la conexión');
            });
        });

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    resetForm() {
        const form = this.querySelector('#register-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}

class EditForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <form id="edit-form">
                <h2>Editar Insumos</h2>
                <input placeholder="Codigo Interno" type="text" id="insumo" name="insumo" required>
                <input placeholder="Nombre del Insumo" type="text" id="nombre" name="nombre">
                <input placeholder="Valor Unidad" type="number" id="precio" name="precio">
                <input placeholder="Cantidad" type="number" id="cantidad" name="cantidad">
                <input placeholder="Stock Minimo" type="number" id="stock_min" name="stock_min">
                <input placeholder="Stock Maximo" type="number" id="stock_max" name="stock_max">    
                <div class="buttons">
                    <button type="submit">Editar</button>
                    <button type="button" id="clear-button">Limpiar</button>        
                </div>
            </form>
        `;

        this.querySelector('#edit-form').addEventListener('submit', (event) => {
            event.preventDefault(); // Evita el envío del formulario por defecto
            const insumoId = this.querySelector('#insumo').value; // Suponiendo que el código interno es el ID
            const insumoData = {
                nombre: this.querySelector('#nombre').value,
                precio: this.querySelector('#precio').value,
                cantidad: this.querySelector('#cantidad').value,
                stock_min: this.querySelector('#stock_min').value,
                stock_max: this.querySelector('#stock_max').value,
            };

            fetch(`/insumo/${insumoId}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(insumoData),
            })
            .then(response => {
                if (response.ok) {
                    alert('Insumo editado exitosamente');
                    this.resetForm();
                } else {
                    alert('Error al editar el insumo');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error en la conexión');
            });
        });

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    resetForm() {
        const form = this.querySelector('#edit-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}
class SearchForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <form id="search-form">
                <h2>Buscar Insumo</h2>
                <input placeholder="Codigo Interno" type="text" id="insumo" name="insumo" required>
                <div class="buttons">
                    <button type="submit">Buscar</button>
                    <button type="button" id="clear-button">Limpiar</button>        
                </div>
            </form>
        `;

        this.querySelector('#search-form').addEventListener('submit', (event) => {
            event.preventDefault(); // Evita el envío del formulario por defecto
            const insumoId = this.querySelector('#insumo').value;

            fetch(`/insumo/${insumoId}`)
            .then(response => {
                if (response.ok) {
                    return response.json();
                } else {
                    alert('Error al buscar el insumo');
                }
            })
            .then(data => {
                // Mostrar los datos del insumo en una tabla o en un formato adecuado
                console.log(data);
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error en la conexión');
            });
        });

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    resetForm() {
        const form = this.querySelector('#search-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}
class DeleteForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <form id="delete-form">
                <h2>Eliminar Insumo</h2>
                <input placeholder="Codigo Interno" type="text" id="insumo" name="insumo" required>
                <div class="buttons">
                    <button type="submit">Eliminar</button>
                    <button type="button" id="clear-button">Limpiar</button>        
                </div>
            </form>
        `;

        this.querySelector('#delete-form').addEventListener('submit', (event) => {
            event.preventDefault(); // Evita el envío del formulario por defecto
            const insumoId = this.querySelector('#insumo').value;

            fetch(`/insumo/${insumoId}`, {
                method: 'DELETE',
            })
            .then(response => {
                if (response.ok) {
                    alert('Insumo eliminado exitosamente');
                    this.resetForm();
                } else {
                    alert('Error al eliminar el insumo');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error en la conexión');
            });
        });

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    resetForm() {
        const form = this.querySelector('#delete-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}
class DetalleOrdenList extends HTMLElement {
    constructor() {
        super();
        this.detalleOrdenes = [];
    }

    connectedCallback() {
        this.render();
        this.fetchDetalleOrdenes();
    }

    async fetchDetalleOrdenes() {
        try {
            const response = await fetch('/detorden'); // Asegúrate de que esta URL es correcta
            if (response.ok) {
                this.detalleOrdenes = await response.json();
                this.render();
            } else {
                console.error('Error al obtener los detalles de la orden');
            }
        } catch (error) {
            console.error('Error de red:', error);
        }
    }

    render() {
        this.innerHTML = `  <!-- Cambié this.shadowRoot.innerHTML a this.innerHTML -->
            <form id="search-detalle-form">
                <h2>Detalles de Orden</h2>
                <input placeholder="Buscar por ID" type="text" id="detalleId" name="detalleId">
                <div class="buttons">
                    <button type="submit">Buscar</button>
                    <button type="button" id="clear-button">Limpiar</button>        
                </div>
            </form>
            <ul>
                ${this.detalleOrdenes.map(detalle => `
                    <li>
                        ID: ${detalle.id}, Descripción: ${detalle.descripcion}
                    </li>
                `).join('')}
            </ul>
        `;

        this.querySelector('#search-detalle-form').addEventListener('submit', (event) => {
            event.preventDefault();
            const detalleId = this.querySelector('#detalleId').value;
            this.searchDetalleOrden(detalleId);
        });

        this.querySelector('#clear-button').addEventListener('click', () => {
            this.resetForm();
        });
    }

    async searchDetalleOrden(detalleId) {
        try {
            const response = await fetch(`/detorden/${detalleId}`);
            if (response.ok) {
                const data = await response.json();
                this.detalleOrdenes = [data]; // Suponiendo que la respuesta es un solo objeto
                this.render();
            } else {
                alert('Error al buscar el detalle de la orden');
            }
        } catch (error) {
            console.error('Error de red:', error);
            alert('Error en la conexión');
        }
    }

    resetForm() {
        const form = this.querySelector('#search-detalle-form');
        form.reset(); // Resetea todos los campos del formulario
    }
}



// DEFINICION DE LOS WEB COMPONENTS PARA APLICARLOS EN EL HTML
customElements.define('register-form', RegisterForm);
customElements.define('edit-form', EditForm);
customElements.define('search-form', SearchForm);
customElements.define('delete-form', DeleteForm);
customElements.define('detalle-orden-list', DetalleOrdenList);

document.addEventListener("DOMContentLoaded", function() {
    const rightSection = document.querySelector('.right');

    document.querySelectorAll('button').forEach(button => {
        button.addEventListener('click', function() {
            const label = this.querySelector('.label').innerText.trim();
            rightSection.innerHTML = ''; // Limpiar la sección derecha

            switch (label) {
                case 'Registrar Insumos':
                    rightSection.appendChild(document.createElement('register-form'));
                    break;
                case 'Editar Insumos':
                    rightSection.appendChild(document.createElement('edit-form'));
                    break;
                case 'Buscar Insumos':
                    rightSection.appendChild(document.createElement('search-form'));
                    break;
                case 'Eliminar Insumos':
                    rightSection.appendChild(document.createElement('delete-form'));
                    break;
                case 'Detalles de Orden':
                    rightSection.appendChild(document.createElement('detalle-orden-list'));
                    break;
            }
        });
    });
});