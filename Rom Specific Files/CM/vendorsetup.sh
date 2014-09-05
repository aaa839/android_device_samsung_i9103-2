#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

add_lunch_combo cm_i9103-userdebug

echo "Apply patch to frameworks/base"
echo -n "Apply patch 0001-framework-base-patch.patch"
(cd frameworks/base; git am ../../device/samsung/i9103/patches/cm/0001-framework-base-patch.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd frameworks/base; git am --abort)
	echo "     [FAIL]"
fi

echo -n "Apply patch 0002-DisplayDevice-Backwards-compatibility-with-old-EGL.patch"
(cd frameworks/native; git am ../../device/samsung/i9103/patches/cm/0002-DisplayDevice-Backwards-compatibility-with-old-EGL.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd frameworks/native; git am --abort)
	echo "     [FAIL]"
fi

echo "Apply patch to frameworks/native"
echo -n "Apply patch 0003-Fix-layer-dump-for-tegra2.patch"
(cd frameworks/native; git am ../../device/samsung/i9103/patches/cm/0003-Fix-layer-dump-for-tegra2.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
       echo "     [DONE]"
else
       (cd frameworks/native; git am --abort)
       echo "     [FAIL]"
fi

echo -n "Apply patch 0004-Add-missing-functions-and-signatures-for-older-OMX-v.patch"
(cd frameworks/av; git am ../../device/samsung/i9103/patches/cm/0004-Add-missing-functions-and-signatures-for-older-OMX-v.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd frameworks/av; git am --abort)
	echo "     [FAIL]"
fi


echo -n "Apply patch 0005-external-skia-patch.patch"
(cd external/skia; git am ../../device/samsung/i9103/patches/cm/0005-external-skia-patch.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
	echo "     [DONE]"
else
	(cd external/skia; git am --abort)
	echo "     [FAIL]"
fi

echo "Apply patch to external/chromium_org"
echo -n "Apply patch 0006-Work-around-broken-GL_TEXTURE_BINDING_EXTERNAL_OES-q.patch"
(cd external/chromium_org; git am ../../device/samsung/i9103/patches/cm/0006-Work-around-broken-GL_TEXTURE_BINDING_EXTERNAL_OES-q.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
  echo "     [DONE]"
else
  (cd external/chromium_org; git am --abort)
  echo "     [FAIL]"
fi

echo "Apply patch to external/mesa3d/src/glsl/"
echo -n "Apply patch 0007-missing-header-files-patch-in-linker.cpp.patch"
(cd Apply patch to external/mesa3d/src/glsl; git am ../../device/samsung/i9103/patches/cm/0007-missing-header-files-patch-in-linker.cpp.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
  echo "     [DONE]"
else
  (cd Apply patch to external/mesa3d/src/glsl; git am --abort)
  echo "     [FAIL]"
fi

echo "Apply patch to packages/apps/Camera2"
echo -n "Apply patch 0008-allow-setting-video-size-before-recording-starts.patch"
(cd Apply patch to packages/apps/Camera2; git am ../../device/samsung/i9103/patches/cm/0008-allow-setting-video-size-before-recording-starts.patch) > /dev/null 2>&1
if [ $? == 0 ]; then
  echo "     [DONE]"
else
  (cd Apply patch to packages/apps/Camera2; git am --abort)
  echo "     [FAIL]"
fi
