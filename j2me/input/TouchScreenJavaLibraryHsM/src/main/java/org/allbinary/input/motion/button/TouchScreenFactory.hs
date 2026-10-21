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
module TouchScreenFactory where

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
import qualified TouchScreenTypesFactory -- same package or java.lang
import qualified TouchScreenType -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TouchScreenFactory = TouchScreenFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , touch :: IORef (Bool)
    , multiTouch :: IORef (Bool)
    , multiTouchDistinct :: IORef (Bool)
    , touchScreenType :: IORef (TouchScreenType.TouchScreenType)
    }

instance JavaNull TouchScreenFactory where
    javaNull = javaNullRecord "TouchScreenFactory"

instance JavaEquals TouchScreenFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO TouchScreenFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    touch <- newIORef False
    multiTouch <- newIORef False
    multiTouchDistinct <- newIORef False
    touchScreenType <- newIORef javaNull
    let this = TouchScreenFactory header_ logUtil touch multiTouch multiTouchDistinct touchScreenType
    jregisterLevel header_ this
    jregisterMethod header_ "setMultiTouch" (\() -> setMultiTouch_impl this)
    jregisterMethod header_ "isMultiTouch" (\() -> isMultiTouch_impl this)
    jregisterMethod header_ "setTouch" (\() -> setTouch_impl this)
    jregisterMethod header_ "isTouch" (\() -> isTouch_impl this)
    jregisterMethod header_ "setMultiTouchDistinct" (\() -> setMultiTouchDistinct_impl this)
    jregisterMethod header_ "isMultiTouchDistinct" (\() -> isMultiTouchDistinct_impl this)
    jregisterMethod header_ "setTouchScreenType" (\() -> setTouchScreenType_impl this)
    jregisterMethod header_ "getTouchScreenType" (\() -> getTouchScreenType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TouchScreenFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.touch (False)
    jset this.multiTouch (False)
    jset this.multiTouchDistinct (False)
    jset this.touchScreenType ((jget ((jio (TouchScreenTypesFactory.getInstance))).nOTOUCH))
    pure ()

new_ :: IO TouchScreenFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchScreenFactory -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) (TouchScreenFactory.sINGLETON) (jget (commonStrings).gET_INSTANCE) e)
            ) $ do
            Control.Monad.void (TouchScreenFactory.setTouch this True)
            Control.Monad.void (TouchScreenFactory.setMultiTouch this False)
        pure ()


getInstance :: IO (TouchScreenFactory)
getInstance = do
        pure (TouchScreenFactory.sINGLETON)


setMultiTouch :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiTouch object_ a1 = jmethod object_ "setMultiTouch" (\() -> (setMultiTouch_impl (javaCast object_ :: TouchScreenFactory))) () a1

setMultiTouch_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiTouch_super object_ a1 = (setMultiTouch_impl (javaCast object_ :: TouchScreenFactory)) a1

setMultiTouch_impl :: TouchScreenFactory -> Bool -> IO (())
setMultiTouch_impl this multiTouch = do
        jset (this).multiTouch (multiTouch)
        pure ()


isMultiTouch :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouch object_ = jmethod object_ "isMultiTouch" (\() -> (isMultiTouch_impl (javaCast object_ :: TouchScreenFactory))) ()

isMultiTouch_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouch_super object_ = (isMultiTouch_impl (javaCast object_ :: TouchScreenFactory))

isMultiTouch_impl :: TouchScreenFactory -> IO (Bool)
isMultiTouch_impl this = do
        pure ((jget (this).multiTouch))


setTouch :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTouch object_ a1 = jmethod object_ "setTouch" (\() -> (setTouch_impl (javaCast object_ :: TouchScreenFactory))) () a1

setTouch_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTouch_super object_ a1 = (setTouch_impl (javaCast object_ :: TouchScreenFactory)) a1

setTouch_impl :: TouchScreenFactory -> Bool -> IO (())
setTouch_impl this touch = do
        jset (this).touch (touch)
        pure ()


isTouch :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTouch object_ = jmethod object_ "isTouch" (\() -> (isTouch_impl (javaCast object_ :: TouchScreenFactory))) ()

isTouch_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTouch_super object_ = (isTouch_impl (javaCast object_ :: TouchScreenFactory))

isTouch_impl :: TouchScreenFactory -> IO (Bool)
isTouch_impl this = do
        pure ((jget (this).touch))


setMultiTouchDistinct :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiTouchDistinct object_ a1 = jmethod object_ "setMultiTouchDistinct" (\() -> (setMultiTouchDistinct_impl (javaCast object_ :: TouchScreenFactory))) () a1

setMultiTouchDistinct_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMultiTouchDistinct_super object_ a1 = (setMultiTouchDistinct_impl (javaCast object_ :: TouchScreenFactory)) a1

setMultiTouchDistinct_impl :: TouchScreenFactory -> Bool -> IO (())
setMultiTouchDistinct_impl this multiTouchDistinct = do
        jset (this).multiTouchDistinct (multiTouchDistinct)
        pure ()


isMultiTouchDistinct :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouchDistinct object_ = jmethod object_ "isMultiTouchDistinct" (\() -> (isMultiTouchDistinct_impl (javaCast object_ :: TouchScreenFactory))) ()

isMultiTouchDistinct_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouchDistinct_super object_ = (isMultiTouchDistinct_impl (javaCast object_ :: TouchScreenFactory))

isMultiTouchDistinct_impl :: TouchScreenFactory -> IO (Bool)
isMultiTouchDistinct_impl this = do
        pure ((jget (this).multiTouchDistinct))


setTouchScreenType :: (JavaObjectClass this_) => this_ -> TouchScreenType.TouchScreenType -> IO (())
setTouchScreenType object_ a1 = jmethod object_ "setTouchScreenType" (\() -> (setTouchScreenType_impl (javaCast object_ :: TouchScreenFactory))) () a1

setTouchScreenType_super :: (JavaObjectClass this_) => this_ -> TouchScreenType.TouchScreenType -> IO (())
setTouchScreenType_super object_ a1 = (setTouchScreenType_impl (javaCast object_ :: TouchScreenFactory)) a1

setTouchScreenType_impl :: TouchScreenFactory -> TouchScreenType.TouchScreenType -> IO (())
setTouchScreenType_impl this touchScreenType = do
        jset (this).touchScreenType (touchScreenType)
        pure ()


getTouchScreenType :: (JavaObjectClass this_) => this_ -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType object_ = jmethod object_ "getTouchScreenType" (\() -> (getTouchScreenType_impl (javaCast object_ :: TouchScreenFactory))) ()

getTouchScreenType_super :: (JavaObjectClass this_) => this_ -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType_super object_ = (getTouchScreenType_impl (javaCast object_ :: TouchScreenFactory))

getTouchScreenType_impl :: TouchScreenFactory -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType_impl this = do
        pure ((jget (this).touchScreenType))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TouchScreenFactory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TouchScreenFactory))

toString_impl :: TouchScreenFactory -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "TouchScreen: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (TouchScreenFactory.isTouch this)))
        Control.Monad.void (StringMaker.append stringBuffer " MultiTouch: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (TouchScreenFactory.isMultiTouch this)))
        Control.Monad.void (StringMaker.append stringBuffer " Distinct MultiTouch: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (TouchScreenFactory.isMultiTouchDistinct this)))
        Control.Monad.void (StringMaker.append stringBuffer " TouchScreenType: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (TouchScreenFactory.getTouchScreenType this)))))
        (StringMaker.toString stringBuffer)


