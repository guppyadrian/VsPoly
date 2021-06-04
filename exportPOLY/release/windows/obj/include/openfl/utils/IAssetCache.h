// Generated by Haxe 4.2.1+bf9ff69
#ifndef INCLUDED_openfl_utils_IAssetCache
#define INCLUDED_openfl_utils_IAssetCache

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS2(lime,text,Font)
HX_DECLARE_CLASS2(openfl,display,BitmapData)
HX_DECLARE_CLASS2(openfl,display,IBitmapDrawable)
HX_DECLARE_CLASS2(openfl,events,EventDispatcher)
HX_DECLARE_CLASS2(openfl,events,IEventDispatcher)
HX_DECLARE_CLASS2(openfl,media,Sound)
HX_DECLARE_CLASS2(openfl,text,Font)
HX_DECLARE_CLASS2(openfl,utils,IAssetCache)

namespace openfl{
namespace utils{


class HXCPP_CLASS_ATTRIBUTES IAssetCache_obj {
	public:
		typedef ::hx::Object super;
		HX_DO_INTERFACE_RTTI;

		bool (::hx::Object :: *_hx_get_enabled)(); 
		static inline bool get_enabled( ::Dynamic _hx_) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_get_enabled)();
		}
		bool (::hx::Object :: *_hx_set_enabled)(bool value); 
		static inline bool set_enabled( ::Dynamic _hx_,bool value) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_set_enabled)(value);
		}
		void (::hx::Object :: *_hx_clear)(::String prefix); 
		static inline void clear( ::Dynamic _hx_,::String prefix) {
			(_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_clear)(prefix);
		}
		 ::openfl::display::BitmapData (::hx::Object :: *_hx_getBitmapData)(::String id); 
		static inline  ::openfl::display::BitmapData getBitmapData( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_getBitmapData)(id);
		}
		 ::openfl::text::Font (::hx::Object :: *_hx_getFont)(::String id); 
		static inline  ::openfl::text::Font getFont( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_getFont)(id);
		}
		 ::openfl::media::Sound (::hx::Object :: *_hx_getSound)(::String id); 
		static inline  ::openfl::media::Sound getSound( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_getSound)(id);
		}
		bool (::hx::Object :: *_hx_hasBitmapData)(::String id); 
		static inline bool hasBitmapData( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_hasBitmapData)(id);
		}
		bool (::hx::Object :: *_hx_hasFont)(::String id); 
		static inline bool hasFont( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_hasFont)(id);
		}
		bool (::hx::Object :: *_hx_hasSound)(::String id); 
		static inline bool hasSound( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_hasSound)(id);
		}
		bool (::hx::Object :: *_hx_removeBitmapData)(::String id); 
		static inline bool removeBitmapData( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_removeBitmapData)(id);
		}
		bool (::hx::Object :: *_hx_removeFont)(::String id); 
		static inline bool removeFont( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_removeFont)(id);
		}
		bool (::hx::Object :: *_hx_removeSound)(::String id); 
		static inline bool removeSound( ::Dynamic _hx_,::String id) {
			return (_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_removeSound)(id);
		}
		void (::hx::Object :: *_hx_setBitmapData)(::String id, ::openfl::display::BitmapData bitmapData); 
		static inline void setBitmapData( ::Dynamic _hx_,::String id, ::openfl::display::BitmapData bitmapData) {
			(_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_setBitmapData)(id,bitmapData);
		}
		void (::hx::Object :: *_hx_setFont)(::String id, ::openfl::text::Font font); 
		static inline void setFont( ::Dynamic _hx_,::String id, ::openfl::text::Font font) {
			(_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_setFont)(id,font);
		}
		void (::hx::Object :: *_hx_setSound)(::String id, ::openfl::media::Sound sound); 
		static inline void setSound( ::Dynamic _hx_,::String id, ::openfl::media::Sound sound) {
			(_hx_.mPtr->*( ::hx::interface_cast< ::openfl::utils::IAssetCache_obj *>(_hx_.mPtr->_hx_getInterface(0x8a5cf29a)))->_hx_setSound)(id,sound);
		}
};

} // end namespace openfl
} // end namespace utils

#endif /* INCLUDED_openfl_utils_IAssetCache */ 
