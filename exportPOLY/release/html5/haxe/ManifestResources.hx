package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_comicsans_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fridayfunkin_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["tutorial"] = rootPath + "manifest/tutorial.json";
		Assets.libraryPaths["week1"] = rootPath + "manifest/week1.json";
		Assets.libraryPaths["week69"] = rootPath + "manifest/week69.json";
		data = '{"name":null,"assets":"aoy4:pathy40:assets%2Fdata%2Fbitwit%2Fbitwit-alt.jsony4:sizei26944y4:typey4:TEXTy2:idR1y7:preloadtgoR0y41:assets%2Fdata%2Fbitwit%2Fbitwit-easy.jsonR2i17193R3R4R5R7R6tgoR0y41:assets%2Fdata%2Fbitwit%2Fbitwit-hard.jsonR2i18998R3R4R5R8R6tgoR0y36:assets%2Fdata%2Fbitwit%2Fbitwit.jsonR2i18748R3R4R5R9R6tgoR0y47:assets%2Fdata%2Fbitwit%2FbitwitDialogue-alt.txtR2i88R3R4R5R10R6tgoR0y43:assets%2Fdata%2Fbitwit%2FbitwitDialogue.txtR2i497R3R4R5R11R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i56R3R4R5R12R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i324R3R4R5R13R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R4R5R14R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i59R3R4R5R15R6tgoR0y42:assets%2Fdata%2Fhexadec%2Fhexadec-alt.jsonR2i56708R3R4R5R16R6tgoR0y43:assets%2Fdata%2Fhexadec%2Fhexadec-easy.jsonR2i33143R3R4R5R17R6tgoR0y43:assets%2Fdata%2Fhexadec%2Fhexadec-hard.jsonR2i39880R3R4R5R18R6tgoR0y38:assets%2Fdata%2Fhexadec%2Fhexadec.jsonR2i35781R3R4R5R19R6tgoR0y49:assets%2Fdata%2Fhexadec%2FhexadecDialogue-alt.txtR2i146R3R4R5R20R6tgoR0y45:assets%2Fdata%2Fhexadec%2FhexadecDialogue.txtR2i733R3R4R5R21R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i2968R3R4R5R22R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i123R3R4R5R23R6tgoR0y44:assets%2Fdata%2Foffsettest%2Foffsettest.jsonR2i5741R3R4R5R24R6tgoR0y46:assets%2Fdata%2Fpolygonal%2Fpolygonal-alt.jsonR2i43586R3R4R5R25R6tgoR0y47:assets%2Fdata%2Fpolygonal%2Fpolygonal-easy.jsonR2i30023R3R4R5R26R6tgoR0y47:assets%2Fdata%2Fpolygonal%2Fpolygonal-hard.jsonR2i32952R3R4R5R27R6tgoR0y42:assets%2Fdata%2Fpolygonal%2Fpolygonal.jsonR2i31863R3R4R5R28R6tgoR0y53:assets%2Fdata%2Fpolygonal%2FpolygonalDialogue-alt.txtR2i76R3R4R5R29R6tgoR0y49:assets%2Fdata%2Fpolygonal%2FpolygonalDialogue.txtR2i298R3R4R5R30R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i347R3R4R5R31R6tgoR0y44:assets%2Fdata%2Ftutorial%2Ftutorial-alt.jsonR2i6969R3R4R5R32R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R4R5R33R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i9504R3R4R5R34R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R4R5R35R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i139836R3y5:IMAGER5R36R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i39069R3R4R5R38R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i44963R3R37R5R39R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i1963R3R4R5R40R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i1206957R3R37R5R41R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i11467R3R4R5R42R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i281298R3R37R5R43R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4755R3R4R5R44R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i1221436R3R37R5R45R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4259R3R4R5R46R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i216977R3R37R5R47R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R37R5R48R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i767012R3R37R5R49R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2189R3R4R5R50R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i1590930R3R37R5R51R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i1483670R3R37R5R52R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i1698776R3R37R5R53R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i680589R3R37R5R54R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R37R5R55R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R37R5R56R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R37R5R57R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R37R5R58R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R37R5R59R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R37R5R60R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R37R5R61R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R37R5R62R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R37R5R63R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R37R5R64R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R37R5R65R6tgoR0y44:assets%2Fimages%2Fpolymenu%2Fpoly_assets.pngR2i2251707R3R37R5R66R6tgoR0y44:assets%2Fimages%2Fpolymenu%2Fpoly_assets.xmlR2i17346R3R4R5R67R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek0.pngR2i7056R3R37R5R68R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i12184R3R37R5R69R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R37R5R70R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4875R3R4R5R71R6tgoR2i2309657R3y5:MUSICR5y31:assets%2Fmusic%2FfreakyMenu.mp3y9:pathGroupaR73hR6tgoR2i17762R3R72R5y32:assets%2Fsounds%2FcancelMenu.mp3R74aR75hR6tgoR2i91950R3R72R5y33:assets%2Fsounds%2FconfirmMenu.mp3R74aR76hR6tgoR2i17762R3R72R5y32:assets%2Fsounds%2FscrollMenu.mp3R74aR77hR6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i34R3R4R5R78goR0y18:mods%2FmodList.txtR2i8R3R4R5R79goR0y17:mods%2Freadme.txtR2i90R3R4R5R80goR0y21:do%20NOT%20readme.txtR2i4326R3R4R5R81R6tgoR0y13:changelog.txtR2i4902R3R4R5R82R6tgoR2i245600R3y4:FONTy9:classNamey35:__ASSET__assets_fonts_comicsans_ttfR5y30:assets%2Ffonts%2Fcomicsans.ttfR6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R4R5R87R6tgoR2i16312R3R83R84y38:__ASSET__assets_fonts_fridayfunkin_otfR5y33:assets%2Ffonts%2Ffridayfunkin.otfR6tgoR0y37:assets%2Ffonts%2Fminor%20spelling.mp4R2i225226R3y6:BINARYR5R90R6tgoR2i14656R3R83R84y31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i75864R3R83R84y29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i2114R3R72R5y26:flixel%2Fsounds%2Fbeep.mp3R74aR96y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R72R5y28:flixel%2Fsounds%2Fflixel.mp3R74aR98y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R97R74aR96R97hgoR2i33629R3R100R5R99R74aR98R99hgoR2i15744R3R83R84y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R83R84y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R37R5R105R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R37R5R106R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R37R5R107R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R37R5R108R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R37R5R109R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R37R5R110R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R37R5R111R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R37R5R112R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R37R5R113R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R37R5R114R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R37R5R115R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R37R5R116R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R37R5R117R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R37R5R118R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R37R5R119R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R37R5R120R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R37R5R121R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R37R5R122R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R37R5R123R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R37R5R124R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R37R5R125R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R37R5R126R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R37R5R127R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R37R5R128R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R37R5R129R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R37R5R130R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R37R5R131R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R37R5R132R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R37R5R133R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R134R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R135R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R136R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_alt_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwitdialogue_alt_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwitdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_alt_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadecdialogue_alt_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadecdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_alt_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonaldialogue_alt_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonaldialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_alt_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_polymenu_poly_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_polymenu_poly_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfnormalportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfnormalportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_roblox_hacker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_lofly_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgday_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bglights_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgmorning_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgnight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_polydialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_polydialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_poly_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_poly_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_22_french_long_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_boyfrien_getawau_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_drumsy_run_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_eye_for_an_eye_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_grab_hands_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_hitman3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_look_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_old_poly______poly_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_old_poly______poly_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_poly_2_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_retrobopbruh_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_saysanime_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_spelling_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_statue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_uh_oh_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week69_yaya_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__changelog_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_comicsans_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_minor_spelling_mp4 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week69_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/data/bitwit/bitwit-alt.json") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_alt_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bitwit/bitwit-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bitwit/bitwit-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bitwit/bitwit.json") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwit_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bitwit/bitwitDialogue-alt.txt") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwitdialogue_alt_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bitwit/bitwitDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_bitwit_bitwitdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadec-alt.json") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_alt_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadec-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadec-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadec.json") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadec_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadecDialogue-alt.txt") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadecdialogue_alt_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hexadec/hexadecDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_hexadec_hexadecdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/offsettest/offsettest.json") @:noCompletion #if display private #end class __ASSET__assets_data_offsettest_offsettest_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonal-alt.json") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_alt_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonal-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonal-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonal.json") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonal_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonalDialogue-alt.txt") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonaldialogue_alt_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/polygonal/polygonalDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_polygonal_polygonaldialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-alt.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_alt_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/polymenu/poly_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_polymenu_poly_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/polymenu/poly_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_polymenu_poly_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/storymenu/week0.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/offsettest/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_offsettest_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/portraits/bfNormalPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfnormalportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/portraits/bfNormalPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfnormalportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/portraits/gfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/portraits/gfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/roblox hacker.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_roblox_hacker_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spirit_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/week54prototype.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/lofly.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_lofly_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/tutorial/tutorial_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/poly/bgday.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgday_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/poly/bglights.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bglights_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/poly/bgmorning.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgmorning_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/poly/bgnight.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bgnight_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/poly/polyDialogue.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_polydialogue_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/poly/polyDialogue.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_polydialogue_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/poly/poly_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_poly_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/poly/poly_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_poly_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/poly_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/poly_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_poly_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week69/22 french long.png") @:noCompletion #if display private #end class __ASSET__assets_week69_22_french_long_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/boyfrien getawau.png") @:noCompletion #if display private #end class __ASSET__assets_week69_boyfrien_getawau_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/drumsy run.png") @:noCompletion #if display private #end class __ASSET__assets_week69_drumsy_run_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/Eye for an Eye.png") @:noCompletion #if display private #end class __ASSET__assets_week69_eye_for_an_eye_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/grab hands.png") @:noCompletion #if display private #end class __ASSET__assets_week69_grab_hands_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/hitman3.png") @:noCompletion #if display private #end class __ASSET__assets_week69_hitman3_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/look left.png") @:noCompletion #if display private #end class __ASSET__assets_week69_look_left_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/Old Poly ;)))/poly_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week69_old_poly______poly_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week69/Old Poly ;)))/poly_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week69_old_poly______poly_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week69/poly 2.0.png") @:noCompletion #if display private #end class __ASSET__assets_week69_poly_2_0_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/RetroBopBruh.png") @:noCompletion #if display private #end class __ASSET__assets_week69_retrobopbruh_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/saysanime.png") @:noCompletion #if display private #end class __ASSET__assets_week69_saysanime_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/spelling.png") @:noCompletion #if display private #end class __ASSET__assets_week69_spelling_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/statue.png") @:noCompletion #if display private #end class __ASSET__assets_week69_statue_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/uh oh.png") @:noCompletion #if display private #end class __ASSET__assets_week69_uh_oh_png extends lime.graphics.Image {}
@:keep @:image("assets/week69/yaya.jpg") @:noCompletion #if display private #end class __ASSET__assets_week69_yaya_jpg extends lime.graphics.Image {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("CHANGELOG.md") @:noCompletion #if display private #end class __ASSET__changelog_txt extends haxe.io.Bytes {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/comicsans.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_comicsans_ttf extends lime.text.Font {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/fridayfunkin.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_otf extends lime.text.Font {}
@:keep @:file("assets/fonts/minor spelling.mp4") @:noCompletion #if display private #end class __ASSET__assets_fonts_minor_spelling_mp4 extends haxe.io.Bytes {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("exportPOLY/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_comicsans_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_comicsans_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/comicsans"; #else ascender = 2257; descender = -597; height = 2854; numGlyphs = 1106; underlinePosition = -359; underlineThickness = 175; unitsPerEM = 2048; #end name = "Comic Sans MS"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fridayfunkin_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/fridayfunkin"; #else ascender = 698; descender = -113; height = 901; numGlyphs = 65; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Friday Funkin Regular"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_comicsans_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_comicsans_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_comicsans_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_comicsans_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_comicsans_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_comicsans_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
