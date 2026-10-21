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
-- package org.allbinary.business.init
module InitInfo where

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
import qualified InitInfoEntity -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified BooleanUtil -- org.allbinary.logic.java.bool.BooleanUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data InitInfo = InitInfo
    { header_ :: JavaHeader
    , tESTING :: IORef (String)
    , mAINPATH :: IORef (String)
    , tESTHTMLPATH :: IORef (String)
    , testing :: IORef (String)
    , mainPath :: IORef (AbPath.AbPath)
    , testHtmlPath :: IORef (AbPath.AbPath)
    , hasRead :: IORef (Bool)
    }

instance JavaNull InitInfo where
    javaNull = javaNullRecord "InitInfo"

instance JavaEquals InitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitInfo where
    (==) = jrecordEquals

instance JavaObjectClass InitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitInfo
newRecord_ = do
    header_ <- newJavaHeader
    tESTING <- newIORef ""
    mAINPATH <- newIORef ""
    tESTHTMLPATH <- newIORef ""
    testing <- newIORef ""
    mainPath <- newIORef javaNull
    testHtmlPath <- newIORef javaNull
    hasRead <- newIORef False
    let this = InitInfo header_ tESTING mAINPATH tESTHTMLPATH testing mainPath testHtmlPath hasRead
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "setHasRead" (\() -> setHasRead_impl this)
    jregisterMethod header_ "updateIfNeeded" (\() -> updateIfNeeded_impl this)
    jregisterMethod header_ "isTesting" (\() -> isTesting_impl this)
    jregisterMethod header_ "getTesting" (\() -> getTesting_impl this)
    jregisterMethod header_ "getTestHtmlPath" (\() -> getTestHtmlPath_impl this)
    jregisterMethod header_ "getMainPath" (\() -> getMainPath_impl this)
    jregisterMethod header_ "setTesting" (\() -> setTesting_impl this)
    jregisterMethod header_ "setTestHtmlPath" (\() -> setTestHtmlPath_impl this)
    jregisterMethod header_ "setMainPath" (\() -> setMainPath_impl this)
    jregisterMethod header_ "isMainPathValid" (\() -> isMainPathValid_impl this)
    jregisterMethod header_ "isTestHtmlPathValid" (\() -> isTestHtmlPathValid_impl this)
    jregisterMethod header_ "isTestingValid" (\() -> isTestingValid_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: InitInfo -> IO ()
initFields_ this = do
    jset this.tESTING ("TESTING")
    jset this.mAINPATH ("MAINPATH")
    jset this.tESTHTMLPATH ("TESTHTMLPATH")
    jset this.testing (javaNull)
    jset this.mainPath (javaNull)
    jset this.testHtmlPath (javaNull)
    jset this.hasRead (False)
    pure ()


getInstance :: IO (InitInfo)
getInstance = do
        pure (InitInfo.instance_)

new_ :: IO InitInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws InitException
set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: InitInfo))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: InitInfo))

set_impl :: InitInfo -> IO (())
set_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE "error" "InitInfo" "set()" e)
            ) $ do
            initInfoEntity <- (InitInfoEntity.new_)
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                Control.Monad.void (PreLogUtil.put "created entity" "InitInfo" "set()")
            if (Prelude.not (jio (InitInfoEntity.is initInfoEntity))) then do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                    Control.Monad.void (PreLogUtil.put "adding" "InitInfo" "set()")
                Control.Monad.void (InitInfoEntity.add initInfoEntity)
            else do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                    Control.Monad.void (PreLogUtil.put "update" "InitInfo" "set()")
                Control.Monad.void (InitInfoEntity.update initInfoEntity)
            jset (this).hasRead (False)
        pure ()


-- Java overload of set with a different parameter count: give it a different name
set :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: InitInfo))) () a1

set_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: InitInfo)) a1

set_impl :: InitInfo -> HashMap.HashMap -> IO (())
set_impl this hashMap = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE "error" "InitInfo" "set()" e)
            ) $ do
            jset (this).testing ((javaCast (jio (HashMap.get hashMap (jget (this).tESTING))) :: String))
            assignedValue <- (AbPath.new_2 (javaCast (jio (HashMap.get hashMap (jget (this).mAINPATH))) :: String) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            jset (this).mainPath (assignedValue)
            assignedValue <- (AbPath.new_2 (javaCast (jio (HashMap.get hashMap (jget (this).tESTHTMLPATH))) :: String) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            jset (this).testHtmlPath (assignedValue)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (())
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InitInfo))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (())
get_super object_ = (get_impl (javaCast object_ :: InitInfo))

get_impl :: InitInfo -> IO (())
get_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE "error" "InitInfo" "set()" e)
            pure (())
            ) $ do
            jset (this).testing (javaNull)
            jset (this).mainPath (javaNull)
            jset (this).testHtmlPath (javaNull)
            initInfoEntity <- (InitInfoEntity.new_)
            Control.Monad.void (InitInfoEntity.get initInfoEntity)
        pure ()


setHasRead :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead object_ a1 = jmethod object_ "setHasRead" (\() -> (setHasRead_impl (javaCast object_ :: InitInfo))) () a1

setHasRead_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead_super object_ a1 = (setHasRead_impl (javaCast object_ :: InitInfo)) a1

setHasRead_impl :: InitInfo -> Bool -> IO (())
setHasRead_impl this value = do
        jset (this).hasRead (value)
        pure ()


updateIfNeeded :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded object_ = jmethod object_ "updateIfNeeded" (\() -> (updateIfNeeded_impl (javaCast object_ :: InitInfo))) ()

updateIfNeeded_super :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded_super object_ = (updateIfNeeded_impl (javaCast object_ :: InitInfo))

