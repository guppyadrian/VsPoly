// Generated by Haxe 4.2.1+bf9ff69
#ifndef INCLUDED_flixel_addons_ui_interfaces_IHasParams
#define INCLUDED_flixel_addons_ui_interfaces_IHasParams

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS4(flixel,addons,ui,interfaces,IHasParams)

namespace flixel{
namespace addons{
namespace ui{
namespace interfaces{


class HXCPP_CLASS_ATTRIBUTES IHasParams_obj {
	public:
		typedef ::hx::Object super;
		HX_DO_INTERFACE_RTTI;

		::cpp::VirtualArray (::hx::Object :: *_hx_set_params)(::cpp::VirtualArray p); 
		static inline ::cpp::VirtualArray set_params( ::Dynamic _hx_,::cpp::VirtualArray p) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::flixel::addons::ui::interfaces::IHasParams_obj *>(_hx_.mPtr->_hx_getInterface(0x9e5db374)))->_hx_set_params)(p);
		}
};

} // end namespace flixel
} // end namespace addons
} // end namespace ui
} // end namespace interfaces

#endif /* INCLUDED_flixel_addons_ui_interfaces_IHasParams */ 
