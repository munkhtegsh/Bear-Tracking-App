/**
 * Created by mmunkhba on 5/18/20.
 */

import {LightningElement} from 'lwc';

export default class ParentCmpEvent extends LightningElement {
    msj;
    constructor() {
        super();
        this.template.addEventListener('mycustomevent',
            this.handleCustomEvent.bind(this));

    }

    handleCustomEvent(props) {
        this.msj = props.detail;
    }
}