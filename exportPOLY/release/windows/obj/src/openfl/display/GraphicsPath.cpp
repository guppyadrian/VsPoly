// Generated by Haxe 4.2.1+bf9ff69
#include <hxcpp.h>

#ifndef INCLUDED_openfl__Vector_FloatVector
#include <openfl/_Vector/FloatVector.h>
#endif
#ifndef INCLUDED_openfl__Vector_IVector
#include <openfl/_Vector/IVector.h>
#endif
#ifndef INCLUDED_openfl__Vector_IntVector
#include <openfl/_Vector/IntVector.h>
#endif
#ifndef INCLUDED_openfl_display_GraphicsPath
#include <openfl/display/GraphicsPath.h>
#endif
#ifndef INCLUDED_openfl_display_IGraphicsData
#include <openfl/display/IGraphicsData.h>
#endif
#ifndef INCLUDED_openfl_display_IGraphicsPath
#include <openfl/display/IGraphicsPath.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_9d2387a0b056a42f_59_new,"openfl.display.GraphicsPath","new",0x778d9d6c,"openfl.display.GraphicsPath.new","openfl/display/GraphicsPath.hx",59,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_84_cubicCurveTo,"openfl.display.GraphicsPath","cubicCurveTo",0x2db23954,"openfl.display.GraphicsPath.cubicCurveTo","openfl/display/GraphicsPath.hx",84,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_115_curveTo,"openfl.display.GraphicsPath","curveTo",0xe3fba316,"openfl.display.GraphicsPath.curveTo","openfl/display/GraphicsPath.hx",115,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_134_lineTo,"openfl.display.GraphicsPath","lineTo",0x87b32903,"openfl.display.GraphicsPath.lineTo","openfl/display/GraphicsPath.hx",134,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_151_moveTo,"openfl.display.GraphicsPath","moveTo",0x67bfb560,"openfl.display.GraphicsPath.moveTo","openfl/display/GraphicsPath.hx",151,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_168_wideLineTo,"openfl.display.GraphicsPath","wideLineTo",0xae2a1f76,"openfl.display.GraphicsPath.wideLineTo","openfl/display/GraphicsPath.hx",168,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_185_wideMoveTo,"openfl.display.GraphicsPath","wideMoveTo",0x8e36abd3,"openfl.display.GraphicsPath.wideMoveTo","openfl/display/GraphicsPath.hx",185,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_196___drawCircle,"openfl.display.GraphicsPath","__drawCircle",0xcf8699c8,"openfl.display.GraphicsPath.__drawCircle","openfl/display/GraphicsPath.hx",196,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_201___drawEllipse,"openfl.display.GraphicsPath","__drawEllipse",0xdc0fda26,"openfl.display.GraphicsPath.__drawEllipse","openfl/display/GraphicsPath.hx",201,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_205___drawRect,"openfl.display.GraphicsPath","__drawRect",0xe8f096dc,"openfl.display.GraphicsPath.__drawRect","openfl/display/GraphicsPath.hx",205,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_214___drawRoundRect,"openfl.display.GraphicsPath","__drawRoundRect",0xbc9c2bda,"openfl.display.GraphicsPath.__drawRoundRect","openfl/display/GraphicsPath.hx",214,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_29_boot,"openfl.display.GraphicsPath","boot",0x1c7521a6,"openfl.display.GraphicsPath.boot","openfl/display/GraphicsPath.hx",29,0x0a58fcc2)
HX_LOCAL_STACK_FRAME(_hx_pos_9d2387a0b056a42f_30_boot,"openfl.display.GraphicsPath","boot",0x1c7521a6,"openfl.display.GraphicsPath.boot","openfl/display/GraphicsPath.hx",30,0x0a58fcc2)
namespace openfl{
namespace display{

void GraphicsPath_obj::__construct( ::openfl::_Vector::IntVector commands, ::openfl::_Vector::FloatVector data, ::Dynamic __o_winding){
            		 ::Dynamic winding = __o_winding;
            		if (::hx::IsNull(__o_winding)) winding = 0;
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_59_new)
HXLINE(  60)		this->commands = commands;
HXLINE(  61)		this->data = data;
HXLINE(  62)		this->winding = winding;
HXLINE(  63)		this->_hx___graphicsDataType = 3;
            	}

Dynamic GraphicsPath_obj::__CreateEmpty() { return new GraphicsPath_obj; }

void *GraphicsPath_obj::_hx_vtable = 0;

Dynamic GraphicsPath_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< GraphicsPath_obj > _hx_result = new GraphicsPath_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return _hx_result;
}

