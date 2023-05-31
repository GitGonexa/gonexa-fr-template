BEGIN TRANSACTION;
CREATE TABLE "gnx__Document_template__c" (
    id INTEGER NOT NULL,
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"gnx__Activate_sign_order__c" VARCHAR(255), 
	"gnx__Allow_recipients_modification__c" VARCHAR(255), 
	"gnx__Assemblies__c" VARCHAR(255), 
	"gnx__Available_sending_methods__c" VARCHAR(255), 
	"gnx__Default_email_template__c" VARCHAR(255), 
	"gnx__Default_procedure_name__c" VARCHAR(255), 
	"gnx__Encrypt_signature__c" VARCHAR(255), 
	"gnx__External_ID__c" VARCHAR(255), 
	"gnx__Generated_file_name_prefix__c" VARCHAR(255), 
	"gnx__Initials_included__c" VARCHAR(255), 
	"gnx__Language__c" VARCHAR(255), 
	"gnx__Language_field_on_main_object__c" VARCHAR(255), 
	"gnx__Last_version_number_sent__c" VARCHAR(255), 
	"gnx__MFA_method__c" VARCHAR(255), 
	"gnx__Main_object_condition__c" VARCHAR(255), 
	"gnx__Merged_fields_status__c" VARCHAR(255), 
	"gnx__Order__c" VARCHAR(255), 
	"gnx__Override_salesforce_file_sharing__c" VARCHAR(255), 
	"gnx__Path_on_remote_storage__c" VARCHAR(255), 
	"gnx__Phone_field_API_name__c" VARCHAR(255), 
	"gnx__Recipients_configuration__c" VARCHAR(255), 
	"gnx__Salesforce_content_document_Id__c" VARCHAR(255), 
	"gnx__Salesforce_content_version_id_sent__c" VARCHAR(255), 
	"gnx__Save_json_data_in_log__c" VARCHAR(255), 
	"gnx__Storage_location__c" VARCHAR(255), 
	"gnx__Template_ID_on_Azure__c" VARCHAR(255), 
	"gnx__Template_signature__c" VARCHAR(255), 
	"gnx__Title_last_template_sent__c" VARCHAR(255), 
	"gnx__Type__c" VARCHAR(255), 
	"gnx__User_can_change_language__c" VARCHAR(255), 
	"gnx__Validity_period__c" VARCHAR(255), 
	"gnx__Verify_template_signature__c" VARCHAR(255), 
	"gnx__Versioning_policy__c" VARCHAR(255), 
	"gnx__Word_labels__c" VARCHAR(255), 
	"gnx__Wrong_object_or_wrong_format__c" VARCHAR(255), 
	"gnx__date_of_last_send__c" VARCHAR(255), 
	"gnx__docx_output__c" VARCHAR(255), 
	"gnx__pdf_output__c" VARCHAR(255), 
	"gnx__pptx_output__c" VARCHAR(255), 
	"gnx__xlsx_output__c" VARCHAR(255), 
	"gnx__Translation_of__c" VARCHAR(255),
	PRIMARY KEY (id)
);


