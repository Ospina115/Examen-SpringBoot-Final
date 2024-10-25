import { defineConfig } from "vite";
import { resolve } from 'path';

export default defineConfig({
    build: {
        rollupOptions: {
            input: {
                main: resolve(__dirname, 'src/main/resources/templates/index.html'),
                registro: resolve(__dirname, 'src/main/resources/static/html/registro.html'),
                jefebodega: resolve(__dirname, 'src/main/resources/static/html/jefebodega.html'),
                admin: resolve(__dirname, 'src/main/resources/static/html/admin.html')
            }
        }
    }
})