updateIfNeeded_impl :: InitInfo -> IO (())
updateIfNeeded_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE "error" "InitInfo" "updateIfNeeded()" e)
            pure (())
            ) $ do
            when (Prelude.not (jget (this).hasRead)) $ do
                jset (this).hasRead (True)
                Control.Monad.void (InitInfo.get this)
        pure ()


isTesting :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTesting object_ = jmethod object_ "isTesting" (\() -> (isTesting_impl (javaCast object_ :: InitInfo))) ()

isTesting_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTesting_super object_ = (isTesting_impl (javaCast object_ :: InitInfo))

isTesting_impl :: InitInfo -> IO (Bool)
isTesting_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE "error" "InitInfo" "updateIfNeeded()" e)
            pure (False)
            ) $ do
            Control.Monad.void (InitInfo.updateIfNeeded this)
            (BooleanUtil.getFromString ((jio (BooleanUtil.getInstance))) (jget (this).testing))


getTesting :: (JavaObjectClass this_) => this_ -> IO (String)
getTesting object_ = jmethod object_ "getTesting" (\() -> (getTesting_impl (javaCast object_ :: InitInfo))) ()

getTesting_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTesting_super object_ = (getTesting_impl (javaCast object_ :: InitInfo))

getTesting_impl :: InitInfo -> IO (String)
getTesting_impl this = do
        Control.Monad.void (InitInfo.updateIfNeeded this)
        pure ((jget (this).testing))


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: InitInfo))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: InitInfo))

getTestHtmlPath_impl :: InitInfo -> IO (String)
getTestHtmlPath_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (InitInfo.updateIfNeeded this)
        if ((jget (this).testHtmlPath) /= javaNull) then do
            javaReturn =<< (AbPath.toString ((jget (this).testHtmlPath)))
        else do
            javaReturn (javaNull)


getMainPath :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath object_ = jmethod object_ "getMainPath" (\() -> (getMainPath_impl (javaCast object_ :: InitInfo))) ()

getMainPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMainPath_super object_ = (getMainPath_impl (javaCast object_ :: InitInfo))

getMainPath_impl :: InitInfo -> IO (String)
getMainPath_impl this = do
    javaCatchReturn $ do
        Control.Monad.void (InitInfo.updateIfNeeded this)
        if ((jget (this).mainPath) /= javaNull) then do
            javaReturn =<< (AbPath.toString ((jget (this).mainPath)))
        else do
            javaReturn (javaNull)


setTesting :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTesting object_ a1 = jmethod object_ "setTesting" (\() -> (setTesting_impl (javaCast object_ :: InitInfo))) () a1

setTesting_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTesting_super object_ a1 = (setTesting_impl (javaCast object_ :: InitInfo)) a1

setTesting_impl :: InitInfo -> String -> IO (())
setTesting_impl this value = do
        jset (this).testing (value)
        pure ()


setTestHtmlPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setTestHtmlPath object_ a1 = jmethod object_ "setTestHtmlPath" (\() -> (setTestHtmlPath_impl (javaCast object_ :: InitInfo))) () a1

setTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setTestHtmlPath_super object_ a1 = (setTestHtmlPath_impl (javaCast object_ :: InitInfo)) a1

setTestHtmlPath_impl :: InitInfo -> AbPath.AbPath -> IO (())
setTestHtmlPath_impl this value = do
        jset (this).testHtmlPath (value)
        pure ()


setMainPath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setMainPath object_ a1 = jmethod object_ "setMainPath" (\() -> (setMainPath_impl (javaCast object_ :: InitInfo))) () a1

setMainPath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setMainPath_super object_ a1 = (setMainPath_impl (javaCast object_ :: InitInfo)) a1

setMainPath_impl :: InitInfo -> AbPath.AbPath -> IO (())
setMainPath_impl this value = do
        jset (this).mainPath (value)
        pure ()


isMainPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid object_ a1 = jmethod object_ "isMainPathValid" (\() -> (isMainPathValid_impl (javaCast object_ :: InitInfo))) () a1

isMainPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid_super object_ a1 = (isMainPathValid_impl (javaCast object_ :: InitInfo)) a1

isMainPathValid_impl :: InitInfo -> AbPath.AbPath -> IO (Bool)
isMainPathValid_impl this abPath = do
        pure (True)


isTestHtmlPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid object_ a1 = jmethod object_ "isTestHtmlPathValid" (\() -> (isTestHtmlPathValid_impl (javaCast object_ :: InitInfo))) () a1

isTestHtmlPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_super object_ a1 = (isTestHtmlPathValid_impl (javaCast object_ :: InitInfo)) a1

isTestHtmlPathValid_impl :: InitInfo -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_impl this abPath = do
        pure (True)


-- throws Exception
isTestingValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isTestingValid object_ a1 = jmethod object_ "isTestingValid" (\() -> (isTestingValid_impl (javaCast object_ :: InitInfo))) () a1

isTestingValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isTestingValid_super object_ a1 = (isTestingValid_impl (javaCast object_ :: InitInfo)) a1

isTestingValid_impl :: InitInfo -> String -> IO (Bool)
isTestingValid_impl this testing = do
        (BooleanUtil.isStringBoolean ((jio (BooleanUtil.getInstance))) testing)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: InitInfo))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: InitInfo))

toHashMap_impl :: InitInfo -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget (this).tESTING) (jio (InitInfo.getTesting this)))
        Control.Monad.void (HashMap.put hashMap (jget (this).mAINPATH) (jio (InitInfo.getMainPath this)))
        Control.Monad.void (HashMap.put hashMap (jget (this).tESTHTMLPATH) (jio (InitInfo.getTestHtmlPath this)))
        pure (hashMap)


