-- 
-- 
-- 
-- @author Jade Rubick (jader@bread.com)
-- @creation-date 2004-06-25
-- @arch-tag: 07f8a128-3ba4-411b-af7a-4ced0c68278b
-- @cvs-id $Id$
--

create or replace function organization__name (integer)
returns varchar as '
declare
    p_organization_id    alias for $1;
    v_organization_name  organizations.name%TYPE;
begin
        select name || ''_'' || organization_id into v_organization_name
                from organizations
                where organization_id = p_organization_id;
    return v_organization_name;
end;
' language 'plpgsql';
------ end name proc
