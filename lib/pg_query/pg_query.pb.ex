defmodule PgQuery.OverridingKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:OVERRIDING_KIND_UNDEFINED, 0)
  field(:OVERRIDING_NOT_SET, 1)
  field(:OVERRIDING_USER_VALUE, 2)
  field(:OVERRIDING_SYSTEM_VALUE, 3)
end

defmodule PgQuery.QuerySource do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:QUERY_SOURCE_UNDEFINED, 0)
  field(:QSRC_ORIGINAL, 1)
  field(:QSRC_PARSER, 2)
  field(:QSRC_INSTEAD_RULE, 3)
  field(:QSRC_QUAL_INSTEAD_RULE, 4)
  field(:QSRC_NON_INSTEAD_RULE, 5)
end

defmodule PgQuery.SortByDir do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SORT_BY_DIR_UNDEFINED, 0)
  field(:SORTBY_DEFAULT, 1)
  field(:SORTBY_ASC, 2)
  field(:SORTBY_DESC, 3)
  field(:SORTBY_USING, 4)
end

defmodule PgQuery.SortByNulls do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SORT_BY_NULLS_UNDEFINED, 0)
  field(:SORTBY_NULLS_DEFAULT, 1)
  field(:SORTBY_NULLS_FIRST, 2)
  field(:SORTBY_NULLS_LAST, 3)
end

defmodule PgQuery.A_Expr_Kind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:A_EXPR_KIND_UNDEFINED, 0)
  field(:AEXPR_OP, 1)
  field(:AEXPR_OP_ANY, 2)
  field(:AEXPR_OP_ALL, 3)
  field(:AEXPR_DISTINCT, 4)
  field(:AEXPR_NOT_DISTINCT, 5)
  field(:AEXPR_NULLIF, 6)
  field(:AEXPR_OF, 7)
  field(:AEXPR_IN, 8)
  field(:AEXPR_LIKE, 9)
  field(:AEXPR_ILIKE, 10)
  field(:AEXPR_SIMILAR, 11)
  field(:AEXPR_BETWEEN, 12)
  field(:AEXPR_NOT_BETWEEN, 13)
  field(:AEXPR_BETWEEN_SYM, 14)
  field(:AEXPR_NOT_BETWEEN_SYM, 15)
  field(:AEXPR_PAREN, 16)
end

defmodule PgQuery.RoleSpecType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ROLE_SPEC_TYPE_UNDEFINED, 0)
  field(:ROLESPEC_CSTRING, 1)
  field(:ROLESPEC_CURRENT_USER, 2)
  field(:ROLESPEC_SESSION_USER, 3)
  field(:ROLESPEC_PUBLIC, 4)
end

defmodule PgQuery.TableLikeOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:TABLE_LIKE_OPTION_UNDEFINED, 0)
  field(:CREATE_TABLE_LIKE_COMMENTS, 1)
  field(:CREATE_TABLE_LIKE_CONSTRAINTS, 2)
  field(:CREATE_TABLE_LIKE_DEFAULTS, 3)
  field(:CREATE_TABLE_LIKE_GENERATED, 4)
  field(:CREATE_TABLE_LIKE_IDENTITY, 5)
  field(:CREATE_TABLE_LIKE_INDEXES, 6)
  field(:CREATE_TABLE_LIKE_STATISTICS, 7)
  field(:CREATE_TABLE_LIKE_STORAGE, 8)
  field(:CREATE_TABLE_LIKE_ALL, 9)
end

defmodule PgQuery.DefElemAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:DEF_ELEM_ACTION_UNDEFINED, 0)
  field(:DEFELEM_UNSPEC, 1)
  field(:DEFELEM_SET, 2)
  field(:DEFELEM_ADD, 3)
  field(:DEFELEM_DROP, 4)
end

defmodule PgQuery.PartitionRangeDatumKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:PARTITION_RANGE_DATUM_KIND_UNDEFINED, 0)
  field(:PARTITION_RANGE_DATUM_MINVALUE, 1)
  field(:PARTITION_RANGE_DATUM_VALUE, 2)
  field(:PARTITION_RANGE_DATUM_MAXVALUE, 3)
end

defmodule PgQuery.RTEKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:RTEKIND_UNDEFINED, 0)
  field(:RTE_RELATION, 1)
  field(:RTE_SUBQUERY, 2)
  field(:RTE_JOIN, 3)
  field(:RTE_FUNCTION, 4)
  field(:RTE_TABLEFUNC, 5)
  field(:RTE_VALUES, 6)
  field(:RTE_CTE, 7)
  field(:RTE_NAMEDTUPLESTORE, 8)
  field(:RTE_RESULT, 9)
end

defmodule PgQuery.WCOKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:WCOKIND_UNDEFINED, 0)
  field(:WCO_VIEW_CHECK, 1)
  field(:WCO_RLS_INSERT_CHECK, 2)
  field(:WCO_RLS_UPDATE_CHECK, 3)
  field(:WCO_RLS_CONFLICT_CHECK, 4)
end

defmodule PgQuery.GroupingSetKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:GROUPING_SET_KIND_UNDEFINED, 0)
  field(:GROUPING_SET_EMPTY, 1)
  field(:GROUPING_SET_SIMPLE, 2)
  field(:GROUPING_SET_ROLLUP, 3)
  field(:GROUPING_SET_CUBE, 4)
  field(:GROUPING_SET_SETS, 5)
end

defmodule PgQuery.CTEMaterialize do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:CTEMATERIALIZE_UNDEFINED, 0)
  field(:CTEMaterializeDefault, 1)
  field(:CTEMaterializeAlways, 2)
  field(:CTEMaterializeNever, 3)
end

defmodule PgQuery.SetOperation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SET_OPERATION_UNDEFINED, 0)
  field(:SETOP_NONE, 1)
  field(:SETOP_UNION, 2)
  field(:SETOP_INTERSECT, 3)
  field(:SETOP_EXCEPT, 4)
end

defmodule PgQuery.ObjectType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:OBJECT_TYPE_UNDEFINED, 0)
  field(:OBJECT_ACCESS_METHOD, 1)
  field(:OBJECT_AGGREGATE, 2)
  field(:OBJECT_AMOP, 3)
  field(:OBJECT_AMPROC, 4)
  field(:OBJECT_ATTRIBUTE, 5)
  field(:OBJECT_CAST, 6)
  field(:OBJECT_COLUMN, 7)
  field(:OBJECT_COLLATION, 8)
  field(:OBJECT_CONVERSION, 9)
  field(:OBJECT_DATABASE, 10)
  field(:OBJECT_DEFAULT, 11)
  field(:OBJECT_DEFACL, 12)
  field(:OBJECT_DOMAIN, 13)
  field(:OBJECT_DOMCONSTRAINT, 14)
  field(:OBJECT_EVENT_TRIGGER, 15)
  field(:OBJECT_EXTENSION, 16)
  field(:OBJECT_FDW, 17)
  field(:OBJECT_FOREIGN_SERVER, 18)
  field(:OBJECT_FOREIGN_TABLE, 19)
  field(:OBJECT_FUNCTION, 20)
  field(:OBJECT_INDEX, 21)
  field(:OBJECT_LANGUAGE, 22)
  field(:OBJECT_LARGEOBJECT, 23)
  field(:OBJECT_MATVIEW, 24)
  field(:OBJECT_OPCLASS, 25)
  field(:OBJECT_OPERATOR, 26)
  field(:OBJECT_OPFAMILY, 27)
  field(:OBJECT_POLICY, 28)
  field(:OBJECT_PROCEDURE, 29)
  field(:OBJECT_PUBLICATION, 30)
  field(:OBJECT_PUBLICATION_REL, 31)
  field(:OBJECT_ROLE, 32)
  field(:OBJECT_ROUTINE, 33)
  field(:OBJECT_RULE, 34)
  field(:OBJECT_SCHEMA, 35)
  field(:OBJECT_SEQUENCE, 36)
  field(:OBJECT_SUBSCRIPTION, 37)
  field(:OBJECT_STATISTIC_EXT, 38)
  field(:OBJECT_TABCONSTRAINT, 39)
  field(:OBJECT_TABLE, 40)
  field(:OBJECT_TABLESPACE, 41)
  field(:OBJECT_TRANSFORM, 42)
  field(:OBJECT_TRIGGER, 43)
  field(:OBJECT_TSCONFIGURATION, 44)
  field(:OBJECT_TSDICTIONARY, 45)
  field(:OBJECT_TSPARSER, 46)
  field(:OBJECT_TSTEMPLATE, 47)
  field(:OBJECT_TYPE, 48)
  field(:OBJECT_USER_MAPPING, 49)
  field(:OBJECT_VIEW, 50)
end

defmodule PgQuery.DropBehavior do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:DROP_BEHAVIOR_UNDEFINED, 0)
  field(:DROP_RESTRICT, 1)
  field(:DROP_CASCADE, 2)
end

defmodule PgQuery.AlterTableType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ALTER_TABLE_TYPE_UNDEFINED, 0)
  field(:AT_AddColumn, 1)
  field(:AT_AddColumnRecurse, 2)
  field(:AT_AddColumnToView, 3)
  field(:AT_ColumnDefault, 4)
  field(:AT_CookedColumnDefault, 5)
  field(:AT_DropNotNull, 6)
  field(:AT_SetNotNull, 7)
  field(:AT_DropExpression, 8)
  field(:AT_CheckNotNull, 9)
  field(:AT_SetStatistics, 10)
  field(:AT_SetOptions, 11)
  field(:AT_ResetOptions, 12)
  field(:AT_SetStorage, 13)
  field(:AT_DropColumn, 14)
  field(:AT_DropColumnRecurse, 15)
  field(:AT_AddIndex, 16)
  field(:AT_ReAddIndex, 17)
  field(:AT_AddConstraint, 18)
  field(:AT_AddConstraintRecurse, 19)
  field(:AT_ReAddConstraint, 20)
  field(:AT_ReAddDomainConstraint, 21)
  field(:AT_AlterConstraint, 22)
  field(:AT_ValidateConstraint, 23)
  field(:AT_ValidateConstraintRecurse, 24)
  field(:AT_AddIndexConstraint, 25)
  field(:AT_DropConstraint, 26)
  field(:AT_DropConstraintRecurse, 27)
  field(:AT_ReAddComment, 28)
  field(:AT_AlterColumnType, 29)
  field(:AT_AlterColumnGenericOptions, 30)
  field(:AT_ChangeOwner, 31)
  field(:AT_ClusterOn, 32)
  field(:AT_DropCluster, 33)
  field(:AT_SetLogged, 34)
  field(:AT_SetUnLogged, 35)
  field(:AT_DropOids, 36)
  field(:AT_SetTableSpace, 37)
  field(:AT_SetRelOptions, 38)
  field(:AT_ResetRelOptions, 39)
  field(:AT_ReplaceRelOptions, 40)
  field(:AT_EnableTrig, 41)
  field(:AT_EnableAlwaysTrig, 42)
  field(:AT_EnableReplicaTrig, 43)
  field(:AT_DisableTrig, 44)
  field(:AT_EnableTrigAll, 45)
  field(:AT_DisableTrigAll, 46)
  field(:AT_EnableTrigUser, 47)
  field(:AT_DisableTrigUser, 48)
  field(:AT_EnableRule, 49)
  field(:AT_EnableAlwaysRule, 50)
  field(:AT_EnableReplicaRule, 51)
  field(:AT_DisableRule, 52)
  field(:AT_AddInherit, 53)
  field(:AT_DropInherit, 54)
  field(:AT_AddOf, 55)
  field(:AT_DropOf, 56)
  field(:AT_ReplicaIdentity, 57)
  field(:AT_EnableRowSecurity, 58)
  field(:AT_DisableRowSecurity, 59)
  field(:AT_ForceRowSecurity, 60)
  field(:AT_NoForceRowSecurity, 61)
  field(:AT_GenericOptions, 62)
  field(:AT_AttachPartition, 63)
  field(:AT_DetachPartition, 64)
  field(:AT_AddIdentity, 65)
  field(:AT_SetIdentity, 66)
  field(:AT_DropIdentity, 67)
end

defmodule PgQuery.GrantTargetType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:GRANT_TARGET_TYPE_UNDEFINED, 0)
  field(:ACL_TARGET_OBJECT, 1)
  field(:ACL_TARGET_ALL_IN_SCHEMA, 2)
  field(:ACL_TARGET_DEFAULTS, 3)
end

defmodule PgQuery.VariableSetKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:VARIABLE_SET_KIND_UNDEFINED, 0)
  field(:VAR_SET_VALUE, 1)
  field(:VAR_SET_DEFAULT, 2)
  field(:VAR_SET_CURRENT, 3)
  field(:VAR_SET_MULTI, 4)
  field(:VAR_RESET, 5)
  field(:VAR_RESET_ALL, 6)
end

defmodule PgQuery.ConstrType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:CONSTR_TYPE_UNDEFINED, 0)
  field(:CONSTR_NULL, 1)
  field(:CONSTR_NOTNULL, 2)
  field(:CONSTR_DEFAULT, 3)
  field(:CONSTR_IDENTITY, 4)
  field(:CONSTR_GENERATED, 5)
  field(:CONSTR_CHECK, 6)
  field(:CONSTR_PRIMARY, 7)
  field(:CONSTR_UNIQUE, 8)
  field(:CONSTR_EXCLUSION, 9)
  field(:CONSTR_FOREIGN, 10)
  field(:CONSTR_ATTR_DEFERRABLE, 11)
  field(:CONSTR_ATTR_NOT_DEFERRABLE, 12)
  field(:CONSTR_ATTR_DEFERRED, 13)
  field(:CONSTR_ATTR_IMMEDIATE, 14)
end

defmodule PgQuery.ImportForeignSchemaType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:IMPORT_FOREIGN_SCHEMA_TYPE_UNDEFINED, 0)
  field(:FDW_IMPORT_SCHEMA_ALL, 1)
  field(:FDW_IMPORT_SCHEMA_LIMIT_TO, 2)
  field(:FDW_IMPORT_SCHEMA_EXCEPT, 3)
end

defmodule PgQuery.RoleStmtType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ROLE_STMT_TYPE_UNDEFINED, 0)
  field(:ROLESTMT_ROLE, 1)
  field(:ROLESTMT_USER, 2)
  field(:ROLESTMT_GROUP, 3)
end

defmodule PgQuery.FetchDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:FETCH_DIRECTION_UNDEFINED, 0)
  field(:FETCH_FORWARD, 1)
  field(:FETCH_BACKWARD, 2)
  field(:FETCH_ABSOLUTE, 3)
  field(:FETCH_RELATIVE, 4)
end

defmodule PgQuery.FunctionParameterMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:FUNCTION_PARAMETER_MODE_UNDEFINED, 0)
  field(:FUNC_PARAM_IN, 1)
  field(:FUNC_PARAM_OUT, 2)
  field(:FUNC_PARAM_INOUT, 3)
  field(:FUNC_PARAM_VARIADIC, 4)
  field(:FUNC_PARAM_TABLE, 5)
end

defmodule PgQuery.TransactionStmtKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:TRANSACTION_STMT_KIND_UNDEFINED, 0)
  field(:TRANS_STMT_BEGIN, 1)
  field(:TRANS_STMT_START, 2)
  field(:TRANS_STMT_COMMIT, 3)
  field(:TRANS_STMT_ROLLBACK, 4)
  field(:TRANS_STMT_SAVEPOINT, 5)
  field(:TRANS_STMT_RELEASE, 6)
  field(:TRANS_STMT_ROLLBACK_TO, 7)
  field(:TRANS_STMT_PREPARE, 8)
  field(:TRANS_STMT_COMMIT_PREPARED, 9)
  field(:TRANS_STMT_ROLLBACK_PREPARED, 10)
end

defmodule PgQuery.ViewCheckOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:VIEW_CHECK_OPTION_UNDEFINED, 0)
  field(:NO_CHECK_OPTION, 1)
  field(:LOCAL_CHECK_OPTION, 2)
  field(:CASCADED_CHECK_OPTION, 3)
end

defmodule PgQuery.ClusterOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:CLUSTER_OPTION_UNDEFINED, 0)
  field(:CLUOPT_RECHECK, 1)
  field(:CLUOPT_VERBOSE, 2)
end

defmodule PgQuery.DiscardMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:DISCARD_MODE_UNDEFINED, 0)
  field(:DISCARD_ALL, 1)
  field(:DISCARD_PLANS, 2)
  field(:DISCARD_SEQUENCES, 3)
  field(:DISCARD_TEMP, 4)
end

defmodule PgQuery.ReindexObjectType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:REINDEX_OBJECT_TYPE_UNDEFINED, 0)
  field(:REINDEX_OBJECT_INDEX, 1)
  field(:REINDEX_OBJECT_TABLE, 2)
  field(:REINDEX_OBJECT_SCHEMA, 3)
  field(:REINDEX_OBJECT_SYSTEM, 4)
  field(:REINDEX_OBJECT_DATABASE, 5)
end

defmodule PgQuery.AlterTSConfigType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ALTER_TSCONFIG_TYPE_UNDEFINED, 0)
  field(:ALTER_TSCONFIG_ADD_MAPPING, 1)
  field(:ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN, 2)
  field(:ALTER_TSCONFIG_REPLACE_DICT, 3)
  field(:ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN, 4)
  field(:ALTER_TSCONFIG_DROP_MAPPING, 5)
end

defmodule PgQuery.AlterSubscriptionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ALTER_SUBSCRIPTION_TYPE_UNDEFINED, 0)
  field(:ALTER_SUBSCRIPTION_OPTIONS, 1)
  field(:ALTER_SUBSCRIPTION_CONNECTION, 2)
  field(:ALTER_SUBSCRIPTION_PUBLICATION, 3)
  field(:ALTER_SUBSCRIPTION_REFRESH, 4)
  field(:ALTER_SUBSCRIPTION_ENABLED, 5)
end

defmodule PgQuery.OnCommitAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ON_COMMIT_ACTION_UNDEFINED, 0)
  field(:ONCOMMIT_NOOP, 1)
  field(:ONCOMMIT_PRESERVE_ROWS, 2)
  field(:ONCOMMIT_DELETE_ROWS, 3)
  field(:ONCOMMIT_DROP, 4)
end

defmodule PgQuery.ParamKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:PARAM_KIND_UNDEFINED, 0)
  field(:PARAM_EXTERN, 1)
  field(:PARAM_EXEC, 2)
  field(:PARAM_SUBLINK, 3)
  field(:PARAM_MULTIEXPR, 4)
