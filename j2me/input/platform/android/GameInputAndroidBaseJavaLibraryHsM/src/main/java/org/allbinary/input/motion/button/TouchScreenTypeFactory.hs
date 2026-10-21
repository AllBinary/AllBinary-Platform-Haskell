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
-- package org.allbinary.input.motion.button
module TouchScreenTypeFactory where

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
import qualified TouchScreenFactory -- same package or java.lang
import qualified TouchScreenTypesFactory -- same package or java.lang
import qualified Activity -- android.app.Activity
import qualified Configuration -- android.content.res.Configuration
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil

data TouchScreenTypeFactory = TouchScreenTypeFactory
    { header_ :: JavaHeader
    }

instance JavaNull TouchScreenTypeFactory where
    javaNull = javaNullRecord "TouchScreenTypeFactory"

instance JavaEquals TouchScreenTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchScreenTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchScreenTypeFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: TouchScreenTypeFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchScreenTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchScreenTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TouchScreenTypeFactory)
getInstance = do
        pure (TouchScreenTypeFactory.instance_)


update :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TouchScreenTypeFactory))) () a1

update_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: TouchScreenTypeFactory)) a1

update_impl :: TouchScreenTypeFactory -> Activity.Activity -> IO (())
update_impl this activity = do
        commonStrings <- (CommonStrings.getInstance)
        touchScreenFactory <- (TouchScreenFactory.getInstance)
        touchScreenTypesFactory <- (TouchScreenTypesFactory.getInstance)
        configuration <- (Activity.getConfiguration ((jio (Activity.getResources activity))))
        let touchScreen = (jget (configuration).touchscreen)
        if (touchScreen == Configuration.tOUCHSCREEN_FINGER) then do
            Control.Monad.void (TouchScreenFactory.setTouchScreenType touchScreenFactory (jget (touchScreenTypesFactory).fINGER))
            when (Prelude.not (jio (TouchScreenFactory.isTouch touchScreenFactory))) $ do
                Control.Monad.void (PreLogUtil.put "Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it" this (jget (commonStrings).pROCESS))
                Control.Monad.void (TouchScreenFactory.setTouch touchScreenFactory True)
        else if (touchScreen == Configuration.tOUCHSCREEN_STYLUS) then do
            Control.Monad.void (TouchScreenFactory.setTouchScreenType touchScreenFactory (jget (touchScreenTypesFactory).sTYLUS))
            when (Prelude.not (jio (TouchScreenFactory.isTouch touchScreenFactory))) $ do
                Control.Monad.void (PreLogUtil.put "Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it" this (jget (commonStrings).pROCESS))
                Control.Monad.void (TouchScreenFactory.setTouch touchScreenFactory True)
        else if (touchScreen == Configuration.tOUCHSCREEN_NOTOUCH) then do
            Control.Monad.void (TouchScreenFactory.setTouchScreenType touchScreenFactory (jget (touchScreenTypesFactory).nOTOUCH))
        else when (touchScreen == Configuration.tOUCHSCREEN_UNDEFINED) $ do
            Control.Monad.void (TouchScreenFactory.setTouchScreenType touchScreenFactory (jget (touchScreenTypesFactory).uNDEFINED))
        pure ()


