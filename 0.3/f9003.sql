set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>2844646512499474
,p_default_application_id=>9003
,p_default_owner=>'NOUR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 9003 - nour 0.3
--
-- Application Export:
--   Application:     9003
--   Name:            nour 0.3
--   Date and Time:   22:37 Thursday May 21, 2015
--   Exported By:     ZAKI
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     113852839610411
--

-- Application Statistics:
--   Pages:                     36
--     Items:                  117
--     Computations:             5
--     Validations:             12
--     Processes:               56
--     Regions:                 86
--     Buttons:                 95
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:             34
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,9003)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'NOUR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'nour 0.3')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'NOUR')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'952B04CC26D0AC7C0D3450972C995098713B560933F8D80A43229DAC884DD4B0'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'ar-dz'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD/MM/RRRR'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(48058797024634405)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:nour 0.3'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'nour 0.3.8.4'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521223650'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(48016317816632500)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'الرئيسية'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,1003,1004,1005,1006,1007,1008'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76305511302461278)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'أنواع الصناديق'
,p_list_item_link_target=>'f?p=&APP_ID.:1003:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1003'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80149107845001215)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'الاحتياجات'
,p_list_item_link_target=>'f?p=&APP_ID.:1004:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1004'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80563361121461401)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'درجات الحالة الصحية'
,p_list_item_link_target=>'f?p=&APP_ID.:1005:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1005'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80573468638730220)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'درجات الاجتهاد المدرسي'
,p_list_item_link_target=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1006'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80590221064095367)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'درجات الدخل اليومي'
,p_list_item_link_target=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1007'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80750635116761169)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'المدارس المسجلة'
,p_list_item_link_target=>'f?p=&APP_ID.:1008:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48059970518634962)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1008'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48060405380635018)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'المحتاجين'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,2000,2010'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48078355635649023)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'قائمة الايتام'
,p_list_item_link_target=>'f?p=&APP_ID.:2100:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48060405380635018)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2100'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48104834022732157)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'قائمة الفقراء'
,p_list_item_link_target=>'f?p=&APP_ID.:2200:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48060405380635018)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2200'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(80446751074546300)
,p_list_item_display_sequence=>85
,p_list_item_link_text=>'ذوي الاحتياجات الخاصة'
,p_list_item_link_target=>'f?p=&APP_ID.:2300:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48060405380635018)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48060924314635028)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'المنح و المساعدات'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,3010,3013,3200,3300'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48117112959611826)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'برامج المنح'
,p_list_item_link_target=>'f?p=&APP_ID.:3010:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48060924314635028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3010,3011,3012'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75351082746789256)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'برنامج المنح'
,p_list_item_link_target=>'f?p=&APP_ID.:3013:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48060924314635028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3013'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75764988738864153)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'التبرعات'
,p_list_item_link_target=>'f?p=&APP_ID.:3200:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48060924314635028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3200,3202'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76300700967454762)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'الصناديق'
,p_list_item_link_target=>'f?p=&APP_ID.:3300:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(48060924314635028)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3300,3301'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48061476817635028)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'المداخيل'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,4000'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48061960394635040)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'الاشياء المتبرع بها'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,5000'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48062444251635040)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'العتاد و الاعارات'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,6000'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75830201519208508)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'العتاد'
,p_list_item_link_target=>'f?p=&APP_ID.:6000:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(48062444251635040)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6000,6002'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(48058454233633992)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(76331725181799055)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'ملاحظات'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.:::102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48058644937634329)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'خروج'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(48016042331632466)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(48016178263632492)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(48016222339632500)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(80555632276130544)
,p_lov_name=>'LOV_SEX'
,p_lov_query=>'.'||wwv_flow_api.id(80555632276130544)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(80555943671130556)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ذكر'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(80556385642130564)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'أنثى'
,p_lov_return_value=>'F'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(48116650427611301)
,p_group_name=>'alms'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(48059833609634930)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48060228159634966)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48144448940612673)
,p_parent_id=>wwv_flow_api.id(48061263538635028)
,p_short_name=>'برامج المنح'
,p_link=>'f?p=&APP_ID.:3010:&SESSION.'
,p_page_id=>3010
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48145121831612724)
,p_parent_id=>wwv_flow_api.id(48144448940612673)
,p_short_name=>'المستفيدين'
,p_link=>'f?p=&APP_ID.:3011:&SESSION.'
,p_page_id=>3011
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48146399917612725)
,p_parent_id=>wwv_flow_api.id(48145121831612724)
,p_short_name=>'تغيير المنح'
,p_link=>'f?p=&APP_ID.:3012:&SESSION.'
,p_page_id=>3012
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75352160227789285)
,p_parent_id=>wwv_flow_api.id(48061263538635028)
,p_short_name=>'برامج المنح الدورية'
,p_link=>'f?p=&APP_ID.:3013:&SESSION.::&DEBUG.:::'
,p_page_id=>3013
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75364326609956865)
,p_parent_id=>wwv_flow_api.id(75352160227789285)
,p_short_name=>'بيانات المنح'
,p_link=>'f?p=&APP_ID.:3014:&SESSION.::&DEBUG.:::'
,p_page_id=>3014
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75382955364972623)
,p_parent_id=>wwv_flow_api.id(75352160227789285)
,p_short_name=>'تفصيل برنامج المنح'
,p_link=>'f?p=&APP_ID.:3015:&SESSION.::&DEBUG.:::'
,p_page_id=>3015
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75428331598365439)
,p_parent_id=>wwv_flow_api.id(48061263538635028)
,p_short_name=>'N3_ALMS_PLAN'
,p_link=>'f?p=&APP_ID.:3016:&SESSION.'
,p_page_id=>3016
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75429448689365779)
,p_parent_id=>wwv_flow_api.id(75428331598365439)
,p_short_name=>'Master Detail'
,p_link=>'f?p=&APP_ID.:3017:&SESSION.'
,p_page_id=>3017
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75770347058864270)
,p_parent_id=>wwv_flow_api.id(48061263538635028)
,p_short_name=>'التبرعات'
,p_link=>'f?p=&APP_ID.:3200:&SESSION.::&DEBUG.:::'
,p_page_id=>3200
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75771526251864281)
,p_parent_id=>wwv_flow_api.id(75770347058864270)
,p_short_name=>'بيانات التبرع'
,p_link=>'f?p=&APP_ID.:3202:&SESSION.::&DEBUG.:::'
,p_page_id=>3202
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75794746667875051)
,p_parent_id=>wwv_flow_api.id(75770347058864270)
,p_short_name=>'تفصيل التبرع'
,p_link=>'f?p=&APP_ID.:3201:&SESSION.::&DEBUG.:::'
,p_page_id=>3201
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75833705635208544)
,p_parent_id=>wwv_flow_api.id(48062773025635044)
,p_short_name=>'العتاد'
,p_link=>'f?p=&APP_ID.:6000:&SESSION.'
,p_page_id=>6000
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75834939592208548)
,p_parent_id=>wwv_flow_api.id(75833705635208544)
,p_short_name=>'Form on N3_F_EQUIPMENT'
,p_link=>'f?p=&APP_ID.:6002:&SESSION.'
,p_page_id=>6002
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76293613510400679)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'Update alms type'
,p_link=>'f?p=&APP_ID.:1002:&SESSION.'
,p_page_id=>1002
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76303875841454779)
,p_parent_id=>wwv_flow_api.id(48061263538635028)
,p_short_name=>'الصناديق'
,p_link=>'f?p=&APP_ID.:3300:&SESSION.::&DEBUG.:::'
,p_page_id=>3300
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76305015596454781)
,p_parent_id=>wwv_flow_api.id(76303875841454779)
,p_short_name=>'Form on N3_F_FUNDS'
,p_link=>'f?p=&APP_ID.:3301:&SESSION.'
,p_page_id=>3301
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(76314883236461290)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'Update accounts'
,p_link=>'f?p=&APP_ID.:1003:&SESSION.'
,p_page_id=>1003
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80160315929001255)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'الاحتياجات'
,p_link=>'f?p=&APP_ID.:1004:&SESSION.'
,p_page_id=>1004
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80485852072785105)
,p_parent_id=>wwv_flow_api.id(48060789871635018)
,p_short_name=>'قائمة الايتام'
,p_link=>'f?p=&APP_ID.:2100:&SESSION.'
,p_page_id=>2100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80486975624785117)
,p_parent_id=>wwv_flow_api.id(80485852072785105)
,p_short_name=>'Form on N3_F_NEEDY'
,p_link=>'f?p=&APP_ID.:2102:&SESSION.'
,p_page_id=>2102
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80572985347461446)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'درجات الحالة الصحية'
,p_link=>'f?p=&APP_ID.:1005:&SESSION.'
,p_page_id=>1005
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80585113377730242)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'درجات الاجتهاد المدرسي'
,p_link=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.:::'
,p_page_id=>1006
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80602738749095389)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'درجات الدخل اليومي'
,p_link=>'f?p=&APP_ID.:1007:&SESSION.'
,p_page_id=>1007
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80670644629578760)
,p_parent_id=>wwv_flow_api.id(48060789871635018)
,p_short_name=>'N3_F_NEEDY'
,p_link=>'f?p=&APP_ID.:2001:&SESSION.'
,p_page_id=>2001
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80671899018578768)
,p_parent_id=>wwv_flow_api.id(80670644629578760)
,p_short_name=>'Master Detail'
,p_link=>'f?p=&APP_ID.:2002:&SESSION.'
,p_page_id=>2002
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80748729288742709)
,p_parent_id=>wwv_flow_api.id(80670644629578760)
,p_short_name=>'N3_F_NEEDY'
,p_link=>'f?p=&APP_ID.:2010:&SESSION.'
,p_page_id=>2010
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80749948922742717)
,p_parent_id=>wwv_flow_api.id(80748729288742709)
,p_short_name=>'الاحتياجات المدرسية'
,p_link=>'f?p=&APP_ID.:2003:&SESSION.'
,p_page_id=>2003
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(80766918904761182)
,p_parent_id=>wwv_flow_api.id(48060228159634966)
,p_short_name=>'المدارس المسجلة'
,p_link=>'f?p=&APP_ID.:1008:&SESSION.'
,p_page_id=>1008
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48060789871635018)
,p_parent_id=>0
,p_option_sequence=>20
,p_short_name=>'Page 2'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48061263538635028)
,p_parent_id=>0
,p_option_sequence=>30
,p_short_name=>'Page 3'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48061758523635039)
,p_parent_id=>0
,p_option_sequence=>40
,p_short_name=>'Page 4'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48062241822635040)
,p_parent_id=>0
,p_option_sequence=>50
,p_short_name=>'Page 5'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(48062773025635044)
,p_parent_id=>0
,p_option_sequence=>60
,p_short_name=>'Page 6'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48016482541632635)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48016512843632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48016625711632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48016714517632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48016861884632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48016940291632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017084628632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017157282632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017260215632733)
,p_page_template_id=>wwv_flow_api.id(48016482541632635)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48017361765632822)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017471501632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017562021632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017652512632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017766634632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017838932632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48017916402632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018083442632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018134394632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018296767632825)
,p_page_template_id=>wwv_flow_api.id(48017361765632822)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48018320725632825)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018461605632828)
,p_page_template_id=>wwv_flow_api.id(48018320725632825)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018577792632828)
,p_page_template_id=>wwv_flow_api.id(48018320725632825)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48018685500632828)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018761208632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018850650632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48018915846632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019089490632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019120159632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019214867632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019389812632830)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019429109632831)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019540638632831)
,p_page_template_id=>wwv_flow_api.id(48018685500632828)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48019636840632834)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019785230632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019834993632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48019902894632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020030645632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020159249632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020223234632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020348770632853)
,p_page_template_id=>wwv_flow_api.id(48019636840632834)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48020447777632878)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020526682632878)
,p_page_template_id=>wwv_flow_api.id(48020447777632878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020611662632878)
,p_page_template_id=>wwv_flow_api.id(48020447777632878)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020706390632878)
,p_page_template_id=>wwv_flow_api.id(48020447777632878)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48020876367632878)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48020908521632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021076846632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021111197632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021217128632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021367732632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021440950632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021512565632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021670153632885)
,p_page_template_id=>wwv_flow_api.id(48020876367632878)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48021790945632885)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021802523632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48021912661632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022032159632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022195111632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022211060632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022358241632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022407287632896)
,p_page_template_id=>wwv_flow_api.id(48021790945632885)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(48022502961632896)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022648453632901)
,p_page_template_id=>wwv_flow_api.id(48022502961632896)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022754587632901)
,p_page_template_id=>wwv_flow_api.id(48022502961632896)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(48022882628632901)
,p_page_template_id=>wwv_flow_api.id(48022502961632896)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(48053292229633309)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(48053369342633320)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(48053462322633320)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48022978101632904)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48023011353632911)
,p_plug_template_id=>wwv_flow_api.id(48022978101632904)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48024404941632927)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48024540698632928)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48024663558632933)
,p_plug_template_id=>wwv_flow_api.id(48024540698632928)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48024769107632933)
,p_plug_template_id=>wwv_flow_api.id(48024540698632928)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48025414249632933)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48025580921632934)
,p_plug_template_id=>wwv_flow_api.id(48025414249632933)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48025645544632934)
,p_plug_template_id=>wwv_flow_api.id(48025414249632933)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48028827096632975)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48028989753632975)
,p_plug_template_id=>wwv_flow_api.id(48028827096632975)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48029020981632975)
,p_plug_template_id=>wwv_flow_api.id(48028827096632975)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48030947927632976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48031030190632976)
,p_plug_template_id=>wwv_flow_api.id(48030947927632976)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48031109516632976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48031297202632979)
,p_plug_template_id=>wwv_flow_api.id(48031109516632976)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48032091835632979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48032350332632979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48032410958632979)
,p_plug_template_id=>wwv_flow_api.id(48032350332632979)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48032513334632979)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48032666297632979)
,p_plug_template_id=>wwv_flow_api.id(48032513334632979)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48032772882632979)
,p_plug_template_id=>wwv_flow_api.id(48032513334632979)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48034605965632983)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48034739068632983)
,p_plug_template_id=>wwv_flow_api.id(48034605965632983)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48034805732632983)
,p_plug_template_id=>wwv_flow_api.id(48034605965632983)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48035811601632983)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(48036315219632985)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(48036490528632985)
,p_plug_template_id=>wwv_flow_api.id(48036315219632985)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48044595083633169)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48046281728633197)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48048314512633198)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48049198113633208)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48050090272633208)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48050533019633237)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48050613310633239)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48050767915633239)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48050805430633246)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48051765633633246)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(48052246266633250)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48036975347633059)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48037054804633065)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48038712731633084)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48040840737633084)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48041282084633085)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48041363471633085)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(48041363471633085)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48042646955633086)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(48043634783633086)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48052799730633266)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48052892973633300)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48052980049633300)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48053078063633300)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48053139535633307)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(48053852706633353)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(48054016301633518)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(48053963408633449)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(48054467145633620)
,p_theme_id=>42
,p_theme_name=>'Universal Theme nour'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(48021790945632885)
,p_default_dialog_template=>wwv_flow_api.id(48020447777632878)
,p_error_template=>wwv_flow_api.id(48018320725632825)
,p_printer_friendly_template=>wwv_flow_api.id(48021790945632885)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(48018320725632825)
,p_default_button_template=>wwv_flow_api.id(48053369342633320)
,p_default_region_template=>wwv_flow_api.id(48032513334632979)
,p_default_chart_template=>wwv_flow_api.id(48032513334632979)
,p_default_form_template=>wwv_flow_api.id(48032513334632979)
,p_default_reportr_template=>wwv_flow_api.id(48032513334632979)
,p_default_tabform_template=>wwv_flow_api.id(48032513334632979)
,p_default_wizard_template=>wwv_flow_api.id(48032513334632979)
,p_default_menur_template=>wwv_flow_api.id(48035811601632983)
,p_default_listr_template=>wwv_flow_api.id(48032513334632979)
,p_default_irr_template=>wwv_flow_api.id(48032091835632979)
,p_default_report_template=>wwv_flow_api.id(48041363471633085)
,p_default_label_template=>wwv_flow_api.id(48052892973633300)
,p_default_menu_template=>wwv_flow_api.id(48053852706633353)
,p_default_calendar_template=>wwv_flow_api.id(48053963408633449)
,p_default_list_template=>wwv_flow_api.id(48048314512633198)
,p_default_nav_list_template=>wwv_flow_api.id(48051765633633246)
,p_default_top_nav_list_temp=>wwv_flow_api.id(48051765633633246)
,p_default_side_nav_list_temp=>wwv_flow_api.id(48050767915633239)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(48024540698632928)
,p_default_dialogr_template=>wwv_flow_api.id(48024404941632927)
,p_default_option_label=>wwv_flow_api.id(48052892973633300)
,p_default_required_label=>wwv_flow_api.id(48053078063633300)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(48050613310633239)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>66
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(48054183169633544)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(48054208218633567)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(48054312017633567)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(75835940074237385)
,p_theme_id=>42
,p_name=>'Vita (Copyrtl)'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"dir=rtl","vars":{}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#75835940074237385.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A20566974612028436F707972746C290A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261';
wwv_flow_api.g_varchar2_table(2) := '746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233566';
wwv_flow_api.g_varchar2_table(3) := '356635663B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233631363136313B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A202336';
wwv_flow_api.g_varchar2_table(4) := '36363636363B0A7D0A2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233436343634363B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233437343734373B0A7D0A';
wwv_flow_api.g_varchar2_table(5) := '2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(6) := '742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D41';
wwv_flow_api.g_varchar2_table(7) := '6C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(8) := '7761726E696E672068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761';
wwv_flow_api.g_varchar2_table(9) := '726E696E67202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D';
wwv_flow_api.g_varchar2_table(10) := '2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E74';
wwv_flow_api.g_varchar2_table(11) := '2D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572';
wwv_flow_api.g_varchar2_table(12) := '742D626F6479207B0A2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A202062';
wwv_flow_api.g_varchar2_table(13) := '61636B67726F756E642D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C';
wwv_flow_api.g_varchar2_table(14) := '0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C';
wwv_flow_api.g_varchar2_table(15) := '6572742D2D636F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(16) := '233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572';
wwv_flow_api.g_varchar2_table(17) := '742D2D696E666F2068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F';
wwv_flow_api.g_varchar2_table(18) := '202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F';
wwv_flow_api.g_varchar2_table(19) := '6E207B0A2020636F6C6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C';
wwv_flow_api.g_varchar2_table(20) := '6572742D69636F6E207B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(21) := '723A20236539306330303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C65';
wwv_flow_api.g_varchar2_table(22) := '72742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616C657274202E74';
wwv_flow_api.g_varchar2_table(23) := '2D416C6572742D2D70616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A';
wwv_flow_api.g_varchar2_table(24) := '20206261636B67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167';
wwv_flow_api.g_varchar2_table(25) := '652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(26) := '207267626128302C20302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365366536';
wwv_flow_api.g_varchar2_table(27) := '653620696E7365743B0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42';
wwv_flow_api.g_varchar2_table(28) := '616467654C6973742D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(29) := '20233733373337333B0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426164';
wwv_flow_api.g_varchar2_table(30) := '67654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202332353738636620696E7365743B0A2020636F6C6F723A20233233373063323B0A7D0A2E';
wwv_flow_api.g_varchar2_table(31) := '742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202332353738636620696E7365743B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(32) := '6E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(33) := '646F773A2030203020302032707820726762612833372C203132302C203230372C20302E3235292C20302030203020317078202332353738636620696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C';
wwv_flow_api.g_varchar2_table(34) := '6973742D6C6162656C207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F72';
wwv_flow_api.g_varchar2_table(35) := '6465722D636F6C6F723A20233235373863663B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(36) := '2D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202332353738636620696E7365743B0A20206261';
wwv_flow_api.g_varchar2_table(37) := '636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(38) := '742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(39) := '2D666C6F6174202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D4261';
wwv_flow_api.g_varchar2_table(40) := '6467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(41) := '6974656D3A6166746572207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C';
wwv_flow_api.g_varchar2_table(42) := '6578202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D426164';
wwv_flow_api.g_varchar2_table(43) := '67654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D426164';
wwv_flow_api.g_varchar2_table(44) := '67654C6973742D2D626F74746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236638663866383B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A2020626163';
wwv_flow_api.g_varchar2_table(45) := '6B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233739373937393B';
wwv_flow_api.g_varchar2_table(46) := '0A7D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(47) := '612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172';
wwv_flow_api.g_varchar2_table(48) := '742D6974656D202E612D42617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(49) := '233830383038303B0A7D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A';
wwv_flow_api.g_varchar2_table(50) := '20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C617373';
wwv_flow_api.g_varchar2_table(51) := '6963202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D4261724368';
wwv_flow_api.g_varchar2_table(52) := '6172742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172';
wwv_flow_api.g_varchar2_table(53) := '742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E61';
wwv_flow_api.g_varchar2_table(54) := '2D42617243686172742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(55) := '233235373863663B0A7D0A0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20236638663866383B0A2020636F6C6F723A20233339333933393B0A7D0A61207B0A2020636F6C6F723A20233233373063323B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(56) := '64792D7469746C6520612C0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20233166363461633B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(57) := '2D426F64792D7469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A2020636F6C6F723A20233361336133613B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(58) := '6F723A20236666666666663B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A20';
wwv_flow_api.g_varchar2_table(59) := '20636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E';
wwv_flow_api.g_varchar2_table(60) := '742C0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(61) := '66663B0A2020636F6C6F723A20233339333933393B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D';
wwv_flow_api.g_varchar2_table(62) := '7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(63) := '2D7469746C652E6A732D6869646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(64) := '7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(65) := '0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A202365366536';
wwv_flow_api.g_varchar2_table(66) := '65363B0A7D0A0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(67) := '746F703A20343070783B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A20';
wwv_flow_api.g_varchar2_table(68) := '32303070783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267';
wwv_flow_api.g_varchar2_table(69) := '696E2D6C6566743A2032303070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(70) := '6E73207B0A2020746F703A20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(71) := '742D426F64792D616374696F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(72) := '653364282D343070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D656469';
wwv_flow_api.g_varchar2_table(73) := '61206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E6170';
wwv_flow_api.g_varchar2_table(74) := '65782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070';
wwv_flow_api.g_varchar2_table(75) := '782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C79207363';
wwv_flow_api.g_varchar2_table(76) := '7265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(77) := '457870616E646564202E742D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E';
wwv_flow_api.g_varchar2_table(78) := '617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832';
wwv_flow_api.g_varchar2_table(79) := '303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D65';
wwv_flow_api.g_varchar2_table(80) := '646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(81) := '792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(82) := '6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B';
wwv_flow_api.g_varchar2_table(83) := '0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C';
wwv_flow_api.g_varchar2_table(84) := '6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C65';
wwv_flow_api.g_varchar2_table(85) := '66743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(86) := '3070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(87) := '2C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(88) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(89) := '6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(90) := '202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_api.g_varchar2_table(91) := '6674202E742D426F64792D73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(92) := '656E74207B0A202020206D617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472';
wwv_flow_api.g_varchar2_table(93) := '616E736C617465283136307078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203939';
wwv_flow_api.g_varchar2_table(94) := '33707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D';
wwv_flow_api.g_varchar2_table(95) := '7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(96) := '616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020';
wwv_flow_api.g_varchar2_table(97) := '207472616E73666F726D3A206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(98) := '742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A2020202074';
wwv_flow_api.g_varchar2_table(99) := '72616E73666F726D3A206E6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E74';
wwv_flow_api.g_varchar2_table(100) := '2D426F64792D6E6176202E742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(101) := '61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B';
wwv_flow_api.g_varchar2_table(102) := '0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D77';
wwv_flow_api.g_varchar2_table(103) := '65626B69742D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C6174655828';
wwv_flow_api.g_varchar2_table(104) := '2D34307078293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F6479';
wwv_flow_api.g_varchar2_table(105) := '2D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(106) := '656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020';
wwv_flow_api.g_varchar2_table(107) := '206C6566743A20343070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(108) := '743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032';
wwv_flow_api.g_varchar2_table(109) := '383070783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964';
wwv_flow_api.g_varchar2_table(110) := '65207B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D5061676542';
wwv_flow_api.g_varchar2_table(111) := '6F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(112) := '72616E736C6174653364282D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C203029';
wwv_flow_api.g_varchar2_table(113) := '3B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65667420';
wwv_flow_api.g_varchar2_table(114) := '2E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(115) := '6D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(116) := '2D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D6869';
wwv_flow_api.g_varchar2_table(117) := '64654C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(118) := '426F64792D7469746C65207B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(119) := '742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E';
wwv_flow_api.g_varchar2_table(120) := '742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D5061';
wwv_flow_api.g_varchar2_table(121) := '6765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(122) := '2D2D73686F774C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(123) := '20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50';
wwv_flow_api.g_varchar2_table(124) := '616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A40';
wwv_flow_api.g_varchar2_table(125) := '6D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(126) := '64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F';
wwv_flow_api.g_varchar2_table(127) := '64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73';
wwv_flow_api.g_varchar2_table(128) := '686F774C656674202E742D426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D776562';
wwv_flow_api.g_varchar2_table(129) := '6B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E73';
wwv_flow_api.g_varchar2_table(130) := '6C6174653364282D32303070782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D6172';
wwv_flow_api.g_varchar2_table(131) := '67696E2D6C6566743A20343070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A';
wwv_flow_api.g_varchar2_table(132) := '7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(133) := '792D616374696F6E73207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E';
wwv_flow_api.g_varchar2_table(134) := '73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C';
wwv_flow_api.g_varchar2_table(135) := '656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D7769';
wwv_flow_api.g_varchar2_table(136) := '6474683A206175746F3B0A7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A20726762612835382C2035382C2035382C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E742D';
wwv_flow_api.g_varchar2_table(137) := '49636F6E3A686F766572207B0A2020636F6C6F723A20233235373863663B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D636869';
wwv_flow_api.g_varchar2_table(138) := '6C64202E742D42726561646372756D622D6C6162656C207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20233361336133613B0A7D0A0A2E74';
wwv_flow_api.g_varchar2_table(139) := '2D427574746F6E2C0A2E612D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233338333833383B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(140) := '636F6C6F723A20236638663866383B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D736861';
wwv_flow_api.g_varchar2_table(141) := '646F773A206E6F6E653B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C2030203020302031';
wwv_flow_api.g_varchar2_table(142) := '7078207267626128302C20302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(143) := '6E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D73686164';
wwv_flow_api.g_varchar2_table(144) := '6F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(145) := '73696D706C653A666F6375732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D427574746F';
wwv_flow_api.g_varchar2_table(146) := '6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D656469612073637265';
wwv_flow_api.g_varchar2_table(147) := '656E20616E6420282D6D732D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D427574';
wwv_flow_api.g_varchar2_table(148) := '746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(149) := '6F773A2030203020327078207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(150) := '6E2D2D73696D706C652C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7375636365';
wwv_flow_api.g_varchar2_table(151) := '73732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E673A';
wwv_flow_api.g_varchar2_table(152) := '686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(153) := '6F6E2D2D686F743A686F7665722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C2030';
wwv_flow_api.g_varchar2_table(154) := '2C20302C20302E31292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(155) := '6F6C6F723A20236666666666663B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A203131303B';
wwv_flow_api.g_varchar2_table(156) := '0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(157) := '302030203020317078202332353738636620696E7365742C20302030203170782032707820726762612833372C203132302C203230372C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A2020626163';
wwv_flow_api.g_varchar2_table(158) := '6B67726F756E642D636F6C6F723A20236465646564653B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(159) := '32352920696E7365743B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E73';
wwv_flow_api.g_varchar2_table(160) := '65742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A6163746976';
wwv_flow_api.g_varchar2_table(161) := '652C0A2E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A2020666F6E742D7765696768743A206E6F726D616C3B0A20';
wwv_flow_api.g_varchar2_table(162) := '20746578742D736861646F773A206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C203020317078203270782072676261';
wwv_flow_api.g_varchar2_table(163) := '28302C20302C20302C20302E32352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A20';
wwv_flow_api.g_varchar2_table(164) := '206F7061636974793A202E353B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D';
wwv_flow_api.g_varchar2_table(165) := '2D686F742C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(166) := '66663B0A2020746578742D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D6275';
wwv_flow_api.g_varchar2_table(167) := '74746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(168) := '6F723A20233439393264653B0A7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F64792062';
wwv_flow_api.g_varchar2_table(169) := '7574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E';
wwv_flow_api.g_varchar2_table(170) := '75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D42';
wwv_flow_api.g_varchar2_table(171) := '7574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D61';
wwv_flow_api.g_varchar2_table(172) := '63746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(173) := '20233164356661343B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(174) := '6E2D2D73696D706C652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(175) := '7078202332353738636620696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233332356338373B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E';
wwv_flow_api.g_varchar2_table(176) := '742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D737461';
wwv_flow_api.g_varchar2_table(177) := '74652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233332356338373B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(178) := '6E2D2D73696D706C653A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E';
wwv_flow_api.g_varchar2_table(179) := '2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C';
wwv_flow_api.g_varchar2_table(180) := '0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C';
wwv_flow_api.g_varchar2_table(181) := '742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(182) := '2D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D';
wwv_flow_api.g_varchar2_table(183) := '7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(184) := '20317078202332353738636620696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F';
wwv_flow_api.g_varchar2_table(185) := '6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D';
wwv_flow_api.g_varchar2_table(186) := '427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E';
wwv_flow_api.g_varchar2_table(187) := '75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(188) := '696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(189) := '2D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D70';
wwv_flow_api.g_varchar2_table(190) := '72696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(191) := '6F756E642D636F6C6F723A20236235643366323B0A2020636F6C6F723A20233036313432323B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236530656366393B0A7D0A2E';
wwv_flow_api.g_varchar2_table(192) := '742D427574746F6E2D2D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233861623965613B0A7D0A2E742D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(193) := '72696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202362356433663220696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(194) := '723A20233637373638363B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233637373638363B0A7D0A2E742D427574746F6E2D2D7072696D6172792E74';
wwv_flow_api.g_varchar2_table(195) := '2D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(196) := '653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236235643366323B0A2020636F6C6F723A20233036313432323B0A2020626F782D736861646F773A20302030203020317078202362356433663220696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(197) := '742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C';
wwv_flow_api.g_varchar2_table(198) := '0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233036313432323B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A2020626163';
wwv_flow_api.g_varchar2_table(199) := '6B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D';
wwv_flow_api.g_varchar2_table(200) := '0A2E742D427574746F6E2D2D64616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D64';
wwv_flow_api.g_varchar2_table(201) := '616E6765722E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(202) := '3A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D4275';
wwv_flow_api.g_varchar2_table(203) := '74746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374';
wwv_flow_api.g_varchar2_table(204) := '697665207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D427574';
wwv_flow_api.g_varchar2_table(205) := '746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574';
wwv_flow_api.g_varchar2_table(206) := '746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(207) := '2D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(208) := '74746F6E2D2D7761726E696E673A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E69';
wwv_flow_api.g_varchar2_table(209) := '6E672E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(210) := '3863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574';
wwv_flow_api.g_varchar2_table(211) := '746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A6163';
wwv_flow_api.g_varchar2_table(212) := '74697665207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(213) := '74746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D';
wwv_flow_api.g_varchar2_table(214) := '427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(215) := '6F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E';
wwv_flow_api.g_varchar2_table(216) := '742D427574746F6E2D2D737563636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(217) := '7563636573732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(218) := '723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E74';
wwv_flow_api.g_varchar2_table(219) := '2D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(220) := '653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(221) := '742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C';
wwv_flow_api.g_varchar2_table(222) := '0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A202062';
wwv_flow_api.g_varchar2_table(223) := '6F726465722D746F702D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C45';
wwv_flow_api.g_varchar2_table(224) := '6E64207B0A2020626F726465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(225) := '2D70696C6C207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(226) := '4865616465722D6272616E64696E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572';
wwv_flow_api.g_varchar2_table(227) := '207B0A20207472616E736974696F6E3A206E6F6E653B0A2020626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(228) := '65616465723A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078202335653966653220696E7365742C20302030203170782032707820726762612839342C203135392C203232362C20302E3235292021696D';
wwv_flow_api.g_varchar2_table(229) := '706F7274616E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(230) := '65616465723A616374697665207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(231) := '6C6F723A207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6163746976';
wwv_flow_api.g_varchar2_table(232) := '65207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(233) := '6C6F723A207267626128302C20302C20302C20302E3235293B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657254726565207B0A2020';
wwv_flow_api.g_varchar2_table(234) := '6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A202063';
wwv_flow_api.g_varchar2_table(235) := '6F6E74656E743A2027273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(236) := '723A207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(237) := '6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465';
wwv_flow_api.g_varchar2_table(238) := '722E742D427574746F6E2D2D686561646572547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(239) := '65616465722E742D427574746F6E2D2D6865616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865';
wwv_flow_api.g_varchar2_table(240) := '6164657252696768743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163';
wwv_flow_api.g_varchar2_table(241) := '746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D427574746F6E2D2D6E61';
wwv_flow_api.g_varchar2_table(242) := '76426172202E742D427574746F6E2D6261646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(243) := '656C70427574746F6E202E612D49636F6E207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A';
wwv_flow_api.g_varchar2_table(244) := '0A2E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233338333833383B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233637373638362021696D706F727461';
wwv_flow_api.g_varchar2_table(245) := '6E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20236235643366322021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D42';
wwv_flow_api.g_varchar2_table(246) := '7574746F6E2D2D7761726E696E67207B0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(247) := '20236666636330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(248) := '6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A20';
wwv_flow_api.g_varchar2_table(249) := '20636F6C6F723A20233333373933662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E';
wwv_flow_api.g_varchar2_table(250) := '743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233166343937342021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E74';
wwv_flow_api.g_varchar2_table(251) := '2D49636F6E207B0A2020636F6C6F723A20233235373863662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(252) := '7761726E696E672C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D42757474';
wwv_flow_api.g_varchar2_table(253) := '6F6E2D2D686F74207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020';
wwv_flow_api.g_varchar2_table(254) := '626F726465722D7261646975733A203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D7769';
wwv_flow_api.g_varchar2_table(255) := '7A6172642C0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E20';
wwv_flow_api.g_varchar2_table(256) := '7B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F';
wwv_flow_api.g_varchar2_table(257) := '6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233361336133613B0A7D';
wwv_flow_api.g_varchar2_table(258) := '0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D526567696F6E202E742D4275';
wwv_flow_api.g_varchar2_table(259) := '74746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567';
wwv_flow_api.g_varchar2_table(260) := '696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A20';
wwv_flow_api.g_varchar2_table(261) := '20626F726465722D7261646975733A20303B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(262) := '61646975733A2032707820327078203020303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F';
wwv_flow_api.g_varchar2_table(263) := '6C6F723A20233430343034303B0A7D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(264) := '66656665663B0A2020636F6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(265) := '0A2020626F726465722D636F6C6F723A20236562656265623B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20236436';
wwv_flow_api.g_varchar2_table(266) := '643664363B0A2020636F6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20233364336433643B0A7D0A2E666320';
wwv_flow_api.g_varchar2_table(267) := '2E66632D6167656E64614C6973742D64617465207B0A2020636F6C6F723A20233633363336333B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C6973';
wwv_flow_api.g_varchar2_table(268) := '74202E66632D6576656E742D616C6C2D646179207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(269) := '65722D636F6C6F723A20236536653665363B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(270) := '726F756E642D636F6C6F723A20236632663266323B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465';
wwv_flow_api.g_varchar2_table(271) := '722D7261646975733A203270783B0A7D0A2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20233235373863663B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646';
wwv_flow_api.g_varchar2_table(272) := '463B0A7D0A2E742D436172642D64657363207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A2023666366636663';
wwv_flow_api.g_varchar2_table(273) := '3B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D64657363207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D';
wwv_flow_api.g_varchar2_table(274) := '7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261';
wwv_flow_api.g_varchar2_table(275) := '636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E';
wwv_flow_api.g_varchar2_table(276) := '202E742D49636F6E207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C';
wwv_flow_api.g_varchar2_table(277) := '65577261702C0A2E742D436172642D2D6261736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D4361726420';
wwv_flow_api.g_varchar2_table(278) := '2E742D436172642D777261702C0A2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D';
wwv_flow_api.g_varchar2_table(279) := '43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(280) := '20234646463B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D';
wwv_flow_api.g_varchar2_table(281) := '436172642D626F6479207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A';
wwv_flow_api.g_varchar2_table(282) := '2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(283) := '6632663266323B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D64';
wwv_flow_api.g_varchar2_table(284) := '61792E69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C6173';
wwv_flow_api.g_varchar2_table(285) := '73696343616C656E6461722D6461792E69732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C6173';
wwv_flow_api.g_varchar2_table(286) := '73696343616C656E6461722D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(287) := '723A20233830383038303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A20';
wwv_flow_api.g_varchar2_table(288) := '20636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(289) := '436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D';
wwv_flow_api.g_varchar2_table(290) := '65436F6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C';
wwv_flow_api.g_varchar2_table(291) := '617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E';
wwv_flow_api.g_varchar2_table(292) := '742D436C617373696343616C656E6461722D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(293) := '6E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E';
wwv_flow_api.g_varchar2_table(294) := '742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A7D0A2E742D436C6173736963';
wwv_flow_api.g_varchar2_table(295) := '43616C656E6461722D6C697374207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E';
wwv_flow_api.g_varchar2_table(296) := '74207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(297) := '233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572';
wwv_flow_api.g_varchar2_table(298) := '496D67207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D696E66';
wwv_flow_api.g_varchar2_table(299) := '6F207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F';
wwv_flow_api.g_varchar2_table(300) := '207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E7473';
wwv_flow_api.g_varchar2_table(301) := '2D2D63686174202E742D436F6D6D656E74732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(302) := '663B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D7269';
wwv_flow_api.g_varchar2_table(303) := '6768742D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(304) := '7261646975733A2030203020327078203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A';
wwv_flow_api.g_varchar2_table(305) := '2020636F6C6F723A20233536353635363B0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(306) := '723A20234646463B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D6469';
wwv_flow_api.g_varchar2_table(307) := '7361626C6564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233733';
wwv_flow_api.g_varchar2_table(308) := '373337333B0A7D0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20233733373337333B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(309) := '2D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A';
wwv_flow_api.g_varchar2_table(310) := '2020636F6C6F723A20233233373063323B0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823666666666666203330252C202366666666';
wwv_flow_api.g_varchar2_table(311) := '6666292C202D7765626B69742D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(312) := '35292C207267626128302C20302C20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(313) := '202D6F2D6C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C202D6F2D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D6F2D6C696E6561';
wwv_flow_api.g_varchar2_table(314) := '722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(315) := '2C20302E303529293B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C206C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529';
wwv_flow_api.g_varchar2_table(316) := '203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C2072';
wwv_flow_api.g_varchar2_table(317) := '67626128302C20302C20302C20302E30352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20233030303030';
wwv_flow_api.g_varchar2_table(318) := '303B0A7D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(319) := '74436F6E7461696E657220696E7075745B747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C65';
wwv_flow_api.g_varchar2_table(320) := '63742E7965735F6E6F2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(321) := '6E707574436F6E7461696E65722074657874617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220737061';
wwv_flow_api.g_varchar2_table(322) := '6E2E646973706C61795F6F6E6C792C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D';
wwv_flow_api.g_varchar2_table(323) := '466F726D2D74657874617265612C0A2E752D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A';
wwv_flow_api.g_varchar2_table(324) := '2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D46';
wwv_flow_api.g_varchar2_table(325) := '6F726D2D6669656C643A666F6375732C0A2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(326) := '74436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E';
wwv_flow_api.g_varchar2_table(327) := '657220696E7075742E746578745F6669656C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207465787461';
wwv_flow_api.g_varchar2_table(328) := '7265612E74657874617265613A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C';
wwv_flow_api.g_varchar2_table(329) := '61795F6F6E6C793A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D';
wwv_flow_api.g_varchar2_table(330) := '3A666F6375732C0A2E742D466F726D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D64617465';
wwv_flow_api.g_varchar2_table(331) := '7069636B65723A666F6375732C0A2E752D54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20233235';
wwv_flow_api.g_varchar2_table(332) := '373863662021696D706F7274616E743B0A7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E';
wwv_flow_api.g_varchar2_table(333) := '7461696E657220696E7075745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75';
wwv_flow_api.g_varchar2_table(334) := '652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F';
wwv_flow_api.g_varchar2_table(335) := '6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E6572207465787461';
wwv_flow_api.g_varchar2_table(336) := '7265612E74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(337) := '7574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D7661';
wwv_flow_api.g_varchar2_table(338) := '6C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E75';
wwv_flow_api.g_varchar2_table(339) := '2D54462D6974656D2D2D746578743A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F637573';
wwv_flow_api.g_varchar2_table(340) := '3A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20233333333333333B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F';
wwv_flow_api.g_varchar2_table(341) := '726D2D73656C6563743A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C65';
wwv_flow_api.g_varchar2_table(342) := '63746C6973743A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F';
wwv_flow_api.g_varchar2_table(343) := '7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E74';
wwv_flow_api.g_varchar2_table(344) := '2D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(345) := '2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D746578746172';
wwv_flow_api.g_varchar2_table(346) := '65613A686F7665722C0A2E752D54462D6974656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974';
wwv_flow_api.g_varchar2_table(347) := '656D2D2D73656C6563743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C61636568';
wwv_flow_api.g_varchar2_table(348) := '6F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(349) := '3A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A';
wwv_flow_api.g_varchar2_table(350) := '20206F7061636974793A202E35353B0A7D0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C7920';
wwv_flow_api.g_varchar2_table(351) := '7B0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461';
wwv_flow_api.g_varchar2_table(352) := '696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642D2D7265';
wwv_flow_api.g_varchar2_table(353) := '61644F6E6C79207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F757020';
wwv_flow_api.g_varchar2_table(354) := '6C6162656C2C0A2E742D466F726D2D636865636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(355) := '20233464346434643B0A7D0A2E742D466F726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20236363636363633B0A7D0A2E742D466F726D2D2D73656172';
wwv_flow_api.g_varchar2_table(356) := '636820696E7075742E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E';
wwv_flow_api.g_varchar2_table(357) := '7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236361646666363B0A7D0A2E742D4865726F52';
wwv_flow_api.g_varchar2_table(358) := '6567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F72';
wwv_flow_api.g_varchar2_table(359) := '6465722D636F6C6F723A20233235373863662021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E70';
wwv_flow_api.g_varchar2_table(360) := '75742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D73656172';
wwv_flow_api.g_varchar2_table(361) := '63684669656C643A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E';
wwv_flow_api.g_varchar2_table(362) := '742D466F726D2D7365617263684669656C643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E65';
wwv_flow_api.g_varchar2_table(363) := '7220696E7075742E686173446174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F7264';
wwv_flow_api.g_varchar2_table(364) := '65722D626F74746F6D2D72696768742D7261646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D74';
wwv_flow_api.g_varchar2_table(365) := '6F702D6C6566742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72';
wwv_flow_api.g_varchar2_table(366) := '696768742D7261646975733A203270783B0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561';
wwv_flow_api.g_varchar2_table(367) := '646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020';
wwv_flow_api.g_varchar2_table(368) := '636F6C6F723A20236666666666663B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E';
wwv_flow_api.g_varchar2_table(369) := '742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F';
wwv_flow_api.g_varchar2_table(370) := '676F2D6C696E6B3A666F6375732C0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A2030203020302031707820233565396665322069';
wwv_flow_api.g_varchar2_table(371) := '6E7365742C20302030203170782032707820726762612839342C203135392C203232362C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A2023313935323865';
wwv_flow_api.g_varchar2_table(372) := '3B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E';
wwv_flow_api.g_varchar2_table(373) := '202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E7465';
wwv_flow_api.g_varchar2_table(374) := '6E74207B0A2020626F726465722D746F702D77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135';
wwv_flow_api.g_varchar2_table(375) := '293B0A7D0A2E742D4865616465722D6E61762D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236636';
wwv_flow_api.g_varchar2_table(376) := '663966643B0A2020636F6C6F723A20233132333936333B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233132333936333B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(377) := '646975733A203470783B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(378) := '6F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(379) := '20233430343034303B0A7D0A0A2E612D495252207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C616265';
wwv_flow_api.g_varchar2_table(380) := '6C207B0A2020636F6C6F723A20233733373337333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A';
wwv_flow_api.g_varchar2_table(381) := '2020626F726465722D746F702D636F6C6F723A20236635663566353B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(382) := '66666666663B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574';
wwv_flow_api.g_varchar2_table(383) := '207B0A2020626F782D736861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666';
wwv_flow_api.g_varchar2_table(384) := '6666662C2023666366636663293B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B';
wwv_flow_api.g_varchar2_table(385) := '0A7D0A2E612D5265706F72742D70657263656E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F7264';
wwv_flow_api.g_varchar2_table(386) := '65722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F';
wwv_flow_api.g_varchar2_table(387) := '726465722D7261646975732D746F7072696768743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F';
wwv_flow_api.g_varchar2_table(388) := '702D72696768742D7261646975733A203070782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C65';
wwv_flow_api.g_varchar2_table(389) := '2C0A2E612D4952522D6368617274566965772C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(390) := '35663566353B0A7D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(391) := '636F6C6F723A20236661666166613B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0A7D0A2E612D4952522D686561';
wwv_flow_api.g_varchar2_table(392) := '6465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233139353238653B0A2020';
wwv_flow_api.g_varchar2_table(393) := '626F726465722D626F74746F6D3A206E6F6E653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20236636663966643B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952';
wwv_flow_api.g_varchar2_table(394) := '522D686561646572536F7274207B0A2020636F6C6F723A20236636663966643B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D7461626C';
wwv_flow_api.g_varchar2_table(395) := '65207472207464207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174';
wwv_flow_api.g_varchar2_table(396) := '653B0A7D0A2E612D4952522D7461626C652074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A202062';
wwv_flow_api.g_varchar2_table(397) := '6F726465722D7261646975733A203270783B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C69642023313935323865';
wwv_flow_api.g_varchar2_table(398) := '3B0A20206261636B67726F756E643A20233231366262393B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D317078203020233139';
wwv_flow_api.g_varchar2_table(399) := '3532386520696E7365743B0A7D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E';
wwv_flow_api.g_varchar2_table(400) := '612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233139353238653B0A7D0A2E612D4952522D736F72745769';
wwv_flow_api.g_varchar2_table(401) := '646765742D726F773A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233139353238653B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D';
wwv_flow_api.g_varchar2_table(402) := '4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(403) := '6C6F723A20233139353238653B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765';
wwv_flow_api.g_varchar2_table(404) := '742D627574746F6E3A6163746976653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233231366262393B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(405) := '74746F6D3A2031707820736F6C696420233139353238653B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F72745769646765';
wwv_flow_api.g_varchar2_table(406) := '74207B0A2020626F726465723A206E6F6E653B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0A2020626F726465722D746F703A2031707820736F6C6964202366';
wwv_flow_api.g_varchar2_table(407) := '32663266323B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D73656172';
wwv_flow_api.g_varchar2_table(408) := '63684C6162656C3A6265666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020';
wwv_flow_api.g_varchar2_table(409) := '327078202332353738636620696E7365743B0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20233235373863663B0A2020626F782D736861646F773A20302030203020317078202332';
wwv_flow_api.g_varchar2_table(410) := '353738636620696E7365742C202D32707820302030202332353738636620696E7365742C2032707820302030202332353738636620696E7365742C2030203020327078203020726762612833372C203132302C203230372C20302E35293B0A7D0A2E612D';
wwv_flow_api.g_varchar2_table(411) := '4952522D73696E676C65526F772D6E616D652C0A2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D';
wwv_flow_api.g_varchar2_table(412) := '4952522D73696E676C65526F772D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C';
wwv_flow_api.g_varchar2_table(413) := '7565207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D7369';
wwv_flow_api.g_varchar2_table(414) := '6E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D';
wwv_flow_api.g_varchar2_table(415) := '2D706167696E6174696F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C20';
wwv_flow_api.g_varchar2_table(416) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D72';
wwv_flow_api.g_varchar2_table(417) := '6567696F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E';
wwv_flow_api.g_varchar2_table(418) := '742D4C696E6B734C6973742D6C696E6B207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4C696E6B734C6973742D6C';
wwv_flow_api.g_varchar2_table(419) := '696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A203020302030203170782023323537386366';
wwv_flow_api.g_varchar2_table(420) := '20696E7365743B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20236439643964393B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F';
wwv_flow_api.g_varchar2_table(421) := '774261646765202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765';
wwv_flow_api.g_varchar2_table(422) := '202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765';
wwv_flow_api.g_varchar2_table(423) := '202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B';
wwv_flow_api.g_varchar2_table(424) := '0A7D0A0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(425) := '3A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(426) := '3A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B';
wwv_flow_api.g_varchar2_table(427) := '0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A';
wwv_flow_api.g_varchar2_table(428) := '20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(429) := '2030292C207267626128302C20302C20302C20302E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(430) := '3A20233235373863663B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A';
wwv_flow_api.g_varchar2_table(431) := '7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E';
wwv_flow_api.g_varchar2_table(432) := '6B734C6973742D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20233263326332633B0A';
wwv_flow_api.g_varchar2_table(433) := '7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C';
wwv_flow_api.g_varchar2_table(434) := '696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C69';
wwv_flow_api.g_varchar2_table(435) := '6E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233339333933393B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69';
wwv_flow_api.g_varchar2_table(436) := '646174696F6E207B0A20206261636B67726F756E643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C6F67696E';
wwv_flow_api.g_varchar2_table(437) := '2D726567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20233235373863663B0A7D0A406D65646961206F6E6C792073637265656E2061';
wwv_flow_api.g_varchar2_table(438) := '6E6420286D61782D77696474683A20343830707829207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(439) := '6666666666663B0A20207D0A7D0A0A2E742D4D656469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D';
wwv_flow_api.g_varchar2_table(440) := '6974656D207B0A2020626F726465722D72696768743A2031707820736F6C696420236439643964393B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233233373063323B0A7D0A612E742D4D656469614C';
wwv_flow_api.g_varchar2_table(441) := '6973742D6974656D577261703A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233233373063323B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B';
wwv_flow_api.g_varchar2_table(442) := '0A2020626F782D736861646F773A20302030203020317078202332353738636620696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4D656469614C6973742D62';
wwv_flow_api.g_varchar2_table(443) := '616467652C0A2E742D4D656469614C6973742D64657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D';
wwv_flow_api.g_varchar2_table(444) := '636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(445) := '3665363B0A7D0A2E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75';
wwv_flow_api.g_varchar2_table(446) := '436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D61726769';
wwv_flow_api.g_varchar2_table(447) := '6E2D6C6566743A202D3470783B0A7D0A2E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233136343637383B0A2020626F726465722D72696768743A2031707820736F6C696420233164356661343B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(448) := '2D6C6566743A2031707820736F6C696420233164356661343B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(449) := '612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E20';
wwv_flow_api.g_varchar2_table(450) := '2E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D697465';
wwv_flow_api.g_varchar2_table(451) := '6D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20234130413041303B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233164';
wwv_flow_api.g_varchar2_table(452) := '356661343B0A7D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164356661343B0A7D0A0A2E612D4D656E752D636F6E74656E74207B0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(453) := '6975733A203270783B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(454) := '2D636F6C6F723A20236466646664663B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65';
wwv_flow_api.g_varchar2_table(455) := '642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(456) := '696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(457) := '2D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233739373937393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D';
wwv_flow_api.g_varchar2_table(458) := '657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233136343637383B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(459) := '752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D65';
wwv_flow_api.g_varchar2_table(460) := '6E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E61';
wwv_flow_api.g_varchar2_table(461) := '2D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E612D4D65';
wwv_flow_api.g_varchar2_table(462) := '6E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4D656E75202E612D4D656E752D61636365';
wwv_flow_api.g_varchar2_table(463) := '6C207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283234382C203234382C203234382C20302E39';
wwv_flow_api.g_varchar2_table(464) := '35293B0A2020626F726465722D636F6C6F723A20236466646664663B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(465) := '642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233136343637383B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(466) := '67696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233333333333333B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(467) := '2D7375624D656E75436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B';
wwv_flow_api.g_varchar2_table(468) := '0A20206D617267696E2D6C6566743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20236632663266323B0A2020626F726465722D72696768743A2031707820736F6C6964';
wwv_flow_api.g_varchar2_table(469) := '20236439643964393B0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D63';
wwv_flow_api.g_varchar2_table(470) := '68696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(471) := '612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A';
wwv_flow_api.g_varchar2_table(472) := '20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(473) := '234130413041303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E754261722D697465';
wwv_flow_api.g_varchar2_table(474) := '6D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E';
wwv_flow_api.g_varchar2_table(475) := '742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A20';
wwv_flow_api.g_varchar2_table(476) := '20626F726465722D636F6C6F723A20236532653265323B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A2E742D526567696F6E202E612D4D';
wwv_flow_api.g_varchar2_table(477) := '656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(478) := '74656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E';
wwv_flow_api.g_varchar2_table(479) := '75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233763376337633B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(480) := '2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(481) := '32663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D73746174757343';
wwv_flow_api.g_varchar2_table(482) := '6F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E7520';
wwv_flow_api.g_varchar2_table(483) := '2E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E64';
wwv_flow_api.g_varchar2_table(484) := '6564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D';
wwv_flow_api.g_varchar2_table(485) := '4D656E752D616363656C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A2023333333';
wwv_flow_api.g_varchar2_table(486) := '3333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836312C2036312C2036312C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E';
wwv_flow_api.g_varchar2_table(487) := '74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283235322C203235322C203235322C20302E3935293B0A2020626F726465722D636F6C6F723A20236532653265323B0A2020626F782D736861646F773A2030203170782032707820';
wwv_flow_api.g_varchar2_table(488) := '7267626128302C20302C20302C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(489) := '663B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(490) := '722D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233231366262392021696D706F7274616E743B0A7D0A2E742D4865';
wwv_flow_api.g_varchar2_table(491) := '61646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(492) := '726F756E642D636F6C6F723A20233231366262392021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D4865';
wwv_flow_api.g_varchar2_table(493) := '61646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A2020666F';
wwv_flow_api.g_varchar2_table(494) := '6E742D7765696768743A20626F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E';
wwv_flow_api.g_varchar2_table(495) := '69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233231366262392021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E7543';
wwv_flow_api.g_varchar2_table(496) := '6F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0A2020626F726465722D636F6C6F723A20233235373863663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(497) := '2D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D486561646572202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(498) := '722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233439393264653B0A2020626F726465722D636F6C6F723A20233439393264653B0A2020';
wwv_flow_api.g_varchar2_table(499) := '636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(500) := '233565396665323B0A2020626F726465722D636F6C6F723A20233565396665323B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(501) := '7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4865';
wwv_flow_api.g_varchar2_table(502) := '61646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236138636265663B0A2020626F726465';
wwv_flow_api.g_varchar2_table(503) := '722D636F6C6F723A20236138636265663B0A2020636F6C6F723A20233132333936333B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(504) := '6C6F723A20233231366262393B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E752D616363656C207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(505) := '6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(506) := '752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164356661342021696D706F7274616E743B0A7D0A2E742D426F6479207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(507) := '202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339333933393B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D';
wwv_flow_api.g_varchar2_table(508) := '616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(509) := '3A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D637572';
wwv_flow_api.g_varchar2_table(510) := '72656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E7420';
wwv_flow_api.g_varchar2_table(511) := '2E612D4D656E754261722D6C6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339';
wwv_flow_api.g_varchar2_table(512) := '333933392021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D426F6479202E612D4D656E754261722D6974656D';
wwv_flow_api.g_varchar2_table(513) := '2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E';
wwv_flow_api.g_varchar2_table(514) := '612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(515) := '3A20313030253B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D426F6479202E';
wwv_flow_api.g_varchar2_table(516) := '612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236238623862383B0A2020626F726465722D636F6C6F723A20236238';
wwv_flow_api.g_varchar2_table(517) := '623862383B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A202063';
wwv_flow_api.g_varchar2_table(518) := '6F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D';
wwv_flow_api.g_varchar2_table(519) := '656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020626F726465722D636F6C6F723A20233339333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E';
wwv_flow_api.g_varchar2_table(520) := '742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F72';
wwv_flow_api.g_varchar2_table(521) := '6465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(522) := '6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D656E752D616363656C207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(523) := '726762612835372C2035372C2035372C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D65';
wwv_flow_api.g_varchar2_table(524) := '7870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236562656265622021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(525) := '36653665363B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A20';
wwv_flow_api.g_varchar2_table(526) := '20626F782D736861646F773A206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A';
wwv_flow_api.g_varchar2_table(527) := '2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(528) := '74656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(529) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(530) := '6E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(531) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A2020666F6E742D';
wwv_flow_api.g_varchar2_table(532) := '7765696768743A20626F6C643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D';
wwv_flow_api.g_varchar2_table(533) := '657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C20';
wwv_flow_api.g_varchar2_table(534) := '2E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(535) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D';
wwv_flow_api.g_varchar2_table(536) := '203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A2020626F726465722D636F6C6F723A20236266626662663B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(537) := '20233030303030303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(538) := '663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E';
wwv_flow_api.g_varchar2_table(539) := '75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20233430343034303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(540) := '612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(541) := '723A20236666666666663B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(542) := '6536653665363B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0A2020636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(543) := '62612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E6973';
wwv_flow_api.g_varchar2_table(544) := '2D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(545) := '3A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63';
wwv_flow_api.g_varchar2_table(546) := '75736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(547) := '6C6F723A20233231366262393B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E';
wwv_flow_api.g_varchar2_table(548) := '646564207B0A20206261636B67726F756E642D636F6C6F723A20233164356661342021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C';
wwv_flow_api.g_varchar2_table(549) := '207B0A2020636F6C6F723A20236666666666663B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74';
wwv_flow_api.g_varchar2_table(550) := '207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233136343637383B0A2020626F726465722D77696474683A20303B0A7D0A2E742D4E617669676174696F6E4261722D';
wwv_flow_api.g_varchar2_table(551) := '6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(552) := '3164356661342021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E426172';
wwv_flow_api.g_varchar2_table(553) := '2D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E';
wwv_flow_api.g_varchar2_table(554) := '75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D2061207B0A2020636F6C6F723A20236666666666662021696D706F7274';
wwv_flow_api.g_varchar2_table(555) := '616E743B0A7D0A0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D726573';
wwv_flow_api.g_varchar2_table(556) := '756C74735365742074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(557) := '326E29207464207B0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F56';
wwv_flow_api.g_varchar2_table(558) := '2D726573756C74735365742D6C696E6B207B0A2020636F6C6F723A20233233373063323B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D61';
wwv_flow_api.g_varchar2_table(559) := '6374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(560) := '746C65202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233361336133613B0A7D';
wwv_flow_api.g_varchar2_table(561) := '0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D506F7075704C4F';
wwv_flow_api.g_varchar2_table(562) := '562D6C696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233363386164633B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A';
wwv_flow_api.g_varchar2_table(563) := '2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D426F64792D696E666F202E742D506F707570';
wwv_flow_api.g_varchar2_table(564) := '4C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D70';
wwv_flow_api.g_varchar2_table(565) := '6167696E6174696F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A20';
wwv_flow_api.g_varchar2_table(566) := '20636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F';
wwv_flow_api.g_varchar2_table(567) := '6C6F723A20233361336133613B0A7D0A2E742D526567696F6E202E6669656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(568) := '2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A2E742D526567696F6E2D686561646572202E742D526567';
wwv_flow_api.g_varchar2_table(569) := '696F6E2D7469746C652C0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B';
wwv_flow_api.g_varchar2_table(570) := '0A20206261636B67726F756E643A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B';
wwv_flow_api.g_varchar2_table(571) := '6564203E202E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A2020';
wwv_flow_api.g_varchar2_table(572) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(573) := '646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(574) := '2D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261';
wwv_flow_api.g_varchar2_table(575) := '636B67726F756E642D636F6C6F723A20236666326435353B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(576) := '202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(577) := '6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(578) := '646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E';
wwv_flow_api.g_varchar2_table(579) := '742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C69642023333339';
wwv_flow_api.g_varchar2_table(580) := '3566663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F7264657220';
wwv_flow_api.g_varchar2_table(581) := '3E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(582) := '2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(583) := '656E7433203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(584) := '6F723A20236666393530303B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D74';
wwv_flow_api.g_varchar2_table(585) := '69746C652C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E';
wwv_flow_api.g_varchar2_table(586) := '202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(587) := '6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(588) := '426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(589) := '67696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(590) := '686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D';
wwv_flow_api.g_varchar2_table(591) := '526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D5265';
wwv_flow_api.g_varchar2_table(592) := '67696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B';
wwv_flow_api.g_varchar2_table(593) := '0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567';
wwv_flow_api.g_varchar2_table(594) := '696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D68';
wwv_flow_api.g_varchar2_table(595) := '6561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020';
wwv_flow_api.g_varchar2_table(596) := '636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566';
wwv_flow_api.g_varchar2_table(597) := '742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(598) := '3A20233430343034303B0A7D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D736372';
wwv_flow_api.g_varchar2_table(599) := '6F6C6C426F6479203E202E742D526567696F6E2D626F647957726170203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2072676261283235352C';
wwv_flow_api.g_varchar2_table(600) := '203235352C203235352C203029292C206C696E6561722D6772616469656E742872676261283235352C203235352C203235352C2030292C20236666666666662037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C';
wwv_flow_api.g_varchar2_table(601) := '20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A2020';
wwv_flow_api.g_varchar2_table(602) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(603) := '616374696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(604) := '636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B';
wwv_flow_api.g_varchar2_table(605) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(606) := '6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(607) := '6F6C6F723A207267626128302C20302C20302C20302E3235293B0A2020636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(608) := '642D636F6C6F723A207267626128302C20302C20302C20302E35293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065';
wwv_flow_api.g_varchar2_table(609) := '782D7264732D627574746F6E3A6163746976653A666F637573207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D726473';
wwv_flow_api.g_varchar2_table(610) := '2D6E6578742D726567696F6E207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F72';
wwv_flow_api.g_varchar2_table(611) := '6465722D7261646975733A2030203270782032707820303B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E';
wwv_flow_api.g_varchar2_table(612) := '2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E6176';
wwv_flow_api.g_varchar2_table(613) := '4974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A7D0A2E742D526567696F6E2D2D6361726F';
wwv_flow_api.g_varchar2_table(614) := '7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D';
wwv_flow_api.g_varchar2_table(615) := '5265706F72742D63656C6C2C0A2E742D5265706F72742D636F6C48656164207B0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A';
wwv_flow_api.g_varchar2_table(616) := '7D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A';
wwv_flow_api.g_varchar2_table(617) := '2020626F726465722D72696768743A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D';
wwv_flow_api.g_varchar2_table(618) := '3A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(619) := '2D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D52';
wwv_flow_api.g_varchar2_table(620) := '65706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(621) := '61666166612021696D706F7274616E743B0A7D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20';
wwv_flow_api.g_varchar2_table(622) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D52';
wwv_flow_api.g_varchar2_table(623) := '65706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A202070616464696E672D626F74746F6D3A';
wwv_flow_api.g_varchar2_table(624) := '20323470783B0A7D0A2E742D536F6369616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74746F6D3A203870783B0A';
wwv_flow_api.g_varchar2_table(625) := '2020746578742D616C69676E3A2063656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(626) := '6E736C61746559282D387078293B0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(627) := '3A207472616E736C61746559282D387078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035';
wwv_flow_api.g_varchar2_table(628) := '293B0A7D0A2E742D536F6369616C466F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A2020746578742D616C';
wwv_flow_api.g_varchar2_table(629) := '69676E3A2063656E7465723B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A20626C6F636B3B0A20206D61726769';
wwv_flow_api.g_varchar2_table(630) := '6E3A2030206175746F3B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A20323870783B0A202077696474683A20333270';
wwv_flow_api.g_varchar2_table(631) := '783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0A202077696474683A';
wwv_flow_api.g_varchar2_table(632) := '20333270783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A2020666F6E742D73697A653A20333270783B0A';
wwv_flow_api.g_varchar2_table(633) := '7D0A2E742D536F6369616C466F6F74657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20233233373063323B0A7D0A2E742D536561726368526573756C74732D6465';
wwv_flow_api.g_varchar2_table(634) := '7363207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(635) := '3A20233663366336633B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B';
wwv_flow_api.g_varchar2_table(636) := '0A2020636F6C6F723A20233733373337333B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D626C6F636B486561646572';
wwv_flow_api.g_varchar2_table(637) := '207B0A2020636F6C6F723A20233430343034303B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D5374617475734C6973742D617474722C';
wwv_flow_api.g_varchar2_table(638) := '0A2E742D5374617475734C6973742D7465787444657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475';
wwv_flow_api.g_varchar2_table(639) := '734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A2023464646';
wwv_flow_api.g_varchar2_table(640) := '3B0A7D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(641) := '32707820327078203020303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(642) := '6F723A20236666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61';
wwv_flow_api.g_varchar2_table(643) := '726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C';
wwv_flow_api.g_varchar2_table(644) := '6973742D6D61726B65722C0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(645) := '6F6C6F723A20236666336233303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(646) := '6E642D636F6C6F723A20233463643936343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0A202062';
wwv_flow_api.g_varchar2_table(647) := '61636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B';
wwv_flow_api.g_varchar2_table(648) := '0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B';
wwv_flow_api.g_varchar2_table(649) := '6572207B0A2020636F6C6F723A20234130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E617065782D726473202E617065782D7264732D73';
wwv_flow_api.g_varchar2_table(650) := '656C65637465642061207B0A2020626F782D736861646F773A2030202D3270782030202337346163653620696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0A2E617065782D72647320613A';
wwv_flow_api.g_varchar2_table(651) := '666F637573207B0A2020626F782D736861646F773A20302030203020327078202337346163653620696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E74282366386638';
wwv_flow_api.g_varchar2_table(652) := '66382C2023663466346634293B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(653) := '746C65202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233761376137';
wwv_flow_api.g_varchar2_table(654) := '613B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(655) := '2D426F6479202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020';
wwv_flow_api.g_varchar2_table(656) := '636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D526567696F6E202E742D546162732D2D70';
wwv_flow_api.g_varchar2_table(657) := '696C6C202E742D546162732D6C696E6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D70696C6C202E742D';
wwv_flow_api.g_varchar2_table(658) := '546162732D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A2020626F726465722D636F6C6F723A20233436';
wwv_flow_api.g_varchar2_table(659) := '393646433B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D697465';
wwv_flow_api.g_varchar2_table(660) := '6D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E74';
wwv_flow_api.g_varchar2_table(661) := '2D546162732D6C696E6B207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D73696D70';
wwv_flow_api.g_varchar2_table(662) := '6C65202E742D546162732D6C696E6B2C0A2E617065782D7264732061207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0A2E617065782D72647320613A68';
wwv_flow_api.g_varchar2_table(663) := '6F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0A2E617065782D72647320613A';
wwv_flow_api.g_varchar2_table(664) := '616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F6479202E61';
wwv_flow_api.g_varchar2_table(665) := '7065782D7264732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D7469746C65202E617065782D72647320';
wwv_flow_api.g_varchar2_table(666) := '612C0A2E742D426F64792D696E666F202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(667) := '6F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E617065782D7264732D686F7665722E6C656674206120';
wwv_flow_api.g_varchar2_table(668) := '7B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023663666396664203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A20206261636B6772';
wwv_flow_api.g_varchar2_table(669) := '6F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023663666396664203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065782D7264732D686F7665722E72696768';
wwv_flow_api.g_varchar2_table(670) := '742061207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236636663966642030252C2072676261283235352C203235352C203235352C2030292031252C202366366639666420353025';
wwv_flow_api.g_varchar2_table(671) := '293B0A20200A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236636663966642030252C2072676261283235352C203235352C203235352C2030292031252C202366366639666420353025293B0A20';
wwv_flow_api.g_varchar2_table(672) := '200A7D0A0A2E612D546167436C6F75642D6C696E6B207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A20236661666166613B0A20207472616E';
wwv_flow_api.g_varchar2_table(673) := '736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C6F723A20233232366562653B0A7D0A2E';
wwv_flow_api.g_varchar2_table(674) := '612D546167436C6F75642D6C696E6B207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(675) := '20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020626F726465722D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A203020302030203270782023323537';
wwv_flow_api.g_varchar2_table(676) := '38636620696E7365743B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D546167436C6F75642D636F756E74207B0A2020636F6C6F723A20233636363636363B';
wwv_flow_api.g_varchar2_table(677) := '0A2020666F6E742D7765696768743A203230303B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233139353238653B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(678) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202365386538653820696E7365743B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(679) := '6567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(680) := '2D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73';
wwv_flow_api.g_varchar2_table(681) := '656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_api.g_varchar2_table(682) := '72656E742D2D746F702C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(683) := '6965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(684) := '6965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(685) := '2D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D';
wwv_flow_api.g_varchar2_table(686) := '54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(687) := '772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D5472';
wwv_flow_api.g_varchar2_table(688) := '6565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(689) := '772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(690) := '2D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D52656769';
wwv_flow_api.g_varchar2_table(691) := '6F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3935293B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(692) := '67696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(693) := '656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74';
wwv_flow_api.g_varchar2_table(694) := '2E69732D686F766572202E612D49636F6E2C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E20';
wwv_flow_api.g_varchar2_table(695) := '7B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(696) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_api.g_varchar2_table(697) := '6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D6375';
wwv_flow_api.g_varchar2_table(698) := '7272656E742D2D746F70207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(699) := '726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(700) := '3430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(701) := '2D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A2030203020';
wwv_flow_api.g_varchar2_table(702) := '3020317078202332663832646120696E7365743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D547265654E617620';
wwv_flow_api.g_varchar2_table(703) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(704) := '65566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20233233373363363B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(705) := '746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D';
wwv_flow_api.g_varchar2_table(706) := '54726565566965772D726F772C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20233231366262393B0A7D0A2E742D547265654E6176202E';
wwv_flow_api.g_varchar2_table(707) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233236376264332021696D706F7274616E743B0A7D0A2E742D5472';
wwv_flow_api.g_varchar2_table(708) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(709) := '65772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(710) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D547265654E6176202E612D547265';
wwv_flow_api.g_varchar2_table(711) := '65566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265';
wwv_flow_api.g_varchar2_table(712) := '654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265';
wwv_flow_api.g_varchar2_table(713) := '654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64';
wwv_flow_api.g_varchar2_table(714) := '652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D4963';
wwv_flow_api.g_varchar2_table(715) := '6F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D';
wwv_flow_api.g_varchar2_table(716) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(717) := '6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(718) := '772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(719) := '65566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D6375727265';
wwv_flow_api.g_varchar2_table(720) := '6E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(721) := '64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(722) := '746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(723) := '4C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(724) := '6C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D';
wwv_flow_api.g_varchar2_table(725) := '636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965';
wwv_flow_api.g_varchar2_table(726) := '772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565';
wwv_flow_api.g_varchar2_table(727) := '566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D4469616C6F672D2D77697A617264207B0A2020626F726465723A20236536653665363B0A7D0A2E742D57697A617264207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(728) := '642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E742D5769';
wwv_flow_api.g_varchar2_table(729) := '7A6172642D2D6D6F64616C207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D626F6479207B0A20206261636B67726F756E643A206C696E6561722D67';
wwv_flow_api.g_varchar2_table(730) := '72616469656E742823666666666666203430252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D6772616469656E742872676261283235352C203235352C203235352C2030292C202366666666666620363025292030';
wwv_flow_api.g_varchar2_table(731) := '20313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267';
wwv_flow_api.g_varchar2_table(732) := '626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D526567696F6E207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(733) := '726F756E643A20236666666666663B0A7D0A2E742D57697A617264207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(734) := '6F6C6F723A20236661666166613B0A2020626F726465722D636F6C6F723A20236564656465643B0A7D0A2E742D57697A61726453746570732D777261703A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D';
wwv_flow_api.g_varchar2_table(735) := '0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0A7D0A2E742D57697A61726453746570732D737465702E69732D63';
wwv_flow_api.g_varchar2_table(736) := '6F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A7D0A2E742D57697A61726453746570732D737465702E6973';
wwv_flow_api.g_varchar2_table(737) := '2D616374697665202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A7D0A2E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A202336363636';
wwv_flow_api.g_varchar2_table(738) := '36363B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D';
wwv_flow_api.g_varchar2_table(739) := '6469616C6F672D7469746C65626172207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(740) := '723A20236638663866383B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C';
wwv_flow_api.g_varchar2_table(741) := '656261722D636C6F7365207B0A2020626F726465722D7261646975733A20313030253B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0A2020626F726465722D746F702D636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(742) := '30463046303B0A7D0A0A626F6479202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(743) := '3430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0A2020636F6C6F723A20233233373063323B0A7D0A626F6479202E75692D7769646765742D686561646572207B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(744) := '6562656265623B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D7769646765742D6865616465722061207B0A2020636F6C6F723A2023336433643364';
wwv_flow_api.g_varchar2_table(745) := '3B0A7D0A0A626F6479202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D686561646572202E75692D73';
wwv_flow_api.g_varchar2_table(746) := '746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D64656661756C7420612C0A626F6479202E75692D73';
wwv_flow_api.g_varchar2_table(747) := '746174652D64656661756C7420613A6C696E6B2C0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0A626F6479202E75692D73746174652D61637469766520612C0A626F6479202E75692D73746174652D6163746976';
wwv_flow_api.g_varchar2_table(748) := '6520613A6C696E6B2C0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0A2020636F6C6F723A20233233373063323B0A7D0A626F6479202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765';
wwv_flow_api.g_varchar2_table(749) := '742D636F6E74656E74202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A202063';
wwv_flow_api.g_varchar2_table(750) := '6F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D68656164';
wwv_flow_api.g_varchar2_table(751) := '6572202E75692D73746174652D666F637573207B0A2020626F782D736861646F773A20302030203020317078202332353738636620696E7365742C20302030203170782032707820726762612833372C203132302C203230372C20302E3235292021696D';
wwv_flow_api.g_varchar2_table(752) := '706F7274616E743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70';
wwv_flow_api.g_varchar2_table(753) := '616E6520627574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202332353738636620696E7365742C20302030203170782032707820726762612833372C203132302C';
wwv_flow_api.g_varchar2_table(754) := '203230372C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D73746174652D686F76657220612C0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0A626F6479202E75692D73746174652D686F766572';
wwv_flow_api.g_varchar2_table(755) := '20613A6C696E6B2C0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0A626F6479202E75692D73746174652D666F63757320612C0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0A626F647920';
wwv_flow_api.g_varchar2_table(756) := '2E75692D73746174652D666F63757320613A6C696E6B2C0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0A2020636F6C6F723A20233233373063323B0A7D0A626F6479202E75692D73746174652D6163746976652C0A';
wwv_flow_api.g_varchar2_table(757) := '626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(758) := '6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A7D0A0A626F6479202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C69';
wwv_flow_api.g_varchar2_table(759) := '6768742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A2020636F6C6F723A20233430343034303B0A7D0A62';
wwv_flow_api.g_varchar2_table(760) := '6F6479202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D686561646572202E7569';
wwv_flow_api.g_varchar2_table(761) := '2D73746174652D686967686C696768742061207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D657272';
wwv_flow_api.g_varchar2_table(762) := '6F722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(763) := '75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F7220';
wwv_flow_api.g_varchar2_table(764) := '61207B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0A626F64';
wwv_flow_api.g_varchar2_table(765) := '79202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0A2020636F6C6F723A20236539306330303B0A7D0A0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D7374617465';
wwv_flow_api.g_varchar2_table(766) := '2D64656661756C742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020636F6C6F723A2023343034';
wwv_flow_api.g_varchar2_table(767) := '3034303B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0A626F6479202E75692D646174657069636B657220746420612E75692D737461';
wwv_flow_api.g_varchar2_table(768) := '74652D64656661756C742E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A62';
wwv_flow_api.g_varchar2_table(769) := '6F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B65722074642061';
wwv_flow_api.g_varchar2_table(770) := '2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233235373863662021696D706F7274616E743B0A7D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(771) := '692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73';
wwv_flow_api.g_varchar2_table(772) := '746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A';
wwv_flow_api.g_varchar2_table(773) := '666F6375732C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202332';
wwv_flow_api.g_varchar2_table(774) := '353738636620696E7365742C20302030203170782032707820726762612833372C203132302C203230372C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D7374617465';
wwv_flow_api.g_varchar2_table(775) := '2D64656661756C742E75692D73746174652D686967686C696768742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(776) := '6F756E642D636F6C6F723A20236562656265623B0A7D0A626F6479202E75692D646174657069636B6572207468207B0A2020636F6C6F723A20233830383038303B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(777) := '65722D6865616465722C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D';
wwv_flow_api.g_varchar2_table(778) := '6E6578742C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0A2020626F726465722D7261646975733A203270783B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D';
wwv_flow_api.g_varchar2_table(779) := '7469746C65626172207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469';
wwv_flow_api.g_varchar2_table(780) := '616C6F672D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0A2E742D4469616C6F672D70616765207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(781) := '6F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D646961';
wwv_flow_api.g_varchar2_table(782) := '6C6F672D7469746C656261722C0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(783) := '636F6C6F723A20233430343034303B0A7D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D636F726E65';
wwv_flow_api.g_varchar2_table(784) := '722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D746C207B0A2020626F';
wwv_flow_api.g_varchar2_table(785) := '726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D7472207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(786) := '65722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D626C207B0A2020626F72';
wwv_flow_api.g_varchar2_table(787) := '6465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D6272207B0A20';
wwv_flow_api.g_varchar2_table(788) := '20626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(789) := '692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(790) := '6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(791) := '75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75';
wwv_flow_api.g_varchar2_table(792) := '692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_api.g_varchar2_table(793) := '2D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768';
wwv_flow_api.g_varchar2_table(794) := '742D7261646975733A203270783B0A7D0A0A2E61635F726573756C7473207B0A2020626F726465723A2031707820736F6C696420236439643964393B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(795) := '3430343034303B0A7D0A2E61635F6C6F6164696E67207B0A20206261636B67726F756E643A20236666666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C6F6164696E6731367831362E6769662729207269';
wwv_flow_api.g_varchar2_table(796) := '6768742063656E746572206E6F2D7265706561743B0A7D0A2E61635F6F6464207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E61635F6F766572207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(797) := '20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0A626F6479202E612D44334261724368617274202E612D44';
wwv_flow_api.g_varchar2_table(798) := '334C696E6543686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578742C0A626F647920';
wwv_flow_api.g_varchar2_table(799) := '2E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E654368617274';
wwv_flow_api.g_varchar2_table(800) := '2D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178697320706174';
wwv_flow_api.g_varchar2_table(801) := '682C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D4433426172436861';
wwv_flow_api.g_varchar2_table(802) := '72742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0A626F6479202E612D44334261724368617274202E61';
wwv_flow_api.g_varchar2_table(803) := '2D443342617243686172742D67726964207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C696E652C0A626F6479202E612D4433426172436861';
wwv_flow_api.g_varchar2_table(804) := '7274202E612D443342617243686172742D617869732070617468207B0A20207374726F6B653A20236363636363633B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B';
wwv_flow_api.g_varchar2_table(805) := '0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D4433546F6F6C746970207B0A20206261636B67726F756E642D636F6C6F723A20233830383038303B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A';
wwv_flow_api.g_varchar2_table(806) := '626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0A2020626F726465722D746F703A20233939393939393B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C';
wwv_flow_api.g_varchar2_table(807) := '2D626F7264657273207B0A2020626F726465722D77696474683A20303B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2C0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D62';
wwv_flow_api.g_varchar2_table(808) := '61636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D77696474683A20302021696D706F7274616E743B0A7D';
wwv_flow_api.g_varchar2_table(809) := '0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172';
wwv_flow_api.g_varchar2_table(810) := '652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0A2020626F726465722D7261646975733A20313030253B0A2020626F726465722D72696768742D77696474683A20303B0A7D0A2E742D426F6479207B0A2020';
wwv_flow_api.g_varchar2_table(811) := '0A20200A20200A7D0A2E742D426F6479202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236466646664663B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(812) := '20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(813) := '3739373937393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(814) := '61792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(815) := '792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461';
wwv_flow_api.g_varchar2_table(816) := '792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236633663366333B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(817) := '6565656565653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236536653665363B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(818) := '3A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(819) := '4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236639663966393B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(820) := '20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(821) := '3A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C';
wwv_flow_api.g_varchar2_table(822) := '6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D526567696F6E202E612D4D696E';
wwv_flow_api.g_varchar2_table(823) := '6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F64792D616374696F6E73207B0A20200A20200A20200A7D0A2E742D426F64792D616374696F6E73202E612D4D69';
wwv_flow_api.g_varchar2_table(824) := '6E6943616C207B0A2020626F726465723A2031707820736F6C696420236432643264323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(825) := '74696F6E73202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A2023366336633663';
wwv_flow_api.g_varchar2_table(826) := '3B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236535653565353B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E61';
wwv_flow_api.g_varchar2_table(827) := '2D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374';
wwv_flow_api.g_varchar2_table(828) := '696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(829) := '426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(830) := '61792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236531653165313B0A7D0A2E742D426F64792D696E666F207B0A20200A20200A20200A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0A2020626F';
wwv_flow_api.g_varchar2_table(831) := '726465723A2031707820736F6C696420236361646666363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236636663966643B0A7D0A2E742D426F64792D696E666F202E612D4D696E694361';
wwv_flow_api.g_varchar2_table(832) := '6C2D7469746C65207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233761376137613B0A7D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(833) := '612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236562663366623B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E61';
wwv_flow_api.g_varchar2_table(834) := '2D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D61637469';
wwv_flow_api.g_varchar2_table(835) := '7665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E6973';
wwv_flow_api.g_varchar2_table(836) := '2D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236564663466633B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(837) := '236534656666613B0A7D0A0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E7465';
wwv_flow_api.g_varchar2_table(838) := '6E744C6973742D7469746C65207B0A2020636F6C6F723A20233361336133613B0A7D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0A2E742D427574746F6E526567696F6E202E612D44657461696C';
wwv_flow_api.g_varchar2_table(839) := '6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E744C';
wwv_flow_api.g_varchar2_table(840) := '6973742D686561646572207B0A2020626F782D736861646F773A20302030203020317078202331643566613420696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E';
wwv_flow_api.g_varchar2_table(841) := '612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202332353738636620696E7365743B0A';
wwv_flow_api.g_varchar2_table(842) := '2020636F6C6F723A20233235373863663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F6375';
wwv_flow_api.g_varchar2_table(843) := '73207B0A20206261636B67726F756E642D636F6C6F723A20233164356661343B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202331643566613420696E7365743B0A7D0A626F6479202E612D';
wwv_flow_api.g_varchar2_table(844) := '44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B';
wwv_flow_api.g_varchar2_table(845) := '0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44';
wwv_flow_api.g_varchar2_table(846) := '657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E643A20236666666666663B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A626F6479202E612D4465746169';
wwv_flow_api.g_varchar2_table(847) := '6C6564436F6E74656E744C6973742D747269676765723A686F766572207B0A2020636F6C6F723A20233164356661343B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(848) := '6F723A20233164356661343B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C74';
wwv_flow_api.g_varchar2_table(849) := '6970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20233136343637383B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E';
wwv_flow_api.g_varchar2_table(850) := '74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D';
wwv_flow_api.g_varchar2_table(851) := '636F6E74656E74207B0A2020636F6C6F723A20233734616365363B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(852) := '79202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D63';
wwv_flow_api.g_varchar2_table(853) := '6F6E74656E74207B0A2020636F6C6F723A20233136343637383B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(854) := '6F6E74656E744C6973742D626F64793A6166746572207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C65';
wwv_flow_api.g_varchar2_table(855) := '64436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F';
wwv_flow_api.g_varchar2_table(856) := '6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(857) := '61646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20202D7765626B69742D626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(858) := '3A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F';
wwv_flow_api.g_varchar2_table(859) := '74746F6D3A6265666F7265207B0A2020626F726465722D636F6C6F723A2023313634363738207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A';
wwv_flow_api.g_varchar2_table(860) := '6166746572207B0A2020626F726465722D636F6C6F723A2023313634363738207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A';
wwv_flow_api.g_varchar2_table(861) := '6166746572207B0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0A';
wwv_flow_api.g_varchar2_table(862) := '2020626F726465722D636F6C6F723A2023313634363738207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(863) := '636F6C6F723A2023313634363738207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(864) := '7472616E73706172656E742023666666666666207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0A';
wwv_flow_api.g_varchar2_table(865) := '2020626F726465722D636F6C6F723A207472616E73706172656E742023313634363738207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E617272';
wwv_flow_api.g_varchar2_table(866) := '6F772E72696768743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036342C2036342C20302E35293B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(867) := '2E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(868) := '20233136343637383B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(869) := '726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(870) := '31292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(871) := '642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(872) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(873) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(874) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F';
wwv_flow_api.g_varchar2_table(875) := '782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(876) := '656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(877) := '42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(878) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(879) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(880) := '3A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(881) := '6C6F723A20233037316630623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42';
wwv_flow_api.g_varchar2_table(882) := '616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(883) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(884) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D6461';
wwv_flow_api.g_varchar2_table(885) := '73682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(886) := '202D38707820302030202361386138616320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(887) := '6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(888) := '74656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(889) := '742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(890) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A';
wwv_flow_api.g_varchar2_table(891) := '7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030';
wwv_flow_api.g_varchar2_table(892) := '303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(893) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(894) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(895) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C';
wwv_flow_api.g_varchar2_table(896) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(897) := '32386237663920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A202062';
wwv_flow_api.g_varchar2_table(898) := '61636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(899) := '6C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(900) := '6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D6461';
wwv_flow_api.g_varchar2_table(901) := '73682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(902) := '42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(903) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572';
wwv_flow_api.g_varchar2_table(904) := '207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(905) := '4C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(906) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(907) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236666386161';
wwv_flow_api.g_varchar2_table(908) := '3020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(909) := '726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(910) := '3132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(911) := '6C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(912) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(913) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(914) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B';
wwv_flow_api.g_varchar2_table(915) := '0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(916) := '73742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(917) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(918) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620';
wwv_flow_api.g_varchar2_table(919) := '696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(920) := '756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135';
wwv_flow_api.g_varchar2_table(921) := '292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(922) := '282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(923) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(924) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(925) := '42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A20';
wwv_flow_api.g_varchar2_table(926) := '20626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(927) := '2D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(928) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(929) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E';
wwv_flow_api.g_varchar2_table(930) := '7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(931) := '642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920';
wwv_flow_api.g_varchar2_table(932) := '61207B0A2020636F6C6F723A20233335363137353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(933) := '31382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(934) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(935) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(936) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(937) := '6F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(938) := '74656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(939) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(940) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365';
wwv_flow_api.g_varchar2_table(941) := '743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(942) := '636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129206120';
wwv_flow_api.g_varchar2_table(943) := '7B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231';
wwv_flow_api.g_varchar2_table(944) := '2920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(945) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(946) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(947) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(948) := '2D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(949) := '6D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(950) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(951) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B';
wwv_flow_api.g_varchar2_table(952) := '0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(953) := '6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A';
wwv_flow_api.g_varchar2_table(954) := '2020636F6C6F723A20233036316330613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920';
wwv_flow_api.g_varchar2_table(955) := '612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(956) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(957) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(958) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(959) := '6861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(960) := '6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(961) := '6467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(962) := '742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(963) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(964) := '723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020';
wwv_flow_api.g_varchar2_table(965) := '636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E';
wwv_flow_api.g_varchar2_table(966) := '742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(967) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(968) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(969) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(970) := '646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(971) := '682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(972) := '654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(973) := '42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A62';
wwv_flow_api.g_varchar2_table(974) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(975) := '20233466346463313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(976) := '6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D';
wwv_flow_api.g_varchar2_table(977) := '42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(978) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666313434303B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(979) := '723A20236666313434303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D';
wwv_flow_api.g_varchar2_table(980) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(981) := '74656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(982) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(983) := '65722D636F6C6F723A20233030366565363B0A2020636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(984) := '73742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(985) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(986) := '6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E74';
wwv_flow_api.g_varchar2_table(987) := '2D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536383630303B0A2020636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(988) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(989) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(990) := '236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(991) := '6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233337643535323B0A2020636F6C6F723A20233337643535323B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(992) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(993) := '73742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467';
wwv_flow_api.g_varchar2_table(994) := '654C6973742D76616C75652061207B0A2020636F6C6F723A20233037316630623B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(995) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233831383138373B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(996) := '723A20233831383138373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D';
wwv_flow_api.g_varchar2_table(997) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(998) := '74656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(999) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1000) := '65722D636F6C6F723A20233234396564323B0A2020636F6C6F723A20233234396564323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1001) := '73742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1002) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1003) := '6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E74';
wwv_flow_api.g_varchar2_table(1004) := '2D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536623830303B0A2020636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1005) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1006) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1007) := '233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1008) := '6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431633066393B0A2020636F6C6F723A20233431633066393B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1009) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1010) := '73742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467';
wwv_flow_api.g_varchar2_table(1011) := '654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333935323B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1012) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666323331373B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1013) := '723A20236666323331373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D';
wwv_flow_api.g_varchar2_table(1014) := '42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1015) := '74656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1016) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0A2020626F72';
wwv_flow_api.g_varchar2_table(1017) := '6465722D636F6C6F723A20233434343164313B0A2020636F6C6F723A20233434343164313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1018) := '6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1019) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1020) := '636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131';
wwv_flow_api.g_varchar2_table(1021) := '29202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666336536323B0A2020636F6C6F723A20236666336536323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1022) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1023) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0A202063';
wwv_flow_api.g_varchar2_table(1024) := '6F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1025) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233139383766663B0A2020636F6C6F723A20233139383766663B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(1026) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E74';
wwv_flow_api.g_varchar2_table(1027) := '2D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132';
wwv_flow_api.g_varchar2_table(1028) := '29202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1029) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A202366666130';
wwv_flow_api.g_varchar2_table(1030) := '31393B0A2020636F6C6F723A20236666613031393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1031) := '6C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1032) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A';
wwv_flow_api.g_varchar2_table(1033) := '7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1034) := '616C7565207B0A2020626F726465722D636F6C6F723A20233562646337313B0A2020636F6C6F723A20233562646337313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1035) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1036) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233338346333633B0A20';
wwv_flow_api.g_varchar2_table(1037) := '206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1038) := '74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233938393839633B0A2020636F6C6F723A20233938393839633B0A7D0A626F6479202E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1039) := '697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1040) := '2C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1041) := '616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1042) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233437623264663B0A2020636F6C6F723A20233437';
wwv_flow_api.g_varchar2_table(1043) := '623264663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D4261646765';
wwv_flow_api.g_varchar2_table(1044) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1045) := '74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1046) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1047) := '636F6C6F723A20236666643131393B0A2020636F6C6F723A20236666643131393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1048) := '6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1049) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1050) := '723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E74';
wwv_flow_api.g_varchar2_table(1051) := '2D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233632636266613B0A2020636F6C6F723A20233632636266613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1052) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1053) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1054) := '3A20233335363137353B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1055) := '654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666346134303B0A2020636F6C6F723A20236666346134303B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1056) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D426164';
wwv_flow_api.g_varchar2_table(1057) := '67654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E74';
wwv_flow_api.g_varchar2_table(1058) := '2D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1059) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233635363364393B0A';
wwv_flow_api.g_varchar2_table(1060) := '2020636F6C6F723A20233635363364393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1061) := '323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1062) := '654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F';
wwv_flow_api.g_varchar2_table(1063) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1064) := '207B0A2020626F726465722D636F6C6F723A20236462316133663B0A2020636F6C6F723A20236462316133663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1065) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1066) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A2020626163';
wwv_flow_api.g_varchar2_table(1067) := '6B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1068) := '68696C642820323229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030363263633B0A2020636F6C6F723A20233030363263633B0A7D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1069) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F';
wwv_flow_api.g_varchar2_table(1070) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1071) := '2061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1072) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363373730303B0A2020636F6C6F723A2023636337373030';
wwv_flow_api.g_varchar2_table(1073) := '3B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1074) := '2D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1075) := '68696C642820323329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1076) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1077) := '723A20233361623434663B0A2020636F6C6F723A20233361623434663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1078) := '3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1079) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233036316330613B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1080) := '3434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D426164';
wwv_flow_api.g_varchar2_table(1081) := '67654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233733373337373B0A2020636F6C6F723A20233733373337373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1082) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1083) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(1084) := '36653665363B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1085) := '742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233261383962313B0A2020636F6C6F723A20233261383962313B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1086) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1087) := '73742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D426164';
wwv_flow_api.g_varchar2_table(1088) := '67654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1089) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363613330303B0A2020636F';
wwv_flow_api.g_varchar2_table(1090) := '6C6F723A20236363613330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920';
wwv_flow_api.g_varchar2_table(1091) := '2E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1092) := '742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1093) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0A20';
wwv_flow_api.g_varchar2_table(1094) := '20626F726465722D636F6C6F723A20233362616264643B0A2020636F6C6F723A20233362616264643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1095) := '6467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1096) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333434613B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1097) := '756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1098) := '2820323929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236464323531623B0A2020636F6C6F723A20236464323531623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1099) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E';
wwv_flow_api.g_varchar2_table(1100) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B';
wwv_flow_api.g_varchar2_table(1101) := '0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1102) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431343062353B0A2020636F6C6F723A20233431343062353B0A7D0A';
wwv_flow_api.g_varchar2_table(1103) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1104) := '70202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1105) := '2820333029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1106) := '42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1107) := '74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1108) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1109) := '696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1110) := '6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D';
wwv_flow_api.g_varchar2_table(1111) := '736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1112) := '642D636F6C6F723A20236666393530303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1113) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366';
wwv_flow_api.g_varchar2_table(1114) := '666161333320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1115) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1116) := '654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1117) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1118) := '42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1119) := '20352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1120) := '4C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1121) := '696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1122) := '703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1123) := '3729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1124) := '233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(1125) := '773A2030202D38707820302030202363636133303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1126) := '6F723A20233561633866613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1127) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023323862376639';
wwv_flow_api.g_varchar2_table(1128) := '20696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1129) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1130) := '2D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1131) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1132) := '654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130';
wwv_flow_api.g_varchar2_table(1133) := '2920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1134) := '73742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1135) := '6C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1136) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1137) := '20313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1138) := '723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(1139) := '6861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1140) := '642D636F6C6F723A20236666616133333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1141) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020';
wwv_flow_api.g_varchar2_table(1142) := '2366663935303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A';
wwv_flow_api.g_varchar2_table(1143) := '7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1144) := '42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1145) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1146) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1147) := '2D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1148) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1149) := '656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D4261';
wwv_flow_api.g_varchar2_table(1150) := '6467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1151) := '6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920';
wwv_flow_api.g_varchar2_table(1152) := '61207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572';
wwv_flow_api.g_varchar2_table(1153) := '207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20';
wwv_flow_api.g_varchar2_table(1154) := '206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A202333353631';
wwv_flow_api.g_varchar2_table(1155) := '37353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1156) := '202D38707820302030202334396332666120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1157) := '20236666363235393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1158) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320';
wwv_flow_api.g_varchar2_table(1159) := '696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1160) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1161) := '742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1162) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1163) := '6467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1164) := '32312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1165) := '4C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1166) := '68696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1167) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1168) := '642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1169) := '6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(1170) := '2D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1171) := '756E642D636F6C6F723A20233434633335613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1172) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020';
wwv_flow_api.g_varchar2_table(1173) := '30202336626430376320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A2023383038303834';
wwv_flow_api.g_varchar2_table(1174) := '3B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1175) := '742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D';
wwv_flow_api.g_varchar2_table(1176) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1177) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1178) := '74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1179) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1180) := '6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D';
wwv_flow_api.g_varchar2_table(1181) := '42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1182) := '6D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238';
wwv_flow_api.g_varchar2_table(1183) := '292061207B0A2020636F6C6F723A20233032333434613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F76';
wwv_flow_api.g_varchar2_table(1184) := '6572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B';
wwv_flow_api.g_varchar2_table(1185) := '0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(1186) := '653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1187) := '2030202D38707820302030202365623630353920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1188) := '723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1189) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020233735373363';
wwv_flow_api.g_varchar2_table(1190) := '6520696E7365743B0A7D0A2E752D436F6C6F7242472D2D31207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1191) := '6F7242472D2D32207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7242472D2D33207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1192) := '726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7246472D2D33207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7242472D2D34207B0A20206261636B67726F756E642D636F6C6F723A2023346364';
wwv_flow_api.g_varchar2_table(1193) := '3936343B0A7D0A2E752D436F6C6F7246472D2D34207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7242472D2D35207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F724647';
wwv_flow_api.g_varchar2_table(1194) := '2D2D35207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7242472D2D36207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7246472D2D36207B0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1195) := '34616164633B0A7D0A2E752D436F6C6F7242472D2D37207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7246472D2D37207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1196) := '42472D2D38207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7242472D2D39207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1197) := '756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7246472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7242472D2D3130207B0A20206261636B67726F756E642D636F6C6F723A202335383536';
wwv_flow_api.g_varchar2_table(1198) := '64363B0A7D0A2E752D436F6C6F7246472D2D3130207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7246';
wwv_flow_api.g_varchar2_table(1199) := '472D2D3131207B0A2020636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7242472D2D3132207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7246472D2D3132207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1200) := '3A20233333393566663B0A7D0A2E752D436F6C6F7242472D2D3133207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7246472D2D3133207B0A2020636F6C6F723A20236666616133333B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1201) := '2D436F6C6F7242472D2D3134207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D2D3134207B0A2020636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7242472D2D3135207B0A';
wwv_flow_api.g_varchar2_table(1202) := '20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7242472D2D3136207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1203) := '6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7246472D2D3136207B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7242472D2D3137207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D';
wwv_flow_api.g_varchar2_table(1204) := '0A2E752D436F6C6F7246472D2D3137207B0A2020636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7246472D2D3138';
wwv_flow_api.g_varchar2_table(1205) := '207B0A2020636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7242472D2D3139207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7246472D2D3139207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1206) := '363235393B0A7D0A2E752D436F6C6F7242472D2D3230207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7246472D2D3230207B0A2020636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1207) := '7242472D2D3231207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B0A2020636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7242472D2D3232207B0A2020626163';
wwv_flow_api.g_varchar2_table(1208) := '6B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7246472D2D3232207B0A2020636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1209) := '236536383630303B0A7D0A2E752D436F6C6F7246472D2D3233207B0A2020636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242472D2D3234207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1210) := '6F6C6F7246472D2D3234207B0A2020636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7246472D2D3235207B0A2020';
wwv_flow_api.g_varchar2_table(1211) := '636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7242472D2D3236207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7246472D2D3236207B0A2020636F6C6F723A20233266393963363B';
wwv_flow_api.g_varchar2_table(1212) := '0A7D0A2E752D436F6C6F7242472D2D3237207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7246472D2D3237207B0A2020636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7242472D2D';
wwv_flow_api.g_varchar2_table(1213) := '3238207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7242472D2D3239207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1214) := '6E642D636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7246472D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7242472D2D3330207B0A20206261636B67726F756E642D636F6C6F723A202334663464';
wwv_flow_api.g_varchar2_table(1215) := '63313B0A7D0A2E752D436F6C6F7246472D2D3330207B0A2020636F6C6F723A20233466346463313B0A7D0A0A2E752D436F6C6F722D312D42472D2D747874207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D';
wwv_flow_api.g_varchar2_table(1216) := '6267207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0A202066696C6C3A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6272207B0A202073';
wwv_flow_api.g_varchar2_table(1217) := '74726F6B653A20236666326435353B0A2020626F726465722D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D62';
wwv_flow_api.g_varchar2_table(1218) := '67207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6272207B0A20207374';
wwv_flow_api.g_varchar2_table(1219) := '726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D747874207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6267';
wwv_flow_api.g_varchar2_table(1220) := '207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A202066696C6C3A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6272207B0A2020737472';
wwv_flow_api.g_varchar2_table(1221) := '6F6B653A20233030376166663B0A2020626F726465722D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D626720';
wwv_flow_api.g_varchar2_table(1222) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6272207B0A20207374726F';
wwv_flow_api.g_varchar2_table(1223) := '6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D42472D2D747874207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6267207B';
wwv_flow_api.g_varchar2_table(1224) := '0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066696C6C3A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6272207B0A20207374726F6B';
wwv_flow_api.g_varchar2_table(1225) := '653A20236666393530303B0A2020626F726465722D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6267207B0A';
wwv_flow_api.g_varchar2_table(1226) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6272207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1227) := '3A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D342D42472D2D747874207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6267207B0A20';
wwv_flow_api.g_varchar2_table(1228) := '206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C6C3A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6272207B0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1229) := '20233463643936343B0A2020626F726465722D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B0A2020636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6267207B0A2020';
wwv_flow_api.g_varchar2_table(1230) := '6261636B67726F756E642D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C3A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6272207B0A20207374726F6B653A20';
wwv_flow_api.g_varchar2_table(1231) := '233037316630623B0A2020626F726465722D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6267207B0A202062';
wwv_flow_api.g_varchar2_table(1232) := '61636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6272207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1233) := '3865386539333B0A2020626F726465722D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6267207B0A20206261';
wwv_flow_api.g_varchar2_table(1234) := '636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6272207B0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1235) := '66666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6267207B0A2020626163';
wwv_flow_api.g_varchar2_table(1236) := '6B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6272207B0A20207374726F6B653A20233334';
wwv_flow_api.g_varchar2_table(1237) := '616164633B0A2020626F726465722D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6267207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1238) := '67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6272207B0A20207374726F6B653A2023666666';
wwv_flow_api.g_varchar2_table(1239) := '6666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6267207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1240) := '726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0A202066696C6C3A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6272207B0A20207374726F6B653A202366666363';
wwv_flow_api.g_varchar2_table(1241) := '30303B0A2020626F726465722D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6267207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1242) := '6F756E642D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0A202066696C6C3A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6272207B0A20207374726F6B653A20233030303030';
wwv_flow_api.g_varchar2_table(1243) := '303B0A2020626F726465722D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6267207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1244) := '756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0A202066696C6C3A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6272207B0A20207374726F6B653A2023356163386661';
wwv_flow_api.g_varchar2_table(1245) := '3B0A2020626F726465722D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6267207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1246) := '6E642D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0A202066696C6C3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6272207B0A20207374726F6B653A20233032333935323B';
wwv_flow_api.g_varchar2_table(1247) := '0A2020626F726465722D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6267207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1248) := '642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0A202066696C6C3A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B0A20207374726F6B653A20236666336233303B0A';
wwv_flow_api.g_varchar2_table(1249) := '2020626F726465722D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6267207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1250) := '2D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A20';
wwv_flow_api.g_varchar2_table(1251) := '20626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6267207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1252) := '642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0A202066696C6C3A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6272207B0A20207374726F6B653A2023353835366436';
wwv_flow_api.g_varchar2_table(1253) := '3B0A2020626F726465722D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6267207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1254) := '6F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6272207B0A20207374726F6B653A2023666666';
wwv_flow_api.g_varchar2_table(1255) := '6666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D42472D2D747874207B0A2020636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6267207B0A2020626163';
wwv_flow_api.g_varchar2_table(1256) := '6B67726F756E642D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6272207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1257) := '6639303032663B0A2020626F726465722D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6267207B0A2020';
wwv_flow_api.g_varchar2_table(1258) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6272207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1259) := '3A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874207B0A2020636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6267207B';
wwv_flow_api.g_varchar2_table(1260) := '0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A202066696C6C3A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6272207B0A2020737472';
wwv_flow_api.g_varchar2_table(1261) := '6F6B653A20233030363263633B0A2020626F726465722D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D62';
wwv_flow_api.g_varchar2_table(1262) := '67207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6272207B0A2020';
wwv_flow_api.g_varchar2_table(1263) := '7374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42472D2D747874207B0A2020636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D4247';
wwv_flow_api.g_varchar2_table(1264) := '2D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0A202066696C6C3A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6272207B';
wwv_flow_api.g_varchar2_table(1265) := '0A20207374726F6B653A20236363373730303B0A2020626F726465722D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D3133';
wwv_flow_api.g_varchar2_table(1266) := '2D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D62';
wwv_flow_api.g_varchar2_table(1267) := '72207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31342D42472D2D747874207B0A2020636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1268) := '2D31342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0A202066696C6C3A20233261633834353B0A7D0A2E752D436F6C6F722D31342D4247';
wwv_flow_api.g_varchar2_table(1269) := '2D2D6272207B0A20207374726F6B653A20233261633834353B0A2020626F726465722D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D46472D2D747874207B0A2020636F6C6F723A20233130343931393B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1270) := '6C6F722D31342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0A202066696C6C3A20233130343931393B0A7D0A2E752D436F6C6F722D3134';
wwv_flow_api.g_varchar2_table(1271) := '2D46472D2D6272207B0A20207374726F6B653A20233130343931393B0A2020626F726465722D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31352D42472D2D747874207B0A2020636F6C6F723A20233734373437613B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1272) := '2D436F6C6F722D31352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0A202066696C6C3A20233734373437613B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1273) := '2D31352D42472D2D6272207B0A20207374726F6B653A20233734373437613B0A2020626F726465722D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1274) := '0A2E752D436F6C6F722D31352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1275) := '6C6F722D31352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D42472D2D747874207B0A2020636F6C6F723A2023323138656264';
wwv_flow_api.g_varchar2_table(1276) := '3B0A7D0A2E752D436F6C6F722D31362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0A202066696C6C3A20233231386562643B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1277) := '2D436F6C6F722D31362D42472D2D6272207B0A20207374726F6B653A20233231386562643B0A2020626F726465722D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D46472D2D747874207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1278) := '6666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1279) := '0A2E752D436F6C6F722D31362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31372D42472D2D747874207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1280) := '6363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0A202066696C6C3A2023636361333030';
wwv_flow_api.g_varchar2_table(1281) := '3B0A7D0A2E752D436F6C6F722D31372D42472D2D6272207B0A20207374726F6B653A20236363613330303B0A2020626F726465722D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D46472D2D747874207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1282) := '3A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0A202066696C6C3A2023316131';
wwv_flow_api.g_varchar2_table(1283) := '6131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6272207B0A20207374726F6B653A20233161316131613B0A2020626F726465722D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31382D42472D2D747874207B0A2020636F';
wwv_flow_api.g_varchar2_table(1284) := '6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1285) := '3238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6272207B0A20207374726F6B653A20233238623766393B0A2020626F726465722D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D46472D2D747874207B0A20';
wwv_flow_api.g_varchar2_table(1286) := '20636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0A202066696C6C';
wwv_flow_api.g_varchar2_table(1287) := '3A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6272207B0A20207374726F6B653A20233034356338343B0A2020626F726465722D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31392D42472D2D74787420';
wwv_flow_api.g_varchar2_table(1288) := '7B0A2020636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0A202066';
wwv_flow_api.g_varchar2_table(1289) := '696C6C3A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6272207B0A20207374726F6B653A20236663306430303B0A2020626F726465722D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D46472D2D74';
wwv_flow_api.g_varchar2_table(1290) := '7874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0A';
wwv_flow_api.g_varchar2_table(1291) := '202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D4247';
wwv_flow_api.g_varchar2_table(1292) := '2D2D747874207B0A2020636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D66696C6C';
wwv_flow_api.g_varchar2_table(1293) := '207B0A202066696C6C3A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6272207B0A20207374726F6B653A20233333333163383B0A2020626F726465722D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D3230';
wwv_flow_api.g_varchar2_table(1294) := '2D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D66';
wwv_flow_api.g_varchar2_table(1295) := '696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1296) := '2D32312D42472D2D747874207B0A2020636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D4247';
wwv_flow_api.g_varchar2_table(1297) := '2D2D66696C6C207B0A202066696C6C3A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6272207B0A20207374726F6B653A20236666393361383B0A2020626F726465722D636F6C6F723A20236666393361383B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1298) := '6C6F722D32312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D3231';
wwv_flow_api.g_varchar2_table(1299) := '2D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1300) := '2D436F6C6F722D32322D42472D2D747874207B0A2020636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1301) := '2D32322D42472D2D66696C6C207B0A202066696C6C3A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A20207374726F6B653A20233636616666663B0A2020626F726465722D636F6C6F723A20233636616666663B0A7D';
wwv_flow_api.g_varchar2_table(1302) := '0A2E752D436F6C6F722D32322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1303) := '6C6F722D32322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1304) := '3B0A7D0A2E752D436F6C6F722D32332D42472D2D747874207B0A2020636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666626636363B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1305) := '2D436F6C6F722D32332D42472D2D66696C6C207B0A202066696C6C3A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6272207B0A20207374726F6B653A20236666626636363B0A2020626F726465722D636F6C6F723A2023666662';
wwv_flow_api.g_varchar2_table(1306) := '6636363B0A7D0A2E752D436F6C6F722D32332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1307) := '0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1308) := '6666666666663B0A7D0A2E752D436F6C6F722D32342D42472D2D747874207B0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023613065626164';
wwv_flow_api.g_varchar2_table(1309) := '3B0A7D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0A202066696C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6272207B0A20207374726F6B653A20236130656261643B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1310) := '3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D46472D2D747874207B0A2020636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023313937';
wwv_flow_api.g_varchar2_table(1311) := '3332383B0A7D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0A202066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6272207B0A20207374726F6B653A20233139373332383B0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1312) := '6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32352D42472D2D747874207B0A2020636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1313) := '6332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6272207B0A20207374726F6B653A20236332633263353B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1314) := '2D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1315) := '3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F72';
wwv_flow_api.g_varchar2_table(1316) := '6465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D42472D2D747874207B0A2020636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6267207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1317) := '6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6272207B0A20207374726F6B653A20233862636565623B0A2020';
wwv_flow_api.g_varchar2_table(1318) := '626F726465722D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6267207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1319) := '2D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6272207B0A20207374726F6B653A20236666666666663B';
wwv_flow_api.g_varchar2_table(1320) := '0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6267207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1321) := '756E642D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0A202066696C6C3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6272207B0A20207374726F6B653A202366666530';
wwv_flow_api.g_varchar2_table(1322) := '36363B0A2020626F726465722D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6267207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1323) := '67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0A202066696C6C3A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6272207B0A20207374726F6B653A202333';
wwv_flow_api.g_varchar2_table(1324) := '33333333333B0A2020626F726465722D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A2020636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6267207B0A202062';
wwv_flow_api.g_varchar2_table(1325) := '61636B67726F756E642D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C3A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6272207B0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1326) := '20236264653966643B0A2020626F726465722D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D46472D2D747874207B0A2020636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6267207B0A';
wwv_flow_api.g_varchar2_table(1327) := '20206261636B67726F756E642D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066696C6C3A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6272207B0A20207374726F';
wwv_flow_api.g_varchar2_table(1328) := '6B653A20233035376562363B0A2020626F726465722D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D747874207B0A2020636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6267';
wwv_flow_api.g_varchar2_table(1329) := '207B0A20206261636B67726F756E642D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A202066696C6C3A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6272207B0A202073';
wwv_flow_api.g_varchar2_table(1330) := '74726F6B653A20236666396339363B0A2020626F726465722D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D';
wwv_flow_api.g_varchar2_table(1331) := '2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6272207B0A';
wwv_flow_api.g_varchar2_table(1332) := '20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D42472D2D747874207B0A2020636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D';
wwv_flow_api.g_varchar2_table(1333) := '42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0A202066696C6C3A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6272';
wwv_flow_api.g_varchar2_table(1334) := '207B0A20207374726F6B653A20236139613865613B0A2020626F726465722D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1335) := '33302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D';
wwv_flow_api.g_varchar2_table(1336) := '2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D666F6375736564207B0A2020626F782D736861646F773A2030203020302031707820236666326435352C203020';
wwv_flow_api.g_varchar2_table(1337) := '3020317078203070782072676261283235352C2034352C2038352C20302E35292021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A0A2F2A200A202A204F7261636C65204170706C69636174696F6E20457870726573732035';
wwv_flow_api.g_varchar2_table(1338) := '2E30205468656D6520526F6C6C657220437573746F6D20435353200A202A0A202A2F0A0A6469723D72746C';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(75836362229237551)
,p_theme_id=>42
,p_file_name=>'75835940074237385.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48023221138632920)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48023402710632927)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48023665028632927)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48024865329632933)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48025058458632933)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48025703461632934)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48026127055632935)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48026791970632935)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48027319230632936)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48027514530632936)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48028400569632975)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48030040356632976)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48031436453632979)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48034916292632983)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48035185328632983)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48035505869632983)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48035907906632985)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48036529281633022)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48037163045633065)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48037392116633083)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48038964296633084)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48039670266633084)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48039995285633084)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48040658297633084)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48040940648633084)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48041440740633085)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48041766168633085)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48041973772633085)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48042757630633086)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48044691126633197)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48045427775633197)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48046462436633197)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48047153596633198)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48047410584633198)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48048160237633198)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48048850195633208)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48051220981633246)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48052303617633250)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48053541232633320)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48054502223633924)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48054735636633924)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48054941530633941)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48055169983633957)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48055345981633979)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48055720532633979)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48056495545633980)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48056841915633980)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48057052716633980)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48057255671633980)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48057481680633980)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48057712848633980)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(48058039555633980)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023163250632912)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023312859632925)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(48023221138632920)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023519215632927)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(48023402710632927)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023717170632927)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(48023665028632927)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023808066632927)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(48023221138632920)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48023986323632927)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(48023402710632927)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48024012099632927)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(48023221138632920)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48024165915632927)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(48023402710632927)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48024234847632927)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(48023221138632920)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48024377668632927)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48022978101632904)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(48023665028632927)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48024911970632933)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(48024540698632928)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48025106739632933)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(48024540698632928)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(48025058458632933)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48025221495632933)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(48024540698632928)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48025353678632933)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(48024540698632928)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(48025058458632933)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48025850000632934)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(48025703461632934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48025926627632935)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(48025703461632934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026085052632935)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(48025703461632934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026225683632935)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026343413632935)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026499118632935)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026525206632935)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(48025703461632934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026603502632935)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026810901632935)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48026941063632935)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027002167632935)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027170611632935)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027293020632936)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027447887632936)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(48027319230632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027680439632936)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027702292632936)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(48027319230632936)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027880408632936)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48027951464632936)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028098664632936)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028153834632936)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028224986632936)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028365447632936)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028519702632975)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(48028400569632975)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028624531632975)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(48028400569632975)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48028738468632975)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48025414249632933)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029106716632976)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029220867632976)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029378899632976)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029463880632976)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029557597632976)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029623028632976)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029757053632976)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029862334632976)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48029984731632976)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030174483632976)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(48030040356632976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030240134632976)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(48030040356632976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030333104632976)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030444165632976)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030590135632976)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030606189632976)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030784815632976)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48030866982632976)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48028827096632975)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031310417632979)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031579772632979)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(48031436453632979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031691162632979)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(48031436453632979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031704851632979)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031829303632979)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48031985827632979)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48031109516632976)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(48031436453632979)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48032117713632979)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032091835632979)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48032202291632979)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032091835632979)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48032826024632980)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48032955138632980)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033004170632980)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033147669632980)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(48026127055632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033258969632980)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033372301632980)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033446882632980)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033504407632980)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033645098632980)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(48026791970632935)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033767033632980)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(48027319230632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033810862632980)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48033959884632980)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(48027319230632936)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034045344632982)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034165057632983)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034229621632983)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034384721632983)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(48027514530632936)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034464440632983)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48034555044632983)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48032513334632979)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(48024865329632933)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035095750632983)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(48034916292632983)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035299092632983)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(48035185328632983)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035355493632983)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035409932632983)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(48035185328632983)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035634113632983)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(48035505869632983)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48035726595632983)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48034605965632983)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(48035505869632983)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036008099632985)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(48035811601632983)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(48035907906632985)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036176008632985)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(48035811601632983)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036254754632985)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(48035811601632983)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(48035907906632985)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036634872633022)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(48036315219632985)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(48036529281633022)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036740339633022)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48036315219632985)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(48036529281633022)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48036854418633022)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(48036315219632985)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037270244633065)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(48037163045633065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037433999633083)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037594900633083)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(48037163045633065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037643135633083)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037710617633083)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(48037163045633065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037854449633083)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48037953386633084)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038060843633084)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(48037163045633065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038130654633084)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(48037163045633065)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038211525633084)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038367093633084)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038429862633084)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038529432633084)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038660229633084)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48037054804633065)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48038820388633084)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039007153633084)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(48038964296633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039129704633084)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039260896633084)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(48038964296633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039331006633084)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039477413633084)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(48038964296633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039502941633084)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039779920633084)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(48039670266633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48039822936633084)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(48039670266633084)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040085721633084)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(48039995285633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040147126633084)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(48039995285633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040263745633084)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(48039670266633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040336598633084)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040455481633084)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(48038964296633084)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040588718633084)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48040792178633084)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48038712731633084)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(48040658297633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48041081862633084)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48040840737633084)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(48040940648633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48041155815633084)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48040840737633084)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(48040940648633084)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48041560301633085)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(48041440740633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48041602629633085)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(48041440740633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48041865997633085)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(48041766168633085)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042069269633085)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(48041973772633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042141673633085)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(48041973772633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042294418633085)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(48041973772633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042322734633085)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(48041766168633085)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042481323633086)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042583811633086)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48041363471633085)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(48041973772633085)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042864605633086)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48042921132633086)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043029123633086)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043152956633086)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043235535633086)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043370544633086)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043448988633086)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043502745633086)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(48042646955633086)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043798159633086)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043893610633086)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48043958618633086)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044019042633086)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044179838633086)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(48037392116633083)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044248752633086)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044362539633116)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044424541633116)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(48043634783633086)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(48042757630633086)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044730641633197)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044803876633197)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48044917148633197)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045047936633197)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045153092633197)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045230808633197)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045356880633197)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045500423633197)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(48045427775633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045609806633197)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(48045427775633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045716566633197)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045847891633197)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(48045427775633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48045937310633197)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046095775633197)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(48045427775633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046182150633197)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(48044595083633169)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(48045427775633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046348032633197)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046556599633197)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(48046462436633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046697165633197)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046754270633197)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(48046462436633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046829580633197)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48046957604633197)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(48046462436633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047032524633198)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047207584633198)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047350432633198)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047585987633198)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(48047410584633198)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047618013633198)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(48047410584633198)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047769107633198)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047857318633198)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48047968324633198)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(48046462436633197)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048030299633198)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048262855633198)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48046281728633197)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(48048160237633198)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048403532633208)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048554290633208)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048601277633208)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048712730633208)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48048903027633208)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(48048850195633208)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049063309633208)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48048314512633198)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(48048850195633208)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049204723633208)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049370032633208)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049440567633208)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049543296633208)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049636029633208)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049741099633208)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049825352633208)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48049946655633208)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(48049198113633208)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48050160313633237)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(48050090272633208)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48050296189633237)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48050090272633208)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48050326636633237)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48050090272633208)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48050491704633237)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48050090272633208)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48050930002633246)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(48047410584633198)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051052476633246)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(48044691126633197)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051105281633246)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(48047410584633198)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051361349633246)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(48051220981633246)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051430026633246)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051515708633246)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(48047153596633198)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051654467633246)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(48050805430633246)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(48051220981633246)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051845529633250)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48051765633633246)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48051951425633250)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48051765633633246)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48052006849633250)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48051765633633246)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48052140791633250)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(48051765633633246)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48052422865633250)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(48052246266633250)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(48052303617633250)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48052525836633250)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(48052246266633250)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(48052303617633250)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48052639813633250)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(48052246266633250)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(48052303617633250)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48053661680633320)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(48053462322633320)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(48053541232633320)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48053782465633320)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(48053462322633320)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(48053541232633320)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48054654896633924)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(48054502223633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48054877148633924)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(48054735636633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055026677633957)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(48054941530633941)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055285352633979)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(48055169983633957)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055448260633979)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(48055345981633979)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055555285633979)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(48054735636633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055664170633979)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(48054941530633941)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055863273633979)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(48055720532633979)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48055947836633979)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(48055720532633979)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056017515633980)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(48055720532633979)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056180820633980)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(48054502223633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056262085633980)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(48055345981633979)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056346463633980)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(48055169983633957)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056552076633980)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(48056495545633980)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056686072633980)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(48054502223633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056756437633980)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(48054502223633924)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48056936984633980)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(48056841915633980)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057195570633980)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(48057052716633980)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057332010633980)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(48057255671633980)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057558278633980)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(48057481680633980)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057646481633980)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(48057481680633980)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057829989633980)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(48057712848633980)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48057907924633980)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(48057052716633980)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48058197126633980)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(48058039555633980)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48058223137633980)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(48058389199633980)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(48058039555633980)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(48066033932648668)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(48058797024634405)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(48058538667634046)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(48016317816632500)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(48050767915633239)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(48058454233633992)
,p_nav_bar_list_template_id=>wwv_flow_api.id(48050613310633239)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'الرئيسية'
,p_page_mode=>'NORMAL'
,p_step_title=>'الرئيسية'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150519023215'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48060337517635004)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Page 2'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page 2'
,p_step_sub_title=>'Page 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521220905'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48060805155635018)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75796258711877614)
,p_plug_name=>'all'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"NDY_CODE",',
'"NDY_LAST_UPDATE",',
'"FNAME_AR",',
'"LNAME_AR",',
'"FNAME_FR",',
'"LNAME_FR",',
'"BIRTH_ON",',
'"BIRTH_IN",',
'"BIRTH_YEAR",',
'"DIE_ON",',
'"DIE_DESC",',
'"SEX",',
'"CIVIL_STATE",',
'"SALARY_LVL",',
'"JOB_DESC",',
'"HEALTH_LVL",',
'"HEALTH_DESC",',
'"SPOUSE_HEALTH_LVL",',
'"SPOUSE_HEALTH_DESC",',
'"CHILDREN_COUNT",',
'"CHILDREN_SCHOLARIZED_COUNT",',
'"IS_ORPHANE",',
'"IS_POOR",',
'"IS_HANDICAPPED",',
'"HANDICAP_DESC",',
'"ORPH_GUARDIAN_KINSHIP",',
'"ORPH_GUARDIAN_NDY_CODE",',
'"ORPH_ORPHANE_TYPE",',
'"ORPH_ORPHANE_FROM"',
'from "#OWNER#"."N3_F_NEEDY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75796376269877615)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:RP,2001:P2001_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ZAKI'
,p_internal_uid=>75796376269877615
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796452961877616)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796578696877617)
,p_db_column_name=>'NDY_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ndy code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796613618877618)
,p_db_column_name=>'NDY_LAST_UPDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ndy last update'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796734393877619)
,p_db_column_name=>'FNAME_AR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fname ar'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796842457877620)
,p_db_column_name=>'LNAME_AR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Lname ar'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75796949586877621)
,p_db_column_name=>'FNAME_FR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fname fr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797085011877622)
,p_db_column_name=>'LNAME_FR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Lname fr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797153647877623)
,p_db_column_name=>'BIRTH_ON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Birth on'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797266558877624)
,p_db_column_name=>'BIRTH_IN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Birth in'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797373373877625)
,p_db_column_name=>'BIRTH_YEAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Birth year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797429835877626)
,p_db_column_name=>'DIE_ON'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Die on'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797505106877627)
,p_db_column_name=>'DIE_DESC'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Die desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797653639877628)
,p_db_column_name=>'SEX'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sex'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797761312877629)
,p_db_column_name=>'CIVIL_STATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Civil state'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797892054877630)
,p_db_column_name=>'SALARY_LVL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Salary lvl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75797971824877631)
,p_db_column_name=>'JOB_DESC'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Job desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798035058877632)
,p_db_column_name=>'HEALTH_LVL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Health lvl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798176903877633)
,p_db_column_name=>'HEALTH_DESC'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Health desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798294850877634)
,p_db_column_name=>'SPOUSE_HEALTH_LVL'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Spouse health lvl'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798329043877635)
,p_db_column_name=>'SPOUSE_HEALTH_DESC'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Spouse health desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798426264877636)
,p_db_column_name=>'CHILDREN_COUNT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Children count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798596042877637)
,p_db_column_name=>'CHILDREN_SCHOLARIZED_COUNT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Children scholarized count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798642306877638)
,p_db_column_name=>'IS_ORPHANE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Is orphane'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798783631877639)
,p_db_column_name=>'IS_POOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Is poor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798848810877640)
,p_db_column_name=>'IS_HANDICAPPED'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Is handicapped'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75798936470877641)
,p_db_column_name=>'HANDICAP_DESC'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Handicap desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75799048187877642)
,p_db_column_name=>'ORPH_GUARDIAN_KINSHIP'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Orph guardian kinship'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75799122236877643)
,p_db_column_name=>'ORPH_GUARDIAN_NDY_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Orph guardian ndy code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75799233608877644)
,p_db_column_name=>'ORPH_ORPHANE_TYPE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Orph orphane type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75799333113877645)
,p_db_column_name=>'ORPH_ORPHANE_FROM'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Orph orphane from'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80618123727560879)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'806182'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NDY_CODE:NDY_LAST_UPDATE:FNAME_AR:LNAME_AR:FNAME_FR:LNAME_FR:BIRTH_ON:BIRTH_IN:BIRTH_YEAR:DIE_ON:DIE_DESC:SEX:CIVIL_STATE:SALARY_LVL:JOB_DESC:HEALTH_LVL:HEALTH_DESC:SPOUSE_HEALTH_LVL:SPOUSE_HEALTH_DESC:CHILDREN_COUNT:CHILDREN_SCHOLARIZED_COUNT:IS_'
||'ORPHANE:IS_POOR:IS_HANDICAPPED:HANDICAP_DESC:ORPH_GUARDIAN_KINSHIP:ORPH_GUARDIAN_NDY_CODE:ORPH_ORPHANE_TYPE:ORPH_ORPHANE_FROM'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Page 3'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page 3'
,p_step_sub_title=>'Page 3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20150505081020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48061360560635028)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Page 4'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page 4'
,p_step_sub_title=>'Page 4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20150505081020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48061807114635040)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Page 5'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page 5'
,p_step_sub_title=>'Page 5'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20150505081020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48062306179635040)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Page 6'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page 6'
,p_step_sub_title=>'Page 6'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20150505081020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48062870656635044)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'nour 0.3 - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(48018320725632825)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20150505081015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48059018451634620)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48059374358634799)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48059018451634620)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48059186376634695)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48059018451634620)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48059257434634784)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48059018451634620)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48059527143634928)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48059474436634866)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48059712206634930)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48059607626634928)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'ملاحظات'
,p_alias=>'FEEDBACK'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'ملاحظات'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150518170612'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76324932825799035)
,p_plug_name=>'ملاحظات'
,p_plug_template=>wwv_flow_api.id(48036315219632985)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76328841538799041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76324932825799035)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ارسال الملاحظة'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76329208801799041)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76324932825799035)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'تجاهل التعليق'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76325379974799038)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(76324932825799035)
,p_prompt=>'الواجهة'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_lov_display_extra=>'YES'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76326205477799039)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(76324932825799035)
,p_prompt=>'صفحة البرنامج'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_lov_display_extra=>'YES'
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76327010395799040)
,p_name=>'P102_FEEDBACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76324932825799035)
,p_prompt=>'الملاحظة'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76328050594799040)
,p_name=>'P102_FEEDBACK_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76324932825799035)
,p_prompt=>'نوع الملاحظة'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_lov_display_extra=>'YES'
,p_help_text=>'Please identify the type of feedback you are providing.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(76330649121799054)
,p_validation_name=>'P102_FEEDBACK'
,p_validation_sequence=>10
,p_validation=>'P102_FEEDBACK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(76328841538799041)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(76327010395799040)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(76329675389799053)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(76329208801799041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(76330115466799054)
,p_event_id=>wwv_flow_api.id(76329675389799053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76331065056799055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(76328841538799041)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76331429056799055)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
,p_process_sql_clob=>'CLOSE_WINDOW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_01002
begin
wwv_flow_api.create_page(
 p_id=>1002
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Update alms type'
,p_page_mode=>'NORMAL'
,p_step_title=>'Update alms type'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150518155600'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(76283085392400647)
,p_name=>'Update alms type'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"ALMS_TYPE",',
'"ALMS_DESC",',
'"COLUMN3",',
'"COLUMN4"',
'from "#OWNER#"."N3_T_ALMS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76292348702400674)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76283769396400654)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76284130647400656)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76284572771400657)
,p_query_column_id=>4
,p_column_alias=>'ALMS_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Alms Type'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'ALMS_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76284908432400657)
,p_query_column_id=>5
,p_column_alias=>'ALMS_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Alms Desc'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'ALMS_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76285350655400657)
,p_query_column_id=>6
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>6
,p_column_heading=>'Column3'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'COLUMN3'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76285793535400658)
,p_query_column_id=>7
,p_column_alias=>'COLUMN4'
,p_column_display_sequence=>7
,p_column_heading=>'Column4'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_ALMS'
,p_ref_column_name=>'COLUMN4'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76293288615400679)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76288296038400663)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(76283085392400647)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'إضافة سطر'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76288023937400663)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76283085392400647)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'تأكيد'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76287918259400663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76283085392400647)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'إغلاق'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76288184700400663)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76283085392400647)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'شطب'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76292747654400674)
,p_branch_action=>'f?p=&APP_ID.:1002:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(76288023937400663)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76289741968400668)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76283085392400647)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_ALMS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(76288023937400663)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76290192514400671)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76283085392400647)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_ALMS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01003
begin
wwv_flow_api.create_page(
 p_id=>1003
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Update accounts'
,p_page_mode=>'NORMAL'
,p_step_title=>'Update accounts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150518160915'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(76306282113461278)
,p_name=>'Update accounts'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"ACCOUNT",',
'"ALMS_TYPE"',
'from "#OWNER#"."N3_F_ACCOUNTS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76313524597461289)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76306970122461281)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_ACCOUNTS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76307359965461281)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_ACCOUNTS'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76307762555461282)
,p_query_column_id=>4
,p_column_alias=>'ACCOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Account'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_ACCOUNTS'
,p_ref_column_name=>'ACCOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(76308162921461282)
,p_query_column_id=>5
,p_column_alias=>'ALMS_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Alms Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>'SELECT  ALMS_TYPE d, alms_type r FROM N3_T_ALMS'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_ACCOUNTS'
,p_ref_column_name=>'ALMS_TYPE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76314441553461290)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76310095012461285)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(76306282113461278)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76309825143461285)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76306282113461278)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76309713083461285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76306282113461278)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76309971808461285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76306282113461278)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76313910781461289)
,p_branch_action=>'f?p=&APP_ID.:1003:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(76309825143461285)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76311505665461287)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76306282113461278)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_F_ACCOUNTS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(76309825143461285)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76311952387461287)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76306282113461278)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_F_ACCOUNTS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01004
begin
wwv_flow_api.create_page(
 p_id=>1004
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'الاحتياجات'
,p_page_mode=>'NORMAL'
,p_step_title=>'الاحتياجات'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150519024224'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80149848657001228)
,p_name=>'الاحتياجات'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'',
'"NEED_TYPE",',
'"NEED_DESC",',
'"COLUMN1",',
'"COLUMN2"',
'from "#OWNER#"."N3_T_NEEDS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80150548429001234)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_NEEDS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80151344308001235)
,p_query_column_id=>2
,p_column_alias=>'NEED_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Need Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_NEEDS'
,p_ref_column_name=>'NEED_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80151734621001239)
,p_query_column_id=>3
,p_column_alias=>'NEED_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Need Desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_NEEDS'
,p_ref_column_name=>'NEED_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80152008239001239)
,p_query_column_id=>4
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>5
,p_column_heading=>'Column1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_NEEDS'
,p_ref_column_name=>'COLUMN1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80152456543001240)
,p_query_column_id=>5
,p_column_alias=>'COLUMN2'
,p_column_display_sequence=>6
,p_column_heading=>'Column2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_NEEDS'
,p_ref_column_name=>'COLUMN2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80159036305001250)
,p_query_column_id=>6
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80159954140001254)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80154991602001245)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80149848657001228)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'إضافة سطر'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80154740741001245)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80149848657001228)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'حفظ'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80154623257001245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80149848657001228)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'إغلاق'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80154819219001245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80149848657001228)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'حذف'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80159470549001250)
,p_branch_action=>'f?p=&APP_ID.:1004:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80154740741001245)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80156451123001247)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80149848657001228)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_NEEDS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80154740741001245)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80156898141001248)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80149848657001228)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_NEEDS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01005
begin
wwv_flow_api.create_page(
 p_id=>1005
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'درجات الحالة الصحية'
,p_page_mode=>'NORMAL'
,p_step_title=>'درجات الحالة الصحية'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521123529'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80563963059461418)
,p_name=>'درجات الحالة الصحية'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"LVL",',
'"LVL_DESC"',
'from "#OWNER#"."N3_T_HEALTH_LVL"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80571697303461443)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80564682991461422)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_HEALTH_LVL'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80565081285461428)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_HEALTH_LVL'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80565430942461428)
,p_query_column_id=>4
,p_column_alias=>'LVL'
,p_column_display_sequence=>4
,p_column_heading=>'Lvl'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_HEALTH_LVL'
,p_ref_column_name=>'LVL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80565854342461428)
,p_query_column_id=>5
,p_column_alias=>'LVL_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Lvl Desc'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_HEALTH_LVL'
,p_ref_column_name=>'LVL_DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80572595279461445)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80567744345461432)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80563963059461418)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80567546655461432)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80563963059461418)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80567431814461432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80563963059461418)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80567604031461432)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80563963059461418)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80572005939461444)
,p_branch_action=>'f?p=&APP_ID.:1005:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80567546655461432)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80569346962461435)
,p_tabular_form_region_id=>wwv_flow_api.id(80563963059461418)
,p_validation_name=>'LVL must be numeric'
,p_validation_sequence=>30
,p_validation=>'LVL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(80567546655461432)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'LVL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80569640312461438)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80563963059461418)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_HEALTH_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80567546655461432)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80570003535461441)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80563963059461418)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_HEALTH_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01006
begin
wwv_flow_api.create_page(
 p_id=>1006
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'درجات الاجتهاد المدرسي'
,p_page_mode=>'NORMAL'
,p_step_title=>'درجات الاجتهاد المدرسي'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521172902'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80574191355730223)
,p_name=>'درجات الاجتهاد المدرسي'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'',
'"SCORING_LVL",',
'"SCORING_DESC",',
'"COLUMN4",',
'"COLUMN1"',
'from "#OWNER#"."N3_T_SCORING_LVL"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80574875467730229)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCORING_LVL'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80575673878730229)
,p_query_column_id=>2
,p_column_alias=>'SCORING_LVL'
,p_column_display_sequence=>3
,p_column_heading=>'Scoring Lvl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCORING_LVL'
,p_ref_column_name=>'SCORING_LVL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80576032445730229)
,p_query_column_id=>3
,p_column_alias=>'SCORING_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Scoring Desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCORING_LVL'
,p_ref_column_name=>'SCORING_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80576479731730230)
,p_query_column_id=>4
,p_column_alias=>'COLUMN4'
,p_column_display_sequence=>5
,p_column_heading=>'Column4'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCORING_LVL'
,p_ref_column_name=>'COLUMN4'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80576876560730230)
,p_query_column_id=>5
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>6
,p_column_heading=>'Column1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCORING_LVL'
,p_ref_column_name=>'COLUMN1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80583885443730240)
,p_query_column_id=>6
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80584718376730242)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80579312219730234)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80574191355730223)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80579113315730234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80574191355730223)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80579055530730234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80574191355730223)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80579220549730234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80574191355730223)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80584237154730241)
,p_branch_action=>'f?p=&APP_ID.:1006:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80579113315730234)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80580990668730238)
,p_tabular_form_region_id=>wwv_flow_api.id(80574191355730223)
,p_validation_name=>'SCORING_LVL must be numeric'
,p_validation_sequence=>30
,p_validation=>'SCORING_LVL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(80579113315730234)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SCORING_LVL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80581284271730238)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80574191355730223)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_SCORING_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80579113315730234)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80581685459730239)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80574191355730223)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_SCORING_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01007
begin
wwv_flow_api.create_page(
 p_id=>1007
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'درجات الدخل اليومي'
,p_page_mode=>'NORMAL'
,p_step_title=>'درجات الدخل اليومي'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521173115'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80590987131095368)
,p_name=>'درجات الدخل اليومي'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"LVL",',
'"LVL_DESC",',
'"SALARY_START",',
'"SALARY_END"',
'from "#OWNER#"."N3_T_SALARY_LVL"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80601402590095386)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80591620632095373)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80592033412095373)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80592480464095373)
,p_query_column_id=>4
,p_column_alias=>'LVL'
,p_column_display_sequence=>4
,p_column_heading=>'Lvl'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'LVL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80592891397095374)
,p_query_column_id=>5
,p_column_alias=>'LVL_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Lvl Desc'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'LVL_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80593262474095374)
,p_query_column_id=>6
,p_column_alias=>'SALARY_START'
,p_column_display_sequence=>6
,p_column_heading=>'Salary Start'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'SALARY_START'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80593632356095374)
,p_query_column_id=>7
,p_column_alias=>'SALARY_END'
,p_column_display_sequence=>7
,p_column_heading=>'Salary End'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SALARY_LVL'
,p_ref_column_name=>'SALARY_END'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80602306409095388)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80596157753095378)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80590987131095368)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80595944443095378)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80590987131095368)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80595872899095378)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80590987131095368)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80596038408095378)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80590987131095368)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80601849431095386)
,p_branch_action=>'f?p=&APP_ID.:1007:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80595944443095378)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80597744597095382)
,p_tabular_form_region_id=>wwv_flow_api.id(80590987131095368)
,p_validation_name=>'LVL must be numeric'
,p_validation_sequence=>30
,p_validation=>'LVL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(80595944443095378)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'LVL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80598176470095382)
,p_tabular_form_region_id=>wwv_flow_api.id(80590987131095368)
,p_validation_name=>'SALARY_START must be numeric'
,p_validation_sequence=>50
,p_validation=>'SALARY_START'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(80595944443095378)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SALARY_START'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80598507405095382)
,p_tabular_form_region_id=>wwv_flow_api.id(80590987131095368)
,p_validation_name=>'SALARY_END must be numeric'
,p_validation_sequence=>60
,p_validation=>'SALARY_END'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(80595944443095378)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SALARY_END'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80598869129095382)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80590987131095368)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_SALARY_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80595944443095378)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80599297651095383)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80590987131095368)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_SALARY_LVL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_01008
begin
wwv_flow_api.create_page(
 p_id=>1008
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'المدارس المسجلة'
,p_page_mode=>'NORMAL'
,p_step_title=>'المدارس المسجلة'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521223314'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80751322789761171)
,p_name=>'المدارس المسجلة'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"ID" ID_DISPLAY,',
'"SCHOOL_NAME",',
'"SCHOOL_ZONE",',
'"SCHOOL_STEP",',
'"COLUMN1",',
'"COLUMN3",',
'"SCHOOL_SIZE",',
'"SCHOOL_CONTACT1",',
'"SCHOOL_CONTACT2",',
'"SCHOOL_CODE"',
'from "#OWNER#"."N3_T_SCHOOLS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80765609206761182)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80752063739761171)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80752457457761172)
,p_query_column_id=>3
,p_column_alias=>'ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'ID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80752823488761172)
,p_query_column_id=>4
,p_column_alias=>'SCHOOL_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'School Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80753297501761172)
,p_query_column_id=>5
,p_column_alias=>'SCHOOL_ZONE'
,p_column_display_sequence=>5
,p_column_heading=>'School Zone'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_ZONE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80753619195761172)
,p_query_column_id=>6
,p_column_alias=>'SCHOOL_STEP'
,p_column_display_sequence=>6
,p_column_heading=>'School Step'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_STEP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80754062454761172)
,p_query_column_id=>7
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>7
,p_column_heading=>'Column1'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'COLUMN1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80754483503761173)
,p_query_column_id=>8
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>8
,p_column_heading=>'Column3'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'COLUMN3'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80754844798761173)
,p_query_column_id=>9
,p_column_alias=>'SCHOOL_SIZE'
,p_column_display_sequence=>9
,p_column_heading=>'School Size'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_SIZE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80755246429761173)
,p_query_column_id=>10
,p_column_alias=>'SCHOOL_CONTACT1'
,p_column_display_sequence=>10
,p_column_heading=>'School Contact1'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_CONTACT1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80755689133761173)
,p_query_column_id=>11
,p_column_alias=>'SCHOOL_CONTACT2'
,p_column_display_sequence=>11
,p_column_heading=>'School Contact2'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_CONTACT2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80756042397761174)
,p_query_column_id=>12
,p_column_alias=>'SCHOOL_CODE'
,p_column_display_sequence=>12
,p_column_heading=>'School Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_T_SCHOOLS'
,p_ref_column_name=>'SCHOOL_CODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80766526473761182)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80760000570761178)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80751322789761171)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80759864740761178)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80751322789761171)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80759773587761178)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80751322789761171)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80759989890761178)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80751322789761171)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80766056649761182)
,p_branch_action=>'f?p=&APP_ID.:1008:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80759864740761178)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80761542311761179)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80751322789761171)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_T_SCHOOLS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80759864740761178)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80761954063761179)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80751322789761171)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_T_SCHOOLS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_02001
begin
wwv_flow_api.create_page(
 p_id=>2001
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'N3_F_NEEDY detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'N3_F_NEEDY'
,p_step_sub_title=>'N3_F_NEEDY'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(48018685500632828)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521223033'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75799422845877646)
,p_plug_name=>'hidden_item'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75799609919877648)
,p_name=>'needs'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' SELECT ID,',
'  NDY_CODE,',
'  NEED_TYPE,',
'  NEED_QTY,',
'  NEED_FREQ,',
'  COLUMN1,',
'  COLUMN2',
'FROM N3_F_NEEDY_NEEDS',
'where ndy_code = :P2001_NDYCODE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75799779783877649)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75799874245877650)
,p_query_column_id=>2
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Ndy code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80686435251612901)
,p_query_column_id=>3
,p_column_alias=>'NEED_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Need type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80686528038612902)
,p_query_column_id=>4
,p_column_alias=>'NEED_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Need qty'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80686684819612903)
,p_query_column_id=>5
,p_column_alias=>'NEED_FREQ'
,p_column_display_sequence=>5
,p_column_heading=>'Need freq'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80686764593612904)
,p_query_column_id=>6
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>6
,p_column_heading=>'Column1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80686836437612905)
,p_query_column_id=>7
,p_column_alias=>'COLUMN2'
,p_column_display_sequence=>7
,p_column_heading=>'Column2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80619816131578600)
,p_name=>'N3_F_NEEDY'
,p_template=>wwv_flow_api.id(48024404941632927)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       NDY_CODE,',
'       NDY_LAST_UPDATE,',
'       FNAME_AR,',
'       LNAME_AR,',
'       FNAME_FR',
'       ',
'  from N3_F_NEEDY',
'where id = :P2001_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48042646955633086)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80620838398578687)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_link=>'f?p=#APP_ID#:2002:#APP_SESSION#:::RP:P2002_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80621283472578687)
,p_query_column_id=>2
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Ndy Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80621634640578687)
,p_query_column_id=>3
,p_column_alias=>'NDY_LAST_UPDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Ndy Last Update'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80622038856578687)
,p_query_column_id=>4
,p_column_alias=>'FNAME_AR'
,p_column_display_sequence=>4
,p_column_heading=>'Fname Ar'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80622441130578687)
,p_query_column_id=>5
,p_column_alias=>'LNAME_AR'
,p_column_display_sequence=>5
,p_column_heading=>'Lname Ar'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80622888335578688)
,p_query_column_id=>6
,p_column_alias=>'FNAME_FR'
,p_column_display_sequence=>6
,p_column_heading=>'Fname Fr'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80670880915578761)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80687153713612908)
,p_plug_name=>'selector'
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80687294925612909)
,p_name=>'school'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID,',
'  NDY_CODE,',
'  SCHOOL_CODE,',
'  LINE,',
'  FNAME,',
' ',
'  BIRTH_ON,',
' ',
'  CLASSE_LEVEL,',
'  SCORING_LVL,',
' ',
'  COLUMN3',
'FROM N3_NEEDY_SCHOOL ',
'where ndy_code = :P2001_NDYCODE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687328610612910)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687466310612911)
,p_query_column_id=>2
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Ndy code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687567920612912)
,p_query_column_id=>3
,p_column_alias=>'SCHOOL_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'School code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687693349612913)
,p_query_column_id=>4
,p_column_alias=>'LINE'
,p_column_display_sequence=>4
,p_column_heading=>'Line'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687761190612914)
,p_query_column_id=>5
,p_column_alias=>'FNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Fname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687874859612915)
,p_query_column_id=>6
,p_column_alias=>'BIRTH_ON'
,p_column_display_sequence=>6
,p_column_heading=>'Birth on'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80687917479612916)
,p_query_column_id=>7
,p_column_alias=>'CLASSE_LEVEL'
,p_column_display_sequence=>7
,p_column_heading=>'Classe level'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80688080406612917)
,p_query_column_id=>8
,p_column_alias=>'SCORING_LVL'
,p_column_display_sequence=>8
,p_column_heading=>'Scoring lvl'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80688148369612918)
,p_query_column_id=>9
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>9
,p_column_heading=>'Column3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80642134275578703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80670880915578761)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2002:&SESSION.::&DEBUG.:2002'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80687062442612907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75799609919877648)
,p_button_name=>'edit_needs'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'Edit needs'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2002:&SESSION.::&DEBUG.:RP,2002:P2002_ID:&P2001_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80688259498612919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80687294925612909)
,p_button_name=>'edit_school'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'Edit needs'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:RP,2003:P2003_ID:&P2001_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75799591685877647)
,p_name=>'P2001_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75799422845877646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80686951344612906)
,p_name=>'P2001_NDYCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75799422845877646)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ndy_code from n3_f_needy',
'where id = :P2001_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(80642677175578704)
,p_computation_sequence=>1
,p_computation_item=>'P2002_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_02002
begin
wwv_flow_api.create_page(
 p_id=>2002
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Master Detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'Master Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521221847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80643306797578708)
,p_plug_name=>'Edit N3_F_NEEDY'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80659458686578737)
,p_name=>'N3_F_NEEDY_NEEDS Detail'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"NDY_CODE",',
'"NEED_TYPE",',
'"NEED_QTY",',
'"NEED_FREQ"',
'from "#OWNER#"."N3_F_NEEDY_NEEDS"',
'where "NDY_CODE" = :P2002_NDY_CODE',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P2002_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2002_NDY_CODE'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80667446744578745)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80660151959578738)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_NEEDY_NEEDS'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80660529457578739)
,p_query_column_id=>3
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Ndy Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P2002_NDY_CODE'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_NEEDY_NEEDS'
,p_ref_column_name=>'NDY_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80660914050578739)
,p_query_column_id=>4
,p_column_alias=>'NEED_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Need Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' SELECT ',
'  NEED_TYPE || '' '' ||   NEED_DESC d,',
'  need_type r',
'FROM N3_T_NEEDS'))
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_NEEDY_NEEDS'
,p_ref_column_name=>'NEED_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80661359509578739)
,p_query_column_id=>5
,p_column_alias=>'NEED_QTY'
,p_column_display_sequence=>5
,p_column_heading=>'Need Qty'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_NEEDY_NEEDS'
,p_ref_column_name=>'NEED_QTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80661718428578739)
,p_query_column_id=>6
,p_column_alias=>'NEED_FREQ'
,p_column_display_sequence=>6
,p_column_heading=>'Need Freq'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_F_NEEDY_NEEDS'
,p_ref_column_name=>'NEED_FREQ'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80671473044578768)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80643807933578708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80643306797578708)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2002_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80663990166578742)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80659458686578737)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80644047027578708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80643306797578708)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2001:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80643784282578708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80643306797578708)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2002_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80643983344578708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80643306797578708)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2002_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80663804916578742)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80659458686578737)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."N3_F_NEEDY_NEEDS"',
'where "NDY_CODE" = :P2002_NDY_CODE'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80667897927578746)
,p_branch_action=>'f?p=&APP_ID.:2002:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80663758438578742)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80659048964578732)
,p_branch_action=>'f?p=&APP_ID.:2001:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80645507045578711)
,p_name=>'P2002_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80645963366578717)
,p_name=>'P2002_NDY_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Code'
,p_source=>'NDY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80646386541578718)
,p_name=>'P2002_NDY_LAST_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Last Update'
,p_source=>'NDY_LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80646764867578720)
,p_name=>'P2002_FNAME_AR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fname Ar'
,p_source=>'FNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80647169416578720)
,p_name=>'P2002_LNAME_AR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lname Ar'
,p_source=>'LNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80647523972578721)
,p_name=>'P2002_FNAME_FR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'FNAME_FR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80647971671578721)
,p_name=>'P2002_LNAME_FR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'LNAME_FR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80648337986578721)
,p_name=>'P2002_BIRTH_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'BIRTH_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80648723482578721)
,p_name=>'P2002_BIRTH_IN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'BIRTH_IN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80649130509578721)
,p_name=>'P2002_BIRTH_YEAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'BIRTH_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80649557837578722)
,p_name=>'P2002_DIE_ON'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'DIE_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80649974482578722)
,p_name=>'P2002_DIE_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'DIE_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80650324436578722)
,p_name=>'P2002_SEX'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'SEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80650761953578722)
,p_name=>'P2002_CIVIL_STATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'CIVIL_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80651930445578727)
,p_name=>'P2002_HEALTH_LVL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'HEALTH_LVL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80652369799578727)
,p_name=>'P2002_HEALTH_DESC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'HEALTH_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80652727820578728)
,p_name=>'P2002_SPOUSE_HEALTH_LVL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'SPOUSE_HEALTH_LVL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80653155959578728)
,p_name=>'P2002_SPOUSE_HEALTH_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'SPOUSE_HEALTH_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80653535517578728)
,p_name=>'P2002_CHILDREN_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'CHILDREN_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80653928359578728)
,p_name=>'P2002_CHILDREN_SCHOLARIZED_COU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'CHILDREN_SCHOLARIZED_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80654387551578729)
,p_name=>'P2002_IS_ORPHANE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_ORPHANE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80654716110578729)
,p_name=>'P2002_IS_POOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_POOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80655126604578729)
,p_name=>'P2002_IS_HANDICAPPED'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_HANDICAPPED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80655564594578729)
,p_name=>'P2002_HANDICAP_DESC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(80643306797578708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Handicap Desc'
,p_source=>'HANDICAP_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80657905042578732)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2002_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80658311971578732)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2002_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80665179154578743)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80659458686578737)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_F_NEEDY_NEEDS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80665599655578743)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80659458686578737)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_F_NEEDY_NEEDS'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80658708310578732)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80643983344578708)
);
end;
/
prompt --application/pages/page_02003
begin
wwv_flow_api.create_page(
 p_id=>2003
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'الاحتياجات المدرسية'
,p_page_mode=>'NORMAL'
,p_step_title=>'الاحتياجات المدرسية'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521222950'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80716455844742645)
,p_plug_name=>'الاحتياجات المدرسية'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80723994315742681)
,p_name=>'N3_NEEDY_SCHOOL Detail'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"NDY_CODE",',
'"SCHOOL_CODE",',
'"LINE",',
'"FNAME",',
'"COLUMN4",',
'"COLUMN6",',
'"BIRTH_ON",',
'"COLUMN5",',
'"COLUMN7",',
'"CLASSE_LEVEL",',
'"SCORING_LVL",',
'"COLUMN8",',
'"COLUMN9",',
'"COLUMN1",',
'"COLUMN2",',
'"COLUMN3"',
'from "#OWNER#"."N3_NEEDY_SCHOOL"',
'where "NDY_CODE" = :P2003_NDY_CODE',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P2003_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P2003_NDY_CODE'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80745587195742698)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80724617450742684)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80725045000742684)
,p_query_column_id=>3
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Ndy Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P2003_NDY_CODE'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'NDY_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80725422854742684)
,p_query_column_id=>4
,p_column_alias=>'SCHOOL_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'School Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'SCHOOL_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80725810275742684)
,p_query_column_id=>5
,p_column_alias=>'LINE'
,p_column_display_sequence=>5
,p_column_heading=>'Line'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'LINE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80726265620742685)
,p_query_column_id=>6
,p_column_alias=>'FNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Fname'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'FNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80726641732742685)
,p_query_column_id=>7
,p_column_alias=>'COLUMN4'
,p_column_display_sequence=>7
,p_column_heading=>'Column4'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN4'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80727018899742685)
,p_query_column_id=>8
,p_column_alias=>'COLUMN6'
,p_column_display_sequence=>8
,p_column_heading=>'Column6'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN6'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80727464152742685)
,p_query_column_id=>9
,p_column_alias=>'BIRTH_ON'
,p_column_display_sequence=>9
,p_column_heading=>'Birth On'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'BIRTH_ON'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80727877896742685)
,p_query_column_id=>10
,p_column_alias=>'COLUMN5'
,p_column_display_sequence=>10
,p_column_heading=>'Column5'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN5'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80728288809742685)
,p_query_column_id=>11
,p_column_alias=>'COLUMN7'
,p_column_display_sequence=>11
,p_column_heading=>'Column7'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN7'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80728659010742686)
,p_query_column_id=>12
,p_column_alias=>'CLASSE_LEVEL'
,p_column_display_sequence=>12
,p_column_heading=>'Classe Level'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'CLASSE_LEVEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80729039256742686)
,p_query_column_id=>13
,p_column_alias=>'SCORING_LVL'
,p_column_display_sequence=>13
,p_column_heading=>'Scoring Lvl'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'SCORING_LVL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80729411439742686)
,p_query_column_id=>14
,p_column_alias=>'COLUMN8'
,p_column_display_sequence=>14
,p_column_heading=>'Column8'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80729842378742686)
,p_query_column_id=>15
,p_column_alias=>'COLUMN9'
,p_column_display_sequence=>15
,p_column_heading=>'Column9'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80730208570742686)
,p_query_column_id=>16
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>16
,p_column_heading=>'Column1'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80730617899742687)
,p_query_column_id=>17
,p_column_alias=>'COLUMN2'
,p_column_display_sequence=>17
,p_column_heading=>'Column2'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80731060858742687)
,p_query_column_id=>18
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>18
,p_column_heading=>'Column3'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_NEEDY_SCHOOL'
,p_ref_column_name=>'COLUMN3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80749533789742717)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80716996409742646)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80716455844742645)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2003_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80736827082742692)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80723994315742681)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80717103217742646)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80716455844742645)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2010:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80716895935742646)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80716455844742645)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2003_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80717089173742646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80716455844742645)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2003_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80736758189742692)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80723994315742681)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."N3_NEEDY_SCHOOL"',
'where "NDY_CODE" = :P2003_NDY_CODE'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80745994509742700)
,p_branch_action=>'f?p=&APP_ID.:2003:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(80736628232742692)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80723571395742680)
,p_branch_action=>'f?p=&APP_ID.:2010:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80718766242742668)
,p_name=>'P2003_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80719054429742675)
,p_name=>'P2003_NDY_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Code'
,p_source=>'NDY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80719408727742675)
,p_name=>'P2003_NDY_LAST_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Last Update'
,p_source=>'NDY_LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80719819168742677)
,p_name=>'P2003_FNAME_AR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fname Ar'
,p_source=>'FNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80720249865742677)
,p_name=>'P2003_LNAME_AR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lname Ar'
,p_source=>'LNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80720668570742677)
,p_name=>'P2003_CHILDREN_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Children Count'
,p_source=>'CHILDREN_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80721003372742677)
,p_name=>'P2003_CHILDREN_SCHOLARIZED_COU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(80716455844742645)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Children Scholarized Count'
,p_source=>'CHILDREN_SCHOLARIZED_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80738100623742693)
,p_tabular_form_region_id=>wwv_flow_api.id(80723994315742681)
,p_validation_name=>'LINE must be numeric'
,p_validation_sequence=>40
,p_validation=>'LINE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'LINE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80738509718742694)
,p_tabular_form_region_id=>wwv_flow_api.id(80723994315742681)
,p_validation_name=>'BIRTH_ON must be a valid date'
,p_validation_sequence=>80
,p_validation=>'BIRTH_ON'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'BIRTH_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80738983129742694)
,p_tabular_form_region_id=>wwv_flow_api.id(80723994315742681)
,p_validation_name=>'CLASSE_LEVEL must be numeric'
,p_validation_sequence=>110
,p_validation=>'CLASSE_LEVEL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CLASSE_LEVEL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(80739365142742694)
,p_tabular_form_region_id=>wwv_flow_api.id(80723994315742681)
,p_validation_name=>'SCORING_LVL must be numeric'
,p_validation_sequence=>120
,p_validation=>'SCORING_LVL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'SCORING_LVL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80722495015742679)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2003_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80722895595742679)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2003_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80739670778742694)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80723994315742681)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_NEEDY_SCHOOL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80740003803742694)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(80723994315742681)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_NEEDY_SCHOOL'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80723273325742679)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80717089173742646)
);
end;
/
prompt --application/pages/page_02010
begin
wwv_flow_api.create_page(
 p_id=>2010
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'N3_F_NEEDY'
,p_page_mode=>'NORMAL'
,p_step_title=>'N3_F_NEEDY'
,p_step_sub_title=>'N3_F_NEEDY'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521222950'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(80709175396742437)
,p_name=>'N3_F_NEEDY'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       NDY_CODE,',
'       NDY_LAST_UPDATE,',
'       FNAME_AR,',
'       LNAME_AR,',
'       CHILDREN_COUNT,',
'       CHILDREN_SCHOLARIZED_COUNT',
'  from N3_F_NEEDY'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80710189488742536)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_link=>'f?p=#APP_ID#:2003:#APP_SESSION#:::RP:P2003_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80710587521742536)
,p_query_column_id=>2
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Ndy Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80710901298742536)
,p_query_column_id=>3
,p_column_alias=>'NDY_LAST_UPDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Ndy Last Update'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80711355972742537)
,p_query_column_id=>4
,p_column_alias=>'FNAME_AR'
,p_column_display_sequence=>4
,p_column_heading=>'Fname Ar'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80711644702742637)
,p_query_column_id=>5
,p_column_alias=>'LNAME_AR'
,p_column_display_sequence=>5
,p_column_heading=>'Lname Ar'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80712088981742637)
,p_query_column_id=>6
,p_column_alias=>'CHILDREN_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Children Count'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(80712431470742637)
,p_query_column_id=>7
,p_column_alias=>'CHILDREN_SCHOLARIZED_COUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Children Scholarized Count'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80748987859742710)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80715293790742641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80709175396742437)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2003:&SESSION.::&DEBUG.:2003'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(80715706964742642)
,p_computation_sequence=>1
,p_computation_item=>'P2003_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_02100
begin
wwv_flow_api.create_page(
 p_id=>2100
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'قائمة الايتام'
,p_page_mode=>'NORMAL'
,p_step_title=>'قائمة الايتام'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521123302'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80472979041785086)
,p_plug_name=>'قائمة الايتام'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"NDY_CODE",',
'"NDY_LAST_UPDATE",',
'"FNAME_AR",',
'"LNAME_AR",',
'"FNAME_FR",',
'"LNAME_FR",',
'"BIRTH_ON",',
'"BIRTH_IN",',
'"BIRTH_YEAR",',
'"DIE_ON",',
'"DIE_DESC",',
'"SEX",',
'"CIVIL_STATE",',
'"SALARY_LVL",',
'"JOB_DESC",',
'"HEALTH_LVL",',
'"HEALTH_DESC",',
'"SPOUSE_HEALTH_LVL",',
'"SPOUSE_HEALTH_DESC",',
'"CHILDREN_COUNT",',
'"CHILDREN_SCHOLARIZED_COUNT",',
'"IS_ORPHANE",',
'"IS_POOR",',
'"IS_HANDICAPPED",',
'"HANDICAP_DESC",',
'"ORPH_GUARDIAN_KINSHIP",',
'"ORPH_GUARDIAN_NDY_CODE",',
'"ORPH_ORPHANE_TYPE",',
'"ORPH_ORPHANE_FROM"',
'from "#OWNER#"."N3_F_NEEDY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(80473392757785087)
,p_name=>'قائمة الايتام'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2102:&APP_SESSION.::::P2102_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'ZAKI'
,p_internal_uid=>80473392757785087
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80473463862785093)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80473812311785093)
,p_db_column_name=>'NDY_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ndy Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80474235439785094)
,p_db_column_name=>'NDY_LAST_UPDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ndy Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80474622149785094)
,p_db_column_name=>'FNAME_AR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fname Ar'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80475085652785094)
,p_db_column_name=>'LNAME_AR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Lname Ar'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80475463414785095)
,p_db_column_name=>'FNAME_FR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fname Fr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80475865832785095)
,p_db_column_name=>'LNAME_FR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Lname Fr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80476265734785095)
,p_db_column_name=>'BIRTH_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Birth On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80476692359785095)
,p_db_column_name=>'BIRTH_IN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Birth In'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80477052904785096)
,p_db_column_name=>'BIRTH_YEAR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Birth Year'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80477478082785096)
,p_db_column_name=>'DIE_ON'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Die On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80477858619785096)
,p_db_column_name=>'DIE_DESC'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Die Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80478218008785097)
,p_db_column_name=>'SEX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sex'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80478616345785097)
,p_db_column_name=>'CIVIL_STATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Civil State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80479080172785097)
,p_db_column_name=>'SALARY_LVL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Salary Lvl'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80479482220785097)
,p_db_column_name=>'JOB_DESC'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Job Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80479876906785100)
,p_db_column_name=>'HEALTH_LVL'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Health Lvl'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80480233768785100)
,p_db_column_name=>'HEALTH_DESC'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Health Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80480680500785101)
,p_db_column_name=>'SPOUSE_HEALTH_LVL'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Spouse Health Lvl'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80481023786785101)
,p_db_column_name=>'SPOUSE_HEALTH_DESC'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Spouse Health Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80481432158785101)
,p_db_column_name=>'CHILDREN_COUNT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Children Count'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80481889656785101)
,p_db_column_name=>'CHILDREN_SCHOLARIZED_COUNT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Children Scholarized Count'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80482219050785103)
,p_db_column_name=>'IS_ORPHANE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Is Orphane'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80482609427785103)
,p_db_column_name=>'IS_POOR'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Is Poor'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80483095276785103)
,p_db_column_name=>'IS_HANDICAPPED'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Is Handicapped'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80483464137785104)
,p_db_column_name=>'HANDICAP_DESC'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Handicap Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80483879465785104)
,p_db_column_name=>'ORPH_GUARDIAN_KINSHIP'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Orph Guardian Kinship'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80484247910785104)
,p_db_column_name=>'ORPH_GUARDIAN_NDY_CODE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Orph Guardian Ndy Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80484673139785104)
,p_db_column_name=>'ORPH_ORPHANE_TYPE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Orph Orphane Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(80485030548785105)
,p_db_column_name=>'ORPH_ORPHANE_FROM'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Orph Orphane From'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(80487305279791018)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'804874'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:NDY_CODE:NDY_LAST_UPDATE:FNAME_AR:LNAME_AR:FNAME_FR:LNAME_FR:BIRTH_ON:BIRTH_IN:BIRTH_YEAR:DIE_ON:DIE_DESC:SEX:CIVIL_STATE:SALARY_LVL:JOB_DESC:HEALTH_LVL:HEALTH_DESC:SPOUSE_HEALTH_LVL:SPOUSE_HEALTH_DESC:CHILDREN_COUNT:CHILDREN_SCHOLARIZED_COUNT:IS_'
||'ORPHANE:IS_POOR:IS_HANDICAPPED:HANDICAP_DESC:ORPH_GUARDIAN_KINSHIP:ORPH_GUARDIAN_NDY_CODE:ORPH_ORPHANE_TYPE:ORPH_ORPHANE_FROM'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80486055315785106)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80485406758785105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80472979041785086)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2102:&SESSION.::&DEBUG.:2102'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_02102
begin
wwv_flow_api.create_page(
 p_id=>2102
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Form on N3_F_NEEDY'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on N3_F_NEEDY'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(48018685500632828)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150521213313'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795446695877606)
,p_plug_name=>'R_ORPHANE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795501681877607)
,p_plug_name=>'R_POOR'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795640806877608)
,p_plug_name=>'R_HANDICAP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795737379877609)
,p_plug_name=>'R_CIVIL'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795863635877610)
,p_plug_name=>'R_Spouse'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75795921627877611)
,p_plug_name=>'Selector'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75796170101877613)
,p_plug_name=>'R_children'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80456308743785053)
,p_plug_name=>'تسجيل'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80486606692785117)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80457037770785055)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80486606692785117)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2100:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80456907644785054)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(80486606692785117)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2102_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80456801419785054)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(80486606692785117)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P2102_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(80456732519785054)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(80486606692785117)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P2102_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(80458682383785057)
,p_branch_action=>'f?p=&APP_ID.:2100:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80459064315785060)
,p_name=>'P2102_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80459436500785067)
,p_name=>'P2102_NDY_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Code'
,p_source=>'NDY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80459827330785070)
,p_name=>'P2102_NDY_LAST_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Last Update'
,p_source=>'NDY_LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80460295857785072)
,p_name=>'P2102_FNAME_AR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fname Ar'
,p_source=>'FNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80460609016785072)
,p_name=>'P2102_LNAME_AR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lname Ar'
,p_source=>'LNAME_AR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80461078911785072)
,p_name=>'P2102_FNAME_FR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fname Fr'
,p_source=>'FNAME_FR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80461475840785073)
,p_name=>'P2102_LNAME_FR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lname Fr'
,p_source=>'LNAME_FR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80461839900785073)
,p_name=>'P2102_BIRTH_ON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth On'
,p_source=>'BIRTH_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80462241279785073)
,p_name=>'P2102_BIRTH_IN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth In'
,p_source=>'BIRTH_IN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80462639561785073)
,p_name=>'P2102_BIRTH_YEAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Year'
,p_source=>'BIRTH_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80463022649785074)
,p_name=>'P2102_DIE_ON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Die On'
,p_source=>'DIE_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>12
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80463422489785074)
,p_name=>'P2102_DIE_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Die Desc'
,p_source=>'DIE_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80463884497785074)
,p_name=>'P2102_SEX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_item_default=>'F'
,p_prompt=>'Sex'
,p_source=>'SEX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_SEX'
,p_lov=>'.'||wwv_flow_api.id(80555632276130544)||'.'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80464225674785074)
,p_name=>'P2102_CIVIL_STATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(75795737379877609)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Civil State'
,p_source=>'CIVIL_STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80464635520785074)
,p_name=>'P2102_SALARY_LVL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(75795501681877607)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary Lvl'
,p_source=>'SALARY_LVL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  LVL ||  '' '' || LVL_DESC || '' ('' || SALARY_START || ''-'' || SALARY_END || '')'' d,',
'lvl r FROM N3_T_SALARY_LVL '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80465087727785075)
,p_name=>'P2102_JOB_DESC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(75795501681877607)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Job Desc'
,p_source=>'JOB_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>66
,p_cMaxlength=>20
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80465480593785075)
,p_name=>'P2102_HEALTH_LVL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75795640806877608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Health Lvl'
,p_source=>'HEALTH_LVL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT  LVL || '' '' || LVL_DESC d, lvl r FROM N3_T_HEALTH_LVL '
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80465819842785075)
,p_name=>'P2102_HEALTH_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75795640806877608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Health Desc'
,p_source=>'HEALTH_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>66
,p_cMaxlength=>20
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80466276367785075)
,p_name=>'P2102_SPOUSE_HEALTH_LVL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(75795863635877610)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spouse Health Lvl'
,p_source=>'SPOUSE_HEALTH_LVL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT  LVL || '' ''|| LVL_DESC d, lvl r FROM N3_T_HEALTH_LVL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80466676979785075)
,p_name=>'P2102_SPOUSE_HEALTH_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(75795863635877610)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Spouse Health Desc'
,p_source=>'SPOUSE_HEALTH_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>66
,p_cMaxlength=>20
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80467049530785075)
,p_name=>'P2102_CHILDREN_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75796170101877613)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Children Count'
,p_source=>'CHILDREN_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80467479764785076)
,p_name=>'P2102_CHILDREN_SCHOLARIZED_COU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75796170101877613)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Children Scholarized Count'
,p_source=>'CHILDREN_SCHOLARIZED_COUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80467824474785077)
,p_name=>'P2102_IS_ORPHANE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_ORPHANE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:يتيم;1'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(48052799730633266)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80468239657785077)
,p_name=>'P2102_IS_POOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_POOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:فقير;1'
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052799730633266)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80468660351785077)
,p_name=>'P2102_IS_HANDICAPPED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(80456308743785053)
,p_use_cache_before_default=>'NO'
,p_source=>'IS_HANDICAPPED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:ذي احتياج خاص;1'
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48052799730633266)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80469037846785077)
,p_name=>'P2102_HANDICAP_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75795640806877608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Handicap Desc'
,p_source=>'HANDICAP_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>66
,p_cMaxlength=>200
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80469426291785077)
,p_name=>'P2102_ORPH_GUARDIAN_KINSHIP'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(75795446695877606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orph Guardian Kinship'
,p_source=>'ORPH_GUARDIAN_KINSHIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80469876713785078)
,p_name=>'P2102_ORPH_GUARDIAN_NDY_CODE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(75795446695877606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orph Guardian Ndy Code'
,p_source=>'ORPH_GUARDIAN_NDY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80470214799785078)
,p_name=>'P2102_ORPH_ORPHANE_TYPE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(75795446695877606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orph Orphane Type'
,p_source=>'ORPH_ORPHANE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80470640768785078)
,p_name=>'P2102_ORPH_ORPHANE_FROM'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(75795446695877606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orph Orphane From'
,p_source=>'ORPH_ORPHANE_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80471482874785079)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2102_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80471865029785080)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_F_NEEDY'
,p_attribute_02=>'N3_F_NEEDY'
,p_attribute_03=>'P2102_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(80472292220785081)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(80456907644785054)
);
end;
/
prompt --application/pages/page_03010
begin
wwv_flow_api.create_page(
 p_id=>3010
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'برامج المنح'
,p_page_mode=>'NORMAL'
,p_step_title=>'برامج المنح'
,p_step_sub_title=>'برامج المنح'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(48116650427611301)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150506163918'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48116463885611171)
,p_plug_name=>'برامج المنح'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select id, PLAN_CODE,',
'       PLAN_DESC,',
'       PLAN_DATE_START,',
'       PLAN_END_DATE,',
'       PLAN_TYPE,',
'       PLAN_FREQ,',
'       PLAN_ALMS_VALUE',
'  from N3_ALMS_PLAN'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48153950529639301)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:RP,3011:P3011_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ZAKI'
,p_internal_uid=>48153950529639301
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154061552639302)
,p_db_column_name=>'PLAN_CODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Plan code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154176908639303)
,p_db_column_name=>'PLAN_DESC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plan desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154244726639304)
,p_db_column_name=>'PLAN_DATE_START'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Plan date start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154313384639305)
,p_db_column_name=>'PLAN_END_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plan end date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154476176639306)
,p_db_column_name=>'PLAN_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Plan type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154592651639307)
,p_db_column_name=>'PLAN_FREQ'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Plan freq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154686652639308)
,p_db_column_name=>'PLAN_ALMS_VALUE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Plan alms value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48154702502639309)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48164881386647474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'481649'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PLAN_CODE:PLAN_DESC:PLAN_DATE_START:PLAN_END_DATE:PLAN_TYPE:PLAN_FREQ:PLAN_ALMS_VALUE:ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48144641077612674)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48123033311612107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48116463885611171)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:3011'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(48123539110612163)
,p_computation_sequence=>1
,p_computation_item=>'P3011_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_03011
begin
wwv_flow_api.create_page(
 p_id=>3011
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'المستفيدين'
,p_page_mode=>'NORMAL'
,p_step_title=>'المستفيدين'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(48116650427611301)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(48018685500632828)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150508042254'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(48116560448611171)
,p_name=>'N3_ALMS_PLAN_NDY Detail'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select PLAN_ID,',
'       NDY_CODE,',
'       DATE_JOINED,',
'       DATE_EXCLUDED,',
'       COLUMN3',
'  from N3_ALMS_PLAN_NDY',
' where N3_ALMS_PLAN_NDY.PLAN_ID = :P3011_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P3011_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3011_PLAN_ID'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48132143753612467)
,p_query_column_id=>1
,p_column_alias=>'PLAN_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Plan Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48132536218612467)
,p_query_column_id=>2
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Ndy Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48132902323612467)
,p_query_column_id=>3
,p_column_alias=>'DATE_JOINED'
,p_column_display_sequence=>3
,p_column_heading=>'Date Joined'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48133309361612468)
,p_query_column_id=>4
,p_column_alias=>'DATE_EXCLUDED'
,p_column_display_sequence=>4
,p_column_heading=>'Date Excluded'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48133735734612468)
,p_query_column_id=>5
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>5
,p_column_heading=>'Column3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48124418248612197)
,p_plug_name=>'المستفيدين'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48145344694612724)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48124973363612198)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48124418248612197)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48125191350612198)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48124418248612197)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3010:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48135869067612567)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48116560448611171)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3012:&SESSION.::&DEBUG.:3012:P3012_PLAN_ID:&P3011_PLAN_ID.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48124828624612198)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(48124418248612197)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3011_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48125094253612198)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48124418248612197)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3011_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(48126707049612213)
,p_branch_action=>'f?p=&APP_ID.:3010:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48127198145612261)
,p_name=>'P3011_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48127422451612408)
,p_name=>'P3011_PLAN_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Code'
,p_source=>'PLAN_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48127741554612408)
,p_name=>'P3011_PLAN_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Desc'
,p_source=>'PLAN_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48128187207612409)
,p_name=>'P3011_PLAN_DATE_START'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Date Start'
,p_source=>'PLAN_DATE_START'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48128574563612428)
,p_name=>'P3011_PLAN_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan End Date'
,p_source=>'PLAN_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48128962050612429)
,p_name=>'P3011_PLAN_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Type'
,p_source=>'PLAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48129328758612429)
,p_name=>'P3011_PLAN_FREQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Freq'
,p_source=>'PLAN_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48129626848612440)
,p_name=>'P3011_PLAN_ALMS_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48124418248612197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Alms Value'
,p_source=>'PLAN_ALMS_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(48136308095612567)
,p_computation_sequence=>1
,p_computation_item=>'P3012_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48130479121612441)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3011_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48130849805612461)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3011_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48131231861612462)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48125094253612198)
);
end;
/
prompt --application/pages/page_03012
begin
wwv_flow_api.create_page(
 p_id=>3012
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'تغيير المنح'
,p_page_mode=>'NORMAL'
,p_step_title=>'تغيير المنح'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_group_id=>wwv_flow_api.id(48116650427611301)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150506163327'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48137352384612576)
,p_plug_name=>'تغيير المنح'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48145970508612725)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48137889604612577)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48137352384612576)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48138039995612577)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48137352384612576)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48137732021612577)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(48137352384612576)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3012_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48137986155612577)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48137352384612576)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3012_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(48139663268612591)
,p_branch_action=>'f?p=&APP_ID.:3011:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48140067706612591)
,p_name=>'P3012_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48140402172612592)
,p_name=>'P3012_PLAN_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Id'
,p_source=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_cattributes_element=>'class="fielddatabold"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'right'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48140822348612592)
,p_name=>'P3012_NDY_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ndy Code'
,p_source=>'NDY_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48141292325612592)
,p_name=>'P3012_DATE_JOINED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Joined'
,p_source=>'DATE_JOINED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48141688981612651)
,p_name=>'P3012_DATE_EXCLUDED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Excluded'
,p_source=>'DATE_EXCLUDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48141969760612652)
,p_name=>'P3012_COLUMN3'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48137352384612576)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column3'
,p_source=>'COLUMN3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48142727174612652)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_ALMS_PLAN_NDY'
,p_attribute_02=>'N3_ALMS_PLAN_NDY'
,p_attribute_03=>'P3012_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48143131664612652)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_ALMS_PLAN_NDY'
,p_attribute_02=>'N3_ALMS_PLAN_NDY'
,p_attribute_03=>'P3012_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48143577776612652)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48137986155612577)
);
end;
/
prompt --application/pages/page_03013
begin
wwv_flow_api.create_page(
 p_id=>3013
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Report 1 alms'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1 alms'
,p_step_sub_title=>'Report 1 alms'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150512165238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75351744991789279)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75352397187789285)
,p_plug_name=>'Report 1 alms'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select id, PLAN_CODE,',
'       PLAN_DESC,',
'       PLAN_DATE_START,',
'       PLAN_END_DATE,',
'       PLAN_TYPE,',
'       PLAN_FREQ,',
'       PLAN_ALMS_VALUE',
'  from N3_ALMS_PLAN'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75352426112789285)
,p_name=>'Report 1 alms'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3015:&SESSION.::&DEBUG.:RP,3015:P3015_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'ZAKI'
,p_internal_uid=>75352426112789285
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75352823573789359)
,p_db_column_name=>'PLAN_CODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Plan Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75353249773789368)
,p_db_column_name=>'PLAN_DESC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Plan Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75353620289789368)
,p_db_column_name=>'PLAN_DATE_START'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Plan Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75354042593789368)
,p_db_column_name=>'PLAN_END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Plan End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75354481940789369)
,p_db_column_name=>'PLAN_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Plan Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75354800094789369)
,p_db_column_name=>'PLAN_FREQ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Plan Freq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75355211317789369)
,p_db_column_name=>'PLAN_ALMS_VALUE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Plan Alms Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75364572270963501)
,p_db_column_name=>'ID'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75355680949790885)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'753557'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PLAN_CODE:PLAN_DESC:PLAN_DATE_START:PLAN_END_DATE:PLAN_TYPE:PLAN_FREQ:PLAN_ALMS_VALUE:ID'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_03014
begin
wwv_flow_api.create_page(
 p_id=>3014
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'ALMS_PLAN_EDIT'
,p_page_mode=>'NORMAL'
,p_step_title=>'برنامج المنح'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150512182444'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75356538760956834)
,p_plug_name=>'Form on N3_ALMS_PLAN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75363921452956865)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75357069115956835)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75356538760956834)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3014_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75357228306956836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75356538760956834)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3015:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75356916942956835)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75356538760956834)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3014_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75357145104956836)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75356538760956834)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3014_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75358833475956841)
,p_branch_action=>'f?p=&APP_ID.:3014:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75359258046956846)
,p_name=>'P3014_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75359574713956859)
,p_name=>'P3014_PLAN_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Code'
,p_source=>'PLAN_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75359961791956859)
,p_name=>'P3014_PLAN_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Desc'
,p_source=>'PLAN_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75360388094956860)
,p_name=>'P3014_PLAN_DATE_START'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Date Start'
,p_source=>'PLAN_DATE_START'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75360749010956860)
,p_name=>'P3014_PLAN_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan End Date'
,p_source=>'PLAN_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75361133233956861)
,p_name=>'P3014_PLAN_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Type'
,p_source=>'PLAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75361505798956861)
,p_name=>'P3014_PLAN_FREQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Freq'
,p_source=>'PLAN_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75361958542956861)
,p_name=>'P3014_PLAN_ALMS_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(75356538760956834)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Alms Value'
,p_source=>'PLAN_ALMS_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75362722060956862)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3014_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75363146905956864)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3014_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75363594318956864)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75357145104956836)
);
end;
/
prompt --application/pages/page_03015
begin
wwv_flow_api.create_page(
 p_id=>3015
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(48018685500632828)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150512182815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75364646232963502)
,p_plug_name=>'hiddenItem'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48024404941632927)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75364945794963505)
,p_plug_name=>'alms select'
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75365089051963506)
,p_name=>'plan ndy'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID,',
'  PLAN_ID,',
'  NDY_CODE,',
'  DATE_JOINED,',
'  DATE_EXCLUDED,',
'  COLUMN3',
'FROM N3_ALMS_PLAN_NDY',
'where plan_id = :P3015_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365117820963507)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365232689963508)
,p_query_column_id=>2
,p_column_alias=>'PLAN_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365377332963509)
,p_query_column_id=>3
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Ndy code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365434803963510)
,p_query_column_id=>4
,p_column_alias=>'DATE_JOINED'
,p_column_display_sequence=>4
,p_column_heading=>'Date joined'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365520949963511)
,p_query_column_id=>5
,p_column_alias=>'DATE_EXCLUDED'
,p_column_display_sequence=>5
,p_column_heading=>'Date excluded'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365656136963512)
,p_query_column_id=>6
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>6
,p_column_heading=>'Column3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75365726514963513)
,p_name=>'plan_terms'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID, PLAN_ID, DATE_TERM, TERM_SEQ FROM N3_ALMS_TERM ',
'where plan_id = :P3015_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365874530963514)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75365978202963515)
,p_query_column_id=>2
,p_column_alias=>'PLAN_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Plan id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75366024021963516)
,p_query_column_id=>3
,p_column_alias=>'DATE_TERM'
,p_column_display_sequence=>3
,p_column_heading=>'Date term'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75366184807963517)
,p_query_column_id=>4
,p_column_alias=>'TERM_SEQ'
,p_column_display_sequence=>4
,p_column_heading=>'Term seq'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(75366403070963520)
,p_plug_name=>'terms'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID, PLAN_ID, DATE_TERM, date_term -7 d, TERM_SEQ FROM N3_ALMS_TERM ',
'where plan_id = :P3015_ID'))
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_cal_id=>wwv_flow_api.id(75368091688963536)
,p_begin_at_start_of_interval=>'Y'
,p_display_as=>'M'
,p_display_type=>'COL'
,p_date_column=>'DATE_TERM'
,p_display_column=>'TERM_SEQ'
,p_start_of_week=>19721105
,p_start_time=>8
,p_end_time=>18
,p_time_format=>'24HOUR'
,p_week_start_day=>19721105
,p_week_end_day=>19721111
,p_custom_cal_days=>3
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'N'
,p_agenda_cal_days_type=>'MONTH'
,p_template_id=>wwv_flow_api.id(48053963408633449)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75371078150972605)
,p_name=>'alms plan'
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       PLAN_CODE,',
'       PLAN_DESC,',
'       PLAN_DATE_START,',
'       PLAN_END_DATE,',
'       PLAN_TYPE,',
'       PLAN_FREQ,',
'       PLAN_ALMS_VALUE',
'  from N3_ALMS_PLAN',
'where id = :P3015_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48042646955633086)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75371758497972610)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75372122036972610)
,p_query_column_id=>2
,p_column_alias=>'PLAN_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'رمز البرنامج'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75372594567972611)
,p_query_column_id=>3
,p_column_alias=>'PLAN_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'برنامج المنح'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75372972012972611)
,p_query_column_id=>4
,p_column_alias=>'PLAN_DATE_START'
,p_column_display_sequence=>4
,p_column_heading=>'تاريخ بداية البرنامج'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75373379573972611)
,p_query_column_id=>5
,p_column_alias=>'PLAN_END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Plan End Date'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75373738209972611)
,p_query_column_id=>6
,p_column_alias=>'PLAN_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Plan Type'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75374122795972612)
,p_query_column_id=>7
,p_column_alias=>'PLAN_FREQ'
,p_column_display_sequence=>7
,p_column_heading=>'Plan Freq'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75374559087972612)
,p_query_column_id=>8
,p_column_alias=>'PLAN_ALMS_VALUE'
,p_column_display_sequence=>8
,p_column_heading=>'Plan Alms Value'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75382544667972623)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75364842594963504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75382544667972623)
,p_button_name=>'edit_almsplan'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit almsplan'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3014:&SESSION.::&DEBUG.:RP,3014:P3014_ID:&P3015_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75366760381963523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75365089051963506)
,p_button_name=>'Add_ndy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'Add ndy'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75366975497963525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75365726514963513)
,p_button_name=>'Add_term'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'Add term'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75366640717963522)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75365089051963506)
,p_button_name=>'View_ndy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'View ndy'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75366845604963524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75365726514963513)
,p_button_name=>'View_terms'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(48053292229633309)
,p_button_image_alt=>'View terms'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75364785847963503)
,p_name=>'P3015_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75364646232963502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_03016
begin
wwv_flow_api.create_page(
 p_id=>3016
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'N3_ALMS_PLAN'
,p_page_mode=>'NORMAL'
,p_step_title=>'N3_ALMS_PLAN'
,p_step_sub_title=>'N3_ALMS_PLAN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150512175414'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75399943706365231)
,p_name=>'N3_ALMS_PLAN'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       PLAN_CODE,',
'       PLAN_DESC,',
'       PLAN_DATE_START,',
'       PLAN_END_DATE,',
'       PLAN_TYPE,',
'       PLAN_FREQ,',
'       PLAN_ALMS_VALUE',
'  from N3_ALMS_PLAN'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75400976638365362)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_link=>'f?p=#APP_ID#:3017:#APP_SESSION#:::RP:P3017_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75401356601365363)
,p_query_column_id=>2
,p_column_alias=>'PLAN_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Plan Code'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75401795309365363)
,p_query_column_id=>3
,p_column_alias=>'PLAN_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Plan Desc'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75402136886365365)
,p_query_column_id=>4
,p_column_alias=>'PLAN_DATE_START'
,p_column_display_sequence=>4
,p_column_heading=>'Plan Date Start'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75402511271365365)
,p_query_column_id=>5
,p_column_alias=>'PLAN_END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Plan End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75402995998365365)
,p_query_column_id=>6
,p_column_alias=>'PLAN_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Plan Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75403382218365366)
,p_query_column_id=>7
,p_column_alias=>'PLAN_FREQ'
,p_column_display_sequence=>7
,p_column_heading=>'Plan Freq'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75403795661365366)
,p_query_column_id=>8
,p_column_alias=>'PLAN_ALMS_VALUE'
,p_column_display_sequence=>8
,p_column_heading=>'Plan Alms Value'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75428511552365776)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75406842821365370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75399943706365231)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3017:&SESSION.::&DEBUG.:3017'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(75407365912365373)
,p_computation_sequence=>1
,p_computation_item=>'P3017_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_03017
begin
wwv_flow_api.create_page(
 p_id=>3017
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Master Detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'Master Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150512175414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75408010601365374)
,p_plug_name=>'Edit N3_ALMS_PLAN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75415466169365392)
,p_name=>'N3_ALMS_PLAN_NDY Detail'
,p_template=>wwv_flow_api.id(48032513334632979)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"PLAN_ID",',
'"NDY_CODE",',
'"DATE_JOINED",',
'"DATE_EXCLUDED",',
'"COLUMN3"',
'from "#OWNER#"."N3_ALMS_PLAN_NDY"',
'where "PLAN_ID" = :P3017_ID',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P3017_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3017_PLAN_ID'
,p_query_row_template=>wwv_flow_api.id(48041363471633085)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75425111792365411)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75416085719365393)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75416450627365394)
,p_query_column_id=>3
,p_column_alias=>'PLAN_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Plan Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P3017_ID'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'PLAN_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75416869752365394)
,p_query_column_id=>4
,p_column_alias=>'NDY_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Ndy Code'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'NDY_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75417292620365394)
,p_query_column_id=>5
,p_column_alias=>'DATE_JOINED'
,p_column_display_sequence=>5
,p_column_heading=>'Date Joined'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'DATE_JOINED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75417612213365395)
,p_query_column_id=>6
,p_column_alias=>'DATE_EXCLUDED'
,p_column_display_sequence=>6
,p_column_heading=>'Date Excluded'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'DATE_EXCLUDED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75418076881365395)
,p_query_column_id=>7
,p_column_alias=>'COLUMN3'
,p_column_display_sequence=>7
,p_column_heading=>'Column3'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'NOUR'
,p_ref_table_name=>'N3_ALMS_PLAN_NDY'
,p_ref_column_name=>'COLUMN3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75429033141365779)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75408594312365375)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75408010601365374)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3017_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75420587182365399)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75415466169365392)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75408759311365375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75408010601365374)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3016:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75408405154365375)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75408010601365374)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3017_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75408662386365375)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75408010601365374)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3017_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75420421339365399)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75415466169365392)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."N3_ALMS_PLAN_NDY"',
'where "PLAN_ID" = :P3017_ID'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75425590400365411)
,p_branch_action=>'f?p=&APP_ID.:3017:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(75420361464365399)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75415086008365391)
,p_branch_action=>'f?p=&APP_ID.:3016:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75410318879365377)
,p_name=>'P3017_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75410731845365386)
,p_name=>'P3017_PLAN_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Code'
,p_source=>'PLAN_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75411174820365387)
,p_name=>'P3017_PLAN_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Desc'
,p_source=>'PLAN_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75411564826365387)
,p_name=>'P3017_PLAN_DATE_START'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Date Start'
,p_source=>'PLAN_DATE_START'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75411989402365388)
,p_name=>'P3017_PLAN_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan End Date'
,p_source=>'PLAN_END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75412317025365388)
,p_name=>'P3017_PLAN_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Type'
,p_source=>'PLAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75412739916365388)
,p_name=>'P3017_PLAN_FREQ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Freq'
,p_source=>'PLAN_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75413104170365388)
,p_name=>'P3017_PLAN_ALMS_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(75408010601365374)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plan Alms Value'
,p_source=>'PLAN_ALMS_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(75421825748365400)
,p_tabular_form_region_id=>wwv_flow_api.id(75415466169365392)
,p_validation_name=>'DATE_JOINED must be a valid date'
,p_validation_sequence=>40
,p_validation=>'DATE_JOINED'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'DATE_JOINED'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(75422233770365404)
,p_tabular_form_region_id=>wwv_flow_api.id(75415466169365392)
,p_validation_name=>'DATE_EXCLUDED must be a valid date'
,p_validation_sequence=>50
,p_validation=>'DATE_EXCLUDED'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'DATE_EXCLUDED'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75413995677365390)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3017_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75414319814365390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_ALMS_PLAN'
,p_attribute_02=>'N3_ALMS_PLAN'
,p_attribute_03=>'P3017_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422566210365404)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(75415466169365392)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'N3_ALMS_PLAN_NDY'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422901854365408)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(75415466169365392)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'N3_ALMS_PLAN_NDY'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75414753706365390)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75408662386365375)
);
end;
/
prompt --application/pages/page_03200
begin
wwv_flow_api.create_page(
 p_id=>3200
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'التبرعات'
,p_page_mode=>'NORMAL'
,p_step_title=>'التبرعات'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150519030744'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75765973425864164)
,p_plug_name=>'ALMS in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"ALMS_VALUE",',
'"ALMS_DATE",',
'"GIVER_CODE",',
'"ENG_ID",',
'"FUND_ACCOUNT",',
'"COLUMN7",',
'"COLUMN8",',
'"COLUMN1"',
'from "#OWNER#"."N3_ALMS_IN" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75766325092864164)
,p_name=>'ALMS in'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3201:&SESSION.::&DEBUG.:3201:P3201_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'ZAKI'
,p_internal_uid=>75766325092864164
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766413058864212)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766731113864267)
,p_db_column_name=>'ALMS_VALUE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Alms Value'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767138388864267)
,p_db_column_name=>'ALMS_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Alms Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767527971864267)
,p_db_column_name=>'GIVER_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Giver Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767929246864267)
,p_db_column_name=>'ENG_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Eng Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75768347804864268)
,p_db_column_name=>'FUND_ACCOUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fund Account'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75768796944864268)
,p_db_column_name=>'COLUMN7'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Column7'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75769163624864268)
,p_db_column_name=>'COLUMN8'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Column8'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75769548975864270)
,p_db_column_name=>'COLUMN1'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Column1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75771749304865058)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'757718'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:ALMS_VALUE:ALMS_DATE:GIVER_CODE:ENG_ID:FUND_ACCOUNT:COLUMN7:COLUMN8:COLUMN1'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75770592155864273)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75769906883864270)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75765973425864164)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3202:&SESSION.::&DEBUG.:3202'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_03201
begin
wwv_flow_api.create_page(
 p_id=>3201
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(48018685500632828)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150514030907'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(75781618851875010)
,p_name=>'Report 1'
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       ALMS_VALUE,',
'       ALMS_DATE,',
'       GIVER_CODE,',
'       ENG_ID,',
'       FUND_ACCOUNT,',
'       COLUMN7,',
'       COLUMN8,',
'       COLUMN1',
'  from N3_ALMS_IN',
'where id = :P3201_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(48042646955633086)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75782302853875015)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75782720834875019)
,p_query_column_id=>2
,p_column_alias=>'ALMS_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Alms Value'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75783014771875019)
,p_query_column_id=>3
,p_column_alias=>'ALMS_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Alms Date'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75783415318875020)
,p_query_column_id=>4
,p_column_alias=>'GIVER_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Giver Code'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75783875925875021)
,p_query_column_id=>5
,p_column_alias=>'ENG_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Eng Id'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75784294561875021)
,p_query_column_id=>6
,p_column_alias=>'FUND_ACCOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Fund Account'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75784641722875021)
,p_query_column_id=>7
,p_column_alias=>'COLUMN7'
,p_column_display_sequence=>7
,p_column_heading=>'Column7'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75785029720875021)
,p_query_column_id=>8
,p_column_alias=>'COLUMN8'
,p_column_display_sequence=>8
,p_column_heading=>'Column8'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75785492457875021)
,p_query_column_id=>9
,p_column_alias=>'COLUMN1'
,p_column_display_sequence=>9
,p_column_heading=>'Column1'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75794353586875040)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75794956983877601)
,p_plug_name=>'hidden'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75795331522877605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75794353586875040)
,p_button_name=>'Close'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'اغلاق'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3200:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75795232966877604)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75794353586875040)
,p_button_name=>'Edit_ALMSIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit almsin'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3202:&SESSION.::&DEBUG.:RP,3202:P3202_ID:&P3201_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75795121767877603)
,p_name=>'P3201_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75794956983877601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_03202
begin
wwv_flow_api.create_page(
 p_id=>3202
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Form on N3_ALMS_IN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on N3_ALMS_IN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150519031151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75756831045864085)
,p_plug_name=>'Form on N3_ALMS_IN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75771178958864281)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75757346821864098)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75756831045864085)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3202_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75757545608864100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75756831045864085)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3201:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75757251358864098)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75756831045864085)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3202_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75757439528864098)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75756831045864085)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3202_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75759060644864108)
,p_branch_name=>'Go To Page 3200'
,p_branch_action=>'f?p=&APP_ID.:3201:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75759448822864110)
,p_name=>'P3202_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75759895250864127)
,p_name=>'P3202_ALMS_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alms Value'
,p_source=>'ALMS_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75760267130864138)
,p_name=>'P3202_ALMS_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alms Date'
,p_source=>'ALMS_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75760645715864140)
,p_name=>'P3202_GIVER_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Giver Code'
,p_source=>'GIVER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT   GV_CODE || '' '' ||   GV_LNAME d,',
'gv_code r',
'FROM N3_F_GIVERS'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-مجهول-'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75761078804864142)
,p_name=>'P3202_ENG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Eng Id'
,p_source=>'ENG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75761409886864142)
,p_name=>'P3202_FUND_ACCOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fund Account'
,p_source=>'FUND_ACCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ACCOUNT d,account r',
'FROM N3_F_ACCOUNTS'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75761820029864142)
,p_name=>'P3202_COLUMN7'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column7'
,p_source=>'COLUMN7'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75762299563864143)
,p_name=>'P3202_COLUMN8'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column8'
,p_source=>'COLUMN8'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75762632322864143)
,p_name=>'P3202_COLUMN1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(75756831045864085)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column1'
,p_source=>'COLUMN1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75763486813864146)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_ALMS_IN'
,p_attribute_02=>'N3_ALMS_IN'
,p_attribute_03=>'P3202_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75763865930864150)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_ALMS_IN'
,p_attribute_02=>'N3_ALMS_IN'
,p_attribute_03=>'P3202_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75764253617864150)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75757439528864098)
);
end;
/
prompt --application/pages/page_03300
begin
wwv_flow_api.create_page(
 p_id=>3300
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'الصناديق'
,p_page_mode=>'NORMAL'
,p_step_title=>'الصناديق'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150518163036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76301758781454771)
,p_plug_name=>'Report funds'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"FUND_ACCOUNT",',
'"FUND_VALUE"',
'from "#OWNER#"."N3_F_FUNDS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(76302115396454771)
,p_name=>'Report funds'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3301:&APP_SESSION.::::P3301_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'ZAKI'
,p_internal_uid=>76302115396454771
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76302280699454774)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76302627516454778)
,p_db_column_name=>'FUND_ACCOUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fund Account'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76303073930454778)
,p_db_column_name=>'FUND_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fund Value'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76315248242484659)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'763153'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:FUND_ACCOUNT:FUND_VALUE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76304096622454780)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76303447992454779)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76301758781454771)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3301:&SESSION.::&DEBUG.:3301'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_03301
begin
wwv_flow_api.create_page(
 p_id=>3301
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Form on N3_F_FUNDS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on N3_F_FUNDS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150518162817'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76294390192454737)
,p_plug_name=>'Form on N3_F_FUNDS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76304636639454781)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76294830392454737)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(76294390192454737)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76295066164454737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76294390192454737)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3300:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76294716585454737)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(76294390192454737)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3301_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76294990771454737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76294390192454737)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(76296610875454739)
,p_branch_action=>'f?p=&APP_ID.:3300:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76297061833454740)
,p_name=>'P3301_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76294390192454737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76297496536454748)
,p_name=>'P3301_FUND_ACCOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76294390192454737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fund Account'
,p_source=>'FUND_ACCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'  ACCOUNT d, account r',
'FROM N3_F_ACCOUNTS'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76297880074454749)
,p_name=>'P3301_FUND_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76294390192454737)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fund Value'
,p_source=>'FUND_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76299202789454751)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_F_FUNDS'
,p_attribute_02=>'N3_F_FUNDS'
,p_attribute_03=>'P3301_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76299621549454751)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_F_FUNDS'
,p_attribute_02=>'N3_F_FUNDS'
,p_attribute_03=>'P3301_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76300015880454751)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(76294990771454737)
);
end;
/
prompt --application/pages/page_06000
begin
wwv_flow_api.create_page(
 p_id=>6000
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'العتاد'
,p_page_mode=>'NORMAL'
,p_step_title=>'العتاد'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150514033123'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75831282276208524)
,p_plug_name=>'العتاد'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48032091835632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"EQ_CODE",',
'"EQ_TYPE",',
'"EQ_DESC"',
'from "#OWNER#"."N3_F_EQUIPMENT" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75831605969208525)
,p_name=>'العتاد'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6002:&APP_SESSION.::::P6002_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'ZAKI'
,p_internal_uid=>75831605969208525
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75831738726208536)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75832180361208542)
,p_db_column_name=>'EQ_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Eq Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75832597084208542)
,p_db_column_name=>'EQ_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Eq Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75832978332208542)
,p_db_column_name=>'EQ_DESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Eq Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75835139253210351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'758352'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:EQ_CODE:EQ_TYPE:EQ_DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75833919729208546)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75833338918208542)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75831282276208524)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6002:&SESSION.::&DEBUG.:6002'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_06002
begin
wwv_flow_api.create_page(
 p_id=>6002
,p_user_interface_id=>wwv_flow_api.id(48058538667634046)
,p_name=>'Form on N3_F_EQUIPMENT'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on N3_F_EQUIPMENT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ZAKI'
,p_last_upd_yyyymmddhh24miss=>'20150514032922'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75824075496208467)
,p_plug_name=>'Form on N3_F_EQUIPMENT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48032513334632979)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75834543689208548)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48035811601632983)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48059833609634930)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48053852706633353)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75824560090208468)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75824075496208467)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6002_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75824728674208468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(75824075496208467)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6000:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75824408214208468)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75824075496208467)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6002_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75824645136208468)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(75824075496208467)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48053369342633320)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6002_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(75826340600208472)
,p_branch_action=>'f?p=&APP_ID.:6000:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75826727089208475)
,p_name=>'P6002_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75824075496208467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75827144693208483)
,p_name=>'P6002_EQ_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75824075496208467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Eq Code'
,p_source=>'EQ_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75827504110208484)
,p_name=>'P6002_EQ_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75824075496208467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Eq Type'
,p_source=>'EQ_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75827986705208485)
,p_name=>'P6002_EQ_DESC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75824075496208467)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Eq Desc'
,p_source=>'EQ_DESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48052892973633300)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75828720139208490)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from N3_F_EQUIPMENT'
,p_attribute_02=>'N3_F_EQUIPMENT'
,p_attribute_03=>'P6002_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75829128601208496)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of N3_F_EQUIPMENT'
,p_attribute_02=>'N3_F_EQUIPMENT'
,p_attribute_03=>'P6002_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75829578021208496)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75824645136208468)
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
