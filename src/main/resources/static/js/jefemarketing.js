class ListClientesForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Personas</h2>
                <ul id="personas-list"></ul>
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

}
class ListCiudadesForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Ciudades</h2>
                <ul id="ciudades-list"></ul>
            </div>
        </div>
        `;

        this.loadCiudades();
    }

    async loadCiudades() {
        const response = await fetch('http://localhost:8080/api/v1/ciudades'); // URL de la API
        const ciudades = await response.json();
        const ciudadesList = this.querySelector('#ciudades-list');
        ciudadesList.innerHTML = ciudades.map(ciudad => `<li>${ciudad.nombre} (ID: ${ciudad.id})</li>`).join('');
    }
}
class ListPaisesForm extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div>
                <h2>Lista de Países</h2>
                <ul id="paises-list"></ul>
            </div>
        </div>
        `;

        this.loadPaises();
    }

    async loadPaises() {
        const response = await fetch('http://localhost:8080/api/v1/paises'); // URL de la API
        const paises = await response.json();
        const paisesList = this.querySelector('#paises-list');
        paisesList.innerHTML = paises.map(pais => `<li>${pais.nombre} (ID: ${pais.id})</li>`).join('');
    }
}
class ListRegionesForm extends HTMLElement { 
    connectedCallback() {
        this.innerHTML = `
        <div class="form">
            <div> 
                <h2>Lista de Regiones</h2> 
                <ul id="regiones-list"></ul> 
            </div> 
        </div>
        `;

        this.loadRegiones(); 
    }

    async loadRegiones() { 
        const response = await fetch('http://localhost:8080/api/v1/regiones'); // URL de la API 
        const regiones = await response.json(); 
        const regionesList = this.querySelector('#regiones-list'); 
        regionesList.innerHTML = regiones.map(region => `<li>${region.nombre} (ID: ${region.id})</li>`).join(''); 
    } 
}


customElements.define('list-clientes-form', ListClientesForm);
customElements.define('list-ciudades-form',  ListCiudadesForm);
customElements.define('list-paises-form', ListPaisesForm);
customElements.define('list-regiones-form', ListRegionesForm);

document.addEventListener("DOMContentLoaded", function() {
    const rightSection = document.querySelector('.right');

    document.querySelectorAll('button').forEach(button => {
        button.addEventListener('click', function() {
            const label = this.querySelector('.label').innerText.trim();
            rightSection.innerHTML = ''; // Limpiar la sección derecha

            switch (label) {
                case 'Lista de Clientes':
                    rightSection.appendChild(document.createElement('list-clientes-form'));
                    break;
                case 'Lista de ciudades':
                    rightSection.appendChild(document.createElement('list-ciudades-form'));
                    break;
                case 'Lista de paises':
                    rightSection.appendChild(document.createElement('list-paises-form'));
                    break;
                case 'Lista de regiones':
                    rightSection.appendChild(document.createElement('list-regiones-form'));
                    break;
            }
        });
    });
});