//1. Importar las bibliotecas 

import {Request} from 'supertest'
import App from './Router'
import { request } from 'https'

describe(
	'GET /',
	()=>{
		let app:App
		beforeAll(
			()=>{
				app=new App()
				app.start()
			}
		)

		afterAll(
			App.close()
		)

		test(
			'Debe devolver un mensaje',
			async ()=>{
				const res = await request(App.App).get('/')
				expect (res.statusCode).toEqual(200)
				expect (res.text).toEqual('Bienvenidos a typescript')
			}
		)

	}
)