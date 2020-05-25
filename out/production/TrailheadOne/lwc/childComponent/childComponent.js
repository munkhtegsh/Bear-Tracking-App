/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement, api} from 'lwc';

export default class ChildComponent extends LightningElement {
    message;

    @api
    changeMessage(str) {
        this.message = str.toUpperCase();
    }

}