#Bootleggers MOD 

## What is this?

Bootleggers MOD is a mod based on replacing some apps with some of my preference and allows you to download apps from HTC/Sony/Others directly from play store. 

##Replacing apps? Which ones?
Here's a list of apps replaced.

| Original app        | Replaced with          |
|:-------------:|:-------------:|
| Gallery   | HTC Gallery |
| Music/Eleven    | Timber     |
| Browser | None *     |
| Camera | HTC Camera      |
| Clock (DeskClock) | OmniClock      |
| LOS File Manager/Any other | Amaze File Manager      |

**This app is not yet ready to be installed because of a FC when it's placed as a system app, maybe because of missing libs and files.*

##How can i put it into my Android Build?

You have to edit some files, on `build` folder and `vendor/RomVendor` (RomVendor=cm,aicp,and stuff) to avoid double apps and stuff. Here's an example editing the Resurrection Remix build and vendor folder.

(Maybe will be needed to remove files like Snap and Gello from device tree. Use the commits as a reference and NOT as a copy-paste code. You have to adapt it to the ROM you want to use this Mod.)

**NOTE:** This repo have the folder "stuff" that's needed to use this mod. Download this repo as a zip (or clone it) and paste the stuff folder on prebuilt folder from your ROM vendor and change the directory from the vendor_lines.txt from `vendor/aidonnou-rom` to `vendor/ROMNAME` (make it easy, use CTRL+H). 

###android\_build - Bootleggers init [(Info based on this commit)](https://github.com/BootleggersMod/resurrection_build/commit/4b1cd162e7161a9ce378570f33b726de5ece1611)

#### build/target/product/core.mk
```
Deleted:
-    Browser \
```

#### build/target/product/core.mk
```
Deleted:
-    Camera2 \		
-    Gallery2 \
```

###android\_vendor\_resurrection - Initializing bootleggers stuff [(Info based on this commit)](https://github.com/BootleggersMod/android_vendor_resurrection/commit/5f7eeb8ca874aa8c8f879f6662bd34a626e08c9b)

#### config/common.mk
```

-    Browser \
```