INSERT INTO "gnx__Document_template__c" VALUES(1,'Word | Modèle RF Particulier Gonexa','0126t000000gmkoAAA','False','True','','Certified Sign','','','False','k1d8nT6gYlcJWoPuEZ','RF','False','','','1','SMS by default','','True','','False','','','','0696t000001mAUaAAM','0686t000001i7oTAAQ','False','Salesforce','CumL9imozC','','Templates Gonexa RF Particuliers.docx','','False','','False','file','','{!gnx__Tax_receipt__c|gnx__Tax_receipt_number__c};{!gnx__Tax_receipt__c|gnx__Issued_on__c};{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name};{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c};{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c};{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c};{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Country__c};{!gnx__Tax_receipt__c|gnx__Donor_First_Name__c};{!gnx__Tax_receipt__c|gnx__Donor_Last_Name__c};{!gnx__Tax_receipt__c|gnx__Donor_Street__c};{!gnx__Tax_receipt__c|gnx__Donor_Postal_Code__c};{!gnx__Tax_receipt__c|gnx__Donor_City__c};{!gnx__Tax_receipt__c|gnx__Donor_Country__c};{!gnx__Tax_receipt__c|gnx__Amount__c};','2023-05-04T14:08:38.000+0000','True','True','False','False','');
INSERT INTO "gnx__Document_template__c" VALUES(2,'PDF | Modèle RF Don Organisme Particulier','0126t000000gmkoAAA','False','True','','Certified Sign','','','False','TpScSrRXshKYAhjKTp','PART','False','','','9','SMS by default','','True','','False','','','','0696t000001mBtRAAU','0686t000001iBaNAAU','False','Salesforce','uHGf4jBBZY','','Modèle Don organisme Particuliers.pdf','','False','','False','replace','','','2023-05-09T12:49:18.000+0000','True','True','False','False','');
INSERT INTO "gnx__Document_template__c" VALUES(3,'PDF | Modèle RF Don Organisme Pour Les Entreprises','0126t000000gmkoAAA','False','True','','Certified Sign','','','False','gj3GjZ3VkljpaloNhm','Nom','False','','','4','SMS by default','','True','','False','','','','0696t000001mELmAAM','0686t000001iBhcAAE','False','Salesforce','CmGj4gcHHk','','Modèle de don pour les entreprises.pdf','','False','','False','replace','','','2023-05-09T13:49:22.000+0000','True','True','False','False','');


CREATE TABLE "gnx__Document_template__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "gnx__Document_template__c_rt_mapping" VALUES('0126t000000gmknAAA','Associate');
INSERT INTO "gnx__Document_template__c_rt_mapping" VALUES('0126t000000gmkoAAA','Main');
INSERT INTO "gnx__Document_template__c_rt_mapping" VALUES('0126t000000gmkpAAA','Translation');

CREATE TABLE "gnx__Document_template_object__c" (
    "id" INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"gnx__Condition_on_query__c" VARCHAR(255), 
	"gnx__External_ID__c" VARCHAR(255), 
	"gnx__Field_to_group_on__c" VARCHAR(255), 
	"gnx__Fields_included_in_if_statement__c" VARCHAR(255), 
	"gnx__Fields_or_relationships_status__c" VARCHAR(255), 
	"gnx__Fields_to_query__c" VARCHAR(255), 
	"gnx__Fields_to_query_for_images__c" VARCHAR(255), 
	"gnx__Fields_to_query_with_format__c" VARCHAR(255), 
	"gnx__Generated_file_name_suffix__c" VARCHAR(255), 
	"gnx__Get_record_Id_from_custom_query__c" VARCHAR(255), 
	"gnx__Group_name__c" VARCHAR(255), 
	"gnx__Lookup_name_on_child_object__c" VARCHAR(255), 
	"gnx__Object_API_name__c" VARCHAR(255), 
	"gnx__Path_to_main_object__c" VARCHAR(255), 
	"gnx__Query_ordered_by__c" VARCHAR(255), 
	"gnx__Remove_table_if_empty__c" VARCHAR(255), 
	"gnx__Text_to_replace_table__c" VARCHAR(255), 
	"gnx__Document_template__c" VARCHAR(255), 
	"gnx__parent_object__c" VARCHAR(255),
	PRIMARY KEY (id)
);