bool GraphicsPath_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x2ea33da2;
}

static ::openfl::display::IGraphicsData_obj _hx_openfl_display_GraphicsPath__hx_openfl_display_IGraphicsData= {
};

static ::openfl::display::IGraphicsPath_obj _hx_openfl_display_GraphicsPath__hx_openfl_display_IGraphicsPath= {
};

void *GraphicsPath_obj::_hx_getInterface(int inHash) {
	switch(inHash) {
		case (int)0xc177ee0c: return &_hx_openfl_display_GraphicsPath__hx_openfl_display_IGraphicsData;
		case (int)0xc9667d87: return &_hx_openfl_display_GraphicsPath__hx_openfl_display_IGraphicsPath;
	}
	#ifdef HXCPP_SCRIPTABLE
	return super::_hx_getInterface(inHash);
	#else
	return 0;
	#endif
}

void GraphicsPath_obj::cubicCurveTo(Float controlX1,Float controlY1,Float controlX2,Float controlY2,Float anchorX,Float anchorY){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_84_cubicCurveTo)
HXLINE(  85)		if (::hx::IsNull( this->commands )) {
HXLINE(  85)			int length = null();
HXDLIN(  85)			bool fixed = null();
HXDLIN(  85)			::Array< int > array = null();
HXDLIN(  85)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE(  86)		if (::hx::IsNull( this->data )) {
HXLINE(  86)			int length = null();
HXDLIN(  86)			bool fixed = null();
HXDLIN(  86)			::Array< Float > array = null();
HXDLIN(  86)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE(  88)		this->commands->push(6);
HXLINE(  89)		this->data->push(controlX1);
HXLINE(  90)		this->data->push(controlY1);
HXLINE(  91)		this->data->push(controlX2);
HXLINE(  92)		this->data->push(controlY2);
HXLINE(  93)		this->data->push(anchorX);
HXLINE(  94)		this->data->push(anchorY);
            	}


HX_DEFINE_DYNAMIC_FUNC6(GraphicsPath_obj,cubicCurveTo,(void))

void GraphicsPath_obj::curveTo(Float controlX,Float controlY,Float anchorX,Float anchorY){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_115_curveTo)
HXLINE( 116)		if (::hx::IsNull( this->commands )) {
HXLINE( 116)			int length = null();
HXDLIN( 116)			bool fixed = null();
HXDLIN( 116)			::Array< int > array = null();
HXDLIN( 116)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE( 117)		if (::hx::IsNull( this->data )) {
HXLINE( 117)			int length = null();
HXDLIN( 117)			bool fixed = null();
HXDLIN( 117)			::Array< Float > array = null();
HXDLIN( 117)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE( 119)		this->commands->push(3);
HXLINE( 120)		this->data->push(controlX);
HXLINE( 121)		this->data->push(controlY);
HXLINE( 122)		this->data->push(anchorX);
HXLINE( 123)		this->data->push(anchorY);
            	}


HX_DEFINE_DYNAMIC_FUNC4(GraphicsPath_obj,curveTo,(void))

void GraphicsPath_obj::lineTo(Float x,Float y){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_134_lineTo)
HXLINE( 135)		if (::hx::IsNull( this->commands )) {
HXLINE( 135)			int length = null();
HXDLIN( 135)			bool fixed = null();
HXDLIN( 135)			::Array< int > array = null();
HXDLIN( 135)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE( 136)		if (::hx::IsNull( this->data )) {
HXLINE( 136)			int length = null();
HXDLIN( 136)			bool fixed = null();
HXDLIN( 136)			::Array< Float > array = null();
HXDLIN( 136)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE( 138)		this->commands->push(2);
HXLINE( 139)		this->data->push(x);
HXLINE( 140)		this->data->push(y);
            	}


HX_DEFINE_DYNAMIC_FUNC2(GraphicsPath_obj,lineTo,(void))

void GraphicsPath_obj::moveTo(Float x,Float y){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_151_moveTo)
HXLINE( 152)		if (::hx::IsNull( this->commands )) {
HXLINE( 152)			int length = null();
HXDLIN( 152)			bool fixed = null();
HXDLIN( 152)			::Array< int > array = null();
HXDLIN( 152)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE( 153)		if (::hx::IsNull( this->data )) {
HXLINE( 153)			int length = null();
HXDLIN( 153)			bool fixed = null();
HXDLIN( 153)			::Array< Float > array = null();
HXDLIN( 153)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE( 155)		this->commands->push(1);
HXLINE( 156)		this->data->push(x);
HXLINE( 157)		this->data->push(y);
            	}


HX_DEFINE_DYNAMIC_FUNC2(GraphicsPath_obj,moveTo,(void))

void GraphicsPath_obj::wideLineTo(Float x,Float y){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_168_wideLineTo)
HXLINE( 169)		if (::hx::IsNull( this->commands )) {
HXLINE( 169)			int length = null();
HXDLIN( 169)			bool fixed = null();
HXDLIN( 169)			::Array< int > array = null();
HXDLIN( 169)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE( 170)		if (::hx::IsNull( this->data )) {
HXLINE( 170)			int length = null();
HXDLIN( 170)			bool fixed = null();
HXDLIN( 170)			::Array< Float > array = null();
HXDLIN( 170)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE( 172)		this->commands->push(2);
HXLINE( 173)		this->data->push(x);
HXLINE( 174)		this->data->push(y);
            	}


HX_DEFINE_DYNAMIC_FUNC2(GraphicsPath_obj,wideLineTo,(void))

void GraphicsPath_obj::wideMoveTo(Float x,Float y){
            	HX_GC_STACKFRAME(&_hx_pos_9d2387a0b056a42f_185_wideMoveTo)
HXLINE( 186)		if (::hx::IsNull( this->commands )) {
HXLINE( 186)			int length = null();
HXDLIN( 186)			bool fixed = null();
HXDLIN( 186)			::Array< int > array = null();
HXDLIN( 186)			this->commands =  ::openfl::_Vector::IntVector_obj::__alloc( HX_CTX ,length,fixed,array);
            		}
HXLINE( 187)		if (::hx::IsNull( this->data )) {
HXLINE( 187)			int length = null();
HXDLIN( 187)			bool fixed = null();
HXDLIN( 187)			::Array< Float > array = null();
HXDLIN( 187)			this->data =  ::openfl::_Vector::FloatVector_obj::__alloc( HX_CTX ,length,fixed,array,true);
            		}
HXLINE( 189)		this->commands->push(1);
HXLINE( 190)		this->data->push(x);
HXLINE( 191)		this->data->push(y);
            	}


HX_DEFINE_DYNAMIC_FUNC2(GraphicsPath_obj,wideMoveTo,(void))

void GraphicsPath_obj::_hx___drawCircle(Float x,Float y,Float radius){
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_196___drawCircle)
HXDLIN( 196)		this->_hx___drawRoundRect((x - radius),(y - radius),(radius * ( (Float)(2) )),(radius * ( (Float)(2) )),(radius * ( (Float)(2) )),(radius * ( (Float)(2) )));
            	}


HX_DEFINE_DYNAMIC_FUNC3(GraphicsPath_obj,_hx___drawCircle,(void))

void GraphicsPath_obj::_hx___drawEllipse(Float x,Float y,Float width,Float height){
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_201___drawEllipse)
HXDLIN( 201)		this->_hx___drawRoundRect(x,y,width,height,width,height);
            	}


HX_DEFINE_DYNAMIC_FUNC4(GraphicsPath_obj,_hx___drawEllipse,(void))

void GraphicsPath_obj::_hx___drawRect(Float x,Float y,Float width,Float height){
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_205___drawRect)
HXLINE( 206)		this->moveTo(x,y);
HXLINE( 207)		this->lineTo((x + width),y);
HXLINE( 208)		this->lineTo((x + width),(y + height));
HXLINE( 209)		this->lineTo(x,(y + height));
HXLINE( 210)		this->lineTo(x,y);
            	}


HX_DEFINE_DYNAMIC_FUNC4(GraphicsPath_obj,_hx___drawRect,(void))

void GraphicsPath_obj::_hx___drawRoundRect(Float x,Float y,Float width,Float height,Float ellipseWidth,Float ellipseHeight){
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_214___drawRoundRect)
HXLINE( 215)		ellipseWidth = (ellipseWidth * ((Float)0.5));
HXLINE( 216)		ellipseHeight = (ellipseHeight * ((Float)0.5));
HXLINE( 218)		if ((ellipseWidth > (width / ( (Float)(2) )))) {
HXLINE( 218)			ellipseWidth = (width / ( (Float)(2) ));
            		}
HXLINE( 219)		if ((ellipseHeight > (height / ( (Float)(2) )))) {
HXLINE( 219)			ellipseHeight = (height / ( (Float)(2) ));
            		}
HXLINE( 221)		Float xe = (x + width);
HXDLIN( 221)		Float ye = (y + height);
HXDLIN( 221)		Float cx1 = (-(ellipseWidth) + (ellipseWidth * ((Float)0.70710678118654752440084436210485)));
HXDLIN( 221)		Float cx2 = (-(ellipseWidth) + (ellipseWidth * ((Float)0.4142135623730950488016887242097)));
HXDLIN( 221)		Float cy1 = (-(ellipseHeight) + (ellipseHeight * ((Float)0.70710678118654752440084436210485)));
HXDLIN( 221)		Float cy2 = (-(ellipseHeight) + (ellipseHeight * ((Float)0.4142135623730950488016887242097)));
HXLINE( 228)		this->moveTo(xe,(ye - ellipseHeight));
HXLINE( 229)		this->curveTo(xe,(ye + cy2),(xe + cx1),(ye + cy1));
HXLINE( 230)		this->curveTo((xe + cx2),ye,(xe - ellipseWidth),ye);
HXLINE( 231)		this->lineTo((x + ellipseWidth),ye);
HXLINE( 232)		this->curveTo((x - cx2),ye,(x - cx1),(ye + cy1));
HXLINE( 233)		this->curveTo(x,(ye + cy2),x,(ye - ellipseHeight));
HXLINE( 234)		this->lineTo(x,(y + ellipseHeight));
HXLINE( 235)		this->curveTo(x,(y - cy2),(x - cx1),(y - cy1));
HXLINE( 236)		this->curveTo((x - cx2),y,(x + ellipseWidth),y);
HXLINE( 237)		this->lineTo((xe - ellipseWidth),y);
HXLINE( 238)		this->curveTo((xe + cx2),y,(xe + cx1),(y - cy1));
HXLINE( 239)		this->curveTo(xe,(y - cy2),xe,(y + ellipseHeight));
HXLINE( 240)		this->lineTo(xe,(ye - ellipseHeight));
            	}


HX_DEFINE_DYNAMIC_FUNC6(GraphicsPath_obj,_hx___drawRoundRect,(void))

Float GraphicsPath_obj::SIN45;

Float GraphicsPath_obj::TAN22;


::hx::ObjectPtr< GraphicsPath_obj > GraphicsPath_obj::__new( ::openfl::_Vector::IntVector commands, ::openfl::_Vector::FloatVector data, ::Dynamic __o_winding) {
	::hx::ObjectPtr< GraphicsPath_obj > __this = new GraphicsPath_obj();
	__this->__construct(commands,data,__o_winding);
	return __this;
}

::hx::ObjectPtr< GraphicsPath_obj > GraphicsPath_obj::__alloc(::hx::Ctx *_hx_ctx, ::openfl::_Vector::IntVector commands, ::openfl::_Vector::FloatVector data, ::Dynamic __o_winding) {
	GraphicsPath_obj *__this = (GraphicsPath_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(GraphicsPath_obj), true, "openfl.display.GraphicsPath"));
	*(void **)__this = GraphicsPath_obj::_hx_vtable;
	__this->__construct(commands,data,__o_winding);
	return __this;
}

