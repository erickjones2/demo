prompt --application/shared_components/user_interface/lovs/defect_category
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3379208593274923)
,p_lov_name=>'DEFECT_CATEGORY'
,p_lov_query=>'.'||wwv_flow_api.id(3379208593274923)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3379699148274925)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Supplier'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3380048792274926)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Workmanship'
,p_lov_return_value=>'W'
);
end;
/
