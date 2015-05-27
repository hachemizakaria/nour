--------------------------------------------------------
--  File created - Wednesday-May-27-2015   
--------------------------------------------------------
DROP TABLE "NOUR"."ALMS_PLAN" cascade constraints;
DROP TABLE "NOUR"."ALMS_PLAN_NDY" cascade constraints;
DROP TABLE "NOUR"."ALMS_TERM" cascade constraints;
DROP TABLE "NOUR"."ALMS_TERM_NDY" cascade constraints;
DROP TABLE "NOUR"."APEX$TEAM_DEV_FILES" cascade constraints;
DROP TABLE "NOUR"."F_P_FAMILY" cascade constraints;
DROP TABLE "NOUR"."F_P_FAMILY_GUARDIAN" cascade constraints;
DROP TABLE "NOUR"."F_P_HANDICAPPED" cascade constraints;
DROP TABLE "NOUR"."F_P_NEEDS" cascade constraints;
DROP TABLE "NOUR"."F_P_ORPHANE" cascade constraints;
DROP TABLE "NOUR"."F_P_PERSON" cascade constraints;
DROP TABLE "NOUR"."F_P_PUPIL" cascade constraints;
DROP TABLE "NOUR"."L_ALMS_IN" cascade constraints;
DROP TABLE "NOUR"."L_ALMS_OUT" cascade constraints;
DROP TABLE "NOUR"."L_F_BORROW" cascade constraints;
DROP TABLE "NOUR"."L_F_CONTACT" cascade constraints;
DROP TABLE "NOUR"."L_F_EQUIPMENTS" cascade constraints;
DROP TABLE "NOUR"."L_F_GIFTS" cascade constraints;
DROP TABLE "NOUR"."L_F_GIFTS_DONATION" cascade constraints;
DROP TABLE "NOUR"."L_F_GIVERS" cascade constraints;
DROP TABLE "NOUR"."L_F_INSCRIBED" cascade constraints;
DROP TABLE "NOUR"."L_F_MEMBERS" cascade constraints;
DROP TABLE "NOUR"."L_F_TRANSACTIONS" cascade constraints;
DROP TABLE "NOUR"."L_GIVERS_ENGMT" cascade constraints;
DROP TABLE "NOUR"."L_T_ALMS" cascade constraints;
DROP TABLE "NOUR"."L_T_EQUIPMENT" cascade constraints;
DROP TABLE "NOUR"."L_T_JOBS" cascade constraints;
DROP TABLE "NOUR"."L_T_SECTIONS" cascade constraints;
DROP TABLE "NOUR"."L_T_ZONES" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_ENGMT" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_IN" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_OUT" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_PLAN" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_PLAN_NDY" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_TERM" cascade constraints;
DROP TABLE "NOUR"."N3_ALMS_TERM_NDY" cascade constraints;
DROP TABLE "NOUR"."N3_F_ACCOUNTS" cascade constraints;
DROP TABLE "NOUR"."N3_F_EQUIPMENT" cascade constraints;
DROP TABLE "NOUR"."N3_F_FAMILY" cascade constraints;
DROP TABLE "NOUR"."N3_F_FUNDS" cascade constraints;
DROP TABLE "NOUR"."N3_F_GIVERS" cascade constraints;
DROP TABLE "NOUR"."N3_F_NEEDY" cascade constraints;
DROP TABLE "NOUR"."N3_F_NEEDY_NEEDS" cascade constraints;
DROP TABLE "NOUR"."N3_F_ORPHANE" cascade constraints;
DROP TABLE "NOUR"."N3_GIFTS" cascade constraints;
DROP TABLE "NOUR"."N3_GIFTS_IN" cascade constraints;
DROP TABLE "NOUR"."N3_NEEDY_SCHOOL" cascade constraints;
DROP TABLE "NOUR"."N3_T_ALMS" cascade constraints;
DROP TABLE "NOUR"."N3_T_EQUIPMENT" cascade constraints;
DROP TABLE "NOUR"."N3_T_HEALTH_LVL" cascade constraints;
DROP TABLE "NOUR"."N3_T_NEEDS" cascade constraints;
DROP TABLE "NOUR"."N3_T_SALARY_LVL" cascade constraints;
DROP TABLE "NOUR"."N3_T_SCHOOLS" cascade constraints;
DROP TABLE "NOUR"."N3_T_SCORING_LVL" cascade constraints;
DROP FUNCTION "NOUR"."GEN_ID";
--------------------------------------------------------
--  DDL for Table ALMS_PLAN
--------------------------------------------------------

  CREATE TABLE "NOUR"."ALMS_PLAN" 
   (	"ID" NUMBER, 
	"PLAN_CODE" VARCHAR2(20 BYTE), 
	"PLAN_DESC" VARCHAR2(200 BYTE), 
	"PLAN_DATE_START" DATE, 
	"PLAN_END_DATE" DATE, 
	"PLAN_TYPE" VARCHAR2(20 BYTE), 
	"PLAN_FREQ" NUMBER, 
	"PLAN_ALMS_VALUE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ALMS_PLAN_NDY
--------------------------------------------------------

  CREATE TABLE "NOUR"."ALMS_PLAN_NDY" 
   (	"ID" NUMBER, 
	"PLAN_ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"DATE_JOINED" DATE, 
	"DATE_EXCLUDED" DATE, 
	"COLUMN3" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ALMS_TERM
--------------------------------------------------------

  CREATE TABLE "NOUR"."ALMS_TERM" 
   (	"ID" NUMBER, 
	"PLAN_ID" NUMBER, 
	"DATE_TERM" DATE, 
	"TERM_SEQ" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ALMS_TERM_NDY
--------------------------------------------------------

  CREATE TABLE "NOUR"."ALMS_TERM_NDY" 
   (	"ID" NUMBER, 
	"TERM_ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"ALMS_VALUE" NUMBER, 
	"RECEIVED_BY" VARCHAR2(20 BYTE), 
	"RECEIVED_ON" DATE, 
	"RECEIVED_AS" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table APEX$TEAM_DEV_FILES
--------------------------------------------------------

  CREATE TABLE "NOUR"."APEX$TEAM_DEV_FILES" 
   (	"ID" NUMBER, 
	"ROW_VERSION_NUMBER" NUMBER, 
	"COMPONENT_ID" NUMBER, 
	"COMPONENT_TYPE" VARCHAR2(30 BYTE), 
	"FILENAME" VARCHAR2(4000 BYTE), 
	"FILE_MIMETYPE" VARCHAR2(512 BYTE), 
	"FILE_CHARSET" VARCHAR2(512 BYTE), 
	"FILE_BLOB" BLOB, 
	"FILE_COMMENTS" VARCHAR2(4000 BYTE), 
	"TAGS" VARCHAR2(4000 BYTE), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"UPDATED_BY" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_FAMILY
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_FAMILY" 
   (	"ID" NUMBER, 
	"FAMILY_CODE" VARCHAR2(20 BYTE), 
	"FAMILY_NAME" VARCHAR2(20 BYTE), 
	"FAMILY_SIZE" VARCHAR2(20 BYTE), 
	"GUARDIAN_ID" NUMBER, 
	"HOME_TYPE" VARCHAR2(20 BYTE), 
	"HOME_STATE" VARCHAR2(20 BYTE), 
	"HOME_OWN" VARCHAR2(20 BYTE), 
	"HOME_ROOM" VARCHAR2(20 BYTE), 
	"SOCIAL_STATE" VARCHAR2(20 BYTE), 
	"SOCIAL_DESC" VARCHAR2(20 BYTE), 
	"SALARY_TYPE" VARCHAR2(20 BYTE), 
	"SALARY_BY_MONTH" VARCHAR2(20 BYTE), 
	"SALARY_DESC" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_FAMILY_GUARDIAN
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_FAMILY_GUARDIAN" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"GRD_JOB" VARCHAR2(20 BYTE), 
	"GRD_SALARY" VARCHAR2(20 BYTE), 
	"GRD_HEALTH" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_HANDICAPPED
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_HANDICAPPED" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"HD_CODE" VARCHAR2(20 BYTE), 
	"HNDCP_PCT" NUMBER, 
	"HNDCP_TYPE" VARCHAR2(20 BYTE), 
	"HNDCP_DESC" VARCHAR2(20 BYTE), 
	"HNDCP_FROM" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_NEEDS
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_NEEDS" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"ND_INSCRIBED_ON" DATE, 
	"ND_INSCRIBED_BY" VARCHAR2(20 BYTE), 
	"SIZE_CHOES" VARCHAR2(20 BYTE), 
	"SIZE_COAT" VARCHAR2(20 BYTE), 
	"SIZE_PANTS" VARCHAR2(20 BYTE), 
	"SIZE_SHIRT" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_ORPHANE
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_ORPHANE" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"OR_CODE" VARCHAR2(20 BYTE), 
	"GUARDIAN_ID" NUMBER, 
	"GUARDIAN_KINSHIP" VARCHAR2(20 BYTE), 
	"GUARDIAN_DESC" VARCHAR2(20 BYTE), 
	"FAMILY_CODE" VARCHAR2(20 BYTE), 
	"OR_LAST_UPDATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_PERSON
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_PERSON" 
   (	"ID" NUMBER, 
	"SEQ_CODE" NUMBER, 
	"FNAME_AR" VARCHAR2(20 BYTE), 
	"LNAME_AR" VARCHAR2(20 BYTE), 
	"FNAME_FR" VARCHAR2(20 BYTE), 
	"LNAME_FR" VARCHAR2(20 BYTE), 
	"BIRTH_ON" DATE, 
	"BIRTH_IN" VARCHAR2(20 BYTE), 
	"BIRTH_YEAR" NUMBER, 
	"DIE_ON" DATE, 
	"DIE_DESC" VARCHAR2(20 BYTE), 
	"SEX" NUMBER, 
	"SPOUSE_ID" NUMBER, 
	"FATHER_ID" NUMBER, 
	"MOTHER_ID" NUMBER, 
	"FAMILY_CODE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table F_P_PUPIL
--------------------------------------------------------

  CREATE TABLE "NOUR"."F_P_PUPIL" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"SCHOOL_GRADE" VARCHAR2(20 BYTE), 
	"SCHOOL_ID" NUMBER, 
	"COLUMN2" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_ALMS_IN
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_ALMS_IN" 
   (	"ID" NUMBER, 
	"ALMS_VALUE" NUMBER, 
	"ALMS_DATE" DATE, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"ENG_ID" NUMBER, 
	"FUND_ACCOUNT" NUMBER, 
	"COLUMN7" VARCHAR2(20 BYTE), 
	"COLUMN8" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "NOUR"."L_ALMS_IN"."FUND_ACCOUNT" IS 'destination';
--------------------------------------------------------
--  DDL for Table L_ALMS_OUT
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_ALMS_OUT" 
   (	"ID" NUMBER, 
	"ALMS_DATE" DATE, 
	"NDY_ACCOUNT" NUMBER, 
	"TERM_ID" NUMBER, 
	"FUND_ACCOUNT" NUMBER, 
	"COLUMN3" VARCHAR2(20 BYTE), 
	"ALMS_VALUE" NUMBER, 
	"ALMS_TYPE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_BORROW
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_BORROW" 
   (	"ID" NUMBER, 
	"BRWR_LNAME" VARCHAR2(20 BYTE), 
	"BRWR_FNAME" VARCHAR2(20 BYTE), 
	"BRWR_BIRTH_ON" DATE, 
	"BRWR_BIRTH_IN" VARCHAR2(20 BYTE), 
	"BRWR_CIN" VARCHAR2(20 BYTE), 
	"BRWR_CIN_DATE" DATE, 
	"BRWR_CIN_IN" VARCHAR2(20 BYTE), 
	"BRWR_PHONE1" VARCHAR2(20 BYTE), 
	"BRWR_PHONE2" VARCHAR2(20 BYTE), 
	"BRWR_ADDR1" VARCHAR2(250 BYTE), 
	"BRWR_ADDR2" VARCHAR2(250 BYTE), 
	"BRWR_PC_N" VARCHAR2(20 BYTE), 
	"BRWR_PC_DATE" DATE, 
	"BRWR_PC_IN" VARCHAR2(20 BYTE), 
	"EQ_CODE" VARCHAR2(10 BYTE), 
	"PATIENT_LNAME" VARCHAR2(20 BYTE), 
	"PATIENT_FNAME" VARCHAR2(20 BYTE), 
	"PATIENT_ADDR" VARCHAR2(200 BYTE), 
	"DATE_OUT" DATE, 
	"DATE_IN" DATE, 
	"EQ_STATE_OUT" NUMBER, 
	"EQ_STATE_IN" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_CONTACT
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_CONTACT" 
   (	"ID" NUMBER, 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE), 
	"PHONE1" VARCHAR2(20 BYTE), 
	"PHONE2" VARCHAR2(20 BYTE), 
	"ADRESS1" VARCHAR2(20 BYTE), 
	"ADRESS2" VARCHAR2(20 BYTE), 
	"ZONE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_EQUIPMENTS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_EQUIPMENTS" 
   (	"ID" NUMBER, 
	"EQ_CODE" VARCHAR2(10 BYTE), 
	"EQ_DESC" VARCHAR2(100 BYTE), 
	"EQ_TYPE" VARCHAR2(20 BYTE), 
	"EQ_IN_DATE" DATE, 
	"EQ_IN_BY" VARCHAR2(20 BYTE), 
	"COLUMN6" VARCHAR2(20 BYTE), 
	"COLUMN7" VARCHAR2(20 BYTE), 
	"COLUMN8" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_GIFTS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_GIFTS" 
   (	"ID" NUMBER, 
	"GIFT_TYPE" VARCHAR2(20 BYTE), 
	"GIFT_QUANTITE" NUMBER, 
	"GIFT_UNIT" VARCHAR2(20 BYTE), 
	"GIFT_DATE" DATE, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"GIFT_DESC" VARCHAR2(20 BYTE), 
	"LEFT_QNTE" NUMBER
   ) ;

   COMMENT ON COLUMN "NOUR"."L_F_GIFTS"."GIVER_CODE" IS '?';
--------------------------------------------------------
--  DDL for Table L_F_GIFTS_DONATION
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_GIFTS_DONATION" 
   (	"ID" VARCHAR2(20 BYTE), 
	"GIFT_TYPE" VARCHAR2(20 BYTE), 
	"DONATION_QNTE" VARCHAR2(20 BYTE), 
	"DONATION_DEST" VARCHAR2(20 BYTE), 
	"DONATION_DATE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_GIVERS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_GIVERS" 
   (	"ID" NUMBER, 
	"GV_CODE" VARCHAR2(20 BYTE), 
	"GV_LNAME" VARCHAR2(20 BYTE), 
	"GV_FNAME" VARCHAR2(20 BYTE), 
	"GV_BIRTH_ON" VARCHAR2(20 BYTE), 
	"GV_BIRTH_IN" VARCHAR2(20 BYTE), 
	"GV_AGE" NUMBER, 
	"GV_DATE_AGE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_INSCRIBED
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_INSCRIBED" 
   (	"ID" NUMBER, 
	"INS_CODE" NUMBER, 
	"INS_LNAME" VARCHAR2(50 BYTE), 
	"INS_FNAME" VARCHAR2(50 BYTE), 
	"INS_BIRTH_ON" DATE, 
	"INS_BIRTH_IN" VARCHAR2(20 BYTE), 
	"INS_STATE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_MEMBERS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_MEMBERS" 
   (	"ID" NUMBER, 
	"MM_CODE" NUMBER, 
	"MM_MANAGER" NUMBER, 
	"MM_LNAME" VARCHAR2(20 BYTE), 
	"MM_FNAME" VARCHAR2(20 BYTE), 
	"MM_BIRTH_ON" DATE, 
	"MM_BIRTH_IN" VARCHAR2(20 BYTE), 
	"MM_JOB" NUMBER, 
	"MM_SECTION" NUMBER, 
	"MM_PHONE1" VARCHAR2(20 BYTE), 
	"MM_PHONE2" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN5" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_F_TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_F_TRANSACTIONS" 
   (	"ID" NUMBER, 
	"ACCOUNT_FROM" NUMBER, 
	"ACCOUNT_TO" NUMBER, 
	"DEBIT" NUMBER, 
	"CREDIT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table L_GIVERS_ENGMT
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_GIVERS_ENGMT" 
   (	"ID" NUMBER, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"ENG_VALUE" NUMBER, 
	"ENG_FREQ" VARCHAR2(20 BYTE), 
	"ENG_DATE_START" VARCHAR2(20 BYTE), 
	"ENG_DATE_END" VARCHAR2(20 BYTE), 
	"ENG_TYPE" VARCHAR2(20 BYTE), 
	"ENG_DATE" DATE, 
	"ENG_RESPECTED_PCT" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "NOUR"."L_GIVERS_ENGMT"."ENG_RESPECTED_PCT" IS 'percent respect';
--------------------------------------------------------
--  DDL for Table L_T_ALMS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_T_ALMS" 
   (	"ID" NUMBER, 
	"ALMS_TYPE" VARCHAR2(20 BYTE), 
	"ALMS_DESC" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_T_EQUIPMENT
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_T_EQUIPMENT" 
   (	"ID" NUMBER, 
	"EQ_TYPE" VARCHAR2(20 BYTE), 
	"EQ_TYPE_DESC" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_T_JOBS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_T_JOBS" 
   (	"ID" VARCHAR2(20 BYTE), 
	"JOB_CODE" NUMBER, 
	"JOB_DESC" VARCHAR2(100 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table L_T_SECTIONS
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_T_SECTIONS" 
   (	"ID" NUMBER, 
	"SECTION_CODE" NUMBER, 
	"SECTION_DESC" VARCHAR2(100 BYTE), 
	"SECTION_PARENT" NUMBER, 
	"SECTION_MANAGER" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table L_T_ZONES
--------------------------------------------------------

  CREATE TABLE "NOUR"."L_T_ZONES" 
   (	"ID" NUMBER, 
	"ZONE_CODE" NUMBER, 
	"PARENT_ZONE" NUMBER, 
	"ZONE_DESC" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_ENGMT
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_ENGMT" 
   (	"ID" NUMBER, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"ENG_VALUE" NUMBER, 
	"ENG_FREQ" VARCHAR2(20 BYTE), 
	"ENG_DATE_START" VARCHAR2(20 BYTE), 
	"ENG_DATE_END" VARCHAR2(20 BYTE), 
	"ENG_TYPE" VARCHAR2(20 BYTE), 
	"ENG_DATE" DATE, 
	"ENG_RESPECTED_PCT" VARCHAR2(20 BYTE), 
	"ENG_ACCOUNT" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_IN
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_IN" 
   (	"ID" NUMBER, 
	"ALMS_VALUE" NUMBER, 
	"ALMS_DATE" DATE, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"ENG_ID" NUMBER, 
	"FUND_ACCOUNT" VARCHAR2(50 BYTE), 
	"COLUMN7" VARCHAR2(20 BYTE), 
	"COLUMN8" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_OUT
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_OUT" 
   (	"ID" NUMBER, 
	"ALMS_DATE" DATE, 
	"NDY_ACCOUNT" VARCHAR2(20 BYTE), 
	"TERM_ID" NUMBER, 
	"FUND_ACCOUNT" VARCHAR2(20 BYTE), 
	"COLUMN3" VARCHAR2(20 BYTE), 
	"ALMS_VALUE" NUMBER, 
	"ALMS_TYPE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_PLAN
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_PLAN" 
   (	"ID" NUMBER, 
	"PLAN_CODE" VARCHAR2(20 BYTE), 
	"PLAN_DESC" VARCHAR2(200 BYTE), 
	"PLAN_DATE_START" DATE, 
	"PLAN_END_DATE" DATE, 
	"PLAN_TYPE" VARCHAR2(20 BYTE), 
	"PLAN_FREQ" NUMBER, 
	"PLAN_ALMS_VALUE" NUMBER, 
	"PLAN_ACCOUNT" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_PLAN_NDY
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_PLAN_NDY" 
   (	"ID" NUMBER, 
	"PLAN_ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"DATE_JOINED" DATE, 
	"DATE_EXCLUDED" DATE, 
	"COLUMN3" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_TERM
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_TERM" 
   (	"ID" NUMBER, 
	"PLAN_ID" NUMBER, 
	"DATE_TERM" DATE, 
	"TERM_SEQ" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table N3_ALMS_TERM_NDY
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_ALMS_TERM_NDY" 
   (	"ID" NUMBER, 
	"TERM_ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"ALMS_VALUE" NUMBER, 
	"RECEIVED_BY" VARCHAR2(20 BYTE), 
	"RECEIVED_ON" DATE, 
	"RECEIVED_AS" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_ACCOUNTS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_ACCOUNTS" 
   (	"ID" NUMBER, 
	"COLUMN2" VARCHAR2(20 BYTE), 
	"COLUMN3" VARCHAR2(20 BYTE), 
	"ACCOUNT" VARCHAR2(100 BYTE), 
	"ALMS_TYPE" VARCHAR2(100 BYTE), 
	"COLUMN6" VARCHAR2(20 BYTE), 
	"COLUMN7" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_EQUIPMENT
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_EQUIPMENT" 
   (	"ID" NUMBER, 
	"EQ_CODE" VARCHAR2(20 BYTE), 
	"EQ_TYPE" VARCHAR2(20 BYTE), 
	"EQ_DESC" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_FAMILY
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_FAMILY" 
   (	"ID" NUMBER, 
	"FAMILY_CODE" VARCHAR2(20 BYTE), 
	"FAMILY_NAME" VARCHAR2(20 BYTE), 
	"FAMILY_SIZE" VARCHAR2(20 BYTE), 
	"GUARDIAN_ID" NUMBER, 
	"HOME_TYPE" VARCHAR2(20 BYTE), 
	"HOME_STATE" VARCHAR2(20 BYTE), 
	"HOME_OWN" VARCHAR2(20 BYTE), 
	"HOME_ROOM" VARCHAR2(20 BYTE), 
	"SOCIAL_STATE" VARCHAR2(20 BYTE), 
	"SOCIAL_DESC" VARCHAR2(20 BYTE), 
	"SALARY_TYPE" VARCHAR2(20 BYTE), 
	"SALARY_BY_MONTH" VARCHAR2(20 BYTE), 
	"SALARY_DESC" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_FUNDS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_FUNDS" 
   (	"ID" NUMBER, 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN5" VARCHAR2(20 BYTE), 
	"COLUMN6" VARCHAR2(20 BYTE), 
	"FUND_ACCOUNT" VARCHAR2(100 BYTE), 
	"FUND_VALUE" NUMBER, 
	"COLUMN7" VARCHAR2(20 BYTE), 
	"COLUMN8" VARCHAR2(20 BYTE), 
	"COLUMN9" VARCHAR2(20 BYTE), 
	"COLUMN10" VARCHAR2(20 BYTE), 
	"COLUMN11" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_GIVERS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_GIVERS" 
   (	"ID" NUMBER, 
	"GV_CODE" VARCHAR2(20 BYTE), 
	"GV_LNAME" VARCHAR2(20 BYTE), 
	"GV_FNAME" VARCHAR2(20 BYTE), 
	"GV_BIRTH_ON" VARCHAR2(20 BYTE), 
	"GV_BIRTH_IN" VARCHAR2(20 BYTE), 
	"GV_AGE" NUMBER, 
	"GV_DATE_AGE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_NEEDY
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_NEEDY" 
   (	"ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"NDY_LAST_UPDATE" DATE, 
	"FNAME_AR" VARCHAR2(20 BYTE), 
	"LNAME_AR" VARCHAR2(20 BYTE), 
	"FNAME_FR" VARCHAR2(20 BYTE), 
	"LNAME_FR" VARCHAR2(20 BYTE), 
	"BIRTH_ON" DATE, 
	"BIRTH_IN" VARCHAR2(20 BYTE), 
	"BIRTH_YEAR" NUMBER, 
	"DIE_ON" DATE, 
	"DIE_DESC" VARCHAR2(20 BYTE), 
	"SEX" VARCHAR2(20 BYTE), 
	"CIVIL_STATE" VARCHAR2(20 BYTE), 
	"SALARY_LVL" NUMBER, 
	"JOB_DESC" VARCHAR2(20 BYTE), 
	"HEALTH_LVL" NUMBER, 
	"HEALTH_DESC" VARCHAR2(20 BYTE), 
	"SPOUSE_HEALTH_LVL" NUMBER, 
	"SPOUSE_HEALTH_DESC" VARCHAR2(20 BYTE), 
	"CHILDREN_COUNT" NUMBER, 
	"CHILDREN_SCHOLARIZED_COUNT" NUMBER, 
	"IS_ORPHANE" NUMBER, 
	"IS_POOR" NUMBER, 
	"IS_HANDICAPPED" NUMBER, 
	"HANDICAP_DESC" VARCHAR2(200 BYTE), 
	"ORPH_GUARDIAN_KINSHIP" VARCHAR2(20 BYTE), 
	"ORPH_GUARDIAN_NDY_CODE" VARCHAR2(20 BYTE), 
	"ORPH_ORPHANE_TYPE" VARCHAR2(100 BYTE), 
	"ORPH_ORPHANE_FROM" DATE, 
	"FATHER_FNAME" VARCHAR2(100 BYTE), 
	"FATHER_LNAME" VARCHAR2(100 BYTE), 
	"FATHER_BIRTH_ON" DATE, 
	"FATHER_BIRTH_IN" VARCHAR2(100 BYTE), 
	"MOTHER_FNAME" VARCHAR2(100 BYTE), 
	"MOTHER_LNAME" VARCHAR2(100 BYTE), 
	"MOTHER_BIRTH_ON" DATE, 
	"MOTHER_BIRTH_IN" VARCHAR2(100 BYTE), 
	"MOTHER_DIE_ON" DATE, 
	"FATHER_DIE_ON" DATE, 
	"FATHER_JOB" VARCHAR2(100 BYTE), 
	"MOTHER_JOB" VARCHAR2(100 BYTE), 
	"OR_GUARD_FNAME" VARCHAR2(100 BYTE), 
	"OR_GUARD_LANME" VARCHAR2(100 BYTE), 
	"OR_GUARD_BIRTH_ON" DATE, 
	"OR_GUARD_BIRTH_IN" VARCHAR2(100 BYTE), 
	"OR_GUARD_FROM" DATE, 
	"OR_GUARD_ADRESS" VARCHAR2(100 BYTE), 
	"OR_GUARD_JOB" VARCHAR2(100 BYTE), 
	"OR_GUARD_HEALTH_LVL" VARCHAR2(100 BYTE), 
	"OR_GUARD_HEALTH_DESC" VARCHAR2(100 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_NEEDY_NEEDS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_NEEDY_NEEDS" 
   (	"ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"NEED_TYPE" VARCHAR2(100 BYTE), 
	"NEED_QTY" NUMBER, 
	"NEED_FREQ" VARCHAR2(100 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_F_ORPHANE
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_F_ORPHANE" 
   (	"ID" NUMBER, 
	"PERSON_ID" NUMBER, 
	"OR_CODE" VARCHAR2(20 BYTE), 
	"GUARDIAN_ID" NUMBER, 
	"GUARDIAN_KINSHIP" VARCHAR2(20 BYTE), 
	"GUARDIAN_DESC" VARCHAR2(20 BYTE), 
	"OR_LAST_UPDATE" DATE, 
	"SEQ_CODE" NUMBER, 
	"FNAME_AR" VARCHAR2(20 BYTE), 
	"LNAME_AR" VARCHAR2(20 BYTE), 
	"FNAME_FR" VARCHAR2(20 BYTE), 
	"LNAME_FR" VARCHAR2(20 BYTE), 
	"BIRTH_ON" DATE, 
	"BIRTH_IN" VARCHAR2(20 BYTE), 
	"BIRTH_YEAR" NUMBER, 
	"DIE_ON" DATE, 
	"DIE_DESC" VARCHAR2(20 BYTE), 
	"SEX" NUMBER, 
	"SPOUSE_ID" NUMBER, 
	"FATHER_ID" NUMBER, 
	"MOTHER_ID" NUMBER, 
	"FAMILY_CODE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_GIFTS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_GIFTS" 
   (	"ID" NUMBER, 
	"GIFT_TYPE" VARCHAR2(20 BYTE), 
	"GIFT_QUANTITE" NUMBER, 
	"GIFT_UNIT" VARCHAR2(20 BYTE), 
	"GIFT_DATE" DATE, 
	"GIVER_CODE" VARCHAR2(20 BYTE), 
	"GIFT_DESC" VARCHAR2(20 BYTE), 
	"LEFT_QNTE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table N3_GIFTS_IN
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_GIFTS_IN" 
   (	"ID" VARCHAR2(20 BYTE), 
	"GIFT_TYPE" VARCHAR2(20 BYTE), 
	"DONATION_QNTE" VARCHAR2(20 BYTE), 
	"DONATION_DEST" VARCHAR2(20 BYTE), 
	"DONATION_DATE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_NEEDY_SCHOOL
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_NEEDY_SCHOOL" 
   (	"ID" NUMBER, 
	"NDY_CODE" VARCHAR2(20 BYTE), 
	"SCHOOL_CODE" VARCHAR2(50 BYTE), 
	"LINE" NUMBER, 
	"FNAME" VARCHAR2(200 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN6" VARCHAR2(20 BYTE), 
	"BIRTH_ON" DATE, 
	"COLUMN5" VARCHAR2(20 BYTE), 
	"COLUMN7" VARCHAR2(20 BYTE), 
	"CLASSE_LEVEL" NUMBER, 
	"SCORING_LVL" NUMBER, 
	"COLUMN8" VARCHAR2(20 BYTE), 
	"COLUMN9" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE), 
	"COLUMN3" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_ALMS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_ALMS" 
   (	"ID" NUMBER, 
	"ALMS_TYPE" VARCHAR2(100 BYTE), 
	"ALMS_DESC" VARCHAR2(200 BYTE), 
	"COLUMN3" VARCHAR2(20 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_EQUIPMENT
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_EQUIPMENT" 
   (	"ID" NUMBER, 
	"EQ_TYPE" VARCHAR2(20 BYTE), 
	"EQ_TYPE_DESC" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_HEALTH_LVL
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_HEALTH_LVL" 
   (	"ID" NUMBER, 
	"LVL" NUMBER, 
	"LVL_DESC" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_NEEDS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_NEEDS" 
   (	"ID" NUMBER, 
	"NEED_TYPE" VARCHAR2(100 BYTE), 
	"NEED_DESC" VARCHAR2(200 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN5" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN2" VARCHAR2(20 BYTE), 
	"COLUMN6" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_SALARY_LVL
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_SALARY_LVL" 
   (	"ID" NUMBER, 
	"LVL" NUMBER, 
	"LVL_DESC" VARCHAR2(100 BYTE), 
	"SALARY_START" NUMBER, 
	"SALARY_END" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_SCHOOLS
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_SCHOOLS" 
   (	"ID" NUMBER, 
	"SCHOOL_NAME" VARCHAR2(200 BYTE), 
	"SCHOOL_ZONE" VARCHAR2(20 BYTE), 
	"SCHOOL_STEP" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE), 
	"COLUMN3" VARCHAR2(20 BYTE), 
	"SCHOOL_SIZE" VARCHAR2(20 BYTE), 
	"SCHOOL_CONTACT1" VARCHAR2(20 BYTE), 
	"SCHOOL_CONTACT2" VARCHAR2(20 BYTE), 
	"SCHOOL_CODE" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table N3_T_SCORING_LVL
--------------------------------------------------------

  CREATE TABLE "NOUR"."N3_T_SCORING_LVL" 
   (	"ID" NUMBER, 
	"SCORING_LVL" NUMBER, 
	"SCORING_DESC" VARCHAR2(200 BYTE), 
	"COLUMN4" VARCHAR2(20 BYTE), 
	"COLUMN1" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index N3_T_SCORING_LVL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SCORING_LVL_PK" ON "NOUR"."N3_T_SCORING_LVL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_NEEDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_NEEDS_PK" ON "NOUR"."F_P_NEEDS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_PERSON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_PERSON_PK" ON "NOUR"."F_P_PERSON" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_HANDICAPPED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_HANDICAPPED_PK" ON "NOUR"."F_P_HANDICAPPED" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_FAMILY_GUARDIAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_FAMILY_GUARDIAN_PK" ON "NOUR"."F_P_FAMILY_GUARDIAN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_EQUIPMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_EQUIPMENT_PK" ON "NOUR"."N3_F_EQUIPMENT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_ORPHANE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_ORPHANE_PK" ON "NOUR"."N3_F_ORPHANE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_ALMS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_ALMS_UK1" ON "NOUR"."N3_T_ALMS" ("ALMS_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_BORROW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_BORROW_PK" ON "NOUR"."L_F_BORROW" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_PLAN_NDY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_PLAN_NDY_UK1" ON "NOUR"."ALMS_PLAN_NDY" ("PLAN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_ZONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_ZONES_PK" ON "NOUR"."L_T_ZONES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_JOBS_PK" ON "NOUR"."L_T_JOBS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_PLAN_NDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_PLAN_NDY_PK" ON "NOUR"."N3_ALMS_PLAN_NDY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_MEMBERS_PK" ON "NOUR"."L_F_MEMBERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_JOBS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_JOBS_UK1" ON "NOUR"."L_T_JOBS" ("JOB_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_ORPHANE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_ORPHANE_UK1" ON "NOUR"."F_P_ORPHANE" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_NEEDY_NEEDS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_NEEDY_NEEDS_UK1" ON "NOUR"."N3_F_NEEDY_NEEDS" ("NDY_CODE", "NEED_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_MEMBERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_MEMBERS_UK1" ON "NOUR"."L_F_MEMBERS" ("MM_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_NEEDY_SCHOOL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_NEEDY_SCHOOL_PK" ON "NOUR"."N3_NEEDY_SCHOOL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_NEEDS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_NEEDS_UK1" ON "NOUR"."N3_T_NEEDS" ("NEED_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_FUNDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_FUNDS_PK" ON "NOUR"."N3_F_FUNDS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_INSCRIBED_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_INSCRIBED_UK1" ON "NOUR"."L_F_INSCRIBED" ("INS_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_GIVERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_GIVERS_PK" ON "NOUR"."N3_F_GIVERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_HEALTH_LVL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_HEALTH_LVL_PK" ON "NOUR"."N3_T_HEALTH_LVL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_FAMILY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_FAMILY_PK" ON "NOUR"."N3_F_FAMILY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_SECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_SECTIONS_PK" ON "NOUR"."L_T_SECTIONS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_OUT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_OUT_PK" ON "NOUR"."N3_ALMS_OUT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_ENGMT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_ENGMT_PK" ON "NOUR"."N3_ALMS_ENGMT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_ORPHANE_UK2
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_ORPHANE_UK2" ON "NOUR"."F_P_ORPHANE" ("OR_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_GIVERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_GIVERS_UK1" ON "NOUR"."N3_F_GIVERS" ("GV_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_FAMILY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_FAMILY_PK" ON "NOUR"."F_P_FAMILY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_EQUIPEMENT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_EQUIPEMENT_UK1" ON "NOUR"."L_T_EQUIPMENT" ("EQ_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_NEEDY_NEEDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_NEEDY_NEEDS_PK" ON "NOUR"."N3_F_NEEDY_NEEDS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_EQUIPEMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_EQUIPEMENT_PK" ON "NOUR"."L_T_EQUIPMENT" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_ACCOUNTS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_ACCOUNTS_UK1" ON "NOUR"."N3_F_ACCOUNTS" ("ACCOUNT") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_EQUIPMENTS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_EQUIPMENTS_UK1" ON "NOUR"."L_F_EQUIPMENTS" ("EQ_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_SECTIONS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_SECTIONS_UK1" ON "NOUR"."L_T_SECTIONS" ("SECTION_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_PLAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_PLAN_PK" ON "NOUR"."ALMS_PLAN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_HANDICAPPED_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_HANDICAPPED_UK1" ON "NOUR"."F_P_HANDICAPPED" ("HD_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_ACCOUNTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_ACCOUNTS_PK" ON "NOUR"."N3_F_ACCOUNTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_TERM_NDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_TERM_NDY_PK" ON "NOUR"."ALMS_TERM_NDY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_PLAN_NDY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_PLAN_NDY_UK1" ON "NOUR"."N3_ALMS_PLAN_NDY" ("PLAN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_SCORING_LVL_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SCORING_LVL_UK1" ON "NOUR"."N3_T_SCORING_LVL" ("SCORING_LVL") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_TERM_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_TERM_UK1" ON "NOUR"."ALMS_TERM" ("PLAN_ID", "DATE_TERM") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_PLAN_NDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_PLAN_NDY_PK" ON "NOUR"."ALMS_PLAN_NDY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_PLAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_PLAN_PK" ON "NOUR"."N3_ALMS_PLAN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_EQUIPMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_EQUIPMENTS_PK" ON "NOUR"."L_F_EQUIPMENTS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_NEEDS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_NEEDS_UK1" ON "NOUR"."F_P_NEEDS" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_TERM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_TERM_PK" ON "NOUR"."N3_ALMS_TERM" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_PLAN_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_PLAN_UK1" ON "NOUR"."N3_ALMS_PLAN" ("PLAN_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_BORROW_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_BORROW_UK1" ON "NOUR"."L_F_BORROW" ("EQ_CODE", "DATE_OUT") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_NEEDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_NEEDY_PK" ON "NOUR"."N3_F_NEEDY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_ALMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_ALMS_PK" ON "NOUR"."N3_T_ALMS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_ORPHANE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_ORPHANE_PK" ON "NOUR"."F_P_ORPHANE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_NEEDY_SCHOOL_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_NEEDY_SCHOOL_UK1" ON "NOUR"."N3_NEEDY_SCHOOL" ("NDY_CODE", "SCHOOL_CODE", "LINE") 
  ;
--------------------------------------------------------
--  DDL for Index L_T_ZONES__UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_T_ZONES__UN" ON "NOUR"."L_T_ZONES" ("ZONE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_NEEDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_NEEDS_PK" ON "NOUR"."N3_T_NEEDS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_SALARY_LVL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SALARY_LVL_PK" ON "NOUR"."N3_T_SALARY_LVL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_PUPIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_PUPIL_PK" ON "NOUR"."F_P_PUPIL" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index L_F_INSCRIBED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."L_F_INSCRIBED_PK" ON "NOUR"."L_F_INSCRIBED" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_TERM_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_TERM_UK1" ON "NOUR"."N3_ALMS_TERM" ("PLAN_ID", "DATE_TERM") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_SALARY_LVL_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SALARY_LVL_UK1" ON "NOUR"."N3_T_SALARY_LVL" ("LVL") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_TERM_NDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_TERM_NDY_PK" ON "NOUR"."N3_ALMS_TERM_NDY" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALMS_TERM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."ALMS_TERM_PK" ON "NOUR"."ALMS_TERM" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_SCHOOLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SCHOOLS_PK" ON "NOUR"."N3_T_SCHOOLS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index F_P_FAMILY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."F_P_FAMILY_UK1" ON "NOUR"."F_P_FAMILY" ("FAMILY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_F_NEEDY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_F_NEEDY_UK1" ON "NOUR"."N3_F_NEEDY" ("NDY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index N3_ALMS_IN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_ALMS_IN_PK" ON "NOUR"."N3_ALMS_IN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_HEALTH_LVL_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_HEALTH_LVL_UK1" ON "NOUR"."N3_T_HEALTH_LVL" ("LVL") 
  ;
--------------------------------------------------------
--  DDL for Index N3_T_SCHOOLS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOUR"."N3_T_SCHOOLS_UK1" ON "NOUR"."N3_T_SCHOOLS" ("SCHOOL_CODE") 
  ;
--------------------------------------------------------
--  Constraints for Table APEX$TEAM_DEV_FILES
--------------------------------------------------------

  ALTER TABLE "NOUR"."APEX$TEAM_DEV_FILES" ADD PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."APEX$TEAM_DEV_FILES" ADD CONSTRAINT "WWV_VALID_ATDF_COMP_TY" CHECK (component_type in ('MILESTONE','FEATURE','BUG','FEEDBACK','TODO')) ENABLE;
  ALTER TABLE "NOUR"."APEX$TEAM_DEV_FILES" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."APEX$TEAM_DEV_FILES" MODIFY ("COMPONENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."APEX$TEAM_DEV_FILES" MODIFY ("COMPONENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_IN
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_IN" ADD CONSTRAINT "N3_ALMS_IN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_IN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_F_MEMBERS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_MEMBERS" ADD CONSTRAINT "L_F_MEMBERS_UK1" UNIQUE ("MM_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_F_MEMBERS" ADD CONSTRAINT "L_F_MEMBERS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_F_MEMBERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_NEEDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_NEEDS" ADD CONSTRAINT "F_P_NEEDS_UK1" UNIQUE ("PERSON_ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_NEEDS" ADD CONSTRAINT "F_P_NEEDS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_NEEDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_SCHOOLS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_SCHOOLS" ADD CONSTRAINT "N3_T_SCHOOLS_UK1" UNIQUE ("SCHOOL_CODE") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SCHOOLS" ADD CONSTRAINT "N3_T_SCHOOLS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SCHOOLS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_OUT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_OUT" ADD CONSTRAINT "N3_ALMS_OUT_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_OUT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_ALMS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_ALMS" ADD CONSTRAINT "N3_T_ALMS_UK1" UNIQUE ("ALMS_TYPE") ENABLE;
  ALTER TABLE "NOUR"."N3_T_ALMS" ADD CONSTRAINT "N3_T_ALMS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_ALMS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALMS_TERM
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_TERM" ADD CONSTRAINT "ALMS_TERM_UK1" UNIQUE ("PLAN_ID", "DATE_TERM") ENABLE;
  ALTER TABLE "NOUR"."ALMS_TERM" ADD CONSTRAINT "ALMS_TERM_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."ALMS_TERM" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_PLAN_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_PLAN_NDY" ADD CONSTRAINT "N3_ALMS_PLAN_NDY_UK1" UNIQUE ("PLAN_ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_PLAN_NDY" ADD CONSTRAINT "N3_ALMS_PLAN_NDY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_PLAN_NDY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_EQUIPMENT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_EQUIPMENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_FAMILY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_FAMILY" ADD CONSTRAINT "N3_F_FAMILY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_FAMILY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_NEEDY_NEEDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_NEEDY_NEEDS" ADD CONSTRAINT "N3_F_NEEDY_NEEDS_UK1" UNIQUE ("NDY_CODE", "NEED_TYPE") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY_NEEDS" ADD CONSTRAINT "N3_F_NEEDY_NEEDS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY_NEEDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_HEALTH_LVL
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_HEALTH_LVL" ADD CONSTRAINT "N3_T_HEALTH_LVL_UK1" UNIQUE ("LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_T_HEALTH_LVL" ADD CONSTRAINT "N3_T_HEALTH_LVL_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_HEALTH_LVL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_PERSON
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_PERSON" ADD CONSTRAINT "F_P_PERSON_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_PERSON" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_T_SECTIONS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_SECTIONS" ADD CONSTRAINT "L_T_SECTIONS_UK1" UNIQUE ("SECTION_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_T_SECTIONS" ADD CONSTRAINT "L_T_SECTIONS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_T_SECTIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_T_JOBS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_JOBS" ADD CONSTRAINT "L_T_JOBS_UK1" UNIQUE ("JOB_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_T_JOBS" ADD CONSTRAINT "L_T_JOBS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_T_JOBS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_SCORING_LVL
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_SCORING_LVL" ADD CONSTRAINT "N3_T_SCORING_LVL_UK1" UNIQUE ("SCORING_LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SCORING_LVL" ADD CONSTRAINT "N3_T_SCORING_LVL_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SCORING_LVL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_NEEDY_SCHOOL
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" ADD CONSTRAINT "N3_NEEDY_SCHOOL_UK1" UNIQUE ("NDY_CODE", "SCHOOL_CODE", "LINE") ENABLE;
  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" ADD CONSTRAINT "N3_NEEDY_SCHOOL_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_SALARY_LVL
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_SALARY_LVL" ADD CONSTRAINT "N3_T_SALARY_LVL_UK1" UNIQUE ("LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SALARY_LVL" ADD CONSTRAINT "N3_T_SALARY_LVL_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_SALARY_LVL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_EQUIPMENT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_EQUIPMENT" ADD CONSTRAINT "N3_F_EQUIPMENT_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_EQUIPMENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_FAMILY_GUARDIAN
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_FAMILY_GUARDIAN" ADD CONSTRAINT "F_P_FAMILY_GUARDIAN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_FAMILY_GUARDIAN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_PUPIL
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_PUPIL" ADD CONSTRAINT "F_P_PUPIL_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_PUPIL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_T_NEEDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_T_NEEDS" ADD CONSTRAINT "N3_T_NEEDS_UK1" UNIQUE ("NEED_TYPE") ENABLE;
  ALTER TABLE "NOUR"."N3_T_NEEDS" ADD CONSTRAINT "N3_T_NEEDS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_T_NEEDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_F_BORROW
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_BORROW" ADD CONSTRAINT "L_F_BORROW_UK1" UNIQUE ("EQ_CODE", "DATE_OUT") ENABLE;
  ALTER TABLE "NOUR"."L_F_BORROW" ADD CONSTRAINT "L_F_BORROW_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_F_BORROW" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_ENGMT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_ENGMT" ADD CONSTRAINT "N3_ALMS_ENGMT_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_ENGMT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_FAMILY
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_FAMILY" ADD CONSTRAINT "F_P_FAMILY_UK1" UNIQUE ("FAMILY_CODE") ENABLE;
  ALTER TABLE "NOUR"."F_P_FAMILY" ADD CONSTRAINT "F_P_FAMILY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_FAMILY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_T_ZONES
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_ZONES" ADD CONSTRAINT "L_T_ZONES__UN" UNIQUE ("ZONE_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_T_ZONES" ADD CONSTRAINT "L_T_ZONES_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_T_ZONES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_T_EQUIPMENT
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_EQUIPMENT" ADD CONSTRAINT "L_T_EQUIPEMENT_UK1" UNIQUE ("EQ_TYPE") ENABLE;
  ALTER TABLE "NOUR"."L_T_EQUIPMENT" ADD CONSTRAINT "L_T_EQUIPEMENT_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_T_EQUIPMENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_TERM_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_TERM_NDY" ADD CONSTRAINT "N3_ALMS_TERM_NDY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_TERM_NDY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_F_EQUIPMENTS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_EQUIPMENTS" ADD CONSTRAINT "L_F_EQUIPMENTS_UK1" UNIQUE ("EQ_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_F_EQUIPMENTS" ADD CONSTRAINT "L_F_EQUIPMENTS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_F_EQUIPMENTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALMS_PLAN_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_PLAN_NDY" ADD CONSTRAINT "ALMS_PLAN_NDY_UK1" UNIQUE ("PLAN_ID") ENABLE;
  ALTER TABLE "NOUR"."ALMS_PLAN_NDY" ADD CONSTRAINT "ALMS_PLAN_NDY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."ALMS_PLAN_NDY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_NEEDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_NEEDY" ADD CONSTRAINT "N3_F_NEEDY_UK1" UNIQUE ("NDY_CODE") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY" ADD CONSTRAINT "N3_F_NEEDY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_ORPHANE
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_ORPHANE" ADD CONSTRAINT "N3_F_ORPHANE_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_ORPHANE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table L_F_INSCRIBED
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_INSCRIBED" ADD CONSTRAINT "L_F_INSCRIBED_UK1" UNIQUE ("INS_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_F_INSCRIBED" ADD CONSTRAINT "L_F_INSCRIBED_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."L_F_INSCRIBED" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_TERM
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_TERM" ADD CONSTRAINT "N3_ALMS_TERM_UK1" UNIQUE ("PLAN_ID", "DATE_TERM") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_TERM" ADD CONSTRAINT "N3_ALMS_TERM_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_TERM" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALMS_PLAN
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_PLAN" ADD CONSTRAINT "ALMS_PLAN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."ALMS_PLAN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_ALMS_PLAN
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_PLAN" ADD CONSTRAINT "N3_ALMS_PLAN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_PLAN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NOUR"."N3_ALMS_PLAN" ADD CONSTRAINT "N3_ALMS_PLAN_UK1" UNIQUE ("PLAN_CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table N3_F_FUNDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_FUNDS" ADD CONSTRAINT "N3_F_FUNDS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_FUNDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_ACCOUNTS" ADD CONSTRAINT "N3_F_ACCOUNTS_UK1" UNIQUE ("ACCOUNT") ENABLE;
  ALTER TABLE "NOUR"."N3_F_ACCOUNTS" ADD CONSTRAINT "N3_F_ACCOUNTS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_ACCOUNTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_ORPHANE
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_ORPHANE" ADD CONSTRAINT "F_P_ORPHANE_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_ORPHANE" ADD CONSTRAINT "F_P_ORPHANE_UK2" UNIQUE ("OR_CODE") ENABLE;
  ALTER TABLE "NOUR"."F_P_ORPHANE" ADD CONSTRAINT "F_P_ORPHANE_UK1" UNIQUE ("PERSON_ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_ORPHANE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table N3_F_GIVERS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_GIVERS" ADD CONSTRAINT "N3_F_GIVERS_UK1" UNIQUE ("GV_CODE") ENABLE;
  ALTER TABLE "NOUR"."N3_F_GIVERS" ADD CONSTRAINT "N3_F_GIVERS_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."N3_F_GIVERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALMS_TERM_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_TERM_NDY" ADD CONSTRAINT "ALMS_TERM_NDY_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."ALMS_TERM_NDY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table F_P_HANDICAPPED
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_HANDICAPPED" ADD CONSTRAINT "F_P_HANDICAPPED_UK1" UNIQUE ("HD_CODE") ENABLE;
  ALTER TABLE "NOUR"."F_P_HANDICAPPED" ADD CONSTRAINT "F_P_HANDICAPPED_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_HANDICAPPED" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ALMS_PLAN_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_PLAN_NDY" ADD CONSTRAINT "ALMS_PLAN_NDY_FK1" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "NOUR"."ALMS_PLAN" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALMS_TERM
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_TERM" ADD CONSTRAINT "ALMS_TERM_FK1" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "NOUR"."ALMS_PLAN" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALMS_TERM_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."ALMS_TERM_NDY" ADD CONSTRAINT "ALMS_TERM_NDY_FK1" FOREIGN KEY ("TERM_ID")
	  REFERENCES "NOUR"."ALMS_TERM" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_FAMILY
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_FAMILY" ADD CONSTRAINT "F_P_FAMILY_FK1" FOREIGN KEY ("GUARDIAN_ID")
	  REFERENCES "NOUR"."F_P_FAMILY_GUARDIAN" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_FAMILY_GUARDIAN
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_FAMILY_GUARDIAN" ADD CONSTRAINT "F_P_FAMILY_GUARDIAN_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_HANDICAPPED
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_HANDICAPPED" ADD CONSTRAINT "F_P_HANDICAPPED_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_NEEDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_NEEDS" ADD CONSTRAINT "F_P_NEEDS_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_ORPHANE
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_ORPHANE" ADD CONSTRAINT "F_P_ORPHANE_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_PERSON
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_PERSON" ADD CONSTRAINT "F_P_PERSON_FK1" FOREIGN KEY ("SPOUSE_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_PERSON" ADD CONSTRAINT "F_P_PERSON_FK2" FOREIGN KEY ("FATHER_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_PERSON" ADD CONSTRAINT "F_P_PERSON_FK3" FOREIGN KEY ("MOTHER_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ENABLE;
  ALTER TABLE "NOUR"."F_P_PERSON" ADD CONSTRAINT "F_P_PERSON_FK4" FOREIGN KEY ("FAMILY_CODE")
	  REFERENCES "NOUR"."F_P_FAMILY" ("FAMILY_CODE") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table F_P_PUPIL
--------------------------------------------------------

  ALTER TABLE "NOUR"."F_P_PUPIL" ADD CONSTRAINT "F_P_PUPIL_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "NOUR"."F_P_PERSON" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table L_F_BORROW
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_BORROW" ADD CONSTRAINT "L_F_BORROW_FK1" FOREIGN KEY ("EQ_CODE")
	  REFERENCES "NOUR"."L_F_EQUIPMENTS" ("EQ_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table L_F_EQUIPMENTS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_EQUIPMENTS" ADD CONSTRAINT "L_F_EQUIPMENTS_FK1" FOREIGN KEY ("EQ_TYPE")
	  REFERENCES "NOUR"."L_T_EQUIPMENT" ("EQ_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table L_F_MEMBERS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_F_MEMBERS" ADD CONSTRAINT "L_F_MEMBERS_FK1" FOREIGN KEY ("MM_MANAGER")
	  REFERENCES "NOUR"."L_F_MEMBERS" ("MM_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_F_MEMBERS" ADD CONSTRAINT "L_F_MEMBERS_FK2" FOREIGN KEY ("MM_SECTION")
	  REFERENCES "NOUR"."L_T_SECTIONS" ("SECTION_CODE") ENABLE;
  ALTER TABLE "NOUR"."L_F_MEMBERS" ADD CONSTRAINT "L_F_MEMBERS_FK3" FOREIGN KEY ("MM_JOB")
	  REFERENCES "NOUR"."L_T_JOBS" ("JOB_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table L_T_SECTIONS
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_SECTIONS" ADD CONSTRAINT "L_T_SECTIONS_FK1" FOREIGN KEY ("SECTION_PARENT")
	  REFERENCES "NOUR"."L_T_SECTIONS" ("SECTION_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table L_T_ZONES
--------------------------------------------------------

  ALTER TABLE "NOUR"."L_T_ZONES" ADD CONSTRAINT "L_T_ZONES_FK1" FOREIGN KEY ("PARENT_ZONE")
	  REFERENCES "NOUR"."L_T_ZONES" ("ZONE_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_ENGMT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_ENGMT" ADD CONSTRAINT "N3_ALMS_ENGMT_FK1" FOREIGN KEY ("GIVER_CODE")
	  REFERENCES "NOUR"."N3_F_GIVERS" ("GV_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_IN
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_IN" ADD CONSTRAINT "N3_ALMS_IN_FK1" FOREIGN KEY ("FUND_ACCOUNT")
	  REFERENCES "NOUR"."N3_F_ACCOUNTS" ("ACCOUNT") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_IN" ADD CONSTRAINT "N3_ALMS_IN_FK2" FOREIGN KEY ("GIVER_CODE")
	  REFERENCES "NOUR"."N3_F_GIVERS" ("GV_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_OUT
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_OUT" ADD CONSTRAINT "N3_ALMS_OUT_FK1" FOREIGN KEY ("FUND_ACCOUNT")
	  REFERENCES "NOUR"."N3_F_ACCOUNTS" ("ACCOUNT") ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_OUT" ADD CONSTRAINT "N3_ALMS_OUT_FK2" FOREIGN KEY ("NDY_ACCOUNT")
	  REFERENCES "NOUR"."N3_F_NEEDY" ("NDY_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_PLAN
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_PLAN" ADD CONSTRAINT "N3_ALMS_PLAN_FK1" FOREIGN KEY ("PLAN_ACCOUNT")
	  REFERENCES "NOUR"."N3_F_ACCOUNTS" ("ACCOUNT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_PLAN_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_PLAN_NDY" ADD CONSTRAINT "N3_ALMS_PLAN_NDY_FK1" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "NOUR"."N3_ALMS_PLAN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "NOUR"."N3_ALMS_PLAN_NDY" ADD CONSTRAINT "N3_ALMS_PLAN_NDY_FK2" FOREIGN KEY ("NDY_CODE")
	  REFERENCES "NOUR"."N3_F_NEEDY" ("NDY_CODE") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_TERM
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_TERM" ADD CONSTRAINT "N3_ALMS_TERM_FK1" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "NOUR"."N3_ALMS_PLAN" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_ALMS_TERM_NDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_ALMS_TERM_NDY" ADD CONSTRAINT "N3_ALMS_TERM_NDY_FK1" FOREIGN KEY ("TERM_ID")
	  REFERENCES "NOUR"."N3_ALMS_TERM" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_F_ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_ACCOUNTS" ADD CONSTRAINT "N3_F_ACCOUNTS_FK1" FOREIGN KEY ("ALMS_TYPE")
	  REFERENCES "NOUR"."N3_T_ALMS" ("ALMS_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_F_FUNDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_FUNDS" ADD CONSTRAINT "N3_F_FUNDS_FK1" FOREIGN KEY ("FUND_ACCOUNT")
	  REFERENCES "NOUR"."N3_F_ACCOUNTS" ("ACCOUNT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_F_NEEDY
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_NEEDY" ADD CONSTRAINT "N3_F_NEEDY_FK1" FOREIGN KEY ("SALARY_LVL")
	  REFERENCES "NOUR"."N3_T_SALARY_LVL" ("LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY" ADD CONSTRAINT "N3_F_NEEDY_FK2" FOREIGN KEY ("HEALTH_LVL")
	  REFERENCES "NOUR"."N3_T_HEALTH_LVL" ("LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY" ADD CONSTRAINT "N3_F_NEEDY_FK3" FOREIGN KEY ("SPOUSE_HEALTH_LVL")
	  REFERENCES "NOUR"."N3_T_HEALTH_LVL" ("LVL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_F_NEEDY_NEEDS
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_F_NEEDY_NEEDS" ADD CONSTRAINT "N3_F_NEEDY_NEEDS_FK1" FOREIGN KEY ("NDY_CODE")
	  REFERENCES "NOUR"."N3_F_NEEDY" ("NDY_CODE") ENABLE;
  ALTER TABLE "NOUR"."N3_F_NEEDY_NEEDS" ADD CONSTRAINT "N3_F_NEEDY_NEEDS_FK2" FOREIGN KEY ("NEED_TYPE")
	  REFERENCES "NOUR"."N3_T_NEEDS" ("NEED_TYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table N3_NEEDY_SCHOOL
--------------------------------------------------------

  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" ADD CONSTRAINT "N3_NEEDY_SCHOOL_FK1" FOREIGN KEY ("SCORING_LVL")
	  REFERENCES "NOUR"."N3_T_SCORING_LVL" ("SCORING_LVL") ENABLE;
  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" ADD CONSTRAINT "N3_NEEDY_SCHOOL_FK2" FOREIGN KEY ("SCHOOL_CODE")
	  REFERENCES "NOUR"."N3_T_SCHOOLS" ("SCHOOL_CODE") ENABLE;
  ALTER TABLE "NOUR"."N3_NEEDY_SCHOOL" ADD CONSTRAINT "N3_NEEDY_SCHOOL_FK3" FOREIGN KEY ("NDY_CODE")
	  REFERENCES "NOUR"."N3_F_NEEDY" ("NDY_CODE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger APEX$TEAM_DEV_FILES_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."APEX$TEAM_DEV_FILES_BIU" 
          before insert or update on apex$team_dev_files
          for each row
        declare
           l_filesize_quota number := 15728640;
           l_filesize_mb    number;
        begin
          for c1 in
          (
              select
                  team_dev_fs_limit
              from
                  apex_workspaces
              where
                  workspace_id = v( 'APP_SECURITY_GROUP_ID' )
          )
          loop
            l_filesize_quota := c1.team_dev_fs_limit;
            l_filesize_mb    := l_filesize_quota/1048576;
          end loop;
          if :new."ID" is null then
            select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from sys.dual;
          end if;
          if inserting then
           :new.created := localtimestamp;
           :new.created_by := nvl(wwv_flow.g_user,user);
           :new.updated := localtimestamp;
           :new.updated_by := nvl(wwv_flow.g_user,user);
           :new.row_version_number := 1;
         elsif updating then
           :new.row_version_number := nvl(:old.row_version_number,1) + 1;
         end if;
         if (inserting or updating) and nvl(sys.dbms_lob.getlength(:new.file_blob),0) > l_filesize_quota then
           raise_application_error(-20000, wwv_flow_lang.system_message('FILE_TOO_LARGE', trunc(l_filesize_mb)));
         end if;
         if inserting or updating then
           :new.updated := localtimestamp;
           :new.updated_by := nvl(wwv_flow.g_user,user);
         end if;
        end;
        
/
ALTER TRIGGER "NOUR"."APEX$TEAM_DEV_FILES_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger F_P_ORPHANE_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."F_P_ORPHANE_BIU" 
   before insert or update on F_P_ORPHANE
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."F_P_ORPHANE_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger F_P_PERSON_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."F_P_PERSON_BIU" 
   before insert or update on F_P_PERSON
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."F_P_PERSON_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_ENGMT_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_ENGMT_BIU" 
   before insert or update on N3_ALMS_ENGMT
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_ALMS_ENGMT_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_IN_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_IN_BIU" 
   before insert or update on N3_ALMS_IN
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_ALMS_IN_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_OUT_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_OUT_BIU" 
   before insert or update on N3_ALMS_OUT
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_ALMS_OUT_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_PLAN_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_PLAN_BIU" 
   before insert or update on N3_ALMS_PLAN
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_ALMS_PLAN_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_PLAN_NDY_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_PLAN_NDY_BIU" 
   before insert or update on N3_ALMS_PLAN_NDY
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_ALMS_PLAN_NDY_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_TERM_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_TERM_BIU" 
   before insert or update on N3_ALMS_TERM
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_ALMS_TERM_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_ALMS_TERM_NDY_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_ALMS_TERM_NDY_BIU" 
   before insert or update on N3_ALMS_TERM_NDY
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_ALMS_TERM_NDY_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_ACCOUNTS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_ACCOUNTS_BIU" 
   before insert or update on N3_F_ACCOUNTS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_ACCOUNTS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_EQUIPMENT_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_EQUIPMENT_BIU" 
   before insert or update on N3_F_EQUIPMENT
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_EQUIPMENT_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_FAMILY_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_FAMILY_BIU" 
   before insert or update on N3_F_FAMILY
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_F_FAMILY_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_FUNDS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_FUNDS_BIU" 
   before insert or update on N3_F_FUNDS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_FUNDS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_GIVERS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_GIVERS_BIU" 
   before insert or update on N3_F_GIVERS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_GIVERS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_NEEDY_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_NEEDY_BIU" 
   before insert or update on n3_f_needy
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_NEEDY_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_NEEDY_NEEDS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_NEEDY_NEEDS_BIU" 
   before insert or update on N3_F_NEEDY_NEEDS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_F_NEEDY_NEEDS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_F_ORPHANE_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_F_ORPHANE_BIU" 
   before insert or update on N3_F_ORPHANE
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;

/
ALTER TRIGGER "NOUR"."N3_F_ORPHANE_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_GIFTS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_GIFTS_BIU" 
   before insert or update on N3_GIFTS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_GIFTS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_GIFTS_IN_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_GIFTS_IN_BIU" 
   before insert or update on N3_GIFTS_IN
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_GIFTS_IN_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_NEEDY_SCHOOL_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_NEEDY_SCHOOL_BIU" 
   before insert or update on N3_NEEDY_SCHOOL
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_NEEDY_SCHOOL_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_ALMS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_ALMS_BIU" 
   before insert or update on N3_T_ALMS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_ALMS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_EQUIPMENT_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_EQUIPMENT_BIU" 
   before insert or update on N3_T_EQUIPMENT
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_EQUIPMENT_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_HEALTH_LVL_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_HEALTH_LVL_BIU" 
   before insert or update on n3_t_health_lvl
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_HEALTH_LVL_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_NEEDS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_NEEDS_BIU" 
   before insert or update on N3_T_NEEDS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_NEEDS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_SALARY_LVL_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_SALARY_LVL_BIU" 
   before insert or update on n3_t_salary_lvl
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_SALARY_LVL_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_SCHOOLS_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_SCHOOLS_BIU" 
   before insert or update on N3_T_SCHOOLS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_SCHOOLS_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Trigger N3_T_SCORING_LVL_BIU
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "NOUR"."N3_T_SCORING_LVL_BIU" 
   before insert or update on n3_t_scoring_lvl
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select gen_id() into :NEW."ID" from dual; 
      end if; 
      
     -- :new.created_on := sysdate;
     -- :new.created_by := nvl(v('APP_USER'),USER);
   end if; 
   
   --:new.modified_on := sysdate;
   --:new.modified_by := nvl(v('APP_USER'),USER);
end;
/
ALTER TRIGGER "NOUR"."N3_T_SCORING_LVL_BIU" ENABLE;
--------------------------------------------------------
--  DDL for Function GEN_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "NOUR"."GEN_ID" RETURN NUMBER AS 
 l_id  number;
    begin        
        select to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
          into l_id
          from dual;
    
        return l_id;
END GEN_ID;

/