GraphicsPath_obj::GraphicsPath_obj()
{
}

void GraphicsPath_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(GraphicsPath);
	HX_MARK_MEMBER_NAME(commands,"commands");
	HX_MARK_MEMBER_NAME(data,"data");
	HX_MARK_MEMBER_NAME(winding,"winding");
	HX_MARK_MEMBER_NAME(_hx___graphicsDataType,"__graphicsDataType");
	HX_MARK_END_CLASS();
}

void GraphicsPath_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(commands,"commands");
	HX_VISIT_MEMBER_NAME(data,"data");
	HX_VISIT_MEMBER_NAME(winding,"winding");
	HX_VISIT_MEMBER_NAME(_hx___graphicsDataType,"__graphicsDataType");
}

::hx::Val GraphicsPath_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { return ::hx::Val( data ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"lineTo") ) { return ::hx::Val( lineTo_dyn() ); }
		if (HX_FIELD_EQ(inName,"moveTo") ) { return ::hx::Val( moveTo_dyn() ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"winding") ) { return ::hx::Val( winding ); }
		if (HX_FIELD_EQ(inName,"curveTo") ) { return ::hx::Val( curveTo_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"commands") ) { return ::hx::Val( commands ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"wideLineTo") ) { return ::hx::Val( wideLineTo_dyn() ); }
		if (HX_FIELD_EQ(inName,"wideMoveTo") ) { return ::hx::Val( wideMoveTo_dyn() ); }
		if (HX_FIELD_EQ(inName,"__drawRect") ) { return ::hx::Val( _hx___drawRect_dyn() ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"cubicCurveTo") ) { return ::hx::Val( cubicCurveTo_dyn() ); }
		if (HX_FIELD_EQ(inName,"__drawCircle") ) { return ::hx::Val( _hx___drawCircle_dyn() ); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"__drawEllipse") ) { return ::hx::Val( _hx___drawEllipse_dyn() ); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"__drawRoundRect") ) { return ::hx::Val( _hx___drawRoundRect_dyn() ); }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"__graphicsDataType") ) { return ::hx::Val( _hx___graphicsDataType ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val GraphicsPath_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { data=inValue.Cast<  ::openfl::_Vector::FloatVector >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"winding") ) { winding=inValue.Cast<  ::Dynamic >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"commands") ) { commands=inValue.Cast<  ::openfl::_Vector::IntVector >(); return inValue; }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"__graphicsDataType") ) { _hx___graphicsDataType=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void GraphicsPath_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("commands",c8,b0,55,be));
	outFields->push(HX_("data",2a,56,63,42));
	outFields->push(HX_("winding",1a,49,70,e8));
	outFields->push(HX_("__graphicsDataType",0f,5d,4d,46));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo GraphicsPath_obj_sMemberStorageInfo[] = {
	{::hx::fsObject /*  ::openfl::_Vector::IntVector */ ,(int)offsetof(GraphicsPath_obj,commands),HX_("commands",c8,b0,55,be)},
	{::hx::fsObject /*  ::openfl::_Vector::FloatVector */ ,(int)offsetof(GraphicsPath_obj,data),HX_("data",2a,56,63,42)},
	{::hx::fsObject /*  ::Dynamic */ ,(int)offsetof(GraphicsPath_obj,winding),HX_("winding",1a,49,70,e8)},
	{::hx::fsInt,(int)offsetof(GraphicsPath_obj,_hx___graphicsDataType),HX_("__graphicsDataType",0f,5d,4d,46)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo GraphicsPath_obj_sStaticStorageInfo[] = {
	{::hx::fsFloat,(void *) &GraphicsPath_obj::SIN45,HX_("SIN45",79,16,be,fa)},
	{::hx::fsFloat,(void *) &GraphicsPath_obj::TAN22,HX_("TAN22",41,f4,da,88)},
	{ ::hx::fsUnknown, 0, null()}
};
#endif

static ::String GraphicsPath_obj_sMemberFields[] = {
	HX_("commands",c8,b0,55,be),
	HX_("data",2a,56,63,42),
	HX_("winding",1a,49,70,e8),
	HX_("__graphicsDataType",0f,5d,4d,46),
	HX_("cubicCurveTo",e0,07,90,2e),
	HX_("curveTo",0a,60,88,ce),
	HX_("lineTo",8f,46,a0,ec),
	HX_("moveTo",ec,d2,ac,cc),
	HX_("wideLineTo",02,f3,82,c8),
	HX_("wideMoveTo",5f,7f,8f,a8),
	HX_("__drawCircle",54,68,64,d0),
	HX_("__drawEllipse",1a,c6,46,9d),
	HX_("__drawRect",68,6a,49,03),
	HX_("__drawRoundRect",ce,fc,5c,6a),
	::String(null()) };

static void GraphicsPath_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(GraphicsPath_obj::SIN45,"SIN45");
	HX_MARK_MEMBER_NAME(GraphicsPath_obj::TAN22,"TAN22");
};

#ifdef HXCPP_VISIT_ALLOCS
static void GraphicsPath_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(GraphicsPath_obj::SIN45,"SIN45");
	HX_VISIT_MEMBER_NAME(GraphicsPath_obj::TAN22,"TAN22");
};

#endif

::hx::Class GraphicsPath_obj::__mClass;

static ::String GraphicsPath_obj_sStaticFields[] = {
	HX_("SIN45",79,16,be,fa),
	HX_("TAN22",41,f4,da,88),
	::String(null())
};

void GraphicsPath_obj::__register()
{
	GraphicsPath_obj _hx_dummy;
	GraphicsPath_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("openfl.display.GraphicsPath",7a,b7,47,96);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = GraphicsPath_obj_sMarkStatics;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(GraphicsPath_obj_sStaticFields);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(GraphicsPath_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< GraphicsPath_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = GraphicsPath_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = GraphicsPath_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = GraphicsPath_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void GraphicsPath_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_29_boot)
HXDLIN(  29)		SIN45 = ((Float)0.70710678118654752440084436210485);
            	}
{
            	HX_STACKFRAME(&_hx_pos_9d2387a0b056a42f_30_boot)
HXDLIN(  30)		TAN22 = ((Float)0.4142135623730950488016887242097);
            	}
}

} // end namespace openfl
} // end namespace display