#### build/target/product/core.mk
``` git
PRODUCT_COPY_FILES += \
      vendor/cm/prebuilt/Wallpaper/Wallpaper.apk:system/app/Wallpaper/Wallpaper.apk		      vendor/cm/prebuilt/Wallpaper/Wallpaper.apk:system/app/Wallpaper/Wallpaper.apk
  		  
 -# DeskClock		 +# OmniClock 
  PRODUCT_COPY_FILES += \		  PRODUCT_COPY_FILES += \
 -    vendor/cm/prebuilt/DeskClock/DeskClock.apk:system/app/DeskClock/DeskClock.apk		 +    vendor/cm/prebuilt/stuff/omniclock.apk:system/app/OmniClock/OmniClock.apk
 +
 +
 +# HTC Editor
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/htceditor.apk:system/priv-app/HTCEditor/HTCEditor.apk\
 +    vendor/cm/prebuilt/stuff/htcelib/libalDE_SDE_TWO.so:system/priv-app/HTCEditor/lib/arm/libalDE_SDE_TWO.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libalDynamicWarping_SDW_TWO.so:system/priv-app/HTCEditor/lib/arm/libalDynamicWarping_SDW_TWO.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libdepthengine_mtkwrapper.so:system/priv-app/HTCEditor/lib/arm/libdepthengine_mtkwrapper.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libdepthengine_qcomwrapper.so:system/priv-app/HTCEditor/lib/arm/libdepthengine_qcomwrapper.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libdepthgen.so:system/priv-app/HTCEditor/lib/arm/libdepthgen.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libdepth_map.so:system/priv-app/HTCEditor/lib/arm/libdepth_map.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libexif2.so:system/priv-app/HTCEditor/lib/arm/libexif2.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libgluegen-rt.so:system/priv-app/HTCEditor/lib/arm/libgluegen-rt.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libgnustl_shared.so:system/priv-app/HTCEditor/lib/arm/libgnustl_shared.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_enhancer_vheffects.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_enhancer_vheffects.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_imagelib.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_imagelib.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libBokehLibEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libBokehLibEngine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libBokehUFocusWrapperEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libBokehUFocusWrapperEngine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libCutAndPaste.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libCutAndPaste.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libDepthmapJni.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDepthmapJni.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libDualLensEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDualLensEngine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libDuoShare.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libDuoShare.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libFaceDetection.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFaceDetection.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libFaceFusion.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFaceFusion.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libFractal.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libFractal.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libJointEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libJointEngine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libMatrix.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libMatrix.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libHMSGallery_libPhotoLabEngine.so:system/priv-app/HTCEditor/lib/arm/libHMSGallery_libPhotoLabEngine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libhtc_ufocusprocess.so:system/priv-app/HTCEditor/lib/arm/libhtc_ufocusprocess.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libimage_codec_engine.so:system/priv-app/HTCEditor/lib/arm/libimage_codec_engine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libiq_wrapper.so:system/priv-app/HTCEditor/lib/arm/libiq_wrapper.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libjni_fe.so:system/priv-app/HTCEditor/lib/arm/libjni_fe.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libjni_gifCreator.so:system/priv-app/HTCEditor/lib/arm/libjni_gifCreator.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libjocl.so:system/priv-app/HTCEditor/lib/arm/libjocl.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libjpeg_turbo.so:system/priv-app/HTCEditor/lib/arm/libjpeg_turbo.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_edit_engine.so:system/priv-app/HTCEditor/lib/arm/libmorpho_edit_engine.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_frame_overlay.so:system/priv-app/HTCEditor/lib/arm/libmorpho_frame_overlay.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_image_converter.so:system/priv-app/HTCEditor/lib/arm/libmorpho_image_converter.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_image_transform.so:system/priv-app/HTCEditor/lib/arm/libmorpho_image_transform.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_jpeg_io.so:system/priv-app/HTCEditor/lib/arm/libmorpho_jpeg_io.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libmorpho_memory_allocator.so:system/priv-app/HTCEditor/lib/arm/libmorpho_memory_allocator.so\
 +    vendor/cm/prebuilt/stuff/htcelib/libopencv_porting.so:system/priv-app/HTCEditor/lib/arm/libopencv_porting.so
 +
 +# HTC Gallery
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/htcgallery.apk:system/priv-app/HTCGallery/HTCGallery.apk\
 +    vendor/cm/prebuilt/stuff/htcglib/libexif2.so:system/priv-app/HTCGallery/lib/arm/libexif2.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libfeatures_android.so:system/priv-app/HTCGallery/lib/arm/libfeatures_android.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libHMSGallery_imagelib.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_imagelib.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libHMSGallery_libMatrix.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_libMatrix.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libHMSGallery_sunny.so:system/priv-app/HTCGallery/lib/arm/libHMSGallery_sunny.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libimage_codec_engine.so:system/priv-app/HTCGallery/lib/arm/libimage_codec_engine.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libimage_feature.so:system/priv-app/HTCGallery/lib/arm/libimage_feature.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libomron_common.so:system/priv-app/HTCGallery/lib/arm/libomron_common.so\
 +    vendor/cm/prebuilt/stuff/htcglib/libvima.so:system/priv-app/HTCGallery/lib/arm/libvima.so
 +
 +# HTC Video
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/htcvideo.apk:system/priv-app/HTCVideoPlayer/HTCVideoPlayer.apk 
 +
 +# HTC Libs
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/libbv_panodata_hdk_v6.so:system/lib/libbv_panodata_hdk_v6.so\
 +    vendor/cm/prebuilt/stuff/libgifdecoder.so:system/lib/libgifdecoder.so\
 +    vendor/cm/prebuilt/stuff/libgifdecoder2.so:system/lib/libgifdecoder2.so\
 +    vendor/cm/prebuilt/stuff/libexif_lib1_v09.so:system/lib/libexif_lib1_v09.so\
 +    vendor/cm/prebuilt/stuff/libexif_lib1_jni_v09.so:system/lib/libexif_lib1_jni_v09.so
 +
 +# MyPlayer
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/myplayer.apk:system/app/myplayer/myplayer.apk
 +
 +
 +# Amaze FM
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/amaze.apk:system/app/Amaze/Amaze.apk
 +
 +# custom permissions to play store
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/permissions/com.cyngn.audiofx.xml:system/etc/permissions/com.cyngn.audiofx.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.android.camera.experimental2015.xml:system/etc/permissions/com.google.android.camera.experimental2015.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.htc.vte.xml:system/etc/permissions/com.htc.vte.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.microsoft.cortana.xml:system/etc/permissions/com.microsoft.cortana.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.motorola.camera.xml:system/etc/permissions/com.motorola.camera.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.motorola.cameraone.xml:system/etc/permissions/com.motorola.cameraone.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.motorola.motosignature.xml:system/etc/permissions/com.motorola.motosignature.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sony.device.xml:system/etc/permissions/com.sony.device.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.appextensions.xml:system/etc/permissions/com.sonyericsson.appextensions.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.colorextraction.xml:system/etc/permissions/com.sonyericsson.colorextraction.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.dlna.dtcpplayer.xml:system/etc/permissions/com.sonyericsson.dlna.dtcpplayer.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.dlna.playanywhere.xml:system/etc/permissions/com.sonyericsson.dlna.playanywhere.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.dlna.xml:system/etc/permissions/com.sonyericsson.dlna.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.dtcpctrl_private.xml:system/etc/permissions/com.sonyericsson.dtcpctrl_private.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.dtcpctrl_protected.xml:system/etc/permissions/com.sonyericsson.dtcpctrl_protected.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.illumination.xml:system/etc/permissions/com.sonyericsson.illumination.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.media.infinite.extension_1.xml:system/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.metadatacleanup.xml:system/etc/permissions/com.sonyericsson.metadatacleanup.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.musicvisualizer.xml:system/etc/permissions/com.sonyericsson.musicvisualizer.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.privateapis.xml:system/etc/permissions/com.sonyericsson.privateapis.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.system.xml:system/etc/permissions/com.sonyericsson.system.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.updatecenter.xml:system/etc/permissions/com.sonyericsson.updatecenter.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.camera.addon.xml:system/etc/permissions/com.sonymobile.camera.addon.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.media.dashboard.extension.xml:system/etc/permissions/com.sonymobile.media.dashboard.extension.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.mediacontent.xml:system/etc/permissions/com.sonymobile.mediacontent.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.playanywhere.xml:system/etc/permissions/com.sonymobile.playanywhere.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.provider.tasks.xml:system/etc/permissions/com.sonymobile.provider.tasks.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.settings.illumination.xml:system/etc/permissions/com.sonymobile.settings.illumination.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.settings.shakecontrol.xml:system/etc/permissions/com.sonymobile.settings.shakecontrol.xml\
 +    vendor/cm/prebuilt/stuff/permissions/com.sonymobile.softreset.xml:system/etc/permissions/com.sonymobile.softreset.xml
 +
 +# framework stuff for xperia? maybe
 +PRODUCT_COPY_FILES += \
 +    vendor/cm/prebuilt/stuff/fw/com.google.android.camera.experimental2015.jar:system/framework/com.google.android.camera.experimental2015.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.google.android.dialer.support.jar:system/framework/com.google.android.dialer.support.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.google.android.maps.jar:system/framework/com.google.android.maps.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sony.device.jar:system/framework/com.sony.device.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.appextensions.jar:system/framework/com.sonyericsson.appextensions.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.colorextraction_impl.jar:system/framework/com.sonyericsson.colorextraction_impl.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.dlna.dtcpplayer.jar:system/framework/com.sonyericsson.dlna.dtcpplayer.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.dlna.playanywhere.jar:system/framework/com.sonyericsson.dlna.playanywhere.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.dlna_impl.jar:system/framework/com.sonyericsson.dlna_impl.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.dtcpctrl_private_impl.jar:system/framework/com.sonyericsson.dtcpctrl_private_impl.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.dtcpctrl_protected_impl.jar:system/framework/com.sonyericsson.dtcpctrl_protected_impl.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.illumination.jar:system/framework/com.sonyericsson.illumination.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.media.infinite.extension_1.jar:system/framework/com.sonyericsson.media.infinite.extension_1.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.metadatacleanup.jar:system/framework/com.sonyericsson.metadatacleanup.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.music.jar:system/framework/com.sonyericsson.music.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.musicvisualizer.jar:system/framework/com.sonyericsson.musicvisualizer.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.privateapis_impl.jar:system/framework/com.sonyericsson.privateapis_impl.jar.apk\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.system.jar:system/framework/com.sonyericsson.system.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.updatecenter.jar:system/framework/com.sonyericsson.updatecenter.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.uxp.jar:system/framework/com.sonyericsson.uxp.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonyericsson.uxpres.jar:system/framework/com.sonyericsson.uxpres.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.media.dashboard.extension.jar:system/framework/com.sonymobile.media.dashboard.extension.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.mediacontent.jar:system/framework/com.sonymobile.mediacontent.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.playanywhere.jar:system/framework/com.sonymobile.playanywhere.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.provider.tasks.jar:system/framework/com.sonymobile.provider.tasks.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.settings.illumination.jar:system/framework/com.sonymobile.settings.illumination.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.settings.shakecontrol.jar:system/framework/com.sonymobile.settings.shakecontrol.jar\
 +    vendor/cm/prebuilt/stuff/fw/com.sonymobile.softreset.jar:system/framework/com.sonymobile.softreset.jar\
 +    vendor/cm/prebuilt/stuff/fw/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar\
 +    vendor/cm/prebuilt/stuff/fw/SemcGenericUxpRes/SemcGenericUxpRes.apk:system/framework/SemcGenericUxpRes/SemcGenericUxpRes.apk
  		  
 # DU Utils Library
 PRODUCT_BOOT_JARS += \
 @@ -185,8 +338,6 @@ PRODUCT_PACKAGES += \
      ResurrectionStats \
      Trebuchet \
      MusicFX \
 -    CMFileManager \		
 -    Eleven \		
      LockClock \
      CMSettingsProvider \
      ExactCalculator \
```



