// Generated by Haxe 4.2.1+bf9ff69
#include <hxcpp.h>

#ifndef INCLUDED_lime_graphics_opengl_ext_DMP_shader_binary
#include <lime/graphics/opengl/ext/DMP_shader_binary.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_20c611465b484b2c_6_new,"lime.graphics.opengl.ext.DMP_shader_binary","new",0xc9fe28d3,"lime.graphics.opengl.ext.DMP_shader_binary.new","lime/graphics/opengl/ext/DMP_shader_binary.hx",6,0x26c2579f)
namespace lime{
namespace graphics{
namespace opengl{
namespace ext{

void DMP_shader_binary_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_20c611465b484b2c_6_new)
HXDLIN(   6)		this->SHADER_BINARY_DMP = 37456;
            	}

Dynamic DMP_shader_binary_obj::__CreateEmpty() { return new DMP_shader_binary_obj; }

void *DMP_shader_binary_obj::_hx_vtable = 0;

Dynamic DMP_shader_binary_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< DMP_shader_binary_obj > _hx_result = new DMP_shader_binary_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool DMP_shader_binary_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x5d56f211;
}


DMP_shader_binary_obj::DMP_shader_binary_obj()
{
}

::hx::Val DMP_shader_binary_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 17:
		if (HX_FIELD_EQ(inName,"SHADER_BINARY_DMP") ) { return ::hx::Val( SHADER_BINARY_DMP ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val DMP_shader_binary_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 17:
		if (HX_FIELD_EQ(inName,"SHADER_BINARY_DMP") ) { SHADER_BINARY_DMP=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void DMP_shader_binary_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("SHADER_BINARY_DMP",43,38,8b,b0));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo DMP_shader_binary_obj_sMemberStorageInfo[] = {
	{::hx::fsInt,(int)offsetof(DMP_shader_binary_obj,SHADER_BINARY_DMP),HX_("SHADER_BINARY_DMP",43,38,8b,b0)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *DMP_shader_binary_obj_sStaticStorageInfo = 0;
#endif

static ::String DMP_shader_binary_obj_sMemberFields[] = {
	HX_("SHADER_BINARY_DMP",43,38,8b,b0),
	::String(null()) };

::hx::Class DMP_shader_binary_obj::__mClass;

void DMP_shader_binary_obj::__register()
{
	DMP_shader_binary_obj _hx_dummy;
	DMP_shader_binary_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("lime.graphics.opengl.ext.DMP_shader_binary",61,c3,46,93);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(DMP_shader_binary_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< DMP_shader_binary_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = DMP_shader_binary_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = DMP_shader_binary_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace lime
} // end namespace graphics
} // end namespace opengl
} // end namespace ext
