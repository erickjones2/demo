prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Images - Assign to Model from Model'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Images to Model'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612636109968797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_last_updated_by=>'TBOWERS'
,p_last_upd_yyyymmddhh24miss=>'20190807093407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9833616278866647)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12375182163730881)
,p_plug_name=>'Assign Images to Model'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417016967908454)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12375891818730882)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12376268660730883)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(12375182163730881)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12494181187151005)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(12375182163730881)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12375650613730882)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(12375182163730881)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P34_MODEL_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12375525559730882)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(12375182163730881)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P34_MODEL_MASTER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9833748779866648)
,p_name=>'P34_IMAGE_SHUTTLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Images:'
,p_source=>'P34_IMAGE_SHUTTLE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IM.image_name display, IM.id return',
'from qcis_images_master IM',
'where IM.inactive_date IS NULL and',
'       NOT EXISTS (select ''Y'' from BG_QCIS.QCIS_IMAGES IMG where IMG.model_id = :P34_model_master_id and IMG.image_name = IM.image_name)',
'       order by display'))
,p_cHeight=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12378607823730886)
,p_name=>'P34_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Master Id'
,p_source=>'MODEL_MASTER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12379078188730887)
,p_name=>'P34_PLANT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12379418667730887)
,p_name=>'P34_BRAND_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_source=>'BRAND_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12379857376730888)
,p_name=>'P34_DIVISION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_source=>'DIVISION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12380219497730889)
,p_name=>'P34_MODEL_YEAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Year:'
,p_source=>'MODEL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12380631059730889)
,p_name=>'P34_MODEL_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Name:'
,p_source=>'MODEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12381041881730890)
,p_name=>'P34_MODEL_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model Desc:'
,p_source=>'MODEL_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12381422667730890)
,p_name=>'P34_LAST_UPDATE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9833616278866647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12381878330730890)
,p_name=>'P34_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9833616278866647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12382245799730891)
,p_name=>'P34_CREATION_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9833616278866647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12382698352730891)
,p_name=>'P34_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9833616278866647)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12425937880999220)
,p_name=>'P34_PLANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12375182163730881)
,p_prompt=>'Plant:'
,p_source=>':G_CURRENT_LOCATION_FORMATTED'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12376344027730883)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12376268660730883)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12377194017730884)
,p_event_id=>wwv_flow_api.id(12376344027730883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12384657904730893)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_MODEL_MASTER'
,p_attribute_02=>'QCIS_MODEL_MASTER'
,p_attribute_03=>'P34_MODEL_MASTER_ID'
,p_attribute_04=>'MODEL_MASTER_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12438541228217514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Image(s) to Model'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'qcis_add_model_image2(:P34_MODEL_MASTER_ID,:P34_IMAGE_SHUTTLE);',
'commit;',
'end;'))
,p_process_error_message=>'Error adding image.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12375650613730882)
,p_process_success_message=>'Image added to selected model(s).'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12385877297730894)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Shuttle'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P34_IMAGE_SHUTTLE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12385043488730893)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P34_MODEL_MASTER_ID is null then',
'        select "#OWNER#"."QCIS_MODEL_MASTER_SEQ".nextval',
'          into :P34_MODEL_MASTER_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12375525559730882)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12385499144730893)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_MODEL_MASTER'
,p_attribute_02=>'QCIS_MODEL_MASTER'
,p_attribute_03=>'P34_MODEL_MASTER_ID'
,p_attribute_04=>'MODEL_MASTER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12386270091730894)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12376268660730883)
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
