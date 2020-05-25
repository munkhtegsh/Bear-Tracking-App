import { LightningElement, api } from 'lwc';
import ursusResources from '@salesforce/resourceUrl/bear';

export default class BearTile extends LightningElement {
    @api bear;
    appResources = {
        bearSilhouette: ursusResources
    };
}