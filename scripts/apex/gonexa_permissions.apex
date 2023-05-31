public static void assignPermissionSetForRfAdmin(){
    List<PermissionSet> permissionsSet = [
        select Id, Label 
        from PermissionSet
        where Name = 'Gonexa_RF_Admin_permission_sets' or Name = 'ExaDoc_admin_permission_sets'
    ];

    List<PermissionSetAssignment> newPermissions = new List<PermissionSetAssignment>();

    for(PermissionSet permissionSet : permissionsSet){
            newPermissions.add(new PermissionSetAssignment(
                PermissionSetId = permissionSet.Id,
                AssigneeId = UserInfo.getUserId()
            ));
    }
    insert newPermissions;
}