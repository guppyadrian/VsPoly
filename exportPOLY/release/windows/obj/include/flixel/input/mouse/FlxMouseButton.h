// Generated by Haxe 4.2.1+bf9ff69
#ifndef INCLUDED_flixel_input_mouse_FlxMouseButton
#define INCLUDED_flixel_input_mouse_FlxMouseButton

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_flixel_input_FlxInput
#include <flixel/input/FlxInput.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
HX_DECLARE_CLASS2(flixel,input,FlxInput)
HX_DECLARE_CLASS2(flixel,input,IFlxInput)
HX_DECLARE_CLASS3(flixel,input,mouse,FlxMouseButton)
HX_DECLARE_CLASS2(flixel,math,FlxPoint)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)
HX_DECLARE_CLASS2(flixel,util,IFlxPooled)
HX_DECLARE_CLASS2(openfl,events,Event)
HX_DECLARE_CLASS2(openfl,events,MouseEvent)

namespace flixel{
namespace input{
namespace mouse{


class HXCPP_CLASS_ATTRIBUTES FlxMouseButton_obj : public  ::flixel::input::FlxInput_obj
{
	public:
		typedef  ::flixel::input::FlxInput_obj super;
		typedef FlxMouseButton_obj OBJ_;
		FlxMouseButton_obj();

	public:
		enum { _hx_ClassId = 0x66479060 };

		void __construct(int ID);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="flixel.input.mouse.FlxMouseButton")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"flixel.input.mouse.FlxMouseButton"); }
		static ::hx::ObjectPtr< FlxMouseButton_obj > __new(int ID);
		static ::hx::ObjectPtr< FlxMouseButton_obj > __alloc(::hx::Ctx *_hx_ctx,int ID);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~FlxMouseButton_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		::hx::Val __SetField(const ::String &inString,const ::hx::Val &inValue, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		void *_hx_getInterface(int inHash);
		::String __ToString() const { return HX_("FlxMouseButton",c5,4e,f0,2d); }

		static  ::flixel::input::mouse::FlxMouseButton getByID(int id);
		static ::Dynamic getByID_dyn();

		 ::flixel::math::FlxPoint justPressedPosition;
		int justPressedTimeInTicks;
		void update();

		void destroy();
		::Dynamic destroy_dyn();

		void onDown( ::openfl::events::MouseEvent _);
		::Dynamic onDown_dyn();

		void onUp( ::openfl::events::MouseEvent _);
		::Dynamic onUp_dyn();

};

} // end namespace flixel
} // end namespace input
} // end namespace mouse

#endif /* INCLUDED_flixel_input_mouse_FlxMouseButton */ 
