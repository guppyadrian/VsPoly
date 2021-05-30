// Generated by Haxe 4.2.1+bf9ff69
#include <hxcpp.h>

#ifndef INCLUDED_lime_graphics_opengl_ext_EXT_robustness
#include <lime/graphics/opengl/ext/EXT_robustness.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_60e6ca196390a6ae_4_new,"lime.graphics.opengl.ext.EXT_robustness","new",0xcfe16dda,"lime.graphics.opengl.ext.EXT_robustness.new","lime/graphics/opengl/ext/EXT_robustness.hx",4,0xa3734bf4)
namespace lime{
namespace graphics{
namespace opengl{
namespace ext{

void EXT_robustness_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_60e6ca196390a6ae_4_new)
HXLINE(  12)		this->NO_RESET_NOTIFICATION_EXT = 33377;
HXLINE(  11)		this->LOSE_CONTEXT_ON_RESET_EXT = 33362;
HXLINE(  10)		this->RESET_NOTIFICATION_STRATEGY_EXT = 33366;
HXLINE(   9)		this->CONTEXT_ROBUST_ACCESS_EXT = 37107;
HXLINE(   8)		this->UNKNOWN_CONTEXT_RESET_EXT = 33365;
HXLINE(   7)		this->INNOCENT_CONTEXT_RESET_EXT = 33364;
HXLINE(   6)		this->GUILTY_CONTEXT_RESET_EXT = 33363;
            	}

Dynamic EXT_robustness_obj::__CreateEmpty() { return new EXT_robustness_obj; }

void *EXT_robustness_obj::_hx_vtable = 0;

Dynamic EXT_robustness_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< EXT_robustness_obj > _hx_result = new EXT_robustness_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool EXT_robustness_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x011ffc38;
}


EXT_robustness_obj::EXT_robustness_obj()
{
}

::hx::Val EXT_robustness_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 24:
		if (HX_FIELD_EQ(inName,"GUILTY_CONTEXT_RESET_EXT") ) { return ::hx::Val( GUILTY_CONTEXT_RESET_EXT ); }
		break;
	case 25:
		if (HX_FIELD_EQ(inName,"UNKNOWN_CONTEXT_RESET_EXT") ) { return ::hx::Val( UNKNOWN_CONTEXT_RESET_EXT ); }
		if (HX_FIELD_EQ(inName,"CONTEXT_ROBUST_ACCESS_EXT") ) { return ::hx::Val( CONTEXT_ROBUST_ACCESS_EXT ); }
		if (HX_FIELD_EQ(inName,"LOSE_CONTEXT_ON_RESET_EXT") ) { return ::hx::Val( LOSE_CONTEXT_ON_RESET_EXT ); }
		if (HX_FIELD_EQ(inName,"NO_RESET_NOTIFICATION_EXT") ) { return ::hx::Val( NO_RESET_NOTIFICATION_EXT ); }
		break;
	case 26:
		if (HX_FIELD_EQ(inName,"INNOCENT_CONTEXT_RESET_EXT") ) { return ::hx::Val( INNOCENT_CONTEXT_RESET_EXT ); }
		break;
	case 31:
		if (HX_FIELD_EQ(inName,"RESET_NOTIFICATION_STRATEGY_EXT") ) { return ::hx::Val( RESET_NOTIFICATION_STRATEGY_EXT ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val EXT_robustness_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 24:
		if (HX_FIELD_EQ(inName,"GUILTY_CONTEXT_RESET_EXT") ) { GUILTY_CONTEXT_RESET_EXT=inValue.Cast< int >(); return inValue; }
		break;
	case 25:
		if (HX_FIELD_EQ(inName,"UNKNOWN_CONTEXT_RESET_EXT") ) { UNKNOWN_CONTEXT_RESET_EXT=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"CONTEXT_ROBUST_ACCESS_EXT") ) { CONTEXT_ROBUST_ACCESS_EXT=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"LOSE_CONTEXT_ON_RESET_EXT") ) { LOSE_CONTEXT_ON_RESET_EXT=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"NO_RESET_NOTIFICATION_EXT") ) { NO_RESET_NOTIFICATION_EXT=inValue.Cast< int >(); return inValue; }
		break;
	case 26:
		if (HX_FIELD_EQ(inName,"INNOCENT_CONTEXT_RESET_EXT") ) { INNOCENT_CONTEXT_RESET_EXT=inValue.Cast< int >(); return inValue; }
		break;
	case 31:
		if (HX_FIELD_EQ(inName,"RESET_NOTIFICATION_STRATEGY_EXT") ) { RESET_NOTIFICATION_STRATEGY_EXT=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void EXT_robustness_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("GUILTY_CONTEXT_RESET_EXT",98,78,ca,75));
	outFields->push(HX_("INNOCENT_CONTEXT_RESET_EXT",10,1f,1e,90));
	outFields->push(HX_("UNKNOWN_CONTEXT_RESET_EXT",ac,0f,07,0f));
	outFields->push(HX_("CONTEXT_ROBUST_ACCESS_EXT",c4,c8,9b,f5));
	outFields->push(HX_("RESET_NOTIFICATION_STRATEGY_EXT",b9,66,23,cb));
	outFields->push(HX_("LOSE_CONTEXT_ON_RESET_EXT",eb,3d,db,68));
	outFields->push(HX_("NO_RESET_NOTIFICATION_EXT",3b,c9,cb,58));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo EXT_robustness_obj_sMemberStorageInfo[] = {
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,GUILTY_CONTEXT_RESET_EXT),HX_("GUILTY_CONTEXT_RESET_EXT",98,78,ca,75)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,INNOCENT_CONTEXT_RESET_EXT),HX_("INNOCENT_CONTEXT_RESET_EXT",10,1f,1e,90)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,UNKNOWN_CONTEXT_RESET_EXT),HX_("UNKNOWN_CONTEXT_RESET_EXT",ac,0f,07,0f)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,CONTEXT_ROBUST_ACCESS_EXT),HX_("CONTEXT_ROBUST_ACCESS_EXT",c4,c8,9b,f5)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,RESET_NOTIFICATION_STRATEGY_EXT),HX_("RESET_NOTIFICATION_STRATEGY_EXT",b9,66,23,cb)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,LOSE_CONTEXT_ON_RESET_EXT),HX_("LOSE_CONTEXT_ON_RESET_EXT",eb,3d,db,68)},
	{::hx::fsInt,(int)offsetof(EXT_robustness_obj,NO_RESET_NOTIFICATION_EXT),HX_("NO_RESET_NOTIFICATION_EXT",3b,c9,cb,58)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *EXT_robustness_obj_sStaticStorageInfo = 0;
#endif

static ::String EXT_robustness_obj_sMemberFields[] = {
	HX_("GUILTY_CONTEXT_RESET_EXT",98,78,ca,75),
	HX_("INNOCENT_CONTEXT_RESET_EXT",10,1f,1e,90),
	HX_("UNKNOWN_CONTEXT_RESET_EXT",ac,0f,07,0f),
	HX_("CONTEXT_ROBUST_ACCESS_EXT",c4,c8,9b,f5),
	HX_("RESET_NOTIFICATION_STRATEGY_EXT",b9,66,23,cb),
	HX_("LOSE_CONTEXT_ON_RESET_EXT",eb,3d,db,68),
	HX_("NO_RESET_NOTIFICATION_EXT",3b,c9,cb,58),
	::String(null()) };

::hx::Class EXT_robustness_obj::__mClass;

void EXT_robustness_obj::__register()
{
	EXT_robustness_obj _hx_dummy;
	EXT_robustness_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("lime.graphics.opengl.ext.EXT_robustness",e8,38,33,16);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(EXT_robustness_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< EXT_robustness_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = EXT_robustness_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = EXT_robustness_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace lime
} // end namespace graphics
} // end namespace opengl
} // end namespace ext