end

defmodule PgQuery.CoercionContext do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:COERCION_CONTEXT_UNDEFINED, 0)
  field(:COERCION_IMPLICIT, 1)
  field(:COERCION_ASSIGNMENT, 2)
  field(:COERCION_EXPLICIT, 3)
end

defmodule PgQuery.CoercionForm do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:COERCION_FORM_UNDEFINED, 0)
  field(:COERCE_EXPLICIT_CALL, 1)
  field(:COERCE_EXPLICIT_CAST, 2)
  field(:COERCE_IMPLICIT_CAST, 3)
end

defmodule PgQuery.BoolExprType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:BOOL_EXPR_TYPE_UNDEFINED, 0)
  field(:AND_EXPR, 1)
  field(:OR_EXPR, 2)
  field(:NOT_EXPR, 3)
end

defmodule PgQuery.SubLinkType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SUB_LINK_TYPE_UNDEFINED, 0)
  field(:EXISTS_SUBLINK, 1)
  field(:ALL_SUBLINK, 2)
  field(:ANY_SUBLINK, 3)
  field(:ROWCOMPARE_SUBLINK, 4)
  field(:EXPR_SUBLINK, 5)
  field(:MULTIEXPR_SUBLINK, 6)
  field(:ARRAY_SUBLINK, 7)
  field(:CTE_SUBLINK, 8)
end

defmodule PgQuery.RowCompareType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ROW_COMPARE_TYPE_UNDEFINED, 0)
  field(:ROWCOMPARE_LT, 1)
  field(:ROWCOMPARE_LE, 2)
  field(:ROWCOMPARE_EQ, 3)
  field(:ROWCOMPARE_GE, 4)
  field(:ROWCOMPARE_GT, 5)
  field(:ROWCOMPARE_NE, 6)
end

defmodule PgQuery.MinMaxOp do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:MIN_MAX_OP_UNDEFINED, 0)
  field(:IS_GREATEST, 1)
  field(:IS_LEAST, 2)
end

defmodule PgQuery.SQLValueFunctionOp do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SQLVALUE_FUNCTION_OP_UNDEFINED, 0)
  field(:SVFOP_CURRENT_DATE, 1)
  field(:SVFOP_CURRENT_TIME, 2)
  field(:SVFOP_CURRENT_TIME_N, 3)
  field(:SVFOP_CURRENT_TIMESTAMP, 4)
  field(:SVFOP_CURRENT_TIMESTAMP_N, 5)
  field(:SVFOP_LOCALTIME, 6)
  field(:SVFOP_LOCALTIME_N, 7)
  field(:SVFOP_LOCALTIMESTAMP, 8)
  field(:SVFOP_LOCALTIMESTAMP_N, 9)
  field(:SVFOP_CURRENT_ROLE, 10)
  field(:SVFOP_CURRENT_USER, 11)
  field(:SVFOP_USER, 12)
  field(:SVFOP_SESSION_USER, 13)
  field(:SVFOP_CURRENT_CATALOG, 14)
  field(:SVFOP_CURRENT_SCHEMA, 15)
end

defmodule PgQuery.XmlExprOp do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:XML_EXPR_OP_UNDEFINED, 0)
  field(:IS_XMLCONCAT, 1)
  field(:IS_XMLELEMENT, 2)
  field(:IS_XMLFOREST, 3)
  field(:IS_XMLPARSE, 4)
  field(:IS_XMLPI, 5)
  field(:IS_XMLROOT, 6)
  field(:IS_XMLSERIALIZE, 7)
  field(:IS_DOCUMENT, 8)
end

defmodule PgQuery.XmlOptionType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:XML_OPTION_TYPE_UNDEFINED, 0)
  field(:XMLOPTION_DOCUMENT, 1)
  field(:XMLOPTION_CONTENT, 2)
end

defmodule PgQuery.NullTestType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:NULL_TEST_TYPE_UNDEFINED, 0)
  field(:IS_NULL, 1)
  field(:IS_NOT_NULL, 2)
end

defmodule PgQuery.BoolTestType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:BOOL_TEST_TYPE_UNDEFINED, 0)
  field(:IS_TRUE, 1)
  field(:IS_NOT_TRUE, 2)
  field(:IS_FALSE, 3)
  field(:IS_NOT_FALSE, 4)
  field(:IS_UNKNOWN, 5)
  field(:IS_NOT_UNKNOWN, 6)
end

defmodule PgQuery.CmdType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:CMD_TYPE_UNDEFINED, 0)
  field(:CMD_UNKNOWN, 1)
  field(:CMD_SELECT, 2)
  field(:CMD_UPDATE, 3)
  field(:CMD_INSERT, 4)
  field(:CMD_DELETE, 5)
  field(:CMD_UTILITY, 6)
  field(:CMD_NOTHING, 7)
end

defmodule PgQuery.JoinType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:JOIN_TYPE_UNDEFINED, 0)
  field(:JOIN_INNER, 1)
  field(:JOIN_LEFT, 2)
  field(:JOIN_FULL, 3)
  field(:JOIN_RIGHT, 4)
  field(:JOIN_SEMI, 5)
  field(:JOIN_ANTI, 6)
  field(:JOIN_UNIQUE_OUTER, 7)
  field(:JOIN_UNIQUE_INNER, 8)
end

defmodule PgQuery.AggStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:AGG_STRATEGY_UNDEFINED, 0)
  field(:AGG_PLAIN, 1)
  field(:AGG_SORTED, 2)
  field(:AGG_HASHED, 3)
  field(:AGG_MIXED, 4)
end

defmodule PgQuery.AggSplit do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:AGG_SPLIT_UNDEFINED, 0)
  field(:AGGSPLIT_SIMPLE, 1)
  field(:AGGSPLIT_INITIAL_SERIAL, 2)
  field(:AGGSPLIT_FINAL_DESERIAL, 3)
end

defmodule PgQuery.SetOpCmd do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SET_OP_CMD_UNDEFINED, 0)
  field(:SETOPCMD_INTERSECT, 1)
  field(:SETOPCMD_INTERSECT_ALL, 2)
  field(:SETOPCMD_EXCEPT, 3)
  field(:SETOPCMD_EXCEPT_ALL, 4)
end

defmodule PgQuery.SetOpStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:SET_OP_STRATEGY_UNDEFINED, 0)
  field(:SETOP_SORTED, 1)
  field(:SETOP_HASHED, 2)
end

defmodule PgQuery.OnConflictAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ON_CONFLICT_ACTION_UNDEFINED, 0)
  field(:ONCONFLICT_NONE, 1)
  field(:ONCONFLICT_NOTHING, 2)
  field(:ONCONFLICT_UPDATE, 3)
end

defmodule PgQuery.LimitOption do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:LIMIT_OPTION_UNDEFINED, 0)
  field(:LIMIT_OPTION_DEFAULT, 1)
  field(:LIMIT_OPTION_COUNT, 2)
  field(:LIMIT_OPTION_WITH_TIES, 3)
end

defmodule PgQuery.LockClauseStrength do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:LOCK_CLAUSE_STRENGTH_UNDEFINED, 0)
  field(:LCS_NONE, 1)
  field(:LCS_FORKEYSHARE, 2)
  field(:LCS_FORSHARE, 3)
  field(:LCS_FORNOKEYUPDATE, 4)
  field(:LCS_FORUPDATE, 5)
end

defmodule PgQuery.LockWaitPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:LOCK_WAIT_POLICY_UNDEFINED, 0)
  field(:LockWaitBlock, 1)
  field(:LockWaitSkip, 2)
  field(:LockWaitError, 3)
end

defmodule PgQuery.LockTupleMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:LOCK_TUPLE_MODE_UNDEFINED, 0)
  field(:LockTupleKeyShare, 1)
  field(:LockTupleShare, 2)
  field(:LockTupleNoKeyExclusive, 3)
  field(:LockTupleExclusive, 4)
end

defmodule PgQuery.KeywordKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:NO_KEYWORD, 0)
  field(:UNRESERVED_KEYWORD, 1)
  field(:COL_NAME_KEYWORD, 2)
  field(:TYPE_FUNC_NAME_KEYWORD, 3)
  field(:RESERVED_KEYWORD, 4)
end

defmodule PgQuery.Token do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:NUL, 0)
  field(:ASCII_37, 37)
  field(:ASCII_40, 40)
  field(:ASCII_41, 41)
  field(:ASCII_42, 42)
  field(:ASCII_43, 43)
  field(:ASCII_44, 44)
  field(:ASCII_45, 45)
  field(:ASCII_46, 46)
  field(:ASCII_47, 47)
  field(:ASCII_58, 58)
  field(:ASCII_59, 59)
  field(:ASCII_60, 60)
  field(:ASCII_61, 61)
  field(:ASCII_62, 62)
  field(:ASCII_63, 63)
  field(:ASCII_91, 91)
  field(:ASCII_92, 92)
  field(:ASCII_93, 93)
  field(:ASCII_94, 94)
  field(:IDENT, 258)
  field(:UIDENT, 259)
  field(:FCONST, 260)
  field(:SCONST, 261)
  field(:USCONST, 262)
  field(:BCONST, 263)
  field(:XCONST, 264)
  field(:Op, 265)
  field(:ICONST, 266)
  field(:PARAM, 267)
  field(:TYPECAST, 268)
  field(:DOT_DOT, 269)
  field(:COLON_EQUALS, 270)
  field(:EQUALS_GREATER, 271)
  field(:LESS_EQUALS, 272)
  field(:GREATER_EQUALS, 273)
  field(:NOT_EQUALS, 274)
  field(:SQL_COMMENT, 275)
  field(:C_COMMENT, 276)
  field(:ABORT_P, 277)
  field(:ABSOLUTE_P, 278)
  field(:ACCESS, 279)
  field(:ACTION, 280)
  field(:ADD_P, 281)
  field(:ADMIN, 282)
  field(:AFTER, 283)
  field(:AGGREGATE, 284)
  field(:ALL, 285)
  field(:ALSO, 286)
  field(:ALTER, 287)
  field(:ALWAYS, 288)
  field(:ANALYSE, 289)
  field(:ANALYZE, 290)
  field(:AND, 291)
  field(:ANY, 292)
  field(:ARRAY, 293)
  field(:AS, 294)
  field(:ASC, 295)
  field(:ASSERTION, 296)
  field(:ASSIGNMENT, 297)
  field(:ASYMMETRIC, 298)
  field(:AT, 299)
  field(:ATTACH, 300)
  field(:ATTRIBUTE, 301)
  field(:AUTHORIZATION, 302)
  field(:BACKWARD, 303)
  field(:BEFORE, 304)
  field(:BEGIN_P, 305)
  field(:BETWEEN, 306)
  field(:BIGINT, 307)
  field(:BINARY, 308)
  field(:BIT, 309)
  field(:BOOLEAN_P, 310)
  field(:BOTH, 311)
  field(:BY, 312)
  field(:CACHE, 313)
  field(:CALL, 314)
  field(:CALLED, 315)
  field(:CASCADE, 316)
  field(:CASCADED, 317)
  field(:CASE, 318)
  field(:CAST, 319)
  field(:CATALOG_P, 320)
  field(:CHAIN, 321)
  field(:CHAR_P, 322)
  field(:CHARACTER, 323)
  field(:CHARACTERISTICS, 324)
  field(:CHECK, 325)
  field(:CHECKPOINT, 326)
  field(:CLASS, 327)
  field(:CLOSE, 328)
  field(:CLUSTER, 329)
  field(:COALESCE, 330)
  field(:COLLATE, 331)
  field(:COLLATION, 332)
  field(:COLUMN, 333)
  field(:COLUMNS, 334)
  field(:COMMENT, 335)
  field(:COMMENTS, 336)
  field(:COMMIT, 337)
  field(:COMMITTED, 338)
  field(:CONCURRENTLY, 339)
  field(:CONFIGURATION, 340)
  field(:CONFLICT, 341)
  field(:CONNECTION, 342)
  field(:CONSTRAINT, 343)
  field(:CONSTRAINTS, 344)
  field(:CONTENT_P, 345)
  field(:CONTINUE_P, 346)
  field(:CONVERSION_P, 347)
  field(:COPY, 348)
  field(:COST, 349)
  field(:CREATE, 350)
  field(:CROSS, 351)
  field(:CSV, 352)
  field(:CUBE, 353)
  field(:CURRENT_P, 354)
  field(:CURRENT_CATALOG, 355)
  field(:CURRENT_DATE, 356)
  field(:CURRENT_ROLE, 357)
  field(:CURRENT_SCHEMA, 358)
  field(:CURRENT_TIME, 359)
  field(:CURRENT_TIMESTAMP, 360)
  field(:CURRENT_USER, 361)
  field(:CURSOR, 362)
  field(:CYCLE, 363)
  field(:DATA_P, 364)
  field(:DATABASE, 365)
  field(:DAY_P, 366)
  field(:DEALLOCATE, 367)
  field(:DEC, 368)
  field(:DECIMAL_P, 369)
  field(:DECLARE, 370)
  field(:DEFAULT, 371)
  field(:DEFAULTS, 372)
  field(:DEFERRABLE, 373)
  field(:DEFERRED, 374)
  field(:DEFINER, 375)
  field(:DELETE_P, 376)
  field(:DELIMITER, 377)
  field(:DELIMITERS, 378)
  field(:DEPENDS, 379)
  field(:DESC, 380)
  field(:DETACH, 381)
  field(:DICTIONARY, 382)
  field(:DISABLE_P, 383)
  field(:DISCARD, 384)
  field(:DISTINCT, 385)
  field(:DO, 386)
  field(:DOCUMENT_P, 387)
  field(:DOMAIN_P, 388)
  field(:DOUBLE_P, 389)
  field(:DROP, 390)
  field(:EACH, 391)
  field(:ELSE, 392)
  field(:ENABLE_P, 393)
  field(:ENCODING, 394)
  field(:ENCRYPTED, 395)
  field(:END_P, 396)
  field(:ENUM_P, 397)
  field(:ESCAPE, 398)
  field(:EVENT, 399)
  field(:EXCEPT, 400)
  field(:EXCLUDE, 401)
  field(:EXCLUDING, 402)
  field(:EXCLUSIVE, 403)
  field(:EXECUTE, 404)
  field(:EXISTS, 405)
  field(:EXPLAIN, 406)
  field(:EXPRESSION, 407)
  field(:EXTENSION, 408)
  field(:EXTERNAL, 409)
  field(:EXTRACT, 410)
  field(:FALSE_P, 411)
  field(:FAMILY, 412)
  field(:FETCH, 413)
  field(:FILTER, 414)
  field(:FIRST_P, 415)
  field(:FLOAT_P, 416)
  field(:FOLLOWING, 417)
  field(:FOR, 418)
  field(:FORCE, 419)
  field(:FOREIGN, 420)
  field(:FORWARD, 421)
  field(:FREEZE, 422)
  field(:FROM, 423)
  field(:FULL, 424)
  field(:FUNCTION, 425)
  field(:FUNCTIONS, 426)
  field(:GENERATED, 427)
  field(:GLOBAL, 428)
  field(:GRANT, 429)
  field(:GRANTED, 430)
  field(:GREATEST, 431)
  field(:GROUP_P, 432)
  field(:GROUPING, 433)
  field(:GROUPS, 434)
  field(:HANDLER, 435)
  field(:HAVING, 436)
  field(:HEADER_P, 437)
  field(:HOLD, 438)
  field(:HOUR_P, 439)
  field(:IDENTITY_P, 440)
  field(:IF_P, 441)
  field(:ILIKE, 442)
  field(:IMMEDIATE, 443)
  field(:IMMUTABLE, 444)
  field(:IMPLICIT_P, 445)
  field(:IMPORT_P, 446)
  field(:IN_P, 447)
  field(:INCLUDE, 448)
  field(:INCLUDING, 449)
  field(:INCREMENT, 450)
  field(:INDEX, 451)
  field(:INDEXES, 452)
  field(:INHERIT, 453)
  field(:INHERITS, 454)
  field(:INITIALLY, 455)
  field(:INLINE_P, 456)
  field(:INNER_P, 457)
  field(:INOUT, 458)
  field(:INPUT_P, 459)
  field(:INSENSITIVE, 460)
  field(:INSERT, 461)
  field(:INSTEAD, 462)
  field(:INT_P, 463)
  field(:INTEGER, 464)
  field(:INTERSECT, 465)
  field(:INTERVAL, 466)
  field(:INTO, 467)
  field(:INVOKER, 468)
  field(:IS, 469)
  field(:ISNULL, 470)
  field(:ISOLATION, 471)
  field(:JOIN, 472)
  field(:KEY, 473)
  field(:LABEL, 474)
  field(:LANGUAGE, 475)
  field(:LARGE_P, 476)
  field(:LAST_P, 477)
  field(:LATERAL_P, 478)
  field(:LEADING, 479)
  field(:LEAKPROOF, 480)
  field(:LEAST, 481)
  field(:LEFT, 482)
  field(:LEVEL, 483)
  field(:LIKE, 484)
  field(:LIMIT, 485)
  field(:LISTEN, 486)
  field(:LOAD, 487)
  field(:LOCAL, 488)
  field(:LOCALTIME, 489)
  field(:LOCALTIMESTAMP, 490)
  field(:LOCATION, 491)
  field(:LOCK_P, 492)
  field(:LOCKED, 493)
  field(:LOGGED, 494)
  field(:MAPPING, 495)
  field(:MATCH, 496)
  field(:MATERIALIZED, 497)
  field(:MAXVALUE, 498)
  field(:METHOD, 499)
  field(:MINUTE_P, 500)
  field(:MINVALUE, 501)
  field(:MODE, 502)
  field(:MONTH_P, 503)
  field(:MOVE, 504)
  field(:NAME_P, 505)
  field(:NAMES, 506)
  field(:NATIONAL, 507)
  field(:NATURAL, 508)
  field(:NCHAR, 509)
  field(:NEW, 510)
  field(:NEXT, 511)
  field(:NFC, 512)
  field(:NFD, 513)
  field(:NFKC, 514)
  field(:NFKD, 515)
  field(:NO, 516)
  field(:NONE, 517)
  field(:NORMALIZE, 518)
  field(:NORMALIZED, 519)
  field(:NOT, 520)
  field(:NOTHING, 521)
  field(:NOTIFY, 522)
  field(:NOTNULL, 523)
  field(:NOWAIT, 524)
  field(:NULL_P, 525)
  field(:NULLIF, 526)
  field(:NULLS_P, 527)
  field(:NUMERIC, 528)
  field(:OBJECT_P, 529)
  field(:OF, 530)
  field(:OFF, 531)
  field(:OFFSET, 532)
  field(:OIDS, 533)
  field(:OLD, 534)
  field(:ON, 535)
  field(:ONLY, 536)
  field(:OPERATOR, 537)
  field(:OPTION, 538)
  field(:OPTIONS, 539)
  field(:OR, 540)
  field(:ORDER, 541)
  field(:ORDINALITY, 542)
  field(:OTHERS, 543)
  field(:OUT_P, 544)
  field(:OUTER_P, 545)
  field(:OVER, 546)
  field(:OVERLAPS, 547)
  field(:OVERLAY, 548)
  field(:OVERRIDING, 549)
  field(:OWNED, 550)
  field(:OWNER, 551)
  field(:PARALLEL, 552)
  field(:PARSER, 553)
  field(:PARTIAL, 554)
  field(:PARTITION, 555)
  field(:PASSING, 556)
  field(:PASSWORD, 557)
  field(:PLACING, 558)
  field(:PLANS, 559)
  field(:POLICY, 560)
  field(:POSITION, 561)
  field(:PRECEDING, 562)
  field(:PRECISION, 563)
  field(:PRESERVE, 564)
  field(:PREPARE, 565)
  field(:PREPARED, 566)
  field(:PRIMARY, 567)
  field(:PRIOR, 568)
  field(:PRIVILEGES, 569)
  field(:PROCEDURAL, 570)
  field(:PROCEDURE, 571)
  field(:PROCEDURES, 572)
  field(:PROGRAM, 573)
  field(:PUBLICATION, 574)
  field(:QUOTE, 575)
  field(:RANGE, 576)
  field(:READ, 577)
  field(:REAL, 578)
  field(:REASSIGN, 579)
  field(:RECHECK, 580)
  field(:RECURSIVE, 581)
  field(:REF, 582)
  field(:REFERENCES, 583)
  field(:REFERENCING, 584)
  field(:REFRESH, 585)
  field(:REINDEX, 586)
  field(:RELATIVE_P, 587)
  field(:RELEASE, 588)
  field(:RENAME, 589)
  field(:REPEATABLE, 590)
  field(:REPLACE, 591)
  field(:REPLICA, 592)
  field(:RESET, 593)
  field(:RESTART, 594)
  field(:RESTRICT, 595)
  field(:RETURNING, 596)
  field(:RETURNS, 597)
  field(:REVOKE, 598)
  field(:RIGHT, 599)
  field(:ROLE, 600)
  field(:ROLLBACK, 601)
  field(:ROLLUP, 602)
  field(:ROUTINE, 603)
  field(:ROUTINES, 604)
  field(:ROW, 605)
  field(:ROWS, 606)
  field(:RULE, 607)
  field(:SAVEPOINT, 608)
  field(:SCHEMA, 609)
  field(:SCHEMAS, 610)
  field(:SCROLL, 611)
  field(:SEARCH, 612)
  field(:SECOND_P, 613)
  field(:SECURITY, 614)
  field(:SELECT, 615)
  field(:SEQUENCE, 616)
  field(:SEQUENCES, 617)
  field(:SERIALIZABLE, 618)
  field(:SERVER, 619)
  field(:SESSION, 620)
  field(:SESSION_USER, 621)
  field(:SET, 622)
  field(:SETS, 623)
  field(:SETOF, 624)
  field(:SHARE, 625)
  field(:SHOW, 626)
  field(:SIMILAR, 627)
  field(:SIMPLE, 628)
  field(:SKIP, 629)
  field(:SMALLINT, 630)
  field(:SNAPSHOT, 631)
  field(:SOME, 632)
  field(:SQL_P, 633)
  field(:STABLE, 634)
  field(:STANDALONE_P, 635)
  field(:START, 636)
  field(:STATEMENT, 637)
  field(:STATISTICS, 638)
  field(:STDIN, 639)
  field(:STDOUT, 640)
  field(:STORAGE, 641)
  field(:STORED, 642)
  field(:STRICT_P, 643)
  field(:STRIP_P, 644)
  field(:SUBSCRIPTION, 645)
  field(:SUBSTRING, 646)
  field(:SUPPORT, 647)
  field(:SYMMETRIC, 648)
  field(:SYSID, 649)
  field(:SYSTEM_P, 650)
  field(:TABLE, 651)
  field(:TABLES, 652)
  field(:TABLESAMPLE, 653)
  field(:TABLESPACE, 654)
  field(:TEMP, 655)
  field(:TEMPLATE, 656)
  field(:TEMPORARY, 657)
  field(:TEXT_P, 658)
  field(:THEN, 659)
  field(:TIES, 660)
  field(:TIME, 661)
  field(:TIMESTAMP, 662)
  field(:TO, 663)
  field(:TRAILING, 664)
  field(:TRANSACTION, 665)
  field(:TRANSFORM, 666)
  field(:TREAT, 667)
  field(:TRIGGER, 668)
  field(:TRIM, 669)
  field(:TRUE_P, 670)
  field(:TRUNCATE, 671)
  field(:TRUSTED, 672)
  field(:TYPE_P, 673)
  field(:TYPES_P, 674)
  field(:UESCAPE, 675)
  field(:UNBOUNDED, 676)
  field(:UNCOMMITTED, 677)
  field(:UNENCRYPTED, 678)
  field(:UNION, 679)
  field(:UNIQUE, 680)
  field(:UNKNOWN, 681)
  field(:UNLISTEN, 682)
  field(:UNLOGGED, 683)
  field(:UNTIL, 684)
  field(:UPDATE, 685)
  field(:USER, 686)
  field(:USING, 687)
  field(:VACUUM, 688)
  field(:VALID, 689)
  field(:VALIDATE, 690)
  field(:VALIDATOR, 691)
  field(:VALUE_P, 692)
  field(:VALUES, 693)
  field(:VARCHAR, 694)
  field(:VARIADIC, 695)
  field(:VARYING, 696)
  field(:VERBOSE, 697)
  field(:VERSION_P, 698)
  field(:VIEW, 699)
  field(:VIEWS, 700)
  field(:VOLATILE, 701)
  field(:WHEN, 702)
  field(:WHERE, 703)
  field(:WHITESPACE_P, 704)
  field(:WINDOW, 705)
  field(:WITH, 706)
  field(:WITHIN, 707)
  field(:WITHOUT, 708)
  field(:WORK, 709)
  field(:WRAPPER, 710)
  field(:WRITE, 711)
  field(:XML_P, 712)
  field(:XMLATTRIBUTES, 713)
  field(:XMLCONCAT, 714)
  field(:XMLELEMENT, 715)
  field(:XMLEXISTS, 716)
  field(:XMLFOREST, 717)
  field(:XMLNAMESPACES, 718)
  field(:XMLPARSE, 719)
  field(:XMLPI, 720)
  field(:XMLROOT, 721)
  field(:XMLSERIALIZE, 722)
  field(:XMLTABLE, 723)
  field(:YEAR_P, 724)
  field(:YES_P, 725)
  field(:ZONE, 726)
  field(:NOT_LA, 727)
  field(:NULLS_LA, 728)
  field(:WITH_LA, 729)
  field(:POSTFIXOP, 730)
  field(:UMINUS, 731)
