/**
 * Created by mmunkhba on 5/16/20.
 */

// lwcHelloWorld.js
import { LightningElement, api } from 'lwc';

export default class HelloWorld extends LightningElement {
    @api name;
    @api message = 'Message from lwc';
}