INSERT INTO "gnx__Document_template_object__c" VALUES(1,'gnx__TR_line__c','0126t000000gmkqAAA','','jihj8IVad28CqAN4ye','','','[{"type":"DATE","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Payment_date__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Payment_date__c","fieldOrRelationship":"gnx__Payment_date__c"}]','gnx__Payment_date__c;','','FORMAT(gnx__Payment_date__c);','','','','gnx__Tax_receipt__c','gnx__TR_line__c','gnx__Tax_receipt__c.gnx__TR_line__c','','True','','2','6');
INSERT INTO "gnx__Document_template_object__c" VALUES(2,'Tax_receipt','0126t000000gmkrAAA','','MJFM83zB1AauIfHV5j','','','[]','','','','Id','','','','gnx__Tax_receipt__c','gnx__Tax_receipt__c','','True','','1','');
INSERT INTO "gnx__Document_template_object__c" VALUES(3,'gnx__TR_line__c','0126t000000gmkqAAA','','guZMw9pjcTTI0ofmm4','','','[{"type":"DATE","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Payment_date__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Payment_date__c","fieldOrRelationship":"gnx__Payment_date__c"},{"type":"CURRENCY","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Amount__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Amount__c","fieldOrRelationship":"gnx__Amount__c"}]','gnx__Payment_date__c;gnx__Amount__c;','','FORMAT(gnx__Payment_date__c);FORMAT(gnx__Amount__c);','','','','gnx__Tax_receipt__c','gnx__TR_line__c','gnx__Tax_receipt__c.gnx__TR_line__c','','True','','3','5');
INSERT INTO "gnx__Document_template_object__c" VALUES(4,'gnx__TR_line__c','0126t000000gmkqAAA','','rOhCCRld3sYh7Habaw','','','[{"type":"STRING","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Transaction_reference__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Transaction_reference__c","fieldOrRelationship":"gnx__Transaction_reference__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Payment_method__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Payment_method__c","fieldOrRelationship":"gnx__Payment_method__c"},{"type":"DATE","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Payment_date__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Payment_date__c","fieldOrRelationship":"gnx__Payment_date__c"},{"type":"CURRENCY","translations":null,"nameOnTemplate":"gnx__TR_line__c","mergeFieldInDocument":"{!gnx__TR_line__c|gnx__Amount__c}","lastSobject":"gnx__TR_line__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Amount__c","fieldOrRelationship":"gnx__Amount__c"}]','gnx__Transaction_reference__c;gnx__Payment_method__c;gnx__Payment_date__c;gnx__Amount__c;','','gnx__Transaction_reference__c;gnx__Payment_method__c;FORMAT(gnx__Payment_date__c);FORMAT(gnx__Amount__c);','','','','gnx__Tax_receipt__c','gnx__TR_line__c','gnx__Tax_receipt__c.gnx__TR_line__c','','True','','1','2');
INSERT INTO "gnx__Document_template_object__c" VALUES(5,'gnx__Tax_receipt__c','0126t000000gmkrAAA','','i3fGBJjoWFUxWWwFQg','','','[{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Tax_receipt_number__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Tax_receipt_number__c","fieldOrRelationship":"gnx__Tax_receipt_number__c"},{"type":"TEXTAREA","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c","fieldOrRelationship":"gnx__Entity_purpose__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c","fieldOrRelationship":"gnx__Street__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c","fieldOrRelationship":"gnx__Postal_Code__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c","fieldOrRelationship":"gnx__City__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name","fieldOrRelationship":"Name"},{"type":"DOUBLE","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__SIREN__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__SIREN__c","fieldOrRelationship":"gnx__SIREN__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_Street__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_Street__c","fieldOrRelationship":"gnx__Donor_Street__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_Postal_Code__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_Postal_Code__c","fieldOrRelationship":"gnx__Donor_Postal_Code__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_City__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_City__c","fieldOrRelationship":"gnx__Donor_City__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Account_name__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Account_name__c","fieldOrRelationship":"gnx__Account_name__c"},{"type":"DATETIME","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Issued_on__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Issued_on__c","fieldOrRelationship":"gnx__Issued_on__c"}]','gnx__Tax_receipt_number__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name;gnx__SIREN__c;gnx__Donor_Street__c;gnx__Donor_Postal_Code__c;gnx__Donor_City__c;gnx__Account_name__c;gnx__Issued_on__c;','','gnx__Tax_receipt_number__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name;FORMAT(gnx__SIREN__c);gnx__Donor_Street__c;gnx__Donor_Postal_Code__c;gnx__Donor_City__c;gnx__Account_name__c;FORMAT(gnx__Issued_on__c);','Id','','','','gnx__Tax_receipt__c','gnx__Tax_receipt__c','','True','','3','');
INSERT INTO "gnx__Document_template_object__c" VALUES(6,'gnx__Tax_receipt__c','0126t000000gmkrAAA','','oG3VLEcs0Mx1sMXgDU','','','[{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Tax_receipt_number__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Tax_receipt_number__c","fieldOrRelationship":"gnx__Tax_receipt_number__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name","fieldOrRelationship":"Name"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c","fieldOrRelationship":"gnx__Street__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c","fieldOrRelationship":"gnx__City__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c","fieldOrRelationship":"gnx__Postal_Code__c"},{"type":"TEXTAREA","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c}","lastSobject":"gnx__Legal_entity__c","isWithRelationShip":true,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c","fieldOrRelationship":"gnx__Entity_purpose__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_Last_Name__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_Last_Name__c","fieldOrRelationship":"gnx__Donor_Last_Name__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_First_Name__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_First_Name__c","fieldOrRelationship":"gnx__Donor_First_Name__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_Street__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_Street__c","fieldOrRelationship":"gnx__Donor_Street__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_City__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_City__c","fieldOrRelationship":"gnx__Donor_City__c"},{"type":"CURRENCY","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Amount__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Amount__c","fieldOrRelationship":"gnx__Amount__c"},{"type":"STRING","translations":null,"nameOnTemplate":"gnx__Tax_receipt__c","mergeFieldInDocument":"{!gnx__Tax_receipt__c|gnx__Donor_postal_code__c}","lastSobject":"gnx__Tax_receipt__c","isWithRelationShip":null,"isFound":true,"inIfStatement":false,"fullPath":"gnx__Donor_postal_code__c","fieldOrRelationship":"gnx__Donor_postal_code__c"}]','gnx__Tax_receipt_number__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c;gnx__Donor_Last_Name__c;gnx__Donor_First_Name__c;gnx__Donor_Street__c;gnx__Donor_City__c;gnx__Amount__c;gnx__Donor_postal_code__c;','','gnx__Tax_receipt_number__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.Name;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Street__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__City__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Postal_Code__c;gnx__Legal_entity_configuration__r.gnx__Legal_entity__r.gnx__Entity_purpose__c;gnx__Donor_Last_Name__c;gnx__Donor_First_Name__c;gnx__Donor_Street__c;gnx__Donor_City__c;FORMAT(gnx__Amount__c);gnx__Donor_postal_code__c;','gnx__Tax_receipt_number__c','','','','gnx__Tax_receipt__c','gnx__Tax_receipt__c','','True','','2','');


