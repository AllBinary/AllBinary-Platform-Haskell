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
-- package workflows.template.data
module Properties where

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
import qualified HashMap -- java.util.HashMap
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Properties = Properties
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull Properties where
    javaNull = javaNullRecord "Properties"

instance JavaEquals Properties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Properties where
    (==) = jrecordEquals

instance JavaObjectClass Properties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Properties
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    let this = Properties header_ logUtil commonStrings propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    jregisterMethod header_ "doEndTag" (\() -> doEndTag_impl this)
    pure this

initFields_ :: Properties -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO Properties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Properties -> IO ()
init_ this = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Start/Tag" this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).propertiesHashMap (assignedValue)
        pure ()


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: Properties))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: Properties))

getPropertiesHashMap_impl :: Properties -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        pure ((jget (this).propertiesHashMap))


doEndTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag object_ = jmethod object_ "doEndTag" (\() -> (doEndTag_impl (javaCast object_ :: Properties))) ()

doEndTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag_super object_ = (doEndTag_impl (javaCast object_ :: Properties))

doEndTag_impl :: Properties -> IO (Int)
doEndTag_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Ended" this "doEndTag")
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).propertiesHashMap (assignedValue)
        pure (TagSupport.eVAL_PAGE)


