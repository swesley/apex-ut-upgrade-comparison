select * from dba_objects where object_name like 'SW_AU%';
drop package imsapx.sw_ausoug;
create or replace package imsapx.sw_ausoug is

  function dbf_render_chk_no_submit(
    pc_prefix  varchar2
   ,pn_id      number
   ,pc_label   varchar2 default '&'||'emsp;'
   ,pc_value   varchar2 default 'Y'
   ,pc_checked varchar2 default null
   ,pc_attributes varchar2 default null
  ) return varchar2;
end;
/

create or replace package body imsapx.sw_ausoug is

  function dbf_render_chk_no_submit(
    pc_prefix  varchar2
   ,pn_id      number
   ,pc_label   varchar2 default '&'||'emsp;'
   ,pc_value   varchar2 default 'Y'
   ,pc_checked varchar2 default null
   ,pc_attributes varchar2 default null
  ) return varchar2 is
  begin
    -- HTML copied from single instance checkbox item in APEX
    return apex_string.format(q'~<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel apex-item-wrapper apex-item-wrapper--single-checkbox " id="%0_NEW_CONTAINER">
<div class="t-Form-labelContainer">
</div><div class="t-Form-inputContainer">
<div class="t-Form-itemWrapper">
<div class="apex-item-single-checkbox">
<input type="hidden" name="%0" id="%0_HIDDENVALUE" value="N">
<input type="checkbox" id="%0" data-unchecked-value="N" %3 value="%2">
<label for="%0" id="%0_LABEL" class="u-checkbox">%1</label>
</div></div>
<span id="%0_error_placeholder" class="a-Form-error">
</span></div></div>~'
  ,p0 => pc_prefix||'_'||pn_id
  ,p1 => pc_label
  ,p2 => pc_value
  ,p3 => case when pc_checked is not null then ' class="checked" ' end||pc_attributes
  );
  end dbf_render_chk_no_submit;
  
end;
/