end

defmodule PgQuery.ParseResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:version, 1, type: :int32)
  field(:stmts, 2, repeated: true, type: PgQuery.RawStmt)
end

defmodule PgQuery.ScanResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:version, 1, type: :int32)
  field(:tokens, 2, repeated: true, type: PgQuery.ScanToken)
end

defmodule PgQuery.Node do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  oneof(:node, 0)
  field(:alias, 1, type: PgQuery.Alias, json_name: "Alias", oneof: 0)
  field(:range_var, 2, type: PgQuery.RangeVar, json_name: "RangeVar", oneof: 0)
  field(:table_func, 3, type: PgQuery.TableFunc, json_name: "TableFunc", oneof: 0)
  field(:expr, 4, type: PgQuery.Expr, json_name: "Expr", oneof: 0)
  field(:var, 5, type: PgQuery.Var, json_name: "Var", oneof: 0)
  field(:param, 6, type: PgQuery.Param, json_name: "Param", oneof: 0)
  field(:aggref, 7, type: PgQuery.Aggref, json_name: "Aggref", oneof: 0)
  field(:grouping_func, 8, type: PgQuery.GroupingFunc, json_name: "GroupingFunc", oneof: 0)
  field(:window_func, 9, type: PgQuery.WindowFunc, json_name: "WindowFunc", oneof: 0)

  field(:subscripting_ref, 10,
    type: PgQuery.SubscriptingRef,
    json_name: "SubscriptingRef",
    oneof: 0
  )

  field(:func_expr, 11, type: PgQuery.FuncExpr, json_name: "FuncExpr", oneof: 0)
  field(:named_arg_expr, 12, type: PgQuery.NamedArgExpr, json_name: "NamedArgExpr", oneof: 0)
  field(:op_expr, 13, type: PgQuery.OpExpr, json_name: "OpExpr", oneof: 0)
  field(:distinct_expr, 14, type: PgQuery.DistinctExpr, json_name: "DistinctExpr", oneof: 0)
  field(:null_if_expr, 15, type: PgQuery.NullIfExpr, json_name: "NullIfExpr", oneof: 0)

  field(:scalar_array_op_expr, 16,
    type: PgQuery.ScalarArrayOpExpr,
    json_name: "ScalarArrayOpExpr",
    oneof: 0
  )

  field(:bool_expr, 17, type: PgQuery.BoolExpr, json_name: "BoolExpr", oneof: 0)
  field(:sub_link, 18, type: PgQuery.SubLink, json_name: "SubLink", oneof: 0)
  field(:sub_plan, 19, type: PgQuery.SubPlan, json_name: "SubPlan", oneof: 0)

  field(:alternative_sub_plan, 20,
    type: PgQuery.AlternativeSubPlan,
    json_name: "AlternativeSubPlan",
    oneof: 0
  )

  field(:field_select, 21, type: PgQuery.FieldSelect, json_name: "FieldSelect", oneof: 0)
  field(:field_store, 22, type: PgQuery.FieldStore, json_name: "FieldStore", oneof: 0)
  field(:relabel_type, 23, type: PgQuery.RelabelType, json_name: "RelabelType", oneof: 0)
  field(:coerce_via_io, 24, type: PgQuery.CoerceViaIO, json_name: "CoerceViaIO", oneof: 0)

  field(:array_coerce_expr, 25,
    type: PgQuery.ArrayCoerceExpr,
    json_name: "ArrayCoerceExpr",
    oneof: 0
  )

  field(:convert_rowtype_expr, 26,
    type: PgQuery.ConvertRowtypeExpr,
    json_name: "ConvertRowtypeExpr",
    oneof: 0
  )

  field(:collate_expr, 27, type: PgQuery.CollateExpr, json_name: "CollateExpr", oneof: 0)
  field(:case_expr, 28, type: PgQuery.CaseExpr, json_name: "CaseExpr", oneof: 0)
  field(:case_when, 29, type: PgQuery.CaseWhen, json_name: "CaseWhen", oneof: 0)
  field(:case_test_expr, 30, type: PgQuery.CaseTestExpr, json_name: "CaseTestExpr", oneof: 0)
  field(:array_expr, 31, type: PgQuery.ArrayExpr, json_name: "ArrayExpr", oneof: 0)
  field(:row_expr, 32, type: PgQuery.RowExpr, json_name: "RowExpr", oneof: 0)

  field(:row_compare_expr, 33, type: PgQuery.RowCompareExpr, json_name: "RowCompareExpr", oneof: 0)

  field(:coalesce_expr, 34, type: PgQuery.CoalesceExpr, json_name: "CoalesceExpr", oneof: 0)
  field(:min_max_expr, 35, type: PgQuery.MinMaxExpr, json_name: "MinMaxExpr", oneof: 0)

  field(:sqlvalue_function, 36,
    type: PgQuery.SQLValueFunction,
    json_name: "SQLValueFunction",
    oneof: 0
  )

  field(:xml_expr, 37, type: PgQuery.XmlExpr, json_name: "XmlExpr", oneof: 0)
  field(:null_test, 38, type: PgQuery.NullTest, json_name: "NullTest", oneof: 0)
  field(:boolean_test, 39, type: PgQuery.BooleanTest, json_name: "BooleanTest", oneof: 0)

  field(:coerce_to_domain, 40, type: PgQuery.CoerceToDomain, json_name: "CoerceToDomain", oneof: 0)

  field(:coerce_to_domain_value, 41,
    type: PgQuery.CoerceToDomainValue,
    json_name: "CoerceToDomainValue",
    oneof: 0
  )

  field(:set_to_default, 42, type: PgQuery.SetToDefault, json_name: "SetToDefault", oneof: 0)
  field(:current_of_expr, 43, type: PgQuery.CurrentOfExpr, json_name: "CurrentOfExpr", oneof: 0)
  field(:next_value_expr, 44, type: PgQuery.NextValueExpr, json_name: "NextValueExpr", oneof: 0)
  field(:inference_elem, 45, type: PgQuery.InferenceElem, json_name: "InferenceElem", oneof: 0)
  field(:target_entry, 46, type: PgQuery.TargetEntry, json_name: "TargetEntry", oneof: 0)
  field(:range_tbl_ref, 47, type: PgQuery.RangeTblRef, json_name: "RangeTblRef", oneof: 0)
  field(:join_expr, 48, type: PgQuery.JoinExpr, json_name: "JoinExpr", oneof: 0)
  field(:from_expr, 49, type: PgQuery.FromExpr, json_name: "FromExpr", oneof: 0)

  field(:on_conflict_expr, 50, type: PgQuery.OnConflictExpr, json_name: "OnConflictExpr", oneof: 0)

  field(:into_clause, 51, type: PgQuery.IntoClause, json_name: "IntoClause", oneof: 0)
  field(:raw_stmt, 52, type: PgQuery.RawStmt, json_name: "RawStmt", oneof: 0)
  field(:query, 53, type: PgQuery.Query, json_name: "Query", oneof: 0)
  field(:insert_stmt, 54, type: PgQuery.InsertStmt, json_name: "InsertStmt", oneof: 0)
  field(:delete_stmt, 55, type: PgQuery.DeleteStmt, json_name: "DeleteStmt", oneof: 0)
  field(:update_stmt, 56, type: PgQuery.UpdateStmt, json_name: "UpdateStmt", oneof: 0)
  field(:select_stmt, 57, type: PgQuery.SelectStmt, json_name: "SelectStmt", oneof: 0)

  field(:alter_table_stmt, 58, type: PgQuery.AlterTableStmt, json_name: "AlterTableStmt", oneof: 0)

  field(:alter_table_cmd, 59, type: PgQuery.AlterTableCmd, json_name: "AlterTableCmd", oneof: 0)

  field(:alter_domain_stmt, 60,
    type: PgQuery.AlterDomainStmt,
    json_name: "AlterDomainStmt",
    oneof: 0
  )

  field(:set_operation_stmt, 61,
    type: PgQuery.SetOperationStmt,
    json_name: "SetOperationStmt",
    oneof: 0
  )

  field(:grant_stmt, 62, type: PgQuery.GrantStmt, json_name: "GrantStmt", oneof: 0)
  field(:grant_role_stmt, 63, type: PgQuery.GrantRoleStmt, json_name: "GrantRoleStmt", oneof: 0)

  field(:alter_default_privileges_stmt, 64,
    type: PgQuery.AlterDefaultPrivilegesStmt,
    json_name: "AlterDefaultPrivilegesStmt",
    oneof: 0
  )

  field(:close_portal_stmt, 65,
    type: PgQuery.ClosePortalStmt,
    json_name: "ClosePortalStmt",
    oneof: 0
  )

  field(:cluster_stmt, 66, type: PgQuery.ClusterStmt, json_name: "ClusterStmt", oneof: 0)
  field(:copy_stmt, 67, type: PgQuery.CopyStmt, json_name: "CopyStmt", oneof: 0)
  field(:create_stmt, 68, type: PgQuery.CreateStmt, json_name: "CreateStmt", oneof: 0)
  field(:define_stmt, 69, type: PgQuery.DefineStmt, json_name: "DefineStmt", oneof: 0)
  field(:drop_stmt, 70, type: PgQuery.DropStmt, json_name: "DropStmt", oneof: 0)
  field(:truncate_stmt, 71, type: PgQuery.TruncateStmt, json_name: "TruncateStmt", oneof: 0)
  field(:comment_stmt, 72, type: PgQuery.CommentStmt, json_name: "CommentStmt", oneof: 0)
  field(:fetch_stmt, 73, type: PgQuery.FetchStmt, json_name: "FetchStmt", oneof: 0)
  field(:index_stmt, 74, type: PgQuery.IndexStmt, json_name: "IndexStmt", oneof: 0)

  field(:create_function_stmt, 75,
    type: PgQuery.CreateFunctionStmt,
    json_name: "CreateFunctionStmt",
    oneof: 0
  )

  field(:alter_function_stmt, 76,
    type: PgQuery.AlterFunctionStmt,
    json_name: "AlterFunctionStmt",
    oneof: 0
  )

  field(:do_stmt, 77, type: PgQuery.DoStmt, json_name: "DoStmt", oneof: 0)
  field(:rename_stmt, 78, type: PgQuery.RenameStmt, json_name: "RenameStmt", oneof: 0)
  field(:rule_stmt, 79, type: PgQuery.RuleStmt, json_name: "RuleStmt", oneof: 0)
  field(:notify_stmt, 80, type: PgQuery.NotifyStmt, json_name: "NotifyStmt", oneof: 0)
  field(:listen_stmt, 81, type: PgQuery.ListenStmt, json_name: "ListenStmt", oneof: 0)
  field(:unlisten_stmt, 82, type: PgQuery.UnlistenStmt, json_name: "UnlistenStmt", oneof: 0)

  field(:transaction_stmt, 83,
    type: PgQuery.TransactionStmt,
    json_name: "TransactionStmt",
    oneof: 0
  )

  field(:view_stmt, 84, type: PgQuery.ViewStmt, json_name: "ViewStmt", oneof: 0)
  field(:load_stmt, 85, type: PgQuery.LoadStmt, json_name: "LoadStmt", oneof: 0)

  field(:create_domain_stmt, 86,
    type: PgQuery.CreateDomainStmt,
    json_name: "CreateDomainStmt",
    oneof: 0
  )

  field(:createdb_stmt, 87, type: PgQuery.CreatedbStmt, json_name: "CreatedbStmt", oneof: 0)
  field(:dropdb_stmt, 88, type: PgQuery.DropdbStmt, json_name: "DropdbStmt", oneof: 0)
  field(:vacuum_stmt, 89, type: PgQuery.VacuumStmt, json_name: "VacuumStmt", oneof: 0)
  field(:explain_stmt, 90, type: PgQuery.ExplainStmt, json_name: "ExplainStmt", oneof: 0)

  field(:create_table_as_stmt, 91,
    type: PgQuery.CreateTableAsStmt,
    json_name: "CreateTableAsStmt",
    oneof: 0
  )

  field(:create_seq_stmt, 92, type: PgQuery.CreateSeqStmt, json_name: "CreateSeqStmt", oneof: 0)
  field(:alter_seq_stmt, 93, type: PgQuery.AlterSeqStmt, json_name: "AlterSeqStmt", oneof: 0)

  field(:variable_set_stmt, 94,
    type: PgQuery.VariableSetStmt,
    json_name: "VariableSetStmt",
    oneof: 0
  )

  field(:variable_show_stmt, 95,
    type: PgQuery.VariableShowStmt,
    json_name: "VariableShowStmt",
    oneof: 0
  )

  field(:discard_stmt, 96, type: PgQuery.DiscardStmt, json_name: "DiscardStmt", oneof: 0)

  field(:create_trig_stmt, 97, type: PgQuery.CreateTrigStmt, json_name: "CreateTrigStmt", oneof: 0)

  field(:create_plang_stmt, 98,
    type: PgQuery.CreatePLangStmt,
    json_name: "CreatePLangStmt",
    oneof: 0
  )

  field(:create_role_stmt, 99, type: PgQuery.CreateRoleStmt, json_name: "CreateRoleStmt", oneof: 0)

  field(:alter_role_stmt, 100, type: PgQuery.AlterRoleStmt, json_name: "AlterRoleStmt", oneof: 0)
  field(:drop_role_stmt, 101, type: PgQuery.DropRoleStmt, json_name: "DropRoleStmt", oneof: 0)
  field(:lock_stmt, 102, type: PgQuery.LockStmt, json_name: "LockStmt", oneof: 0)

  field(:constraints_set_stmt, 103,
    type: PgQuery.ConstraintsSetStmt,
    json_name: "ConstraintsSetStmt",
    oneof: 0
  )

  field(:reindex_stmt, 104, type: PgQuery.ReindexStmt, json_name: "ReindexStmt", oneof: 0)

  field(:check_point_stmt, 105,
    type: PgQuery.CheckPointStmt,
    json_name: "CheckPointStmt",
    oneof: 0
  )

  field(:create_schema_stmt, 106,
    type: PgQuery.CreateSchemaStmt,
    json_name: "CreateSchemaStmt",
    oneof: 0
  )

  field(:alter_database_stmt, 107,
    type: PgQuery.AlterDatabaseStmt,
    json_name: "AlterDatabaseStmt",
    oneof: 0
  )

  field(:alter_database_set_stmt, 108,
    type: PgQuery.AlterDatabaseSetStmt,
    json_name: "AlterDatabaseSetStmt",
    oneof: 0
  )

  field(:alter_role_set_stmt, 109,
    type: PgQuery.AlterRoleSetStmt,
    json_name: "AlterRoleSetStmt",
    oneof: 0
  )

  field(:create_conversion_stmt, 110,
    type: PgQuery.CreateConversionStmt,
    json_name: "CreateConversionStmt",
    oneof: 0
  )

  field(:create_cast_stmt, 111,
    type: PgQuery.CreateCastStmt,
    json_name: "CreateCastStmt",
    oneof: 0
  )

  field(:create_op_class_stmt, 112,
    type: PgQuery.CreateOpClassStmt,
    json_name: "CreateOpClassStmt",
    oneof: 0
  )

  field(:create_op_family_stmt, 113,
    type: PgQuery.CreateOpFamilyStmt,
    json_name: "CreateOpFamilyStmt",
    oneof: 0
  )

  field(:alter_op_family_stmt, 114,
    type: PgQuery.AlterOpFamilyStmt,
    json_name: "AlterOpFamilyStmt",
    oneof: 0
  )

  field(:prepare_stmt, 115, type: PgQuery.PrepareStmt, json_name: "PrepareStmt", oneof: 0)
  field(:execute_stmt, 116, type: PgQuery.ExecuteStmt, json_name: "ExecuteStmt", oneof: 0)

  field(:deallocate_stmt, 117, type: PgQuery.DeallocateStmt, json_name: "DeallocateStmt", oneof: 0)

  field(:declare_cursor_stmt, 118,
    type: PgQuery.DeclareCursorStmt,
    json_name: "DeclareCursorStmt",
    oneof: 0
  )

  field(:create_table_space_stmt, 119,
    type: PgQuery.CreateTableSpaceStmt,
    json_name: "CreateTableSpaceStmt",
    oneof: 0
  )

  field(:drop_table_space_stmt, 120,
    type: PgQuery.DropTableSpaceStmt,
    json_name: "DropTableSpaceStmt",
    oneof: 0
  )

  field(:alter_object_depends_stmt, 121,
    type: PgQuery.AlterObjectDependsStmt,
    json_name: "AlterObjectDependsStmt",
    oneof: 0
  )

  field(:alter_object_schema_stmt, 122,
    type: PgQuery.AlterObjectSchemaStmt,
    json_name: "AlterObjectSchemaStmt",
    oneof: 0
  )

  field(:alter_owner_stmt, 123,
    type: PgQuery.AlterOwnerStmt,
    json_name: "AlterOwnerStmt",
    oneof: 0
  )

  field(:alter_operator_stmt, 124,
    type: PgQuery.AlterOperatorStmt,
    json_name: "AlterOperatorStmt",
    oneof: 0
  )

  field(:alter_type_stmt, 125, type: PgQuery.AlterTypeStmt, json_name: "AlterTypeStmt", oneof: 0)
  field(:drop_owned_stmt, 126, type: PgQuery.DropOwnedStmt, json_name: "DropOwnedStmt", oneof: 0)

  field(:reassign_owned_stmt, 127,
    type: PgQuery.ReassignOwnedStmt,
    json_name: "ReassignOwnedStmt",
    oneof: 0
  )

  field(:composite_type_stmt, 128,
    type: PgQuery.CompositeTypeStmt,
    json_name: "CompositeTypeStmt",
    oneof: 0
  )

  field(:create_enum_stmt, 129,
    type: PgQuery.CreateEnumStmt,
    json_name: "CreateEnumStmt",
    oneof: 0
  )

  field(:create_range_stmt, 130,
    type: PgQuery.CreateRangeStmt,
    json_name: "CreateRangeStmt",
    oneof: 0
  )

  field(:alter_enum_stmt, 131, type: PgQuery.AlterEnumStmt, json_name: "AlterEnumStmt", oneof: 0)

  field(:alter_tsdictionary_stmt, 132,
    type: PgQuery.AlterTSDictionaryStmt,
    json_name: "AlterTSDictionaryStmt",
    oneof: 0
  )

  field(:alter_tsconfiguration_stmt, 133,
    type: PgQuery.AlterTSConfigurationStmt,
    json_name: "AlterTSConfigurationStmt",
    oneof: 0
  )

  field(:create_fdw_stmt, 134, type: PgQuery.CreateFdwStmt, json_name: "CreateFdwStmt", oneof: 0)
  field(:alter_fdw_stmt, 135, type: PgQuery.AlterFdwStmt, json_name: "AlterFdwStmt", oneof: 0)

  field(:create_foreign_server_stmt, 136,
    type: PgQuery.CreateForeignServerStmt,
    json_name: "CreateForeignServerStmt",
    oneof: 0
  )

  field(:alter_foreign_server_stmt, 137,
    type: PgQuery.AlterForeignServerStmt,
    json_name: "AlterForeignServerStmt",
    oneof: 0
  )

  field(:create_user_mapping_stmt, 138,
    type: PgQuery.CreateUserMappingStmt,
    json_name: "CreateUserMappingStmt",
    oneof: 0
  )

  field(:alter_user_mapping_stmt, 139,
    type: PgQuery.AlterUserMappingStmt,
    json_name: "AlterUserMappingStmt",
    oneof: 0
  )

  field(:drop_user_mapping_stmt, 140,
    type: PgQuery.DropUserMappingStmt,
    json_name: "DropUserMappingStmt",
    oneof: 0
  )

  field(:alter_table_space_options_stmt, 141,
    type: PgQuery.AlterTableSpaceOptionsStmt,
    json_name: "AlterTableSpaceOptionsStmt",
    oneof: 0
  )

  field(:alter_table_move_all_stmt, 142,
    type: PgQuery.AlterTableMoveAllStmt,
    json_name: "AlterTableMoveAllStmt",
    oneof: 0
  )

  field(:sec_label_stmt, 143, type: PgQuery.SecLabelStmt, json_name: "SecLabelStmt", oneof: 0)

  field(:create_foreign_table_stmt, 144,
    type: PgQuery.CreateForeignTableStmt,
    json_name: "CreateForeignTableStmt",
    oneof: 0
  )

  field(:import_foreign_schema_stmt, 145,
    type: PgQuery.ImportForeignSchemaStmt,
    json_name: "ImportForeignSchemaStmt",
    oneof: 0
  )

  field(:create_extension_stmt, 146,
    type: PgQuery.CreateExtensionStmt,
    json_name: "CreateExtensionStmt",
    oneof: 0
  )

  field(:alter_extension_stmt, 147,
    type: PgQuery.AlterExtensionStmt,
    json_name: "AlterExtensionStmt",
    oneof: 0
  )

  field(:alter_extension_contents_stmt, 148,
    type: PgQuery.AlterExtensionContentsStmt,
    json_name: "AlterExtensionContentsStmt",
    oneof: 0
  )

  field(:create_event_trig_stmt, 149,
    type: PgQuery.CreateEventTrigStmt,
    json_name: "CreateEventTrigStmt",
    oneof: 0
  )

  field(:alter_event_trig_stmt, 150,
    type: PgQuery.AlterEventTrigStmt,
    json_name: "AlterEventTrigStmt",
    oneof: 0
  )

  field(:refresh_mat_view_stmt, 151,
    type: PgQuery.RefreshMatViewStmt,
    json_name: "RefreshMatViewStmt",
    oneof: 0
  )

  field(:replica_identity_stmt, 152,
    type: PgQuery.ReplicaIdentityStmt,
    json_name: "ReplicaIdentityStmt",
    oneof: 0
  )

  field(:alter_system_stmt, 153,
    type: PgQuery.AlterSystemStmt,
    json_name: "AlterSystemStmt",
    oneof: 0
  )

  field(:create_policy_stmt, 154,
    type: PgQuery.CreatePolicyStmt,
    json_name: "CreatePolicyStmt",
    oneof: 0
  )

  field(:alter_policy_stmt, 155,
    type: PgQuery.AlterPolicyStmt,
    json_name: "AlterPolicyStmt",
    oneof: 0
  )

  field(:create_transform_stmt, 156,
    type: PgQuery.CreateTransformStmt,
    json_name: "CreateTransformStmt",
    oneof: 0
  )

  field(:create_am_stmt, 157, type: PgQuery.CreateAmStmt, json_name: "CreateAmStmt", oneof: 0)

  field(:create_publication_stmt, 158,
    type: PgQuery.CreatePublicationStmt,
    json_name: "CreatePublicationStmt",
    oneof: 0
  )

  field(:alter_publication_stmt, 159,
    type: PgQuery.AlterPublicationStmt,
    json_name: "AlterPublicationStmt",
    oneof: 0
  )

  field(:create_subscription_stmt, 160,
    type: PgQuery.CreateSubscriptionStmt,
    json_name: "CreateSubscriptionStmt",
    oneof: 0
  )

  field(:alter_subscription_stmt, 161,
    type: PgQuery.AlterSubscriptionStmt,
    json_name: "AlterSubscriptionStmt",
    oneof: 0
  )

  field(:drop_subscription_stmt, 162,
    type: PgQuery.DropSubscriptionStmt,
    json_name: "DropSubscriptionStmt",
    oneof: 0
  )

  field(:create_stats_stmt, 163,
    type: PgQuery.CreateStatsStmt,
    json_name: "CreateStatsStmt",
    oneof: 0
  )

  field(:alter_collation_stmt, 164,
    type: PgQuery.AlterCollationStmt,
    json_name: "AlterCollationStmt",
    oneof: 0
  )

  field(:call_stmt, 165, type: PgQuery.CallStmt, json_name: "CallStmt", oneof: 0)

  field(:alter_stats_stmt, 166,
    type: PgQuery.AlterStatsStmt,
    json_name: "AlterStatsStmt",
    oneof: 0
  )

  field(:a_expr, 167, type: PgQuery.A_Expr, json_name: "A_Expr", oneof: 0)
  field(:column_ref, 168, type: PgQuery.ColumnRef, json_name: "ColumnRef", oneof: 0)
  field(:param_ref, 169, type: PgQuery.ParamRef, json_name: "ParamRef", oneof: 0)
  field(:a_const, 170, type: PgQuery.A_Const, json_name: "A_Const", oneof: 0)
  field(:func_call, 171, type: PgQuery.FuncCall, json_name: "FuncCall", oneof: 0)
  field(:a_star, 172, type: PgQuery.A_Star, json_name: "A_Star", oneof: 0)
  field(:a_indices, 173, type: PgQuery.A_Indices, json_name: "A_Indices", oneof: 0)
  field(:a_indirection, 174, type: PgQuery.A_Indirection, json_name: "A_Indirection", oneof: 0)
  field(:a_array_expr, 175, type: PgQuery.A_ArrayExpr, json_name: "A_ArrayExpr", oneof: 0)
  field(:res_target, 176, type: PgQuery.ResTarget, json_name: "ResTarget", oneof: 0)

  field(:multi_assign_ref, 177,
    type: PgQuery.MultiAssignRef,
    json_name: "MultiAssignRef",
    oneof: 0
  )

  field(:type_cast, 178, type: PgQuery.TypeCast, json_name: "TypeCast", oneof: 0)
  field(:collate_clause, 179, type: PgQuery.CollateClause, json_name: "CollateClause", oneof: 0)
  field(:sort_by, 180, type: PgQuery.SortBy, json_name: "SortBy", oneof: 0)
  field(:window_def, 181, type: PgQuery.WindowDef, json_name: "WindowDef", oneof: 0)

  field(:range_subselect, 182, type: PgQuery.RangeSubselect, json_name: "RangeSubselect", oneof: 0)

  field(:range_function, 183, type: PgQuery.RangeFunction, json_name: "RangeFunction", oneof: 0)

  field(:range_table_sample, 184,
    type: PgQuery.RangeTableSample,
    json_name: "RangeTableSample",
    oneof: 0
  )

  field(:range_table_func, 185,
    type: PgQuery.RangeTableFunc,
    json_name: "RangeTableFunc",
    oneof: 0
  )

  field(:range_table_func_col, 186,
    type: PgQuery.RangeTableFuncCol,
    json_name: "RangeTableFuncCol",
    oneof: 0
  )

  field(:type_name, 187, type: PgQuery.TypeName, json_name: "TypeName", oneof: 0)
  field(:column_def, 188, type: PgQuery.ColumnDef, json_name: "ColumnDef", oneof: 0)
  field(:index_elem, 189, type: PgQuery.IndexElem, json_name: "IndexElem", oneof: 0)
  field(:constraint, 190, type: PgQuery.Constraint, json_name: "Constraint", oneof: 0)
  field(:def_elem, 191, type: PgQuery.DefElem, json_name: "DefElem", oneof: 0)
  field(:range_tbl_entry, 192, type: PgQuery.RangeTblEntry, json_name: "RangeTblEntry", oneof: 0)

  field(:range_tbl_function, 193,
    type: PgQuery.RangeTblFunction,
    json_name: "RangeTblFunction",
    oneof: 0
  )

  field(:table_sample_clause, 194,
    type: PgQuery.TableSampleClause,
    json_name: "TableSampleClause",
    oneof: 0
  )

  field(:with_check_option, 195,
    type: PgQuery.WithCheckOption,
    json_name: "WithCheckOption",
    oneof: 0
  )

  field(:sort_group_clause, 196,
    type: PgQuery.SortGroupClause,
    json_name: "SortGroupClause",
    oneof: 0
  )

  field(:grouping_set, 197, type: PgQuery.GroupingSet, json_name: "GroupingSet", oneof: 0)
  field(:window_clause, 198, type: PgQuery.WindowClause, json_name: "WindowClause", oneof: 0)

  field(:object_with_args, 199,
    type: PgQuery.ObjectWithArgs,
    json_name: "ObjectWithArgs",
    oneof: 0
  )

  field(:access_priv, 200, type: PgQuery.AccessPriv, json_name: "AccessPriv", oneof: 0)

  field(:create_op_class_item, 201,
    type: PgQuery.CreateOpClassItem,
    json_name: "CreateOpClassItem",
    oneof: 0
  )

  field(:table_like_clause, 202,
    type: PgQuery.TableLikeClause,
    json_name: "TableLikeClause",
    oneof: 0
  )

  field(:function_parameter, 203,
    type: PgQuery.FunctionParameter,
    json_name: "FunctionParameter",
    oneof: 0
  )

  field(:locking_clause, 204, type: PgQuery.LockingClause, json_name: "LockingClause", oneof: 0)
  field(:row_mark_clause, 205, type: PgQuery.RowMarkClause, json_name: "RowMarkClause", oneof: 0)
  field(:xml_serialize, 206, type: PgQuery.XmlSerialize, json_name: "XmlSerialize", oneof: 0)
  field(:with_clause, 207, type: PgQuery.WithClause, json_name: "WithClause", oneof: 0)
  field(:infer_clause, 208, type: PgQuery.InferClause, json_name: "InferClause", oneof: 0)

  field(:on_conflict_clause, 209,
    type: PgQuery.OnConflictClause,
    json_name: "OnConflictClause",
    oneof: 0
  )

  field(:common_table_expr, 210,
    type: PgQuery.CommonTableExpr,
    json_name: "CommonTableExpr",
    oneof: 0
  )

  field(:role_spec, 211, type: PgQuery.RoleSpec, json_name: "RoleSpec", oneof: 0)

  field(:trigger_transition, 212,
    type: PgQuery.TriggerTransition,
    json_name: "TriggerTransition",
    oneof: 0
  )

  field(:partition_elem, 213, type: PgQuery.PartitionElem, json_name: "PartitionElem", oneof: 0)
  field(:partition_spec, 214, type: PgQuery.PartitionSpec, json_name: "PartitionSpec", oneof: 0)

  field(:partition_bound_spec, 215,
    type: PgQuery.PartitionBoundSpec,
    json_name: "PartitionBoundSpec",
    oneof: 0
  )

  field(:partition_range_datum, 216,
    type: PgQuery.PartitionRangeDatum,
    json_name: "PartitionRangeDatum",
    oneof: 0
  )

  field(:partition_cmd, 217, type: PgQuery.PartitionCmd, json_name: "PartitionCmd", oneof: 0)

  field(:vacuum_relation, 218, type: PgQuery.VacuumRelation, json_name: "VacuumRelation", oneof: 0)

  field(:inline_code_block, 219,
    type: PgQuery.InlineCodeBlock,
    json_name: "InlineCodeBlock",
    oneof: 0
  )

  field(:call_context, 220, type: PgQuery.CallContext, json_name: "CallContext", oneof: 0)
  field(:integer, 221, type: PgQuery.Integer, json_name: "Integer", oneof: 0)
  field(:float, 222, type: PgQuery.Float, json_name: "Float", oneof: 0)
  field(:string, 223, type: PgQuery.String, json_name: "String", oneof: 0)
  field(:bit_string, 224, type: PgQuery.BitString, json_name: "BitString", oneof: 0)
  field(:null, 225, type: PgQuery.Null, json_name: "Null", oneof: 0)
  field(:list, 226, type: PgQuery.List, json_name: "List", oneof: 0)
  field(:int_list, 227, type: PgQuery.IntList, json_name: "IntList", oneof: 0)
  field(:oid_list, 228, type: PgQuery.OidList, json_name: "OidList", oneof: 0)
