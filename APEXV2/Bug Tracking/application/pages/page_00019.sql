prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(2333082129878819730)
,p_name=>'Version Page'
,p_page_mode=>'MODAL'
,p_step_title=>'Version Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(2506141354470818444)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function closeWindow() {',
'if ( document.getElementById("P19_SAVESTATUS").value == ''Y'' )',
'{',
'window.opener.location.href=window.opener.location.href;',
'window.close();',
'}',
'}',
'',
'function mypopupURL(url,windowName)',
'',
'{w = open(url,windowName,"Scrollbars=1,resizable=1,width=800,height=600");',
'',
'if (w.opener == null)',
'',
'w.opener = self;',
'',
'w.focus();}',
'',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3797358846252064904)
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20180220142348'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1096899508453896360)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1225684792970288320)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6325357193358234837)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1225686614700288321)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P19_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10379673202481417359)
,p_plug_name=>'Version Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1225683798473288318)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10379674001531417365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1096899508453896360)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6325363784101288886)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1096899508453896360)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Version'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10379673783800417365)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1096899508453896360)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10379673592209417363)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1096899508453896360)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_ID,P47_VERSION_NAME:&P19_ID.,&P19_VERSION_NAME.'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6325357504098234838)
,p_name=>'P19_CREATED_BY'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(6325357193358234837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created By:</b>'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6325357684336234838)
,p_name=>'P19_UPDATED_BY'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(6325357193358234837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated By:</b>'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6325357894076234838)
,p_name=>'P19_UPDATED'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(6325357193358234837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Updated On:</b>'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6325358105268234838)
,p_name=>'P19_CREATED'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(6325357193358234837)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Created On:</b>'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379674602889417366)
,p_name=>'P19_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379674778197417366)
,p_name=>'P19_VERSION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version Name'
,p_source=>'VERSION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(269497651921969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the Version name, which uniquely identifies the version under the Product / Project.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379675005808417367)
,p_name=>'P19_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the brief description of the Version.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379675206757417367)
,p_name=>'P19_IS_ACTIVE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Enabled'
,p_source=>'IS_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379675382557417367)
,p_name=>'P19_REQUEST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_source=>'&P19_REQUEST.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379675597089417367)
,p_name=>'P19_BUILDPOPUPURL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10379696497362448151)
,p_name=>'P19_RELEASE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_item_default=>'to_char(localtimestamp,''DD-MON-YYYY'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Release Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RELEASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>2000
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_api.id(269498005044969761)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the release date of this Version.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10383231787767345704)
,p_name=>'P19_PRODUCT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_source=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10383649379230327342)
,p_name=>'P19_SAVESTATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_source=>'&P19_SAVESTATUS.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10387021004647537733)
,p_name=>'P19_BUILD_EDITPOPUPURL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(10379673202481417359)
,p_use_cache_before_default=>'NO'
,p_source=>'&P19_BUILD_EDITPOPUPURL.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10379675784515417368)
,p_validation_name=>'P19_VERSION_NAME not null'
,p_validation_sequence=>20
,p_validation=>'return trim(:P19_VERSION_NAME) is not null ;'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Version name must have some value.'
,p_associated_item=>wwv_flow_api.id(10379674778197417366)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10379675984768417370)
,p_validation_name=>'P19_VERSION_NAME duplication check'
,p_validation_sequence=>30
,p_validation=>'Select 1 from eba_bt_version where (( upper(VERSION_NAME) = upper(trim(:P19_VERSION_NAME)) and trim(:P19_ID) is null ) or ( upper(VERSION_NAME) = upper(trim(:P19_VERSION_NAME)) and id <> :P19_ID )) and PRODUCT_ID = :P19_PRODUCT_ID'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Version name already exists in this product.'
,p_associated_item=>wwv_flow_api.id(10379674778197417366)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10387112683335768169)
,p_validation_name=>'P19_RELEASE_DATE is valid date'
,p_validation_sequence=>40
,p_validation=>'P19_RELEASE_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'Please enter a valid date.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(10379674001531417365)
,p_associated_item=>wwv_flow_api.id(10379696497362448151)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1096900253924896468)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10379673783800417365)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1096900420672896469)
,p_event_id=>wwv_flow_api.id(1096900253924896468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10379676508069417375)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'10'
,p_process_when_button_id=>wwv_flow_api.id(10379673592209417363)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6325365597738302268)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Save Data'
,p_attribute_02=>'EBA_BT_VERSION'
,p_attribute_03=>'P19_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1096900190934896467)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6325359174920248373)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Load Data'
,p_attribute_02=>'EBA_BT_VERSION'
,p_attribute_03=>'P19_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
end;
/
