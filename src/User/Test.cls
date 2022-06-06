Class User.Test Extends %RegisteredObject [ ClassType = "", Not ProcedureBlock ]
{

/// w ##class(User.Test).Select()
ClassMethod Select()
{
	s myquery = "SELECT Name,Age FROM Sample.Person "
				_" WHERE Age BETWEEN 20 AND 35"
				_" ORDER BY Age"
	s tStatement = ##class(%SQL.Statement).%New()
	s qStatus = tStatement.%Prepare(myquery)
	if qStatus '= 1 {
		w "%Prepare failed:" 
		d $System.Status.DisplayError(qStatus) 
		q
	}
	s rset = tStatement.%Execute()
	while rset.%Next() {
		w rset.Age," ",rset.Name,! 
	}
	q $$$OK
}

/// w ##class(User.Test).test1()
ClassMethod test1()
{
	set a="1|2|3"
	set $p(a,"|",3)=4 //a=1|2|4
	w "a="_a,!
	
	set b="1|2|3"
	w $p(b,"|",3),!  //3
	
	set c="1|2|3"
	set $p(c,"|",5)=5 //c=1|2|3||5
	w "c="_c,!
	
	set d="1|2|3"
	w $p(d,"|",5),!  //空
	
	set e="1|2|3|4|5"
	w $p(e,"|",2,4),!  //2|3|4
	
	set f="1|2|3"
	w $p(f,"/",2),!  //
	
	set g=""
	w $p(g,"|",2),!  //
	
	if $d(h)'=0 do   //$d 保护
	.w $p(h,"|",2),!  
	q 0
}

/// w ##class(User.Test).test2()
ClassMethod test2()
{
	w "c="_$g(csd),!
	w $g(t)_"123",!     //123
	set ^a(0)=234
	w $g(^a(0)),!       //123
	w $g(^a),!          //123
	w $d(^a),!          //123
	w $d(^a(0)),!       //123
	q 0
}

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
