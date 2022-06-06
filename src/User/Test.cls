Class User.Test Extends %Library.RegisteredObject [ ClassType = "", Not ProcedureBlock ]
{

/// w ##class(User.Test).test3()
ClassMethod test3()
{
	
	w $d(a),!   //0
	w a_"123",! //变量a未定义
	q $$$OK
}

/// w ##class(User.Test).test4()
ClassMethod test4()
{
	w $d(t),!   //0
	
	set a="123"
	w $d(a),!   //1
	
	set b=""
	w $d(b),!   //1
	
	set ^c(5)="123"
	w $d(^c),!  //10
	
	set ^d(5)="123"
	set ^d(5,1)="456"
	w $d(^d(5)),!  //11 说明^d(5)还有子节点数据
	
	q $$$OK
}

}
