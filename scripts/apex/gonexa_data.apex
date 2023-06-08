public static void setupContentDocument(){

    Map<string,string> mapResourceNameTemplateName  = new Map<string,string>();
    mapResourceNameTemplateName.put('Modele_de_don_pour_les_entreprises','PDF | Modèle RF Don Organisme Pour Les Entreprises');
    mapResourceNameTemplateName.put('Modele_don_organisme_particuliers','PDF | Modèle RF Don Organisme Particulier');
    mapResourceNameTemplateName.put('Templates_Gonexa_RF_Particuliers','Word | Modèle RF Particulier Gonexa');

    List<StaticResource> resources = [Select Name , id , Body from StaticResource where Name in :mapResourceNameTemplateName.keySet()];
    List<ContentVersion> versions = createContentVersionsWithStaticResources(resources);
    List<string> versionsIds = getIdsFromObject(versions);
    versions = [Select id , Title , ContentDocumentId from ContentVersion where id in :versionsIds];
    List<gnx__Document_template__c> templates = [Select Id , Name , gnx__Salesforce_content_version_id_sent__c from gnx__Document_template__c where Name in :mapResourceNameTemplateName.values()];

    List<ContentDocumentLink> links = new List<ContentDocumentLink>();

    List<gnx__Document_template__c> templatesToUpdate = new List<gnx__Document_template__c>();

    for(string resourceName : mapResourceNameTemplateName.keySet()){
        gnx__Document_template__c tmp = getTemplateByName(templates,mapResourceNameTemplateName.get(resourceName));
        ContentVersion currentVersion = getContentVersionByName(versions,resourceName);
        links.add( 
            new ContentDocumentLink(
                ContentDocumentId = currentVersion.ContentDocumentId,
                LinkedEntityId = tmp.Id,
                ShareType = 'I',
                Visibility = 'AllUsers'
            )
        );
        tmp.gnx__Salesforce_content_version_id_sent__c = currentVersion.Id;
        templatesToUpdate.add(tmp);
    }
    update templatesToUpdate;
    insert links;

    List<Id> docIds = getIdsFromObject(templates);
   
    gnx.QueueablePostTemplates queueableTemplates = new gnx.QueueablePostTemplates(versionsIds,docIds);
    System.enqueueJob(queueableTemplates);
}


private static List<ContentVersion> createContentVersionsWithStaticResources(List<StaticResource> resources){
    List<ContentVersion> versions = new List<ContentVersion>();
    for(StaticResource resource : resources){
        ContentVersion cv = new ContentVersion();
        cv.Title = resource.Name;
        cv.PathOnClient = resource.Name == 'Templates_Gonexa_RF_Particuliers' ? resource.Name + '.docx' : resource.Name + '.pdf';
        cv.VersionData = resource.Body;
        cv.IsMajorVersion = true;
        versions.add(cv);
    }
    insert versions;
    return versions;
}

private static List<Id> getIdsFromObject(List<SObject> objs){
    List<Id> ids = new List<Id>();
    for(SObject currentObj : objs){
        ids.add(currentObj.Id);
    }
    return ids;
}

private static gnx__Document_template__c getTemplateByName(List<gnx__Document_template__c> templates,string templateName){
    for(gnx__Document_template__c template : templates){
        if(template.Name == templateName){
            return template;
        } 
    }
    return null;
}

private static ContentVersion getContentVersionByName(List<ContentVersion> versions ,string versionName){
    for(ContentVersion version : versions){
        if(version.Title == versionName){
            return version;
        } 
    }
    return null;
}