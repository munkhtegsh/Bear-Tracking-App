/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement, api} from 'lwc';

export default class LifecycleChild extends LightningElement {
    @api show=false;

    constructor() {
        super();
        console.log('Constructor on the child');
    }

    connectedCallback() {
        console.log('connected callback on the child is called');
    }

    renderedCallback() {
        console.log('rendered callback on the child is called');
    }

    disconnectedCallback() {
        console.log('disconnected callback on the child is called');
    }
}