end

defmodule PgQuery.Integer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ival, 1, type: :int32)
end

defmodule PgQuery.Float do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:str, 1, type: :string)
end

defmodule PgQuery.String do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:str, 1, type: :string)
end

defmodule PgQuery.BitString do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:str, 1, type: :string)
end

defmodule PgQuery.Null do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
end

defmodule PgQuery.List do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:items, 1, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.OidList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:items, 1, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.IntList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:items, 1, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.Alias do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:aliasname, 1, type: :string)
  field(:colnames, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.RangeVar do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:catalogname, 1, type: :string)
  field(:schemaname, 2, type: :string)
  field(:relname, 3, type: :string)
  field(:inh, 4, type: :bool)
  field(:relpersistence, 5, type: :string)
  field(:alias, 6, type: PgQuery.Alias)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.TableFunc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ns_uris, 1, repeated: true, type: PgQuery.Node)
  field(:ns_names, 2, repeated: true, type: PgQuery.Node)
  field(:docexpr, 3, type: PgQuery.Node)
  field(:rowexpr, 4, type: PgQuery.Node)
  field(:colnames, 5, repeated: true, type: PgQuery.Node)
  field(:coltypes, 6, repeated: true, type: PgQuery.Node)
  field(:coltypmods, 7, repeated: true, type: PgQuery.Node)
  field(:colcollations, 8, repeated: true, type: PgQuery.Node)
  field(:colexprs, 9, repeated: true, type: PgQuery.Node)
  field(:coldefexprs, 10, repeated: true, type: PgQuery.Node)
  field(:notnulls, 11, repeated: true, type: :uint64)
  field(:ordinalitycol, 12, type: :int32)
  field(:location, 13, type: :int32)
