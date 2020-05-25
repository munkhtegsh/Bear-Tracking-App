/**
 * Created by mmunkhba on 5/18/20.
 */

import {LightningElement} from 'lwc';

export default class ChildCmpEvent extends LightningElement {
    handleChange(e) {
        const name = e.target.value;
        const selectEvent = new CustomEvent('mycustomevent', {detail: name, bubbles:true});
        this.dispatchEvent(selectEvent);

    }
}