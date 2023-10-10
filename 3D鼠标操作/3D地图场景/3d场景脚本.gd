extends Node3D

#先定义一个布尔变量,用来操控游戏的开始和暂停
var 停止:bool=false   #默认为假












#这个函数是开始是运行一次,在这里写上隐藏鼠标
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)  #这是一个隐藏鼠标的函数



#下面定义一个用来显示鼠标的方法
func 方法_暂停():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)  #这段代码用于显示鼠标


#再定义一个用于隐藏鼠标的方法
func 方法_开始():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)  #跟第一个一样的,都是用于隐藏鼠标





#接下来再这个函数里判断一下隐藏和显示的方法
func _process(delta):
	if Input.is_action_just_pressed("关闭"):  #这里是判断输入的按键 如果是Esc就关闭 就是刚才在项目设置里映射的那个
		停止=!停止                         #我们开始定义这个变量的时候 他为假 那现在他就为真 !号是不等于运算符
		if 停止:             #如果停止这个变量等于真,那他将允许下边这个函数  显示鼠标
			方法_暂停()
		else :              #否则他将允许这个函数 隐藏鼠标
			方法_开始()
	
