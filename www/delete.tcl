ad_page_contract {
    Delete an organization
    
    @author Jade Rubick (jade@rubick.com)
    @creation-date 2003-05-29
    @cvs-id $Id$
} {
    organization_id:integer
}

permission::require_permission -object_id $organization_id -privilege delete

db_exec_plsql organization_delete { }

ad_returnredirect .
