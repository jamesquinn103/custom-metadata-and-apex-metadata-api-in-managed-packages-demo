import { LightningElement } from 'lwc';
import getGlobalCMTfieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.getGlobalCustomMetadataUnprotectedRecordSubscriberField';
import getGlobalCMTfieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.getGlobalCustomMetadataUnprotectedRecordDeveloperField';
import getGlobalCMTfieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.getGlobalCustomMetadataProtectedRecordSubscriberField';
import getGlobalCMTfieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.getGlobalCustomMetadataProtectedRecordDeveloperField';
import getNsCMTfieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.getNSCustomMetadataUnprotectedRecordSubscriberField';
import getNsCMTfieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.getNSCustomMetadataUnprotectedRecordDeveloperField';
import getNsCMTfieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.getNSCustomMetadataProtectedRecordSubscriberField';
import getNsCMTfieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.getNSCustomMetadataProtectedRecordDeveloperField';
import getMpCMTfieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.getMPCustomMetadataProtectedRecordUpgradableField';
import getMpCMTfieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.getMPCustomMetadataProtectedRecordSubscriberField';
import getMpCMTfieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.getMPCustomMetadataUnprotectedRecordUpgradableField';
import getMpCMTfieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.getMPCustomMetadataUnprotectedRecordSubscriberField';

import updateGlobalCMTfieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateGlobalCustomMetadataUnprotectedRecordSubscriberField';
import updateGlobalCMTfieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateGlobalCustomMetadataUnprotectedRecordDeveloperField';
import updateGlobalCMTfieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateGlobalCustomMetadataProtectedRecordSubscriberField';
import updateGlobalCMTfieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateGlobalCustomMetadataProtectedRecordDeveloperField';
import updateNsCMTFieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateNSCustomMetadataUnprotectedRecordSubscriberField';
import updateNsCMTFieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateNSCustomMetadataUnprotectedRecordDeveloperField';
import updateNsCMTFieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateNSCustomMetadataProtectedRecordSubscriberField';
import updateNsCMTFieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateNSCustomMetadataProtectedRecordDeveloperField';
import updateMpCMTFieldPD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateMPCustomMetadataProtectedRecordUpgradableField';
import updateMpCMTFieldPS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateMPCustomMetadataProtectedRecordSubscriberField';
import updateMpCMTFieldUD from '@salesforce/apex/lwcCustomMetadataCRUDController.updateMPCustomMetadataUnprotectedRecordUpgradableField';
import updateMpCMTFieldUS from '@salesforce/apex/lwcCustomMetadataCRUDController.updateMPCustomMetadataUnprotectedRecordSubscriberField';

export default class LwcCustomMetadataCRUD extends LightningElement {
    searchKey = '';
    globalCMTsubUnprotected;
    globalCMTdevUnprotected;
    globalCMTsubProtected;
    globalCMTdevProtected;
    nsCMTsubUnprotected;
    nsCMTdevUnprotected;
    nsCMTsubProtected;
    nsCMTdevProtected;
    mpCMTupgProtected;
    mpCMTsubProtected;
    mpCMTupgUnprotected;
    mpCMTsubUnprotected;

    updatedGlobalCMTsubUnprotected;
    updatedGlobalCMTdevUnprotected;
    updatedGlobalCMTsubProtected;
    updatedGlobalCMTdevProtected;
    updatedNsCMTsubUnprotected;
    updatedNsCMTdevUnprotected;
    updatedNsCMTsubProtected;
    updatedNsCMTdevProtected;
    updatedMpCMTupgProtected;
    updatedMpCMTsubProtected;
    updatedMpCMTupgUnprotected;
    updatedMpCMTsubUnprotected;

    handleKeyChange(event) {
        this.searchKey = event.target.value;
    }

