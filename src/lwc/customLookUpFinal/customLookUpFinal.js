import { LightningElement, track, wire } from 'lwc';
import getPBSleads from '@salesforce/apex/CommonLeadFields.getPBSleads';
const DELAY = 300;
export default class CustoLookUpFinal extends LightningElement {
    @track search = '';
    @track error;
    @track selectPBSLead;
    @track showLeadssListFlag = false;
    @wire(getPBSleads, { leadName: '$search' })
    pbsLeads;
    handleKeyUp(event) {
        if (!this.showLeadsListFlag) {
            this.showLeadsListFlag = true;
            this.template
                .querySelector('.leads_list')
                .classList.remove('slds-hide');
        }
        window.clearTimeout(this.delayTimeout);
        const searchKey = event.target.value;
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this.delayTimeout = setTimeout(() => {
            this.search = searchKey;
        }, DELAY);
    }
    handleOptionSelect(event) {
        this.selectPBSLead = event.currentTarget.dataset.name;
        this.template
            .querySelector('.selectedOption')
            .classList.remove('slds-hide');
        this.template
            .querySelector('.leads_list')
            .classList.add('slds-hide');
        this.template
            .querySelector('.slds-combobox__form-element')
            .classList.add('slds-input-has-border_padding');
    }
    handleRemoveSelectedOption() {
        this.template
            .querySelector('.selectedOption')
            .classList.add('slds-hide');
        this.template
            .querySelector('.slds-combobox__form-element')
            .classList.remove('slds-input-has-border_padding');
        this.showLeadsListFlag = false;
    }
}