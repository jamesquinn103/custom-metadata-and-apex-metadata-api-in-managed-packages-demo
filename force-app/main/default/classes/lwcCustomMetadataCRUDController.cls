public with sharing class lwcCustomMetadataCRUDController {
    static final String testConstant = 'TESTING';

    @AuraEnabled(cacheable=true)
    public static string getGlobalCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Unprotected_CMT_Record');
        return metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getGlobalCustomMetadataUnprotectedRecordDeveloperField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Unprotected_CMT_Record');
        return metadataRecord.my_1gp_fun__Developer_Controlled_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getGlobalCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Protected_CMT_Record');
        return metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getGlobalCustomMetadataProtectedRecordDeveloperField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Protected_CMT_Record');
        return metadataRecord.my_1gp_fun__Developer_Controlled_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getNSCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Unprotected');
        return metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getNSCustomMetadataUnprotectedRecordDeveloperField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Unprotected');
        return metadataRecord.my_1gp_fun__Developer_Editable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getNSCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Protected');
        return metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getNSCustomMetadataProtectedRecordDeveloperField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Protected');
        return metadataRecord.my_1gp_fun__Developer_Editable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getMPCustomMetadataProtectedRecordUpgradableField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Protected');
        return metadataRecord.my_1gp_fun__Upgradable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getMPCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Protected');
        return metadataRecord.my_1gp_fun__Non_Upgradable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getMPCustomMetadataUnprotectedRecordUpgradableField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Unprotected');
        return metadataRecord.my_1gp_fun__Upgradable_Field__c;
    }
    @AuraEnabled(cacheable=true)
    public static string getMPCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Unprotected');
        return metadataRecord.my_1gp_fun__Non_Upgradable_Field__c;
    }

    // ===================================================UPDATES===========================================================

    @AuraEnabled(cacheable=true)
    public static string updateGlobalCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Unprotected_CMT_Record');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_global_scoped.my_1gp_fun__Unprotected_CMT_Record';
        customMetadata.label = 'Unprotected CMT Record';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Subscriber_Controlled_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateGlobalCustomMetadataUnprotectedRecordDeveloperField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Unprotected_CMT_Record');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_global_scoped.my_1gp_fun__Unprotected_CMT_Record';
        customMetadata.label = 'Unprotected CMT Record';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Developer_Controlled_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Developer_Controlled_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Developer_Controlled_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateGlobalCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Protected_CMT_Record');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_global_scoped.my_1gp_fun__Protected_CMT_Record';
        customMetadata.label = 'Protected CMT Record';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Subscriber_Controlled_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Subscriber_Controlled_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateGlobalCustomMetadataProtectedRecordDeveloperField() {
        my_1gp_fun__CMT_global_scoped__mdt metadataRecord = my_1gp_fun__CMT_global_scoped__mdt.getInstance('Protected_CMT_Record');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_global_scoped.my_1gp_fun__Protected_CMT_Record';
        customMetadata.label = 'Protected CMT Record';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Developer_Controlled_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Developer_Controlled_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Developer_Controlled_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateNSCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Unprotected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_NS_scoped.my_1gp_fun__CMT_Record_Unprotected';
        customMetadata.label = 'CMT Record - Unprotected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Subscriber_Editable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateNSCustomMetadataUnprotectedRecordDeveloperField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Unprotected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_NS_scoped.my_1gp_fun__CMT_Record_Unprotected';
        customMetadata.label = 'CMT Record - Unprotected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Developer_Editable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Developer_Editable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Developer_Editable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateNSCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Protected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_NS_scoped.my_1gp_fun__CMT_Record_Protected';
        customMetadata.label = 'CMT Record - Protected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Subscriber_Editable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Subscriber_Editable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateNSCustomMetadataProtectedRecordDeveloperField() {
        my_1gp_fun__CMT_NS_scoped__mdt metadataRecord = my_1gp_fun__CMT_NS_scoped__mdt.getInstance('CMT_Record_Protected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT_NS_scoped.my_1gp_fun__CMT_Record_Protected';
        customMetadata.label = 'CMT Record - Protected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Developer_Editable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Developer_Editable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Developer_Editable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateMPCustomMetadataProtectedRecordUpgradableField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Protected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT.my_1gp_fun__CMT_Record_Protected';
        customMetadata.label = 'CMT Record - Protected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Upgradable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Upgradable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Upgradable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateMPCustomMetadataProtectedRecordSubscriberField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Protected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT.my_1gp_fun__CMT_Record_Protected';
        customMetadata.label = 'CMT Record - Protected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Non_Upgradable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Non_Upgradable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Non_Upgradable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateMPCustomMetadataUnprotectedRecordUpgradableField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Unprotected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT.my_1gp_fun__CMT_Record_Unprotected';
        customMetadata.label = 'CMT Record - Unprotected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Upgradable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Upgradable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Upgradable_Field__c + '.0';
    }

    @AuraEnabled(cacheable=true)
    public static string updateMPCustomMetadataUnprotectedRecordSubscriberField() {
        my_1gp_fun__CMT__mdt metadataRecord = my_1gp_fun__CMT__mdt.getInstance('CMT_Record_Unprotected');

        Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'my_1gp_fun__CMT.my_1gp_fun__CMT_Record_Unprotected';
        customMetadata.label = 'CMT Record - Unprotected';
        Metadata.CustomMetadataValue customField1 = new Metadata.CustomMetadataValue(); //the values you're changing/updating
        customField1.field = 'my_1gp_fun__Non_Upgradable_Field__c'; //VARIABLE the custom field API Name that you're wanting to insert/update a value of
        customField1.value = metadataRecord.my_1gp_fun__Non_Upgradable_Field__c + '.0'; // append .0 each deployment
        customMetadata.values.add(customField1); //add the changes to list of changes to be deployed

        Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
        mdContainer.addMetadata(customMetadata);
        if (!Test.isRunningTest()) {
            Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, null);
        }
        return metadataRecord.my_1gp_fun__Non_Upgradable_Field__c + '.0';
    }
}