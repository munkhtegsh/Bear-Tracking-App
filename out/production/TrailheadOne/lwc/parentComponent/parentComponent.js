/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement} from 'lwc';

export default class ParentComponent extends LightningElement {
    handleChangeEvent(event) {
        this.template.querySelector('c-child-component').changeMessage(event.target.value);
    }

}