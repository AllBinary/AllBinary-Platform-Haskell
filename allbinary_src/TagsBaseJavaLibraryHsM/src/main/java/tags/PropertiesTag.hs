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
-- package tags
module PropertiesTag (module PropertiesTag, module CommandTag) where

import CommandTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPropertiesHashMap, getPropertiesHashMap_super, getPropertiesHashMap_impl, doEndTag, doEndTag_super, doEndTag_impl, logUtil, propertiesHashMap)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommandTag

data PropertiesTag = PropertiesTag
    { header_ :: JavaHeader
    , base :: CommandTag.CommandTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull PropertiesTag where
    javaNull = javaNullRecord "PropertiesTag"

instance JavaEquals PropertiesTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PropertiesTag where
    (==) = jrecordEquals

instance JavaObjectClass PropertiesTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PropertiesTag
newRecord_ = do
    base <- CommandTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    let this = PropertiesTag header_ base logUtil propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    jregisterMethod header_ "doEndTag" (\() -> doEndTag_impl this)
    pure this

initFields_ :: PropertiesTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO PropertiesTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PropertiesTag -> IO ()
init_ this = do
        CommandTag.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).propertiesHashMap (assignedValue)
        pure ()


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: PropertiesTag))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: PropertiesTag))

getPropertiesHashMap_impl :: PropertiesTag -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        pure ((jget (this).propertiesHashMap))


doEndTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag object_ = jmethod object_ "doEndTag" (\() -> (doEndTag_impl (javaCast object_ :: PropertiesTag))) ()

doEndTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag_super object_ = (doEndTag_impl (javaCast object_ :: PropertiesTag))

doEndTag_impl :: PropertiesTag -> IO (Int)
doEndTag_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Ended" this "doEndTag")
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).propertiesHashMap (assignedValue)
        pure (eVAL_PAGE)


