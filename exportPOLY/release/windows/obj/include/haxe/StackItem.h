// Generated by Haxe 4.2.1+bf9ff69
#ifndef INCLUDED_haxe_StackItem
#define INCLUDED_haxe_StackItem

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(haxe,StackItem)
namespace haxe{


class StackItem_obj : public ::hx::EnumBase_obj
{
	typedef ::hx::EnumBase_obj super;
		typedef StackItem_obj OBJ_;

	public:
		StackItem_obj() {};
		HX_DO_ENUM_RTTI;
		static void __boot();
		static void __register();
		static bool __GetStatic(const ::String &inName, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		::String GetEnumName( ) const { return HX_("haxe.StackItem",13,26,c7,2d); }
		::String __ToString() const { return HX_("StackItem.",73,53,dc,cb) + _hx_tag; }

		static ::haxe::StackItem CFunction;
		static inline ::haxe::StackItem CFunction_dyn() { return CFunction; }
		static ::haxe::StackItem FilePos( ::haxe::StackItem s,::String file,int line, ::Dynamic column);
		static ::Dynamic FilePos_dyn();
		static ::haxe::StackItem LocalFunction( ::Dynamic v);
		static ::Dynamic LocalFunction_dyn();
		static ::haxe::StackItem Method(::String classname,::String method);
		static ::Dynamic Method_dyn();
		static ::haxe::StackItem Module(::String m);
		static ::Dynamic Module_dyn();
};

} // end namespace haxe

#endif /* INCLUDED_haxe_StackItem */ 