CREATE TABLE "gnx__Document_template_object__c_rt_mapping" (
	"record_type_id" VARCHAR(18) NOT NULL, 
	"developer_name" VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "gnx__Document_template_object__c_rt_mapping" VALUES('0126t000000gmkqAAA','Child');
INSERT INTO "gnx__Document_template_object__c_rt_mapping" VALUES('0126t000000gmkrAAA','Main');


CREATE TABLE "gnx__Legal_entity__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"gnx__City__c" VARCHAR(255), 
	"gnx__Country__c" VARCHAR(255), 
	"gnx__Entity_purpose__c" VARCHAR(255), 
	"gnx__Fiscal_year__c" VARCHAR(255), 
	"gnx__Is_Production__c" VARCHAR(255), 
	"gnx__Logo__c" VARCHAR(255), 
	"gnx__Next_TR_number__c" VARCHAR(255), 
	"gnx__Number_Length__c" VARCHAR(255), 
	"gnx__Postal_code__c" VARCHAR(255), 
	"gnx__Signature__c" VARCHAR(255), 
	"gnx__Street__c" VARCHAR(255), 
	"gnx__Tax_receipt_prefix__c" VARCHAR(255),
	PRIMARY KEY (id)
);
INSERT INTO "gnx__Legal_entity__c" VALUES(1,'The French Template','Lyon','France','Association à but humanitaire pour la protection, le droit à la sauvegarde des données et la mise en circulations de logiciels informatiques inscrits dans le cycle de vie d''un document.','2023','True','<p style="text-align: center;"><img src="https://speed-saas-4566-dev-ed.scratch.file.force.com/servlet/rtaImage?eid=a096t000002210P&amp;feoid=00N6t000004wJqC&amp;refid=0EM6t000000D1od" alt="Gonexa logo.png"></img></p>','4.0','6.0','69006','<p><img src="https://speed-saas-4566-dev-ed.scratch.file.force.com/servlet/rtaImage?eid=a096t000002210P&amp;feoid=00N6t000004wJqG&amp;refid=0EM6t000000D1oY" alt="Signaturei.jpg"></img></p>','51 Boulevard des brotteaux','TFT2023');



