/// 2020-12-22 10:36:10
/// @author 宋永利
/// 对象功能说明：医院药品信息查询交易(A01)的返回值
/// 发起方：医保接口
/// 接收方：His系统
/// 类  型：实时交易
/// 交易代码：A01
/// 功能说明：His接口系统通过此交易获取His系统的药品信息。
Class InsuNxService.DTO.INSUNXBaseDrugInfoResp Extends %RegisteredObject
{

/// pzwh	国药批准 文号	GBString	[1,100]	AKA085	M*
Property pzwh As %String(CAPTION = "国药批准文号");

/// yljgdm	医疗机构编码	String	10	AKB020	M*	
Property yljgdm As %String(CAPTION = "医疗机构编码");

/// xlh	药品序列号	String	20	药品唯一内码	M
Property xlh As %String(CAPTION = "药品序列号");

/// yplb	药品类别	NString	3	AKA063 11西药、12中成药、13中药饮片14民族用药15医院制剂	M
Property yplb As %String(CAPTION = "医疗机构编码");

/// ypmc	通用中文名称	GBString	[1,100]	AKA061	M
Property ypmc As %String(CAPTION = "通用中文名称");

/// ypbm	药品商品名	GBString	[1,100]	BKA079	O
Property ypbm As %String(CAPTION = "药品商品名");

/// ypcd	产地	NString	3	BKA616 0-国产1-进口2-合资	M	
Property ypcd As %String(CAPTION = "产地");

/// sccj	药厂名称	GBString	[1,100]	AKA109	O
Property sccj As %String(CAPTION = "药厂名称");

/// ypjx	剂型	GBString	[1,20]	AKA070	M
Property ypjx As %String(CAPTION = "剂型");

/// ypdw	单位	GBString	[1,20]	BKA076	M
Property ypdw As %String(CAPTION = "单位");

/// zxdw	药品剂量单位	GBString	[1,20]	AKA067	M
Property zxdw As %String(CAPTION = "药品剂量单位");

/// ypgg	规格	GBString	[1,100]	AKA074	O	
Property ypgg As %String(CAPTION = "规格");

/// ypyl	每次用量	NString	[1,16]	AKA071	O	
Property ypyl As %String(CAPTION = "每次用量");

/// sypc	使用频次	GBString	[1,100]	AKA072	O
Property sypc As %String(CAPTION = "使用频次");

/// ypyf	用法	GBString	[1,200]	AKA107	O	
Property ypyf As %String(CAPTION = "用法");

/// cfybz	处方药标志	NString	3	AKA064 0非处方药1处方药	O
Property cfybz As %String(CAPTION = "处方药标志");

/// cyffbz	中草药复方标志	NString	3	BKA201	O	
Property cyffbz As %String(CAPTION = "中草药复方标志");

/// czrq	操作日期	DateTime		AAE035	M
Property czrq As %String(CAPTION = "操作日期");

/// to json
Method %ToJson() As %DynamicObject
{
	set JsonObj=##class(%DynamicObject).%New()
	set JsonObj.xlh=$THIS.xlh
	set JsonObj.pzwh=$THIS.pzwh
	set JsonObj.yljgdm=$THIS.yljgdm
	set JsonObj.yplb= $THIS.yplb
	set JsonObj.ypmc= $THIS.ypmc
	set JsonObj.ypbm= $THIS.ypbm
	set JsonObj.ypcd= $THIS.ypcd
	set JsonObj.sccj= $THIS.sccj
	set JsonObj.ypjx= $THIS.ypjx
	set JsonObj.ypdw= $THIS.ypdw
	set JsonObj.zxdw= $THIS.zxdw
	set JsonObj.ypgg= $THIS.ypgg
	set JsonObj.ypyl= $THIS.ypyl
	set JsonObj.sypc= $THIS.sypc
	set JsonObj.ypyf= $THIS.ypyf
	set JsonObj.cfybz= $THIS.cfybz
	set JsonObj.cyffbz= $THIS.cyffbz
	set JsonObj.czrq= $THIS.czrq
	q JsonObj
}

}
