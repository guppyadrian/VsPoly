// Generated by Haxe 4.2.1+bf9ff69
#include <hxcpp.h>

#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_util__FlxSignal_FlxSignalHandler
#include <flixel/util/_FlxSignal/FlxSignalHandler.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_d696dc5400e6ca39_78_new,"flixel.util._FlxSignal.FlxSignalHandler","new",0x24d8c59b,"flixel.util._FlxSignal.FlxSignalHandler.new","flixel/util/FlxSignal.hx",78,0x3c758c5e)
HX_LOCAL_STACK_FRAME(_hx_pos_d696dc5400e6ca39_91_destroy,"flixel.util._FlxSignal.FlxSignalHandler","destroy",0xffcddbb5,"flixel.util._FlxSignal.FlxSignalHandler.destroy","flixel/util/FlxSignal.hx",91,0x3c758c5e)
namespace flixel{
namespace util{
namespace _FlxSignal{

void FlxSignalHandler_obj::__construct( ::Dynamic listener,bool dispatchOnce){
            	HX_STACKFRAME(&_hx_pos_d696dc5400e6ca39_78_new)
HXLINE(  81)		this->dispatchOnce = false;
HXLINE(  85)		this->listener = listener;
HXLINE(  86)		this->dispatchOnce = dispatchOnce;
            	}

Dynamic FlxSignalHandler_obj::__CreateEmpty() { return new FlxSignalHandler_obj; }

void *FlxSignalHandler_obj::_hx_vtable = 0;

Dynamic FlxSignalHandler_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< FlxSignalHandler_obj > _hx_result = new FlxSignalHandler_obj();
	_hx_result->__construct(inArgs[0],inArgs[1]);
	return _hx_result;
}

bool FlxSignalHandler_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x17dd82ad;
}

static ::flixel::util::IFlxDestroyable_obj _hx_flixel_util__FlxSignal_FlxSignalHandler__hx_flixel_util_IFlxDestroyable= {
	( void (::hx::Object::*)())&::flixel::util::_FlxSignal::FlxSignalHandler_obj::destroy,
};

void *FlxSignalHandler_obj::_hx_getInterface(int inHash) {
	switch(inHash) {
		case (int)0xd4fe2fcd: return &_hx_flixel_util__FlxSignal_FlxSignalHandler__hx_flixel_util_IFlxDestroyable;
	}
	#ifdef HXCPP_SCRIPTABLE
	return super::_hx_getInterface(inHash);
	#else
	return 0;
	#endif
}

void FlxSignalHandler_obj::destroy(){
            	HX_STACKFRAME(&_hx_pos_d696dc5400e6ca39_91_destroy)
HXDLIN(  91)		this->listener = null();
            	}


HX_DEFINE_DYNAMIC_FUNC0(FlxSignalHandler_obj,destroy,(void))


::hx::ObjectPtr< FlxSignalHandler_obj > FlxSignalHandler_obj::__new( ::Dynamic listener,bool dispatchOnce) {
	::hx::ObjectPtr< FlxSignalHandler_obj > __this = new FlxSignalHandler_obj();
	__this->__construct(listener,dispatchOnce);
	return __this;
}

::hx::ObjectPtr< FlxSignalHandler_obj > FlxSignalHandler_obj::__alloc(::hx::Ctx *_hx_ctx, ::Dynamic listener,bool dispatchOnce) {
	FlxSignalHandler_obj *__this = (FlxSignalHandler_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(FlxSignalHandler_obj), true, "flixel.util._FlxSignal.FlxSignalHandler"));
	*(void **)__this = FlxSignalHandler_obj::_hx_vtable;
	__this->__construct(listener,dispatchOnce);
	return __this;
}

FlxSignalHandler_obj::FlxSignalHandler_obj()
{
}

void FlxSignalHandler_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FlxSignalHandler);
	HX_MARK_MEMBER_NAME(listener,"listener");
	HX_MARK_MEMBER_NAME(dispatchOnce,"dispatchOnce");
	HX_MARK_END_CLASS();
}

void FlxSignalHandler_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(listener,"listener");
	HX_VISIT_MEMBER_NAME(dispatchOnce,"dispatchOnce");
}

::hx::Val FlxSignalHandler_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 7:
		if (HX_FIELD_EQ(inName,"destroy") ) { return ::hx::Val( destroy_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"listener") ) { return ::hx::Val( listener ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"dispatchOnce") ) { return ::hx::Val( dispatchOnce ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val FlxSignalHandler_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 8:
		if (HX_FIELD_EQ(inName,"listener") ) { listener=inValue.Cast<  ::Dynamic >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"dispatchOnce") ) { dispatchOnce=inValue.Cast< bool >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FlxSignalHandler_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("listener",74,00,32,38));
	outFields->push(HX_("dispatchOnce",5b,5d,76,64));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo FlxSignalHandler_obj_sMemberStorageInfo[] = {
	{::hx::fsObject /*  ::Dynamic */ ,(int)offsetof(FlxSignalHandler_obj,listener),HX_("listener",74,00,32,38)},
	{::hx::fsBool,(int)offsetof(FlxSignalHandler_obj,dispatchOnce),HX_("dispatchOnce",5b,5d,76,64)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *FlxSignalHandler_obj_sStaticStorageInfo = 0;
#endif

static ::String FlxSignalHandler_obj_sMemberFields[] = {
	HX_("listener",74,00,32,38),
	HX_("dispatchOnce",5b,5d,76,64),
	HX_("destroy",fa,2c,86,24),
	::String(null()) };

::hx::Class FlxSignalHandler_obj::__mClass;

void FlxSignalHandler_obj::__register()
{
	FlxSignalHandler_obj _hx_dummy;
	FlxSignalHandler_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("flixel.util._FlxSignal.FlxSignalHandler",29,5c,d1,50);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(FlxSignalHandler_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< FlxSignalHandler_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FlxSignalHandler_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FlxSignalHandler_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace flixel
} // end namespace util
} // end namespace _FlxSignal
