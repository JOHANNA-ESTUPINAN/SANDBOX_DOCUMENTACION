//1. importar la biblioteca de trabajo

import swaggerJSDoc from "swagger-jsdoc";

const swaggerOptions = {
    definition: {
        openapi: "3.0.0",
        info: {
            titule: "API de la IPS AteneaIPS",
            version: "1.0.0",
            description: "En esta API tendremos la funcionalidad que soporta la operacion de la IPS AteneaIPS"
        },
        Servers: [
            {
                url:"http:localhost:3000",
                description:"Servidor local de documentacion"
            }
        ]
    },
    apis: ["src/index.ts", "./swagger/*.swagger.ts"]
}