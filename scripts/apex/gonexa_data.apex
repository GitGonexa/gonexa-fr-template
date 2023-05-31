public static void setupContentDocument(){

    Map<string,string> mapResourceNameTemplateName  = new Map<string,string>();
    mapResourceNameTemplateName.put('Modele_de_don_pour_les_entreprises','PDF | Modèle RF Don Organisme Pour Les Entreprises');
    mapResourceNameTemplateName.put('Modele_don_organisme_particuliers','PDF | Modèle RF Don Organisme Particulier');
    mapResourceNameTemplateName.put('Templates_Gonexa_RF_Particuliers','Word | Modèle RF Particulier Gonexa');

    List<StaticResource> resources = [Select Name , id , Body from StaticResource where Name in :mapResourceNameTemplateName.keySet()];
    List<ContentVersion> versions = createContentVersionsWithStaticResources(resources);
    List<string> versionsIds = getIdsFromObject(versions);
    versions = [Select id , Title , ContentDocumentId from ContentVersion where id in :versionsIds];
    List<gnx__Document_template__c> templates = [Select Id , Name from gnx__Document_template__c where Name in :mapResourceNameTemplateName.values()];

    List<ContentDocumentLink> links = new List<ContentDocumentLink>();

    for(string resourceName : mapResourceNameTemplateName.keySet()){
        links.add( 
            new ContentDocumentLink(
                ContentDocumentId = getContentDocumentIdByContentVersionName(versions,resourceName),
                LinkedEntityId = getTemplateIdByName(templates,mapResourceNameTemplateName.get(resourceName)),
                ShareType = 'I',
                Visibility = 'AllUsers'
            )
        );
    }
    insert links;
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

private static List<string> getIdsFromObject(List<SObject> objs){
    List<String> ids = new List<String>();
    for(SObject currentObj : objs){
        ids.add(currentObj.Id);
    }
    return ids;
}

private static string getTemplateIdByName(List<gnx__Document_template__c> templates,string templateName){
    for(gnx__Document_template__c template : templates){
        if(template.Name == templateName){
            return template.Id;
        } 
    }
    return null;
}

private static string getContentDocumentIdByContentVersionName(List<ContentVersion> versions ,string versionName){
    for(ContentVersion version : versions){
        if(version.Title == versionName){
            return version.ContentDocumentId;
        } 
    }
    return null;
}