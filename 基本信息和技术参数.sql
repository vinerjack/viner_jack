          SELECT 
           BC.ID id,
           C.ID classifyId ,
           null techParamId,
           BC.FIELD_COLUMN columnName,
           BC.FIELD_NAME techParamName,
           null units,
           BC.IS_NULLABLE  isMandatory,
         BC.IS_DISPLAY isShow,
         BC.DATA_TYPE dataType,
         NULL TECHPARAMVALUE,
         BC.SORT_NO sortNo,
         BC.IS_VENDOR_FILL isVendorFill
         FROM DM_BASEINFO_CONFIG BC, DM_CLASSIFY C
         WHERE BC.BASEINFO_TYPEID = C.BASEINFO_TYPEID
        --AND C.ID ='121'
         AND BC.OBJECT_TYPE = '1'
         AND BC.IS_DISPLAY = 1
         and BC.IS_SPECIAL='1'  
         AND BC.POWER_GRID_FLAG = 2;
         
         SELECT C.TABLE_NAME FROM DM_CLASSIFY C WHERE C.ID = '14086';
         
         SELECT * FROM DM_A_ASSET_TEMP;
         
         
         SELECT CT.ID id,
		       CT.CLASSIFY_ID classifyId,
		       CT.TECHPARAM_ID techParamId,
		       CT.COLUMN_NAME columnName,
		       T.TECHPARAM_NAME techParamName,
		       T.UNITS units,
		       CT.IS_MANDATORY isMandatory,
		       CT.IS_SHOW isShow,
		       CT.DATA_TYPE dataType,
		       NULL TECHPARAMVALUE,
		       CT.SORT_NO sortNo,
		       CT.is_vendor_fill isVendorFill
		FROM DM_CLASSIFY_TECHPARAM CT, DM_TECHPARAM T
		WHERE CT.TECHPARAM_ID = T.ID AND T.TECHPARAM_NAME IS NOT NULL;
    
    --14085
    SELECT D.CLASSIFY_ID FROM DM_PARTS_D_TEMP D WHERE D.ID = 'D690BFFF74274A7CBEA5006ACAB23212';
    
    		SELECT CT.ID id,
		       CT.CLASSIFY_ID classifyId,
		       CT.TECHPARAM_ID techParamId,
		       CT.COLUMN_NAME columnName,
		       T.TECHPARAM_NAME techParamName,
		       T.UNITS units,
		       CT.IS_MANDATORY isMandatory,
		       CT.IS_SHOW isShow,
		       CT.DATA_TYPE dataType,
		       NULL TECHPARAMVALUE,
		       CT.SORT_NO sortNo,
		       CT.is_vendor_fill isVendorFill
		FROM DM_CLASSIFY_TECHPARAM CT, DM_TECHPARAM T
		WHERE CT.TECHPARAM_ID = T.ID AND T.TECHPARAM_NAME IS NOT NULL
			AND CT.CLASSIFY_ID = '14085'
		ORDER BY CT.SORT_NO;
    
    SELECT C.TABLE_NAME FROM DM_CLASSIFY C WHERE C.ID = '14085';

    
 --   COL10 COL51
    
 		SELECT
	  COL10,
    COL51		
    FROM DM_A_ASSET_TEMP 
    WHERE ID = 'D690BFFF74274A7CBEA5006ACAB23212';
    
    
    --设备基本信息
    
    SELECT D.CLASSIFY_ID FROM DM_DEVICE_D_TEMP D WHERE D.ID = '701301C93D234638AD53625DB4D78D20';
    
    --14022
    
    
    
    		SELECT C.ID AS CLASSIFYID, 
				C.TABLE_NAME AS tableName,
				B.FIELD_NAME AS fieldName,
				B.FIELD_ALIAS AS fieldAlias,
				B.FIELD_COLUMN AS fieldColumn,
				B.DATA_TYPE AS dataType,
				B.IS_SPECIAL AS isSpecial,
				B.IS_ONLYREAD AS isOnlyread,
				B.IS_NULLABLE AS isNullable,
				B.is_vendor_fill AS isvendorfill
  		 FROM DM_CLASSIFY C, DM_BASEINFO_CONFIG B
 		WHERE C.BASEINFO_TYPEID = B.BASEINFO_TYPEID and B.IS_DISPLAY=1
			AND C.ID = '14022'
			AND B.POWER_GRID_FLAG = 2
		ORDER BY B.SORT_NO;
    
    --部件基本信息
    
    SELECT B.FIELD_NAME fieldName,
			B.FIELD_ALIAS fieldAlias,
			B.FIELD_COLUMN fieldColumn,
			B.DATA_TYPE dataType,
			B.IS_SPECIAL isSpecial,
			B.IS_ONLYREAD isOnlyread,
			B.IS_NULLABLE isNullable,
			B.DATA_LENGTH dataLength
  		 FROM DM_BASEINFO_CONFIG B
 		WHERE B.IS_DISPLAY=1
    and b.baseinfo_typeid = '121'
    and b.power_grid_flag = '1';
    
    
    --技术参数查询
    
    		SELECT CT.ID id,
		       CT.CLASSIFY_ID classifyId,
		       CT.TECHPARAM_ID techParamId,
		       CT.COLUMN_NAME columnName,
		       T.TECHPARAM_NAME techParamName,
		       T.UNITS units,
		       CT.IS_MANDATORY isMandatory,
		       CT.IS_SHOW isShow,
		       CT.DATA_TYPE dataType,
		       NULL TECHPARAMVALUE,
		       CT.SORT_NO sortNo,
		       CT.is_vendor_fill isVendorFill
		FROM DM_CLASSIFY_TECHPARAM CT, DM_TECHPARAM T
		WHERE CT.TECHPARAM_ID = T.ID AND T.TECHPARAM_NAME IS NOT NULL
		and ct.is_show_to_basic = 2
			AND CT.CLASSIFY_ID = '14022'
			ORDER BY CT.SORT_NO
			 union all
		       SELECT 
		       BC.ID id,
		       C.ID classifyId ,
		       null techParamId,
		       BC.FIELD_COLUMN columnName,
		       BC.FIELD_NAME techParamName,
		       null units,
		       BC.IS_NULLABLE  isMandatory,
		     BC.IS_DISPLAY isShow,
		     BC.DATA_TYPE dataType,
		     NULL TECHPARAMVALUE,
		     BC.SORT_NO sortNo,
		     BC.IS_VENDOR_FILL isVendorFill
		     FROM DM_BASEINFO_CONFIG BC, DM_CLASSIFY C
		     WHERE BC.BASEINFO_TYPEID = C.BASEINFO_TYPEID
				AND C.ID = '14022'
		     AND BC.OBJECT_TYPE = '1'
		     AND BC.IS_DISPLAY = 1
		     and BC.IS_SPECIAL='1'  
			AND BC.POWER_GRID_FLAG = 2;
    
    
    

    

    
    
