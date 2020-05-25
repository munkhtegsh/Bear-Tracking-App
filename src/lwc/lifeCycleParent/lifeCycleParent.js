/**
 * Created by mmunkhba on 5/18/20.
 */

import {LightningElement} from 'lwc';

export default class LifeCycleParent extends LightningElement {
    constructor() {
        super();
        console.log('Constructor on the parent');
    }

    connectedCallback() {
        console.log('connected callback on the parent is called');
    }

    renderedCallback() {
        console.log('rendered callback on the parent is called');
    }

    disconnectedCallback() {
        console.log('disconnected callback on the parent is called');
    }
}