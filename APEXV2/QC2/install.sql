prompt --install
@application/set_environment.sql
@application/delete_application.sql
@application/create_application.sql
@application/shared_components/navigation/lists/inspection_menus.sql
@application/shared_components/navigation/lists/model_setup_maintenance.sql
@application/shared_components/navigation/lists/template_set_up_maintenance.sql
@application/shared_components/navigation/lists/plant_level_maintenance.sql
@application/shared_components/navigation/lists/desktop_navigation_menu.sql
@application/shared_components/navigation/lists/desktop_navigation_bar.sql
@application/plugin_settings.sql
@application/shared_components/security/authorizations/isadmin.sql
@application/shared_components/security/authorizations/isreadonly.sql
@application/shared_components/security/authorizations/isinspector.sql
@application/shared_components/security/authorizations/isshipping.sql
@application/shared_components/security/authorizations/isrepair.sql
@application/shared_components/security/authorizations/isshortstock.sql
@application/shared_components/security/authorizations/isvaliduser.sql
@application/shared_components/security/authorizations/issuperuser.sql
@application/shared_components/security/authorizations/isreportcreator.sql
@application/shared_components/security/authorizations/issuperuseroradmin.sql
@application/shared_components/navigation/navigation_bar.sql
@application/shared_components/logic/application_processes.sql
@application/shared_components/logic/application_items.sql
@application/shared_components/logic/application_computations.sql
@application/shared_components/logic/application_settings.sql
@application/shared_components/navigation/tabs/standard.sql
@application/shared_components/navigation/tabs/parent.sql
@application/shared_components/user_interface/lovs/active_inactive_both.sql
@application/shared_components/user_interface/lovs/all_plants_for_keywords_maint.sql
@application/shared_components/user_interface/lovs/a_i_status.sql
@application/shared_components/user_interface/lovs/brand.sql
@application/shared_components/user_interface/lovs/brand1.sql
@application/shared_components/user_interface/lovs/defect_status.sql
@application/shared_components/user_interface/lovs/defect_category.sql
@application/shared_components/user_interface/lovs/defect_codes.sql
@application/shared_components/user_interface/lovs/defect_types.sql
@application/shared_components/user_interface/lovs/division.sql
@application/shared_components/user_interface/lovs/division1.sql
@application/shared_components/user_interface/lovs/inspection_names.sql
@application/shared_components/user_interface/lovs/inspection_names1.sql
@application/shared_components/user_interface/lovs/inspectors.sql
@application/shared_components/user_interface/lovs/marine_division.sql
@application/shared_components/user_interface/lovs/models.sql
@application/shared_components/user_interface/lovs/models1.sql
@application/shared_components/user_interface/lovs/model_relationships.sql
@application/shared_components/user_interface/lovs/parent_usage_code.sql
@application/shared_components/user_interface/lovs/plant.sql
@application/shared_components/user_interface/lovs/plant1.sql
@application/shared_components/user_interface/lovs/responsible_area_by_plant.sql
@application/shared_components/user_interface/lovs/station.sql
@application/shared_components/user_interface/lovs/station1.sql
@application/shared_components/user_interface/lovs/status_boat.sql
@application/shared_components/user_interface/lovs/status_inspections.sql
@application/shared_components/user_interface/lovs/status_inspections1.sql
@application/shared_components/user_interface/lovs/substation.sql
@application/shared_components/user_interface/lovs/substation1.sql
@application/shared_components/user_interface/lovs/template_type_lov.sql
@application/shared_components/user_interface/lovs/units_of_measure.sql
@application/shared_components/user_interface/lovs/usage_codes.sql
@application/shared_components/user_interface/lovs/where_var_data_collected.sql
@application/shared_components/user_interface/lovs/yes_no.sql
@application/pages/page_groups.sql
@application/shared_components/navigation/breadcrumbs/breadcrumb.sql
@application/shared_components/user_interface/templates/page/modal_dialog.sql
@application/shared_components/user_interface/templates/page/left_side_column.sql
@application/shared_components/user_interface/templates/page/left_and_right_side_columns.sql
@application/shared_components/user_interface/templates/page/wizard_modal_dialog.sql
@application/shared_components/user_interface/templates/page/login.sql
@application/shared_components/user_interface/templates/page/master_detail.sql
@application/shared_components/user_interface/templates/page/minimal_no_navigation.sql
@application/shared_components/user_interface/templates/page/modal_dialog_002.sql
@application/shared_components/user_interface/templates/page/right_side_column.sql
@application/shared_components/user_interface/templates/page/standard.sql
@application/shared_components/user_interface/templates/page/standard_copy_for_header_logo.sql
@application/shared_components/user_interface/templates/button/text_with_icon.sql
@application/shared_components/user_interface/templates/button/text_with_icon_002.sql
@application/shared_components/user_interface/templates/button/text_with_icon_003.sql
@application/shared_components/user_interface/templates/button/text_with_icon_004.sql
@application/shared_components/user_interface/templates/button/text_with_icon_005.sql
@application/shared_components/user_interface/templates/button/text_with_icon_006.sql
@application/shared_components/user_interface/templates/button/text_with_icon_007.sql
@application/shared_components/user_interface/templates/button/icon.sql
@application/shared_components/user_interface/templates/button/text.sql
@application/shared_components/user_interface/templates/button/text_with_icon_008.sql
@application/shared_components/user_interface/templates/region/content_block.sql
@application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid.sql
@application/shared_components/user_interface/templates/region/alert.sql
@application/shared_components/user_interface/templates/region/blank_with_attributes.sql
@application/shared_components/user_interface/templates/region/buttons_container.sql
@application/shared_components/user_interface/templates/region/interactive_report.sql
@application/shared_components/user_interface/templates/region/standard.sql
@application/shared_components/user_interface/templates/region/carousel_container.sql
@application/shared_components/user_interface/templates/region/login.sql
@application/shared_components/user_interface/templates/region/collapsible.sql
@application/shared_components/user_interface/templates/region/hero.sql
@application/shared_components/user_interface/templates/region/inline_dialog.sql
@application/shared_components/user_interface/templates/region/tabs_container.sql
@application/shared_components/user_interface/templates/region/title_bar.sql
@application/shared_components/user_interface/templates/region/wizard_container.sql
@application/shared_components/user_interface/templates/list/top_navigation_tabs.sql
@application/shared_components/user_interface/templates/list/badge_list.sql
@application/shared_components/user_interface/templates/list/cards.sql
@application/shared_components/user_interface/templates/list/menu_bar.sql
@application/shared_components/user_interface/templates/list/tabs.sql
@application/shared_components/user_interface/templates/list/wizard_progress.sql
@application/shared_components/user_interface/templates/list/links_list.sql
@application/shared_components/user_interface/templates/list/media_list.sql
@application/shared_components/user_interface/templates/list/side_navigation_menu.sql
@application/shared_components/user_interface/templates/list/menu_popup.sql
@application/shared_components/user_interface/templates/list/navigation_bar.sql
@application/shared_components/user_interface/templates/list/top_navigation_menu.sql
@application/shared_components/user_interface/templates/report/media_list.sql
@application/shared_components/user_interface/templates/report/alerts.sql
@application/shared_components/user_interface/templates/report/badge_list.sql
@application/shared_components/user_interface/templates/report/cards.sql
@application/shared_components/user_interface/templates/report/value_attribute_pairs_column.sql
@application/shared_components/user_interface/templates/report/value_attribute_pairs_row.sql
@application/shared_components/user_interface/templates/report/comments.sql
@application/shared_components/user_interface/templates/report/standard.sql
@application/shared_components/user_interface/templates/report/search_results.sql
@application/shared_components/user_interface/templates/report/timeline.sql
@application/shared_components/user_interface/templates/label/optional_floating.sql
@application/shared_components/user_interface/templates/label/required_floating.sql
@application/shared_components/user_interface/templates/label/hidden.sql
@application/shared_components/user_interface/templates/label/optional.sql
@application/shared_components/user_interface/templates/label/optional_above.sql
@application/shared_components/user_interface/templates/label/required.sql
@application/shared_components/user_interface/templates/label/required_above.sql
@application/shared_components/user_interface/templates/breadcrumb/breadcrumb.sql
@application/shared_components/user_interface/templates/popuplov.sql
@application/shared_components/user_interface/templates/calendar/calendar.sql
@application/shared_components/user_interface/themes.sql
@application/shared_components/user_interface/theme_style.sql
@application/shared_components/user_interface/theme_files.sql
@application/shared_components/user_interface/theme_display_points.sql
@application/shared_components/user_interface/template_opt_groups.sql
@application/shared_components/user_interface/template_options.sql
@application/shared_components/logic/build_options.sql
@application/shared_components/globalization/language.sql
@application/shared_components/globalization/messages.sql
@application/shared_components/globalization/dyntranslations.sql
@application/shared_components/user_interface/shortcuts/delete_confirm_msg.sql
@application/shared_components/reports/report_queries/customer_component_list.sql
@application/shared_components/reports/report_layouts/customer_component_list.sql
@application/shared_components/security/authentications/application_express_authentication.sql
@application/shared_components/security/authentications/master_sso_oam.sql
@application/shared_components/plugins/region_type/de_danielh_dropzone2.sql
@application/shared_components/plugins/region_type/apex_d3_organization_chart.sql
@application/shared_components/plugins/item_type/mho_modal_lov.sql
@application/user_interfaces.sql
@application/user_interfaces/combined_files.sql
@application/pages/page_00000.sql
@application/pages/page_00001.sql
@application/pages/page_00002.sql
@application/pages/page_00005.sql
@application/pages/page_00006.sql
@application/pages/page_00007.sql
@application/pages/page_00008.sql
@application/pages/page_00009.sql
@application/pages/page_00010.sql
@application/pages/page_00011.sql
@application/pages/page_00013.sql
@application/pages/page_00014.sql
@application/pages/page_00015.sql
@application/pages/page_00016.sql
@application/pages/page_00017.sql
@application/pages/page_00018.sql
@application/pages/page_00019.sql
@application/pages/page_00020.sql
@application/pages/page_00021.sql
@application/pages/page_00022.sql
@application/pages/page_00023.sql
@application/pages/page_00024.sql
@application/pages/page_00025.sql
@application/pages/page_00026.sql
@application/pages/page_00028.sql
@application/pages/page_00029.sql
@application/pages/page_00030.sql
@application/pages/page_00031.sql
@application/pages/page_00032.sql
@application/pages/page_00033.sql
@application/pages/page_00034.sql
@application/pages/page_00035.sql
@application/pages/page_00040.sql
@application/pages/page_00041.sql
@application/pages/page_00042.sql
@application/pages/page_00043.sql
@application/pages/page_00050.sql
@application/pages/page_00051.sql
@application/pages/page_00052.sql
@application/pages/page_00053.sql
@application/pages/page_00054.sql
@application/pages/page_00055.sql
@application/pages/page_00056.sql
@application/pages/page_00057.sql
@application/pages/page_00058.sql
@application/pages/page_00061.sql
@application/pages/page_00062.sql
@application/pages/page_00063.sql
@application/pages/page_00064.sql
@application/pages/page_00066.sql
@application/pages/page_00067.sql
@application/pages/page_00068.sql
@application/pages/page_00069.sql
@application/pages/page_00070.sql
@application/pages/page_00071.sql
@application/pages/page_00073.sql
@application/pages/page_00074.sql
@application/pages/page_00077.sql
@application/pages/page_00078.sql
@application/pages/page_00079.sql
@application/pages/page_00080.sql
@application/pages/page_00081.sql
@application/pages/page_00082.sql
@application/pages/page_00083.sql
@application/pages/page_00084.sql
@application/pages/page_00090.sql
@application/pages/page_00101.sql
@application/pages/page_00110.sql
@application/pages/page_00112.sql
@application/pages/page_00114.sql
@application/pages/page_00116.sql
@application/pages/page_00118.sql
@application/pages/page_00123.sql
@application/pages/page_00124.sql
@application/pages/page_00128.sql
@application/pages/page_00200.sql
@application/pages/page_00201.sql
@application/pages/page_00203.sql
@application/pages/page_00204.sql
@application/pages/page_00205.sql
@application/pages/page_00206.sql
@application/pages/page_00207.sql
@application/pages/page_00215.sql
@application/pages/page_00220.sql
@application/pages/page_00222.sql
@application/pages/page_00230.sql
@application/pages/page_00240.sql
@application/pages/page_00241.sql
@application/pages/page_00245.sql
@application/pages/page_00300.sql
@application/pages/page_00301.sql
@application/pages/page_00350.sql
@application/pages/page_00380.sql
@application/pages/page_00382.sql
@application/pages/page_00385.sql
@application/pages/page_00502.sql
@application/pages/page_00510.sql
@application/pages/page_00520.sql
@application/pages/page_00525.sql
@application/pages/page_00590.sql
@application/pages/page_00595.sql
@application/pages/page_00705.sql
@application/pages/page_09919.sql
@application/pages/page_09999.sql
@application/end_environment.sql