end

defmodule PgQuery.Expr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
end

defmodule PgQuery.Var do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:varno, 2, type: :uint32)
  field(:varattno, 3, type: :int32)
  field(:vartype, 4, type: :uint32)
  field(:vartypmod, 5, type: :int32)
  field(:varcollid, 6, type: :uint32)
  field(:varlevelsup, 7, type: :uint32)
  field(:varnosyn, 8, type: :uint32)
  field(:varattnosyn, 9, type: :int32)
  field(:location, 10, type: :int32)
end

defmodule PgQuery.Param do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:paramkind, 2, type: PgQuery.ParamKind, enum: true)
  field(:paramid, 3, type: :int32)
  field(:paramtype, 4, type: :uint32)
  field(:paramtypmod, 5, type: :int32)
  field(:paramcollid, 6, type: :uint32)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.Aggref do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:aggfnoid, 2, type: :uint32)
  field(:aggtype, 3, type: :uint32)
  field(:aggcollid, 4, type: :uint32)
  field(:inputcollid, 5, type: :uint32)
  field(:aggtranstype, 6, type: :uint32)
  field(:aggargtypes, 7, repeated: true, type: PgQuery.Node)
  field(:aggdirectargs, 8, repeated: true, type: PgQuery.Node)
  field(:args, 9, repeated: true, type: PgQuery.Node)
  field(:aggorder, 10, repeated: true, type: PgQuery.Node)
  field(:aggdistinct, 11, repeated: true, type: PgQuery.Node)
  field(:aggfilter, 12, type: PgQuery.Node)
  field(:aggstar, 13, type: :bool)
  field(:aggvariadic, 14, type: :bool)
  field(:aggkind, 15, type: :string)
  field(:agglevelsup, 16, type: :uint32)
  field(:aggsplit, 17, type: PgQuery.AggSplit, enum: true)
  field(:location, 18, type: :int32)
end

defmodule PgQuery.GroupingFunc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:args, 2, repeated: true, type: PgQuery.Node)
  field(:refs, 3, repeated: true, type: PgQuery.Node)
  field(:cols, 4, repeated: true, type: PgQuery.Node)
  field(:agglevelsup, 5, type: :uint32)
  field(:location, 6, type: :int32)
end

defmodule PgQuery.WindowFunc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:winfnoid, 2, type: :uint32)
  field(:wintype, 3, type: :uint32)
  field(:wincollid, 4, type: :uint32)
  field(:inputcollid, 5, type: :uint32)
  field(:args, 6, repeated: true, type: PgQuery.Node)
  field(:aggfilter, 7, type: PgQuery.Node)
  field(:winref, 8, type: :uint32)
  field(:winstar, 9, type: :bool)
  field(:winagg, 10, type: :bool)
  field(:location, 11, type: :int32)
end

defmodule PgQuery.SubscriptingRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:refcontainertype, 2, type: :uint32)
  field(:refelemtype, 3, type: :uint32)
  field(:reftypmod, 4, type: :int32)
  field(:refcollid, 5, type: :uint32)
  field(:refupperindexpr, 6, repeated: true, type: PgQuery.Node)
  field(:reflowerindexpr, 7, repeated: true, type: PgQuery.Node)
  field(:refexpr, 8, type: PgQuery.Node)
  field(:refassgnexpr, 9, type: PgQuery.Node)
end

defmodule PgQuery.FuncExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:funcid, 2, type: :uint32)
  field(:funcresulttype, 3, type: :uint32)
  field(:funcretset, 4, type: :bool)
  field(:funcvariadic, 5, type: :bool)
  field(:funcformat, 6, type: PgQuery.CoercionForm, enum: true)
  field(:funccollid, 7, type: :uint32)
  field(:inputcollid, 8, type: :uint32)
  field(:args, 9, repeated: true, type: PgQuery.Node)
  field(:location, 10, type: :int32)
end

defmodule PgQuery.NamedArgExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:name, 3, type: :string)
  field(:argnumber, 4, type: :int32)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.OpExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:opno, 2, type: :uint32)
  field(:opfuncid, 3, type: :uint32)
  field(:opresulttype, 4, type: :uint32)
  field(:opretset, 5, type: :bool)
  field(:opcollid, 6, type: :uint32)
  field(:inputcollid, 7, type: :uint32)
  field(:args, 8, repeated: true, type: PgQuery.Node)
  field(:location, 9, type: :int32)
end

defmodule PgQuery.DistinctExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:opno, 2, type: :uint32)
  field(:opfuncid, 3, type: :uint32)
  field(:opresulttype, 4, type: :uint32)
  field(:opretset, 5, type: :bool)
  field(:opcollid, 6, type: :uint32)
  field(:inputcollid, 7, type: :uint32)
  field(:args, 8, repeated: true, type: PgQuery.Node)
  field(:location, 9, type: :int32)
end

defmodule PgQuery.NullIfExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:opno, 2, type: :uint32)
  field(:opfuncid, 3, type: :uint32)
  field(:opresulttype, 4, type: :uint32)
  field(:opretset, 5, type: :bool)
  field(:opcollid, 6, type: :uint32)
  field(:inputcollid, 7, type: :uint32)
  field(:args, 8, repeated: true, type: PgQuery.Node)
  field(:location, 9, type: :int32)
end

defmodule PgQuery.ScalarArrayOpExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:opno, 2, type: :uint32)
  field(:opfuncid, 3, type: :uint32)
  field(:use_or, 4, type: :bool, json_name: "useOr")
  field(:inputcollid, 5, type: :uint32)
  field(:args, 6, repeated: true, type: PgQuery.Node)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.BoolExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:boolop, 2, type: PgQuery.BoolExprType, enum: true)
  field(:args, 3, repeated: true, type: PgQuery.Node)
  field(:location, 4, type: :int32)
end

defmodule PgQuery.SubLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:sub_link_type, 2, type: PgQuery.SubLinkType, json_name: "subLinkType", enum: true)
  field(:sub_link_id, 3, type: :int32, json_name: "subLinkId")
  field(:testexpr, 4, type: PgQuery.Node)
  field(:oper_name, 5, repeated: true, type: PgQuery.Node, json_name: "operName")
  field(:subselect, 6, type: PgQuery.Node)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.SubPlan do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:sub_link_type, 2, type: PgQuery.SubLinkType, json_name: "subLinkType", enum: true)
  field(:testexpr, 3, type: PgQuery.Node)
  field(:param_ids, 4, repeated: true, type: PgQuery.Node, json_name: "paramIds")
  field(:plan_id, 5, type: :int32)
  field(:plan_name, 6, type: :string)
  field(:first_col_type, 7, type: :uint32, json_name: "firstColType")
  field(:first_col_typmod, 8, type: :int32, json_name: "firstColTypmod")
  field(:first_col_collation, 9, type: :uint32, json_name: "firstColCollation")
  field(:use_hash_table, 10, type: :bool, json_name: "useHashTable")
  field(:unknown_eq_false, 11, type: :bool, json_name: "unknownEqFalse")
  field(:parallel_safe, 12, type: :bool)
  field(:set_param, 13, repeated: true, type: PgQuery.Node, json_name: "setParam")
  field(:par_param, 14, repeated: true, type: PgQuery.Node, json_name: "parParam")
  field(:args, 15, repeated: true, type: PgQuery.Node)
  field(:startup_cost, 16, type: :double)
  field(:per_call_cost, 17, type: :double)
end

defmodule PgQuery.AlternativeSubPlan do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:subplans, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.FieldSelect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:fieldnum, 3, type: :int32)
  field(:resulttype, 4, type: :uint32)
  field(:resulttypmod, 5, type: :int32)
  field(:resultcollid, 6, type: :uint32)
end

defmodule PgQuery.FieldStore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:newvals, 3, repeated: true, type: PgQuery.Node)
  field(:fieldnums, 4, repeated: true, type: PgQuery.Node)
  field(:resulttype, 5, type: :uint32)
end

defmodule PgQuery.RelabelType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:resulttype, 3, type: :uint32)
  field(:resulttypmod, 4, type: :int32)
  field(:resultcollid, 5, type: :uint32)
  field(:relabelformat, 6, type: PgQuery.CoercionForm, enum: true)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.CoerceViaIO do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:resulttype, 3, type: :uint32)
  field(:resultcollid, 4, type: :uint32)
  field(:coerceformat, 5, type: PgQuery.CoercionForm, enum: true)
  field(:location, 6, type: :int32)
end

defmodule PgQuery.ArrayCoerceExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:elemexpr, 3, type: PgQuery.Node)
  field(:resulttype, 4, type: :uint32)
  field(:resulttypmod, 5, type: :int32)
  field(:resultcollid, 6, type: :uint32)
  field(:coerceformat, 7, type: PgQuery.CoercionForm, enum: true)
  field(:location, 8, type: :int32)
end

defmodule PgQuery.ConvertRowtypeExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:resulttype, 3, type: :uint32)
  field(:convertformat, 4, type: PgQuery.CoercionForm, enum: true)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.CollateExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:coll_oid, 3, type: :uint32, json_name: "collOid")
  field(:location, 4, type: :int32)
end

defmodule PgQuery.CaseExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:casetype, 2, type: :uint32)
  field(:casecollid, 3, type: :uint32)
  field(:arg, 4, type: PgQuery.Node)
  field(:args, 5, repeated: true, type: PgQuery.Node)
  field(:defresult, 6, type: PgQuery.Node)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.CaseWhen do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:expr, 2, type: PgQuery.Node)
  field(:result, 3, type: PgQuery.Node)
  field(:location, 4, type: :int32)
end

defmodule PgQuery.CaseTestExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:type_id, 2, type: :uint32, json_name: "typeId")
  field(:type_mod, 3, type: :int32, json_name: "typeMod")
  field(:collation, 4, type: :uint32)
end

defmodule PgQuery.ArrayExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:array_typeid, 2, type: :uint32)
  field(:array_collid, 3, type: :uint32)
  field(:element_typeid, 4, type: :uint32)
  field(:elements, 5, repeated: true, type: PgQuery.Node)
  field(:multidims, 6, type: :bool)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.RowExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:args, 2, repeated: true, type: PgQuery.Node)
  field(:row_typeid, 3, type: :uint32)
  field(:row_format, 4, type: PgQuery.CoercionForm, enum: true)
  field(:colnames, 5, repeated: true, type: PgQuery.Node)
  field(:location, 6, type: :int32)
end

defmodule PgQuery.RowCompareExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:rctype, 2, type: PgQuery.RowCompareType, enum: true)
  field(:opnos, 3, repeated: true, type: PgQuery.Node)
  field(:opfamilies, 4, repeated: true, type: PgQuery.Node)
  field(:inputcollids, 5, repeated: true, type: PgQuery.Node)
  field(:largs, 6, repeated: true, type: PgQuery.Node)
  field(:rargs, 7, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CoalesceExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:coalescetype, 2, type: :uint32)
  field(:coalescecollid, 3, type: :uint32)
  field(:args, 4, repeated: true, type: PgQuery.Node)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.MinMaxExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:minmaxtype, 2, type: :uint32)
  field(:minmaxcollid, 3, type: :uint32)
  field(:inputcollid, 4, type: :uint32)
  field(:op, 5, type: PgQuery.MinMaxOp, enum: true)
  field(:args, 6, repeated: true, type: PgQuery.Node)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.SQLValueFunction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:op, 2, type: PgQuery.SQLValueFunctionOp, enum: true)
  field(:type, 3, type: :uint32)
  field(:typmod, 4, type: :int32)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.XmlExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:op, 2, type: PgQuery.XmlExprOp, enum: true)
  field(:name, 3, type: :string)
  field(:named_args, 4, repeated: true, type: PgQuery.Node)
  field(:arg_names, 5, repeated: true, type: PgQuery.Node)
  field(:args, 6, repeated: true, type: PgQuery.Node)
  field(:xmloption, 7, type: PgQuery.XmlOptionType, enum: true)
  field(:type, 8, type: :uint32)
  field(:typmod, 9, type: :int32)
  field(:location, 10, type: :int32)
end

defmodule PgQuery.NullTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:nulltesttype, 3, type: PgQuery.NullTestType, enum: true)
  field(:argisrow, 4, type: :bool)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.BooleanTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:booltesttype, 3, type: PgQuery.BoolTestType, enum: true)
  field(:location, 4, type: :int32)
end

defmodule PgQuery.CoerceToDomain do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:arg, 2, type: PgQuery.Node)
  field(:resulttype, 3, type: :uint32)
  field(:resulttypmod, 4, type: :int32)
  field(:resultcollid, 5, type: :uint32)
  field(:coercionformat, 6, type: PgQuery.CoercionForm, enum: true)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.CoerceToDomainValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:type_id, 2, type: :uint32, json_name: "typeId")
  field(:type_mod, 3, type: :int32, json_name: "typeMod")
  field(:collation, 4, type: :uint32)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.SetToDefault do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:type_id, 2, type: :uint32, json_name: "typeId")
  field(:type_mod, 3, type: :int32, json_name: "typeMod")
  field(:collation, 4, type: :uint32)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.CurrentOfExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:cvarno, 2, type: :uint32)
  field(:cursor_name, 3, type: :string)
  field(:cursor_param, 4, type: :int32)
end

defmodule PgQuery.NextValueExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:seqid, 2, type: :uint32)
  field(:type_id, 3, type: :uint32, json_name: "typeId")
end

defmodule PgQuery.InferenceElem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:expr, 2, type: PgQuery.Node)
  field(:infercollid, 3, type: :uint32)
  field(:inferopclass, 4, type: :uint32)
end

defmodule PgQuery.TargetEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xpr, 1, type: PgQuery.Node)
  field(:expr, 2, type: PgQuery.Node)
  field(:resno, 3, type: :int32)
  field(:resname, 4, type: :string)
  field(:ressortgroupref, 5, type: :uint32)
  field(:resorigtbl, 6, type: :uint32)
  field(:resorigcol, 7, type: :int32)
  field(:resjunk, 8, type: :bool)
end

defmodule PgQuery.RangeTblRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:rtindex, 1, type: :int32)
end

defmodule PgQuery.JoinExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:jointype, 1, type: PgQuery.JoinType, enum: true)
  field(:is_natural, 2, type: :bool, json_name: "isNatural")
  field(:larg, 3, type: PgQuery.Node)
  field(:rarg, 4, type: PgQuery.Node)
  field(:using_clause, 5, repeated: true, type: PgQuery.Node, json_name: "usingClause")
  field(:quals, 6, type: PgQuery.Node)
  field(:alias, 7, type: PgQuery.Alias)
  field(:rtindex, 8, type: :int32)
end

defmodule PgQuery.FromExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:fromlist, 1, repeated: true, type: PgQuery.Node)
  field(:quals, 2, type: PgQuery.Node)
end