    async handleGetCMT() {
        this.globalCMTsubUnprotected = await getGlobalCMTfieldUS(/*{ searchKey: this.searchKey }*/ );
        this.globalCMTdevUnprotected = await getGlobalCMTfieldUD(/*{ searchKey: this.searchKey }*/ );
        this.globalCMTsubProtected = await getGlobalCMTfieldPS(/*{ searchKey: this.searchKey }*/ );
        this.globalCMTdevProtected = await getGlobalCMTfieldPD(/*{ searchKey: this.searchKey }*/ );
        this.nsCMTsubUnprotected = await getNsCMTfieldUS(/*{ searchKey: this.searchKey }*/ );
        this.nsCMTdevUnprotected = await getNsCMTfieldUD(/*{ searchKey: this.searchKey }*/ );
        this.nsCMTsubProtected = await getNsCMTfieldPS(/*{ searchKey: this.searchKey }*/ );
        this.nsCMTdevProtected = await getNsCMTfieldPD(/*{ searchKey: this.searchKey }*/ );
        this.mpCMTupgProtected = await getMpCMTfieldPD(/*{ searchKey: this.searchKey }*/ );
        this.mpCMTsubProtected = await getMpCMTfieldPS(/*{ searchKey: this.searchKey }*/ );
        this.mpCMTupgUnprotected = await getMpCMTfieldUD(/*{ searchKey: this.searchKey }*/ );
        this.mpCMTsubUnprotected = await getMpCMTfieldUS(/*{ searchKey: this.searchKey }*/ );
    }
    async handleUpdateGlobalCMTUS() {
        console.log('before apex invoked - global CMT');
        this.updatedGlobalCMTsubUnprotected = await updateGlobalCMTfieldUS();
        console.log('after apex invoked - global CMT');
    }
    async handleUpdateGlobalCMTUD() {
        console.log('before apex invoked - global CMT');
        this.updatedGlobalCMTdevUnprotected = await updateGlobalCMTfieldUD();
        console.log('after apex invoked - global CMT');
    }
    async handleUpdateGlobalCMTPS() {
        console.log('before apex invoked - global CMT P');
        this.updatedGlobalCMTsubProtected = await updateGlobalCMTfieldPS();
        console.log('after apex invoked - global CMT P');
    }
    async handleUpdateGlobalCMTPD() {
        console.log('before apex invoked - global CMT P');
        this.updatedGlobalCMTdevProtected = await updateGlobalCMTfieldPD();
        console.log('after apex invoked - global CMT P');
    }
    async handleUpdateNsCMTUS() {
        console.log('before apex invoked - NS CMT');
        this.updatedNsCMTsubUnprotected = await updateNsCMTFieldUS();
        console.log('after apex invoked - NS CMT');
    }
    async handleUpdateNsCMTUD() {
        console.log('before apex invoked - NS CMT');
        this.updatedNsCMTdevUnprotected = await updateNsCMTFieldUD();
        console.log('after apex invoked - NS CMT');
    }
    async handleUpdateNsCMTPS() {
        console.log('before apex invoked - NS CMT P');
        this.updatedNsCMTsubProtected = await updateNsCMTFieldPS();
        console.log('after apex invoked - NS CMT P');
    }
    async handleUpdateNsCMTPD() {
        console.log('before apex invoked - NS CMT P');
        this.updatedNsCMTdevProtected = await updateNsCMTFieldPD();
        console.log('after apex invoked - NS CMT P');
    }
    async handleUpdateMpCMTPD() {
        console.log('before apex invoked - MP CMT');
        this.updatedMpCMTupgProtected = await updateMpCMTFieldPD();
        console.log('after apex invoked - MP CMT');
    }
    async handleUpdateMpCMTPS() {
        console.log('before apex invoked - MP CMT');
        this.updatedMpCMTsubProtected = await updateMpCMTFieldPS();
        console.log('after apex invoked - MP CMT');
    }
    async handleUpdateMpCMTUD() {
        console.log('before apex invoked - MP CMT U');
        this.updatedMpCMTupgUnprotected = await updateMpCMTFieldUD();
        console.log('after apex invoked - MP CMT U');
    }
    async handleUpdateMpCMTUS() {
        console.log('before apex invoked - MP CMT U');
        this.updatedMpCMTsubUnprotected = await updateMpCMTFieldUS();
        console.log('after apex invoked - MP CMT U');
    }
}