CREATE TABLE "gnx__Legal_entity_configuration__c" (
	id INTEGER NOT NULL,
	"Name" VARCHAR(255), 
	"gnx__Account_donor_path__c" VARCHAR(255), 
	"gnx__Amount_path__c" VARCHAR(255), 
	"gnx__Bypass_context__c" VARCHAR(255), 
	"gnx__Default_configuration__c" VARCHAR(255), 
	"gnx__Default_status__c" VARCHAR(255), 
	"gnx__Donation_category_path__c" VARCHAR(255), 
	"gnx__Donation_type_path__c" VARCHAR(255), 
	"gnx__Donor_city_path__c" VARCHAR(255), 
	"gnx__Donor_country_path__c" VARCHAR(255), 
	"gnx__Donor_firstname_path__c" VARCHAR(255), 
	"gnx__Donor_lastname_path__c" VARCHAR(255), 
	"gnx__Donor_postal_code_path__c" VARCHAR(255), 
	"gnx__Donor_street_path__c" VARCHAR(255), 
	"gnx__Generation_on_cancellation__c" VARCHAR(255), 
	"gnx__Legal_form_path__c" VARCHAR(255), 
	"gnx__Lines_condition__c" VARCHAR(255), 
	"gnx__Lookup_to_TR__c" VARCHAR(255), 
	"gnx__Payment_date_path__c" VARCHAR(255), 
	"gnx__Payment_method_path__c" VARCHAR(255), 
	"gnx__Payment_type_path__c" VARCHAR(255), 
	"gnx__SIREN_path__c" VARCHAR(255), 
	"gnx__TR_Line_object__c" VARCHAR(255), 
	"gnx__Tax_receipt_object__c" VARCHAR(255), 
	"gnx__Transaction_reference__c" VARCHAR(255), 
	"gnx__Document_template__c" VARCHAR(255), 
	"gnx__Legal_entity__c" VARCHAR(255),
	PRIMARY KEY (id)
);
INSERT INTO "gnx__Legal_entity_configuration__c" VALUES(1,'Configuration Don Entreprise','Account.Name','npe01__Payment_Amount__c','False','False','Brouillon','','','npsp__Primary_Contact__r.MailingCity','npsp__Primary_Contact__r.MailingCountry','npsp__Primary_Contact__r.FirstName','npsp__Primary_Contact__r.LastName','npsp__Primary_Contact__r.MailingPostalCode','npsp__Primary_Contact__r.MailingStreet','True','','npe01__Opportunity__c','npe01__Payment_Date__c','npe01__Payment_Method__c','npsp__Type__c','','','npe01__OppPayment__c','Opportunity','npe01__Check_Reference_Number__c','3','1');
INSERT INTO "gnx__Legal_entity_configuration__c" VALUES(2,'Configuration Don Particulier','','npe01__Payment_Amount__c','False','True','Brouillon','','','npsp__Primary_Contact__r.MailingCity','npsp__Primary_Contact__r.MailingCountry','npsp__Primary_Contact__r.FirstName','npsp__Primary_Contact__r.LastName','npsp__Primary_Contact__r.MailingPostalCode','npsp__Primary_Contact__r.MailingStreet','True','','npe01__Opportunity__c','npe01__Payment_Date__c','npe01__Payment_Method__c','npsp__Type__c','','','npe01__OppPayment__c','Opportunity','npe01__Check_Reference_Number__c','2','1');