defmodule PgQuery.OnConflictExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:action, 1, type: PgQuery.OnConflictAction, enum: true)
  field(:arbiter_elems, 2, repeated: true, type: PgQuery.Node, json_name: "arbiterElems")
  field(:arbiter_where, 3, type: PgQuery.Node, json_name: "arbiterWhere")
  field(:constraint, 4, type: :uint32)
  field(:on_conflict_set, 5, repeated: true, type: PgQuery.Node, json_name: "onConflictSet")
  field(:on_conflict_where, 6, type: PgQuery.Node, json_name: "onConflictWhere")
  field(:excl_rel_index, 7, type: :int32, json_name: "exclRelIndex")
  field(:excl_rel_tlist, 8, repeated: true, type: PgQuery.Node, json_name: "exclRelTlist")
end

defmodule PgQuery.IntoClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:rel, 1, type: PgQuery.RangeVar)
  field(:col_names, 2, repeated: true, type: PgQuery.Node, json_name: "colNames")
  field(:access_method, 3, type: :string, json_name: "accessMethod")
  field(:options, 4, repeated: true, type: PgQuery.Node)
  field(:on_commit, 5, type: PgQuery.OnCommitAction, json_name: "onCommit", enum: true)
  field(:table_space_name, 6, type: :string, json_name: "tableSpaceName")
  field(:view_query, 7, type: PgQuery.Node, json_name: "viewQuery")
  field(:skip_data, 8, type: :bool, json_name: "skipData")
end

defmodule PgQuery.RawStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:stmt, 1, type: PgQuery.Node)
  field(:stmt_location, 2, type: :int32)
  field(:stmt_len, 3, type: :int32)
end

defmodule PgQuery.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:command_type, 1, type: PgQuery.CmdType, json_name: "commandType", enum: true)
  field(:query_source, 2, type: PgQuery.QuerySource, json_name: "querySource", enum: true)
  field(:can_set_tag, 3, type: :bool, json_name: "canSetTag")
  field(:utility_stmt, 4, type: PgQuery.Node, json_name: "utilityStmt")
  field(:result_relation, 5, type: :int32, json_name: "resultRelation")
  field(:has_aggs, 6, type: :bool, json_name: "hasAggs")
  field(:has_window_funcs, 7, type: :bool, json_name: "hasWindowFuncs")
  field(:has_target_srfs, 8, type: :bool, json_name: "hasTargetSRFs")
  field(:has_sub_links, 9, type: :bool, json_name: "hasSubLinks")
  field(:has_distinct_on, 10, type: :bool, json_name: "hasDistinctOn")
  field(:has_recursive, 11, type: :bool, json_name: "hasRecursive")
  field(:has_modifying_cte, 12, type: :bool, json_name: "hasModifyingCTE")
  field(:has_for_update, 13, type: :bool, json_name: "hasForUpdate")
  field(:has_row_security, 14, type: :bool, json_name: "hasRowSecurity")
  field(:cte_list, 15, repeated: true, type: PgQuery.Node, json_name: "cteList")
  field(:rtable, 16, repeated: true, type: PgQuery.Node)
  field(:jointree, 17, type: PgQuery.FromExpr)
  field(:target_list, 18, repeated: true, type: PgQuery.Node, json_name: "targetList")
  field(:override, 19, type: PgQuery.OverridingKind, enum: true)
  field(:on_conflict, 20, type: PgQuery.OnConflictExpr, json_name: "onConflict")
  field(:returning_list, 21, repeated: true, type: PgQuery.Node, json_name: "returningList")
  field(:group_clause, 22, repeated: true, type: PgQuery.Node, json_name: "groupClause")
  field(:grouping_sets, 23, repeated: true, type: PgQuery.Node, json_name: "groupingSets")
  field(:having_qual, 24, type: PgQuery.Node, json_name: "havingQual")
  field(:window_clause, 25, repeated: true, type: PgQuery.Node, json_name: "windowClause")
  field(:distinct_clause, 26, repeated: true, type: PgQuery.Node, json_name: "distinctClause")
  field(:sort_clause, 27, repeated: true, type: PgQuery.Node, json_name: "sortClause")
  field(:limit_offset, 28, type: PgQuery.Node, json_name: "limitOffset")
  field(:limit_count, 29, type: PgQuery.Node, json_name: "limitCount")
  field(:limit_option, 30, type: PgQuery.LimitOption, json_name: "limitOption", enum: true)
  field(:row_marks, 31, repeated: true, type: PgQuery.Node, json_name: "rowMarks")
  field(:set_operations, 32, type: PgQuery.Node, json_name: "setOperations")
  field(:constraint_deps, 33, repeated: true, type: PgQuery.Node, json_name: "constraintDeps")

  field(:with_check_options, 34, repeated: true, type: PgQuery.Node, json_name: "withCheckOptions")

  field(:stmt_location, 35, type: :int32)
  field(:stmt_len, 36, type: :int32)
end

defmodule PgQuery.InsertStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:cols, 2, repeated: true, type: PgQuery.Node)
  field(:select_stmt, 3, type: PgQuery.Node, json_name: "selectStmt")
  field(:on_conflict_clause, 4, type: PgQuery.OnConflictClause, json_name: "onConflictClause")
  field(:returning_list, 5, repeated: true, type: PgQuery.Node, json_name: "returningList")
  field(:with_clause, 6, type: PgQuery.WithClause, json_name: "withClause")
  field(:override, 7, type: PgQuery.OverridingKind, enum: true)
end

defmodule PgQuery.DeleteStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:using_clause, 2, repeated: true, type: PgQuery.Node, json_name: "usingClause")
  field(:where_clause, 3, type: PgQuery.Node, json_name: "whereClause")
  field(:returning_list, 4, repeated: true, type: PgQuery.Node, json_name: "returningList")
  field(:with_clause, 5, type: PgQuery.WithClause, json_name: "withClause")
end

defmodule PgQuery.UpdateStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:target_list, 2, repeated: true, type: PgQuery.Node, json_name: "targetList")
  field(:where_clause, 3, type: PgQuery.Node, json_name: "whereClause")
  field(:from_clause, 4, repeated: true, type: PgQuery.Node, json_name: "fromClause")
  field(:returning_list, 5, repeated: true, type: PgQuery.Node, json_name: "returningList")
  field(:with_clause, 6, type: PgQuery.WithClause, json_name: "withClause")
end

defmodule PgQuery.SelectStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:distinct_clause, 1, repeated: true, type: PgQuery.Node, json_name: "distinctClause")
  field(:into_clause, 2, type: PgQuery.IntoClause, json_name: "intoClause")
  field(:target_list, 3, repeated: true, type: PgQuery.Node, json_name: "targetList")
  field(:from_clause, 4, repeated: true, type: PgQuery.Node, json_name: "fromClause")
  field(:where_clause, 5, type: PgQuery.Node, json_name: "whereClause")
  field(:group_clause, 6, repeated: true, type: PgQuery.Node, json_name: "groupClause")
  field(:having_clause, 7, type: PgQuery.Node, json_name: "havingClause")
  field(:window_clause, 8, repeated: true, type: PgQuery.Node, json_name: "windowClause")
  field(:values_lists, 9, repeated: true, type: PgQuery.Node, json_name: "valuesLists")
  field(:sort_clause, 10, repeated: true, type: PgQuery.Node, json_name: "sortClause")
  field(:limit_offset, 11, type: PgQuery.Node, json_name: "limitOffset")
  field(:limit_count, 12, type: PgQuery.Node, json_name: "limitCount")
  field(:limit_option, 13, type: PgQuery.LimitOption, json_name: "limitOption", enum: true)
  field(:locking_clause, 14, repeated: true, type: PgQuery.Node, json_name: "lockingClause")
  field(:with_clause, 15, type: PgQuery.WithClause, json_name: "withClause")
  field(:op, 16, type: PgQuery.SetOperation, enum: true)
  field(:all, 17, type: :bool)
  field(:larg, 18, type: PgQuery.SelectStmt)
  field(:rarg, 19, type: PgQuery.SelectStmt)
end

defmodule PgQuery.AlterTableStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:cmds, 2, repeated: true, type: PgQuery.Node)
  field(:relkind, 3, type: PgQuery.ObjectType, enum: true)
  field(:missing_ok, 4, type: :bool)
end

defmodule PgQuery.AlterTableCmd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:subtype, 1, type: PgQuery.AlterTableType, enum: true)
  field(:name, 2, type: :string)
  field(:num, 3, type: :int32)
  field(:newowner, 4, type: PgQuery.RoleSpec)
  field(:def, 5, type: PgQuery.Node)
  field(:behavior, 6, type: PgQuery.DropBehavior, enum: true)
  field(:missing_ok, 7, type: :bool)
end

defmodule PgQuery.AlterDomainStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:subtype, 1, type: :string)
  field(:type_name, 2, repeated: true, type: PgQuery.Node, json_name: "typeName")
  field(:name, 3, type: :string)
  field(:def, 4, type: PgQuery.Node)
  field(:behavior, 5, type: PgQuery.DropBehavior, enum: true)
  field(:missing_ok, 6, type: :bool)
end

defmodule PgQuery.SetOperationStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:op, 1, type: PgQuery.SetOperation, enum: true)
  field(:all, 2, type: :bool)
  field(:larg, 3, type: PgQuery.Node)
  field(:rarg, 4, type: PgQuery.Node)
  field(:col_types, 5, repeated: true, type: PgQuery.Node, json_name: "colTypes")
  field(:col_typmods, 6, repeated: true, type: PgQuery.Node, json_name: "colTypmods")
  field(:col_collations, 7, repeated: true, type: PgQuery.Node, json_name: "colCollations")
  field(:group_clauses, 8, repeated: true, type: PgQuery.Node, json_name: "groupClauses")
end

defmodule PgQuery.GrantStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:is_grant, 1, type: :bool)
  field(:targtype, 2, type: PgQuery.GrantTargetType, enum: true)
  field(:objtype, 3, type: PgQuery.ObjectType, enum: true)
  field(:objects, 4, repeated: true, type: PgQuery.Node)
  field(:privileges, 5, repeated: true, type: PgQuery.Node)
  field(:grantees, 6, repeated: true, type: PgQuery.Node)
  field(:grant_option, 7, type: :bool)
  field(:behavior, 8, type: PgQuery.DropBehavior, enum: true)
end

defmodule PgQuery.GrantRoleStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:granted_roles, 1, repeated: true, type: PgQuery.Node)
  field(:grantee_roles, 2, repeated: true, type: PgQuery.Node)
  field(:is_grant, 3, type: :bool)
  field(:admin_opt, 4, type: :bool)
  field(:grantor, 5, type: PgQuery.RoleSpec)
  field(:behavior, 6, type: PgQuery.DropBehavior, enum: true)
end

defmodule PgQuery.AlterDefaultPrivilegesStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:options, 1, repeated: true, type: PgQuery.Node)
  field(:action, 2, type: PgQuery.GrantStmt)
end

defmodule PgQuery.ClosePortalStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:portalname, 1, type: :string)
end

defmodule PgQuery.ClusterStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:indexname, 2, type: :string)
  field(:options, 3, type: :int32)
end

defmodule PgQuery.CopyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:query, 2, type: PgQuery.Node)
  field(:attlist, 3, repeated: true, type: PgQuery.Node)
  field(:is_from, 4, type: :bool)
  field(:is_program, 5, type: :bool)
  field(:filename, 6, type: :string)
  field(:options, 7, repeated: true, type: PgQuery.Node)
  field(:where_clause, 8, type: PgQuery.Node, json_name: "whereClause")
end

defmodule PgQuery.CreateStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:table_elts, 2, repeated: true, type: PgQuery.Node, json_name: "tableElts")
  field(:inh_relations, 3, repeated: true, type: PgQuery.Node, json_name: "inhRelations")
  field(:partbound, 4, type: PgQuery.PartitionBoundSpec)
  field(:partspec, 5, type: PgQuery.PartitionSpec)
  field(:of_typename, 6, type: PgQuery.TypeName, json_name: "ofTypename")
  field(:constraints, 7, repeated: true, type: PgQuery.Node)
  field(:options, 8, repeated: true, type: PgQuery.Node)
  field(:oncommit, 9, type: PgQuery.OnCommitAction, enum: true)
  field(:tablespacename, 10, type: :string)
  field(:access_method, 11, type: :string, json_name: "accessMethod")
  field(:if_not_exists, 12, type: :bool)
end

defmodule PgQuery.DefineStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.ObjectType, enum: true)
  field(:oldstyle, 2, type: :bool)
  field(:defnames, 3, repeated: true, type: PgQuery.Node)
  field(:args, 4, repeated: true, type: PgQuery.Node)
  field(:definition, 5, repeated: true, type: PgQuery.Node)
  field(:if_not_exists, 6, type: :bool)
  field(:replace, 7, type: :bool)
end

defmodule PgQuery.DropStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:objects, 1, repeated: true, type: PgQuery.Node)
  field(:remove_type, 2, type: PgQuery.ObjectType, json_name: "removeType", enum: true)
  field(:behavior, 3, type: PgQuery.DropBehavior, enum: true)
  field(:missing_ok, 4, type: :bool)
  field(:concurrent, 5, type: :bool)
end

defmodule PgQuery.TruncateStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relations, 1, repeated: true, type: PgQuery.Node)
  field(:restart_seqs, 2, type: :bool)
  field(:behavior, 3, type: PgQuery.DropBehavior, enum: true)
end

defmodule PgQuery.CommentStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:objtype, 1, type: PgQuery.ObjectType, enum: true)
  field(:object, 2, type: PgQuery.Node)
  field(:comment, 3, type: :string)
end

defmodule PgQuery.FetchStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:direction, 1, type: PgQuery.FetchDirection, enum: true)
  field(:how_many, 2, type: :int64, json_name: "howMany")
  field(:portalname, 3, type: :string)
  field(:ismove, 4, type: :bool)
end

defmodule PgQuery.IndexStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:idxname, 1, type: :string)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:access_method, 3, type: :string, json_name: "accessMethod")
  field(:table_space, 4, type: :string, json_name: "tableSpace")
  field(:index_params, 5, repeated: true, type: PgQuery.Node, json_name: "indexParams")

  field(:index_including_params, 6,
    repeated: true,
    type: PgQuery.Node,
    json_name: "indexIncludingParams"
  )

  field(:options, 7, repeated: true, type: PgQuery.Node)
  field(:where_clause, 8, type: PgQuery.Node, json_name: "whereClause")
  field(:exclude_op_names, 9, repeated: true, type: PgQuery.Node, json_name: "excludeOpNames")
  field(:idxcomment, 10, type: :string)
  field(:index_oid, 11, type: :uint32, json_name: "indexOid")
  field(:old_node, 12, type: :uint32, json_name: "oldNode")
  field(:old_create_subid, 13, type: :uint32, json_name: "oldCreateSubid")
  field(:old_first_relfilenode_subid, 14, type: :uint32, json_name: "oldFirstRelfilenodeSubid")
  field(:unique, 15, type: :bool)
  field(:primary, 16, type: :bool)
  field(:isconstraint, 17, type: :bool)
  field(:deferrable, 18, type: :bool)
  field(:initdeferred, 19, type: :bool)
  field(:transformed, 20, type: :bool)
  field(:concurrent, 21, type: :bool)
  field(:if_not_exists, 22, type: :bool)
  field(:reset_default_tblspc, 23, type: :bool)
end

defmodule PgQuery.CreateFunctionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:is_procedure, 1, type: :bool)
  field(:replace, 2, type: :bool)
  field(:funcname, 3, repeated: true, type: PgQuery.Node)
  field(:parameters, 4, repeated: true, type: PgQuery.Node)
  field(:return_type, 5, type: PgQuery.TypeName, json_name: "returnType")
  field(:options, 6, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterFunctionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:objtype, 1, type: PgQuery.ObjectType, enum: true)
  field(:func, 2, type: PgQuery.ObjectWithArgs)
  field(:actions, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DoStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:args, 1, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.RenameStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:rename_type, 1, type: PgQuery.ObjectType, json_name: "renameType", enum: true)
  field(:relation_type, 2, type: PgQuery.ObjectType, json_name: "relationType", enum: true)
  field(:relation, 3, type: PgQuery.RangeVar)
  field(:object, 4, type: PgQuery.Node)
  field(:subname, 5, type: :string)
  field(:newname, 6, type: :string)
  field(:behavior, 7, type: PgQuery.DropBehavior, enum: true)
  field(:missing_ok, 8, type: :bool)
end

defmodule PgQuery.RuleStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:rulename, 2, type: :string)
  field(:where_clause, 3, type: PgQuery.Node, json_name: "whereClause")
  field(:event, 4, type: PgQuery.CmdType, enum: true)
  field(:instead, 5, type: :bool)
  field(:actions, 6, repeated: true, type: PgQuery.Node)
  field(:replace, 7, type: :bool)
end

defmodule PgQuery.NotifyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:conditionname, 1, type: :string)
  field(:payload, 2, type: :string)
end

defmodule PgQuery.ListenStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:conditionname, 1, type: :string)
end

defmodule PgQuery.UnlistenStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:conditionname, 1, type: :string)
end

defmodule PgQuery.TransactionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.TransactionStmtKind, enum: true)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:savepoint_name, 3, type: :string)
  field(:gid, 4, type: :string)
  field(:chain, 5, type: :bool)
end

defmodule PgQuery.ViewStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:view, 1, type: PgQuery.RangeVar)
  field(:aliases, 2, repeated: true, type: PgQuery.Node)
  field(:query, 3, type: PgQuery.Node)
  field(:replace, 4, type: :bool)
  field(:options, 5, repeated: true, type: PgQuery.Node)

  field(:with_check_option, 6,
    type: PgQuery.ViewCheckOption,
    json_name: "withCheckOption",
    enum: true
  )
end

defmodule PgQuery.LoadStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:filename, 1, type: :string)
end

defmodule PgQuery.CreateDomainStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:domainname, 1, repeated: true, type: PgQuery.Node)
  field(:type_name, 2, type: PgQuery.TypeName, json_name: "typeName")
  field(:coll_clause, 3, type: PgQuery.CollateClause, json_name: "collClause")
  field(:constraints, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreatedbStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:dbname, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DropdbStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:dbname, 1, type: :string)
  field(:missing_ok, 2, type: :bool)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.VacuumStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:options, 1, repeated: true, type: PgQuery.Node)
  field(:rels, 2, repeated: true, type: PgQuery.Node)
  field(:is_vacuumcmd, 3, type: :bool)
