{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.android.input.motion.button
module TouchButtonAndroidResources (module TouchButtonAndroidResources, module Init) where

import Init hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified AndroidResources -- org.allbinary.AndroidResources
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified Init -- org.allbinary.init.Init
import qualified CommonButtons -- org.allbinary.input.motion.button.CommonButtons
import qualified TouchButtonBlankResource -- org.allbinary.input.motion.button.TouchButtonBlankResource
import qualified TouchButtonDownResource -- org.allbinary.input.motion.button.TouchButtonDownResource
import qualified TouchButtonGenericActionResource -- org.allbinary.input.motion.button.TouchButtonGenericActionResource
import qualified TouchButtonResource -- org.allbinary.input.motion.button.TouchButtonResource
import qualified TouchButtonStartResource -- org.allbinary.input.motion.button.TouchButtonStartResource
import qualified TouchButtonStrafeLeftResource -- org.allbinary.input.motion.button.TouchButtonStrafeLeftResource
import qualified TouchButtonStrafeRightResource -- org.allbinary.input.motion.button.TouchButtonStrafeRightResource
import qualified TouchButtonTurnLeftResource -- org.allbinary.input.motion.button.TouchButtonTurnLeftResource
import qualified TouchButtonTurnRightResource -- org.allbinary.input.motion.button.TouchButtonTurnRightResource
import qualified TouchButtonUpResource -- org.allbinary.input.motion.button.TouchButtonUpResource
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory

data TouchButtonAndroidResources = TouchButtonAndroidResources
    { header_ :: JavaHeader
    , base :: Init.Init
    }

instance JavaNull TouchButtonAndroidResources where
    javaNull = javaNullRecord "TouchButtonAndroidResources"

instance JavaEquals TouchButtonAndroidResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonAndroidResources where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonAndroidResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonAndroidResources
newRecord_ = do
    base <- Init.newRecord_
    let header_ = base.header_
    let this = TouchButtonAndroidResources header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: TouchButtonAndroidResources -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonAndroidResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonAndroidResources -> IO ()
init_ this = do
    Init.init_ this.base
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TouchButtonAndroidResources))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TouchButtonAndroidResources))

init_impl :: TouchButtonAndroidResources -> IO (())
init_impl this = do
        resourceUtil <- (ResourceUtil.getInstance)
        androidResources <- (AndroidResources.getInstance)
        let rESOURCE_STRING_ARRAY = (jarrayFromList [(jio (TouchButtonBlankResource.getInstance)), (jio (TouchButtonGenericActionResource.getInstance)), (jio (TouchButtonStartResource.getInstance)), (jio (TouchButtonUpResource.getInstance)), (jio (TouchButtonDownResource.getInstance)), (jio (TouchButtonTurnLeftResource.getInstance)), (jio (TouchButtonTurnRightResource.getInstance)), (jio (TouchButtonStrafeLeftResource.getInstance)), (jio (TouchButtonStrafeRightResource.getInstance))])
        let rESOURCE_ARRAY = (jnewArray ((jlength rESOURCE_STRING_ARRAY)) 0)
        if ((jget ((jio (CommonButtons.getInstance))).sTANDARD_BUTTON_SIZE) == 128) then do
            jsetIndex rESOURCE_ARRAY (0) ((jget ((jget (androidResources).raw)).touch_button_128_by_128))
            jsetIndex rESOURCE_ARRAY (1) ((jget ((jget (androidResources).raw)).touch_button_generic_action_128_by_128))
            jsetIndex rESOURCE_ARRAY (2) ((jget ((jget (androidResources).raw)).touch_button_start_128_by_128))
            jsetIndex rESOURCE_ARRAY (3) ((jget ((jget (androidResources).raw)).touch_button_up_arrow_128_by_128))
            jsetIndex rESOURCE_ARRAY (4) ((jget ((jget (androidResources).raw)).touch_button_down_arrow_128_by_128))
            jsetIndex rESOURCE_ARRAY (5) ((jget ((jget (androidResources).raw)).touch_button_turn_left_arrow_128_by_128))
            jsetIndex rESOURCE_ARRAY (6) ((jget ((jget (androidResources).raw)).touch_button_turn_right_arrow_128_by_128))
            jsetIndex rESOURCE_ARRAY (7) ((jget ((jget (androidResources).raw)).touch_button_strafe_left_arrow_128_by_128))
            jsetIndex rESOURCE_ARRAY (8) ((jget ((jget (androidResources).raw)).touch_button_strafe_right_arrow_128_by_128))
            when (jio (OperatingSystemFactory.isOverScan ((jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance)))))))) $ do
                Control.Monad.void (ResourceUtil.addResource resourceUtil (jget ((jindex rESOURCE_STRING_ARRAY (2))).hINT) (javaToString (jget ((jget (androidResources).raw)).ouya_o)))
        else do
            jsetIndex rESOURCE_ARRAY (0) ((jget ((jget (androidResources).raw)).touch_button_64_by_64))
            jsetIndex rESOURCE_ARRAY (1) ((jget ((jget (androidResources).raw)).touch_button_generic_action_64_by_64))
            jsetIndex rESOURCE_ARRAY (2) ((jget ((jget (androidResources).raw)).touch_button_start_64_by_64))
            jsetIndex rESOURCE_ARRAY (3) ((jget ((jget (androidResources).raw)).touch_button_up_arrow_64_by_64))
            jsetIndex rESOURCE_ARRAY (4) ((jget ((jget (androidResources).raw)).touch_button_down_arrow_64_by_64))
            jsetIndex rESOURCE_ARRAY (5) ((jget ((jget (androidResources).raw)).touch_button_turn_left_arrow_64_by_64))
            jsetIndex rESOURCE_ARRAY (6) ((jget ((jget (androidResources).raw)).touch_button_turn_right_arrow_64_by_64))
            jsetIndex rESOURCE_ARRAY (7) ((jget ((jget (androidResources).raw)).touch_button_strafe_left_arrow_64_by_64))
            jsetIndex rESOURCE_ARRAY (8) ((jget ((jget (androidResources).raw)).touch_button_strafe_right_arrow_64_by_64))
        forM_ [0 .. (jlength rESOURCE_ARRAY) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (ResourceUtil.addResource resourceUtil (jget ((jindex rESOURCE_STRING_ARRAY (index))).rESOURCE) (javaToString (jindex rESOURCE_ARRAY (index))))
        pure ()


