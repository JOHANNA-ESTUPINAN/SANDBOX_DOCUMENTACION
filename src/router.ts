import swaggerUi from 'swagger-ui-express'
import { swaggerSpec } from './swagger.conf'
import express,{Application, Request, Response} from 'express'
/**
 * Clase pricipal de la API, Define las rutas de la API
 * @author Kelly Johanna Estupiñan Manrique
 * @description Clase Inicial de ejemplo para manejar rutas y documentacion
 */
class App{
    static App(App: any) {
        throw new Error('Method not implemented.')
    }
    start: any
    static close(): jest.ProvidesHookCallback {
        throw new Error('Method not implemented.')
    }
	//Atributo
	public app:Application
	private server:any
	/**
     * Metodo constructor de la clase
     * @author Kelly Johanna Estupiñan Manrique
     */
	constructor(){
		/**
         * Express es la biblioteca para definir API en el ecosistema de Node.js
         */
		this.app=express()
		this.app.use(express.json())
		this.routes()
		this.app.use('/api-docs',swaggerUi.serve,swaggerUi.setup(swaggerSpec))}
	private routes():void{
		this.app.get('/',(req:Request, res:Response)=>{res.send('Bienvenidos a typescript')})
		this.app.post('/paciente',(req:Request, res:Response)=>{res.send('Bienvenidos a typescript')})}
	public Star():void{this.app.listen(3000,()=>{console.log('El servidor esta escuchando en el puerto 3000')})}
	public close():void{this.server.close()}
}
export default App