end

defmodule PgQuery.ExplainStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:query, 1, type: PgQuery.Node)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateTableAsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:query, 1, type: PgQuery.Node)
  field(:into, 2, type: PgQuery.IntoClause)
  field(:relkind, 3, type: PgQuery.ObjectType, enum: true)
  field(:is_select_into, 4, type: :bool)
  field(:if_not_exists, 5, type: :bool)
end

defmodule PgQuery.CreateSeqStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:sequence, 1, type: PgQuery.RangeVar)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:owner_id, 3, type: :uint32, json_name: "ownerId")
  field(:for_identity, 4, type: :bool)
  field(:if_not_exists, 5, type: :bool)
end

defmodule PgQuery.AlterSeqStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:sequence, 1, type: PgQuery.RangeVar)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:for_identity, 3, type: :bool)
  field(:missing_ok, 4, type: :bool)
end

defmodule PgQuery.VariableSetStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.VariableSetKind, enum: true)
  field(:name, 2, type: :string)
  field(:args, 3, repeated: true, type: PgQuery.Node)
  field(:is_local, 4, type: :bool)
end

defmodule PgQuery.VariableShowStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
end

defmodule PgQuery.DiscardStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:target, 1, type: PgQuery.DiscardMode, enum: true)
end

defmodule PgQuery.CreateTrigStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:trigname, 1, type: :string)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:funcname, 3, repeated: true, type: PgQuery.Node)
  field(:args, 4, repeated: true, type: PgQuery.Node)
  field(:row, 5, type: :bool)
  field(:timing, 6, type: :int32)
  field(:events, 7, type: :int32)
  field(:columns, 8, repeated: true, type: PgQuery.Node)
  field(:when_clause, 9, type: PgQuery.Node, json_name: "whenClause")
  field(:isconstraint, 10, type: :bool)
  field(:transition_rels, 11, repeated: true, type: PgQuery.Node, json_name: "transitionRels")
  field(:deferrable, 12, type: :bool)
  field(:initdeferred, 13, type: :bool)
  field(:constrrel, 14, type: PgQuery.RangeVar)
end

defmodule PgQuery.CreatePLangStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:replace, 1, type: :bool)
  field(:plname, 2, type: :string)
  field(:plhandler, 3, repeated: true, type: PgQuery.Node)
  field(:plinline, 4, repeated: true, type: PgQuery.Node)
  field(:plvalidator, 5, repeated: true, type: PgQuery.Node)
  field(:pltrusted, 6, type: :bool)
end

defmodule PgQuery.CreateRoleStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:stmt_type, 1, type: PgQuery.RoleStmtType, enum: true)
  field(:role, 2, type: :string)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterRoleStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:role, 1, type: PgQuery.RoleSpec)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:action, 3, type: :int32)
end

defmodule PgQuery.DropRoleStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:roles, 1, repeated: true, type: PgQuery.Node)
  field(:missing_ok, 2, type: :bool)
end

defmodule PgQuery.LockStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relations, 1, repeated: true, type: PgQuery.Node)
  field(:mode, 2, type: :int32)
  field(:nowait, 3, type: :bool)
end

defmodule PgQuery.ConstraintsSetStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:constraints, 1, repeated: true, type: PgQuery.Node)
  field(:deferred, 2, type: :bool)
end

defmodule PgQuery.ReindexStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.ReindexObjectType, enum: true)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:name, 3, type: :string)
  field(:options, 4, type: :int32)
  field(:concurrent, 5, type: :bool)
end

defmodule PgQuery.CheckPointStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
end

defmodule PgQuery.CreateSchemaStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:schemaname, 1, type: :string)
  field(:authrole, 2, type: PgQuery.RoleSpec)
  field(:schema_elts, 3, repeated: true, type: PgQuery.Node, json_name: "schemaElts")
  field(:if_not_exists, 4, type: :bool)
end

defmodule PgQuery.AlterDatabaseStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:dbname, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterDatabaseSetStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:dbname, 1, type: :string)
  field(:setstmt, 2, type: PgQuery.VariableSetStmt)
end

defmodule PgQuery.AlterRoleSetStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:role, 1, type: PgQuery.RoleSpec)
  field(:database, 2, type: :string)
  field(:setstmt, 3, type: PgQuery.VariableSetStmt)
end

defmodule PgQuery.CreateConversionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:conversion_name, 1, repeated: true, type: PgQuery.Node)
  field(:for_encoding_name, 2, type: :string)
  field(:to_encoding_name, 3, type: :string)
  field(:func_name, 4, repeated: true, type: PgQuery.Node)
  field(:def, 5, type: :bool)
end

defmodule PgQuery.CreateCastStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:sourcetype, 1, type: PgQuery.TypeName)
  field(:targettype, 2, type: PgQuery.TypeName)
  field(:func, 3, type: PgQuery.ObjectWithArgs)
  field(:context, 4, type: PgQuery.CoercionContext, enum: true)
  field(:inout, 5, type: :bool)
end

defmodule PgQuery.CreateOpClassStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:opclassname, 1, repeated: true, type: PgQuery.Node)
  field(:opfamilyname, 2, repeated: true, type: PgQuery.Node)
  field(:amname, 3, type: :string)
  field(:datatype, 4, type: PgQuery.TypeName)
  field(:items, 5, repeated: true, type: PgQuery.Node)
  field(:is_default, 6, type: :bool, json_name: "isDefault")
end

defmodule PgQuery.CreateOpFamilyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:opfamilyname, 1, repeated: true, type: PgQuery.Node)
  field(:amname, 2, type: :string)
end

defmodule PgQuery.AlterOpFamilyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:opfamilyname, 1, repeated: true, type: PgQuery.Node)
  field(:amname, 2, type: :string)
  field(:is_drop, 3, type: :bool, json_name: "isDrop")
  field(:items, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.PrepareStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:argtypes, 2, repeated: true, type: PgQuery.Node)
  field(:query, 3, type: PgQuery.Node)
end

defmodule PgQuery.ExecuteStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:params, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DeallocateStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
end

defmodule PgQuery.DeclareCursorStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:portalname, 1, type: :string)
  field(:options, 2, type: :int32)
  field(:query, 3, type: PgQuery.Node)
end

defmodule PgQuery.CreateTableSpaceStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:tablespacename, 1, type: :string)
  field(:owner, 2, type: PgQuery.RoleSpec)
  field(:location, 3, type: :string)
  field(:options, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DropTableSpaceStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:tablespacename, 1, type: :string)
  field(:missing_ok, 2, type: :bool)
end

defmodule PgQuery.AlterObjectDependsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:object_type, 1, type: PgQuery.ObjectType, json_name: "objectType", enum: true)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:object, 3, type: PgQuery.Node)
  field(:extname, 4, type: PgQuery.Node)
  field(:remove, 5, type: :bool)
end

defmodule PgQuery.AlterObjectSchemaStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:object_type, 1, type: PgQuery.ObjectType, json_name: "objectType", enum: true)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:object, 3, type: PgQuery.Node)
  field(:newschema, 4, type: :string)
  field(:missing_ok, 5, type: :bool)
end

defmodule PgQuery.AlterOwnerStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:object_type, 1, type: PgQuery.ObjectType, json_name: "objectType", enum: true)
  field(:relation, 2, type: PgQuery.RangeVar)
  field(:object, 3, type: PgQuery.Node)
  field(:newowner, 4, type: PgQuery.RoleSpec)
end

defmodule PgQuery.AlterOperatorStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:opername, 1, type: PgQuery.ObjectWithArgs)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterTypeStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:type_name, 1, repeated: true, type: PgQuery.Node, json_name: "typeName")
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DropOwnedStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:roles, 1, repeated: true, type: PgQuery.Node)
  field(:behavior, 2, type: PgQuery.DropBehavior, enum: true)
end

defmodule PgQuery.ReassignOwnedStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:roles, 1, repeated: true, type: PgQuery.Node)
  field(:newrole, 2, type: PgQuery.RoleSpec)
end

defmodule PgQuery.CompositeTypeStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:typevar, 1, type: PgQuery.RangeVar)
  field(:coldeflist, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateEnumStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:type_name, 1, repeated: true, type: PgQuery.Node, json_name: "typeName")
  field(:vals, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateRangeStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:type_name, 1, repeated: true, type: PgQuery.Node, json_name: "typeName")
  field(:params, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterEnumStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:type_name, 1, repeated: true, type: PgQuery.Node, json_name: "typeName")
  field(:old_val, 2, type: :string, json_name: "oldVal")
  field(:new_val, 3, type: :string, json_name: "newVal")
  field(:new_val_neighbor, 4, type: :string, json_name: "newValNeighbor")
  field(:new_val_is_after, 5, type: :bool, json_name: "newValIsAfter")
  field(:skip_if_new_val_exists, 6, type: :bool, json_name: "skipIfNewValExists")
end

defmodule PgQuery.AlterTSDictionaryStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:dictname, 1, repeated: true, type: PgQuery.Node)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterTSConfigurationStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.AlterTSConfigType, enum: true)
  field(:cfgname, 2, repeated: true, type: PgQuery.Node)
  field(:tokentype, 3, repeated: true, type: PgQuery.Node)
  field(:dicts, 4, repeated: true, type: PgQuery.Node)
  field(:override, 5, type: :bool)
  field(:replace, 6, type: :bool)
  field(:missing_ok, 7, type: :bool)
end

defmodule PgQuery.CreateFdwStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:fdwname, 1, type: :string)
  field(:func_options, 2, repeated: true, type: PgQuery.Node)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterFdwStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:fdwname, 1, type: :string)
  field(:func_options, 2, repeated: true, type: PgQuery.Node)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateForeignServerStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:servername, 1, type: :string)
  field(:servertype, 2, type: :string)
  field(:version, 3, type: :string)
  field(:fdwname, 4, type: :string)
  field(:if_not_exists, 5, type: :bool)
  field(:options, 6, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterForeignServerStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:servername, 1, type: :string)
  field(:version, 2, type: :string)
  field(:options, 3, repeated: true, type: PgQuery.Node)
  field(:has_version, 4, type: :bool)
end

defmodule PgQuery.CreateUserMappingStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:user, 1, type: PgQuery.RoleSpec)
  field(:servername, 2, type: :string)
  field(:if_not_exists, 3, type: :bool)
  field(:options, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterUserMappingStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:user, 1, type: PgQuery.RoleSpec)
  field(:servername, 2, type: :string)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DropUserMappingStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:user, 1, type: PgQuery.RoleSpec)
  field(:servername, 2, type: :string)
  field(:missing_ok, 3, type: :bool)
end

defmodule PgQuery.AlterTableSpaceOptionsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:tablespacename, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:is_reset, 3, type: :bool, json_name: "isReset")
end

defmodule PgQuery.AlterTableMoveAllStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:orig_tablespacename, 1, type: :string)
  field(:objtype, 2, type: PgQuery.ObjectType, enum: true)
  field(:roles, 3, repeated: true, type: PgQuery.Node)
  field(:new_tablespacename, 4, type: :string)
  field(:nowait, 5, type: :bool)
end

defmodule PgQuery.SecLabelStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:objtype, 1, type: PgQuery.ObjectType, enum: true)
  field(:object, 2, type: PgQuery.Node)
  field(:provider, 3, type: :string)
  field(:label, 4, type: :string)
end

defmodule PgQuery.CreateForeignTableStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:base_stmt, 1, type: PgQuery.CreateStmt, json_name: "base")
  field(:servername, 2, type: :string)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.ImportForeignSchemaStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:server_name, 1, type: :string)
  field(:remote_schema, 2, type: :string)
  field(:local_schema, 3, type: :string)
  field(:list_type, 4, type: PgQuery.ImportForeignSchemaType, enum: true)
  field(:table_list, 5, repeated: true, type: PgQuery.Node)
  field(:options, 6, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateExtensionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:extname, 1, type: :string)
  field(:if_not_exists, 2, type: :bool)
  field(:options, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterExtensionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:extname, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterExtensionContentsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:extname, 1, type: :string)
  field(:action, 2, type: :int32)
  field(:objtype, 3, type: PgQuery.ObjectType, enum: true)
  field(:object, 4, type: PgQuery.Node)
end

defmodule PgQuery.CreateEventTrigStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:trigname, 1, type: :string)
  field(:eventname, 2, type: :string)
  field(:whenclause, 3, repeated: true, type: PgQuery.Node)
  field(:funcname, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterEventTrigStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:trigname, 1, type: :string)
  field(:tgenabled, 2, type: :string)
end

defmodule PgQuery.RefreshMatViewStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:concurrent, 1, type: :bool)
  field(:skip_data, 2, type: :bool, json_name: "skipData")
  field(:relation, 3, type: PgQuery.RangeVar)
end

defmodule PgQuery.ReplicaIdentityStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:identity_type, 1, type: :string)
  field(:name, 2, type: :string)
end

defmodule PgQuery.AlterSystemStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:setstmt, 1, type: PgQuery.VariableSetStmt)
end

defmodule PgQuery.CreatePolicyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:policy_name, 1, type: :string)
  field(:table, 2, type: PgQuery.RangeVar)
  field(:cmd_name, 3, type: :string)
  field(:permissive, 4, type: :bool)
  field(:roles, 5, repeated: true, type: PgQuery.Node)
  field(:qual, 6, type: PgQuery.Node)
  field(:with_check, 7, type: PgQuery.Node)
end

defmodule PgQuery.AlterPolicyStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:policy_name, 1, type: :string)
  field(:table, 2, type: PgQuery.RangeVar)
  field(:roles, 3, repeated: true, type: PgQuery.Node)
  field(:qual, 4, type: PgQuery.Node)
  field(:with_check, 5, type: PgQuery.Node)
end

defmodule PgQuery.CreateTransformStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:replace, 1, type: :bool)
  field(:type_name, 2, type: PgQuery.TypeName)
  field(:lang, 3, type: :string)
  field(:fromsql, 4, type: PgQuery.ObjectWithArgs)
  field(:tosql, 5, type: PgQuery.ObjectWithArgs)
end

defmodule PgQuery.CreateAmStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:amname, 1, type: :string)
  field(:handler_name, 2, repeated: true, type: PgQuery.Node)
  field(:amtype, 3, type: :string)
end

defmodule PgQuery.CreatePublicationStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:pubname, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:tables, 3, repeated: true, type: PgQuery.Node)
  field(:for_all_tables, 4, type: :bool)
end

defmodule PgQuery.AlterPublicationStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:pubname, 1, type: :string)
  field(:options, 2, repeated: true, type: PgQuery.Node)
  field(:tables, 3, repeated: true, type: PgQuery.Node)
  field(:for_all_tables, 4, type: :bool)
  field(:table_action, 5, type: PgQuery.DefElemAction, json_name: "tableAction", enum: true)
end

defmodule PgQuery.CreateSubscriptionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:subname, 1, type: :string)
  field(:conninfo, 2, type: :string)
  field(:publication, 3, repeated: true, type: PgQuery.Node)
  field(:options, 4, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.AlterSubscriptionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.AlterSubscriptionType, enum: true)
  field(:subname, 2, type: :string)
  field(:conninfo, 3, type: :string)
  field(:publication, 4, repeated: true, type: PgQuery.Node)
  field(:options, 5, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.DropSubscriptionStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:subname, 1, type: :string)
  field(:missing_ok, 2, type: :bool)
  field(:behavior, 3, type: PgQuery.DropBehavior, enum: true)
end

defmodule PgQuery.CreateStatsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:defnames, 1, repeated: true, type: PgQuery.Node)
  field(:stat_types, 2, repeated: true, type: PgQuery.Node)
  field(:exprs, 3, repeated: true, type: PgQuery.Node)
  field(:relations, 4, repeated: true, type: PgQuery.Node)
  field(:stxcomment, 5, type: :string)
  field(:if_not_exists, 6, type: :bool)
end

defmodule PgQuery.AlterCollationStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:collname, 1, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CallStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:funccall, 1, type: PgQuery.FuncCall)
  field(:funcexpr, 2, type: PgQuery.FuncExpr)
end

defmodule PgQuery.AlterStatsStmt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:defnames, 1, repeated: true, type: PgQuery.Node)
  field(:stxstattarget, 2, type: :int32)
  field(:missing_ok, 3, type: :bool)
end

defmodule PgQuery.A_Expr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.A_Expr_Kind, enum: true)
  field(:name, 2, repeated: true, type: PgQuery.Node)
  field(:lexpr, 3, type: PgQuery.Node)
  field(:rexpr, 4, type: PgQuery.Node)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.ColumnRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:fields, 1, repeated: true, type: PgQuery.Node)
  field(:location, 2, type: :int32)
end

defmodule PgQuery.ParamRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:number, 1, type: :int32)
  field(:location, 2, type: :int32)
end

defmodule PgQuery.A_Const do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:val, 1, type: PgQuery.Node)
  field(:location, 2, type: :int32)
end

defmodule PgQuery.FuncCall do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:funcname, 1, repeated: true, type: PgQuery.Node)
  field(:args, 2, repeated: true, type: PgQuery.Node)
  field(:agg_order, 3, repeated: true, type: PgQuery.Node)
  field(:agg_filter, 4, type: PgQuery.Node)
  field(:agg_within_group, 5, type: :bool)
  field(:agg_star, 6, type: :bool)
  field(:agg_distinct, 7, type: :bool)
  field(:func_variadic, 8, type: :bool)
  field(:over, 9, type: PgQuery.WindowDef)
  field(:location, 10, type: :int32)
end

defmodule PgQuery.A_Star do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
end

defmodule PgQuery.A_Indices do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:is_slice, 1, type: :bool)
  field(:lidx, 2, type: PgQuery.Node)
  field(:uidx, 3, type: PgQuery.Node)
end

defmodule PgQuery.A_Indirection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:arg, 1, type: PgQuery.Node)
  field(:indirection, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.A_ArrayExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:elements, 1, repeated: true, type: PgQuery.Node)
  field(:location, 2, type: :int32)
end

defmodule PgQuery.ResTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:indirection, 2, repeated: true, type: PgQuery.Node)
  field(:val, 3, type: PgQuery.Node)
  field(:location, 4, type: :int32)
end

defmodule PgQuery.MultiAssignRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:source, 1, type: PgQuery.Node)
  field(:colno, 2, type: :int32)
  field(:ncolumns, 3, type: :int32)
end

defmodule PgQuery.TypeCast do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:arg, 1, type: PgQuery.Node)
  field(:type_name, 2, type: PgQuery.TypeName, json_name: "typeName")
  field(:location, 3, type: :int32)
end

defmodule PgQuery.CollateClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:arg, 1, type: PgQuery.Node)
  field(:collname, 2, repeated: true, type: PgQuery.Node)
  field(:location, 3, type: :int32)
end

defmodule PgQuery.SortBy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:node, 1, type: PgQuery.Node)
  field(:sortby_dir, 2, type: PgQuery.SortByDir, enum: true)
  field(:sortby_nulls, 3, type: PgQuery.SortByNulls, enum: true)
  field(:use_op, 4, repeated: true, type: PgQuery.Node, json_name: "useOp")
  field(:location, 5, type: :int32)
end

defmodule PgQuery.WindowDef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:refname, 2, type: :string)
  field(:partition_clause, 3, repeated: true, type: PgQuery.Node, json_name: "partitionClause")
  field(:order_clause, 4, repeated: true, type: PgQuery.Node, json_name: "orderClause")
  field(:frame_options, 5, type: :int32, json_name: "frameOptions")
  field(:start_offset, 6, type: PgQuery.Node, json_name: "startOffset")
  field(:end_offset, 7, type: PgQuery.Node, json_name: "endOffset")
  field(:location, 8, type: :int32)
end

defmodule PgQuery.RangeSubselect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:lateral, 1, type: :bool)
  field(:subquery, 2, type: PgQuery.Node)
  field(:alias, 3, type: PgQuery.Alias)
end

defmodule PgQuery.RangeFunction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:lateral, 1, type: :bool)
  field(:ordinality, 2, type: :bool)
  field(:is_rowsfrom, 3, type: :bool)
  field(:functions, 4, repeated: true, type: PgQuery.Node)
  field(:alias, 5, type: PgQuery.Alias)
  field(:coldeflist, 6, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.RangeTableSample do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.Node)
  field(:method, 2, repeated: true, type: PgQuery.Node)
  field(:args, 3, repeated: true, type: PgQuery.Node)
  field(:repeatable, 4, type: PgQuery.Node)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.RangeTableFunc do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:lateral, 1, type: :bool)
  field(:docexpr, 2, type: PgQuery.Node)
  field(:rowexpr, 3, type: PgQuery.Node)
  field(:namespaces, 4, repeated: true, type: PgQuery.Node)
  field(:columns, 5, repeated: true, type: PgQuery.Node)
  field(:alias, 6, type: PgQuery.Alias)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.RangeTableFuncCol do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:colname, 1, type: :string)
  field(:type_name, 2, type: PgQuery.TypeName, json_name: "typeName")
  field(:for_ordinality, 3, type: :bool)
  field(:is_not_null, 4, type: :bool)
  field(:colexpr, 5, type: PgQuery.Node)
  field(:coldefexpr, 6, type: PgQuery.Node)
  field(:location, 7, type: :int32)
end

defmodule PgQuery.TypeName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:names, 1, repeated: true, type: PgQuery.Node)
  field(:type_oid, 2, type: :uint32, json_name: "typeOid")
  field(:setof, 3, type: :bool)
  field(:pct_type, 4, type: :bool)
  field(:typmods, 5, repeated: true, type: PgQuery.Node)
  field(:typemod, 6, type: :int32)
  field(:array_bounds, 7, repeated: true, type: PgQuery.Node, json_name: "arrayBounds")
  field(:location, 8, type: :int32)
end

defmodule PgQuery.ColumnDef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:colname, 1, type: :string)
  field(:type_name, 2, type: PgQuery.TypeName, json_name: "typeName")
  field(:inhcount, 3, type: :int32)
  field(:is_local, 4, type: :bool)
  field(:is_not_null, 5, type: :bool)
  field(:is_from_type, 6, type: :bool)
  field(:storage, 7, type: :string)
  field(:raw_default, 8, type: PgQuery.Node)
  field(:cooked_default, 9, type: PgQuery.Node)
  field(:identity, 10, type: :string)
  field(:identity_sequence, 11, type: PgQuery.RangeVar, json_name: "identitySequence")
  field(:generated, 12, type: :string)
  field(:coll_clause, 13, type: PgQuery.CollateClause, json_name: "collClause")
  field(:coll_oid, 14, type: :uint32, json_name: "collOid")
  field(:constraints, 15, repeated: true, type: PgQuery.Node)
  field(:fdwoptions, 16, repeated: true, type: PgQuery.Node)
  field(:location, 17, type: :int32)
end

defmodule PgQuery.IndexElem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:expr, 2, type: PgQuery.Node)
  field(:indexcolname, 3, type: :string)
  field(:collation, 4, repeated: true, type: PgQuery.Node)
  field(:opclass, 5, repeated: true, type: PgQuery.Node)
  field(:opclassopts, 6, repeated: true, type: PgQuery.Node)
  field(:ordering, 7, type: PgQuery.SortByDir, enum: true)
  field(:nulls_ordering, 8, type: PgQuery.SortByNulls, enum: true)
end

defmodule PgQuery.Constraint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:contype, 1, type: PgQuery.ConstrType, enum: true)
  field(:conname, 2, type: :string)
  field(:deferrable, 3, type: :bool)
  field(:initdeferred, 4, type: :bool)
  field(:location, 5, type: :int32)
  field(:is_no_inherit, 6, type: :bool)
  field(:raw_expr, 7, type: PgQuery.Node)
  field(:cooked_expr, 8, type: :string)
  field(:generated_when, 9, type: :string)
  field(:keys, 10, repeated: true, type: PgQuery.Node)
  field(:including, 11, repeated: true, type: PgQuery.Node)
  field(:exclusions, 12, repeated: true, type: PgQuery.Node)
  field(:options, 13, repeated: true, type: PgQuery.Node)
  field(:indexname, 14, type: :string)
  field(:indexspace, 15, type: :string)
  field(:reset_default_tblspc, 16, type: :bool)
  field(:access_method, 17, type: :string)
  field(:where_clause, 18, type: PgQuery.Node)
  field(:pktable, 19, type: PgQuery.RangeVar)
  field(:fk_attrs, 20, repeated: true, type: PgQuery.Node)
  field(:pk_attrs, 21, repeated: true, type: PgQuery.Node)
  field(:fk_matchtype, 22, type: :string)
  field(:fk_upd_action, 23, type: :string)
  field(:fk_del_action, 24, type: :string)
  field(:old_conpfeqop, 25, repeated: true, type: PgQuery.Node)
  field(:old_pktable_oid, 26, type: :uint32)
  field(:skip_validation, 27, type: :bool)
  field(:initially_valid, 28, type: :bool)
end

defmodule PgQuery.DefElem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:defnamespace, 1, type: :string)
  field(:defname, 2, type: :string)
  field(:arg, 3, type: PgQuery.Node)
  field(:defaction, 4, type: PgQuery.DefElemAction, enum: true)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.RangeTblEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:rtekind, 1, type: PgQuery.RTEKind, enum: true)
  field(:relid, 2, type: :uint32)
  field(:relkind, 3, type: :string)
  field(:rellockmode, 4, type: :int32)
  field(:tablesample, 5, type: PgQuery.TableSampleClause)
  field(:subquery, 6, type: PgQuery.Query)
  field(:security_barrier, 7, type: :bool)
  field(:jointype, 8, type: PgQuery.JoinType, enum: true)
  field(:joinmergedcols, 9, type: :int32)
  field(:joinaliasvars, 10, repeated: true, type: PgQuery.Node)
  field(:joinleftcols, 11, repeated: true, type: PgQuery.Node)
  field(:joinrightcols, 12, repeated: true, type: PgQuery.Node)
  field(:functions, 13, repeated: true, type: PgQuery.Node)
  field(:funcordinality, 14, type: :bool)
  field(:tablefunc, 15, type: PgQuery.TableFunc)
  field(:values_lists, 16, repeated: true, type: PgQuery.Node)
  field(:ctename, 17, type: :string)
  field(:ctelevelsup, 18, type: :uint32)
  field(:self_reference, 19, type: :bool)
  field(:coltypes, 20, repeated: true, type: PgQuery.Node)
  field(:coltypmods, 21, repeated: true, type: PgQuery.Node)
  field(:colcollations, 22, repeated: true, type: PgQuery.Node)
  field(:enrname, 23, type: :string)
  field(:enrtuples, 24, type: :double)
  field(:alias, 25, type: PgQuery.Alias)
  field(:eref, 26, type: PgQuery.Alias)
  field(:lateral, 27, type: :bool)
  field(:inh, 28, type: :bool)
  field(:in_from_cl, 29, type: :bool, json_name: "inFromCl")
  field(:required_perms, 30, type: :uint32, json_name: "requiredPerms")
  field(:check_as_user, 31, type: :uint32, json_name: "checkAsUser")
  field(:selected_cols, 32, repeated: true, type: :uint64, json_name: "selectedCols")
  field(:inserted_cols, 33, repeated: true, type: :uint64, json_name: "insertedCols")
  field(:updated_cols, 34, repeated: true, type: :uint64, json_name: "updatedCols")
  field(:extra_updated_cols, 35, repeated: true, type: :uint64, json_name: "extraUpdatedCols")
  field(:security_quals, 36, repeated: true, type: PgQuery.Node, json_name: "securityQuals")
end

defmodule PgQuery.RangeTblFunction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:funcexpr, 1, type: PgQuery.Node)
  field(:funccolcount, 2, type: :int32)
  field(:funccolnames, 3, repeated: true, type: PgQuery.Node)
  field(:funccoltypes, 4, repeated: true, type: PgQuery.Node)
  field(:funccoltypmods, 5, repeated: true, type: PgQuery.Node)
  field(:funccolcollations, 6, repeated: true, type: PgQuery.Node)
  field(:funcparams, 7, repeated: true, type: :uint64)
end

defmodule PgQuery.TableSampleClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:tsmhandler, 1, type: :uint32)
  field(:args, 2, repeated: true, type: PgQuery.Node)
  field(:repeatable, 3, type: PgQuery.Node)
end

defmodule PgQuery.WithCheckOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.WCOKind, enum: true)
  field(:relname, 2, type: :string)
  field(:polname, 3, type: :string)
  field(:qual, 4, type: PgQuery.Node)
  field(:cascaded, 5, type: :bool)
end

defmodule PgQuery.SortGroupClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:tle_sort_group_ref, 1, type: :uint32, json_name: "tleSortGroupRef")
  field(:eqop, 2, type: :uint32)
  field(:sortop, 3, type: :uint32)
  field(:nulls_first, 4, type: :bool)
  field(:hashable, 5, type: :bool)
end

defmodule PgQuery.GroupingSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.GroupingSetKind, enum: true)
  field(:content, 2, repeated: true, type: PgQuery.Node)
  field(:location, 3, type: :int32)
end

defmodule PgQuery.WindowClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:refname, 2, type: :string)
  field(:partition_clause, 3, repeated: true, type: PgQuery.Node, json_name: "partitionClause")
  field(:order_clause, 4, repeated: true, type: PgQuery.Node, json_name: "orderClause")
  field(:frame_options, 5, type: :int32, json_name: "frameOptions")
  field(:start_offset, 6, type: PgQuery.Node, json_name: "startOffset")
  field(:end_offset, 7, type: PgQuery.Node, json_name: "endOffset")
  field(:start_in_range_func, 8, type: :uint32, json_name: "startInRangeFunc")
  field(:end_in_range_func, 9, type: :uint32, json_name: "endInRangeFunc")
  field(:in_range_coll, 10, type: :uint32, json_name: "inRangeColl")
  field(:in_range_asc, 11, type: :bool, json_name: "inRangeAsc")
  field(:in_range_nulls_first, 12, type: :bool, json_name: "inRangeNullsFirst")
  field(:winref, 13, type: :uint32)
  field(:copied_order, 14, type: :bool, json_name: "copiedOrder")
end

defmodule PgQuery.ObjectWithArgs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:objname, 1, repeated: true, type: PgQuery.Node)
  field(:objargs, 2, repeated: true, type: PgQuery.Node)
  field(:args_unspecified, 3, type: :bool)
end

defmodule PgQuery.AccessPriv do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:priv_name, 1, type: :string)
  field(:cols, 2, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.CreateOpClassItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:itemtype, 1, type: :int32)
  field(:name, 2, type: PgQuery.ObjectWithArgs)
  field(:number, 3, type: :int32)
  field(:order_family, 4, repeated: true, type: PgQuery.Node)
  field(:class_args, 5, repeated: true, type: PgQuery.Node)
  field(:storedtype, 6, type: PgQuery.TypeName)
end

defmodule PgQuery.TableLikeClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:options, 2, type: :uint32)
  field(:relation_oid, 3, type: :uint32, json_name: "relationOid")
end

defmodule PgQuery.FunctionParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:arg_type, 2, type: PgQuery.TypeName, json_name: "argType")
  field(:mode, 3, type: PgQuery.FunctionParameterMode, enum: true)
  field(:defexpr, 4, type: PgQuery.Node)
end

defmodule PgQuery.LockingClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:locked_rels, 1, repeated: true, type: PgQuery.Node, json_name: "lockedRels")
  field(:strength, 2, type: PgQuery.LockClauseStrength, enum: true)
  field(:wait_policy, 3, type: PgQuery.LockWaitPolicy, json_name: "waitPolicy", enum: true)
end

defmodule PgQuery.RowMarkClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:rti, 1, type: :uint32)
  field(:strength, 2, type: PgQuery.LockClauseStrength, enum: true)
  field(:wait_policy, 3, type: PgQuery.LockWaitPolicy, json_name: "waitPolicy", enum: true)
  field(:pushed_down, 4, type: :bool, json_name: "pushedDown")
end

defmodule PgQuery.XmlSerialize do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:xmloption, 1, type: PgQuery.XmlOptionType, enum: true)
  field(:expr, 2, type: PgQuery.Node)
  field(:type_name, 3, type: PgQuery.TypeName, json_name: "typeName")
  field(:location, 4, type: :int32)
end

defmodule PgQuery.WithClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ctes, 1, repeated: true, type: PgQuery.Node)
  field(:recursive, 2, type: :bool)
  field(:location, 3, type: :int32)
end

defmodule PgQuery.InferClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:index_elems, 1, repeated: true, type: PgQuery.Node, json_name: "indexElems")
  field(:where_clause, 2, type: PgQuery.Node, json_name: "whereClause")
  field(:conname, 3, type: :string)
  field(:location, 4, type: :int32)
end

defmodule PgQuery.OnConflictClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:action, 1, type: PgQuery.OnConflictAction, enum: true)
  field(:infer, 2, type: PgQuery.InferClause)
  field(:target_list, 3, repeated: true, type: PgQuery.Node, json_name: "targetList")
  field(:where_clause, 4, type: PgQuery.Node, json_name: "whereClause")
  field(:location, 5, type: :int32)
end

defmodule PgQuery.CommonTableExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:ctename, 1, type: :string)
  field(:aliascolnames, 2, repeated: true, type: PgQuery.Node)
  field(:ctematerialized, 3, type: PgQuery.CTEMaterialize, enum: true)
  field(:ctequery, 4, type: PgQuery.Node)
  field(:location, 5, type: :int32)
  field(:cterecursive, 6, type: :bool)
  field(:cterefcount, 7, type: :int32)
  field(:ctecolnames, 8, repeated: true, type: PgQuery.Node)
  field(:ctecoltypes, 9, repeated: true, type: PgQuery.Node)
  field(:ctecoltypmods, 10, repeated: true, type: PgQuery.Node)
  field(:ctecolcollations, 11, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.RoleSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:roletype, 1, type: PgQuery.RoleSpecType, enum: true)
  field(:rolename, 2, type: :string)
  field(:location, 3, type: :int32)
end

defmodule PgQuery.TriggerTransition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:is_new, 2, type: :bool, json_name: "isNew")
  field(:is_table, 3, type: :bool, json_name: "isTable")
end

defmodule PgQuery.PartitionElem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: :string)
  field(:expr, 2, type: PgQuery.Node)
  field(:collation, 3, repeated: true, type: PgQuery.Node)
  field(:opclass, 4, repeated: true, type: PgQuery.Node)
  field(:location, 5, type: :int32)
end

defmodule PgQuery.PartitionSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:strategy, 1, type: :string)
  field(:part_params, 2, repeated: true, type: PgQuery.Node, json_name: "partParams")
  field(:location, 3, type: :int32)
end

defmodule PgQuery.PartitionBoundSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:strategy, 1, type: :string)
  field(:is_default, 2, type: :bool)
  field(:modulus, 3, type: :int32)
  field(:remainder, 4, type: :int32)
  field(:listdatums, 5, repeated: true, type: PgQuery.Node)
  field(:lowerdatums, 6, repeated: true, type: PgQuery.Node)
  field(:upperdatums, 7, repeated: true, type: PgQuery.Node)
  field(:location, 8, type: :int32)
end

defmodule PgQuery.PartitionRangeDatum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:kind, 1, type: PgQuery.PartitionRangeDatumKind, enum: true)
  field(:value, 2, type: PgQuery.Node)
  field(:location, 3, type: :int32)
end

defmodule PgQuery.PartitionCmd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:name, 1, type: PgQuery.RangeVar)
  field(:bound, 2, type: PgQuery.PartitionBoundSpec)
end

defmodule PgQuery.VacuumRelation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:relation, 1, type: PgQuery.RangeVar)
  field(:oid, 2, type: :uint32)
  field(:va_cols, 3, repeated: true, type: PgQuery.Node)
end

defmodule PgQuery.InlineCodeBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:source_text, 1, type: :string)
  field(:lang_oid, 2, type: :uint32, json_name: "langOid")
  field(:lang_is_trusted, 3, type: :bool, json_name: "langIsTrusted")
  field(:atomic, 4, type: :bool)
end

defmodule PgQuery.CallContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:atomic, 1, type: :bool)
end

defmodule PgQuery.ScanToken do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.9.0-dev", syntax: :proto3
  use Accessible
  field(:start, 1, type: :int32)
  field(:end, 2, type: :int32)
  field(:token, 4, type: PgQuery.Token, enum: true)
  field(:keyword_kind, 5, type: PgQuery.KeywordKind, json_name: "keywordKind", enum: true)
end
