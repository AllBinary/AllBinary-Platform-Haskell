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
module HelperTag (module HelperTag, module PropertiesTag) where

import PropertiesTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setHelper, setHelper_super, setHelper_impl, getHelper, getHelper_super, getHelper_impl, doEndTag, doEndTag_super, doEndTag_impl, logUtil, tagHelperFactoryInterface, anyType)
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
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PropertiesTag

data HelperTag = HelperTag
    { header_ :: JavaHeader
    , base :: PropertiesTag.PropertiesTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , tagHelperFactoryInterface :: IORef (TagHelperFactoryInterface.TagHelperFactoryInterface)
    , anyType :: IORef (Any.Any)
    }

instance JavaNull HelperTag where
    javaNull = javaNullRecord "HelperTag"

instance JavaEquals HelperTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HelperTag where
    (==) = jrecordEquals

instance JavaObjectClass HelperTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HelperTag
newRecord_ = do
    base <- PropertiesTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tagHelperFactoryInterface <- newIORef javaNull
    anyType <- newIORef javaNull
    let this = HelperTag header_ base logUtil tagHelperFactoryInterface anyType
    jregisterLevel header_ this
    jregisterMethod header_ "setHelper" (\() -> setHelper_impl this)
    jregisterMethod header_ "getHelper" (\() -> getHelper_impl this)
    jregisterMethod header_ "doEndTag" (\() -> doEndTag_impl this)
    pure this

initFields_ :: HelperTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tagHelperFactoryInterface (javaNull)
    jset this.anyType (javaNull)
    pure ()

new_1 :: TagHelperFactoryInterface.TagHelperFactoryInterface -> IO HelperTag
new_1 tagHelperFactoryInterface = do
    this <- newRecord_
    init_1 this tagHelperFactoryInterface
    pure this

init_1 :: HelperTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO ()
init_1 this tagHelperFactoryInterface = do
        PropertiesTag.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).cONSTRUCTOR))
        jset (this).tagHelperFactoryInterface (tagHelperFactoryInterface)
        pure ()


-- throws Exception
setHelper :: (JavaObjectClass this_) => this_ -> IO (())
setHelper object_ = jmethod object_ "setHelper" (\() -> (setHelper_impl (javaCast object_ :: HelperTag))) ()

setHelper_super :: (JavaObjectClass this_) => this_ -> IO (())
setHelper_super object_ = (setHelper_impl (javaCast object_ :: HelperTag))

setHelper_impl :: HelperTag -> IO (())
setHelper_impl this = do
        when ((jget (this).anyType) == javaNull) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating TagHelper with: \n" ++ (jio (HashMap.toString ((jio (PropertiesTag.getPropertiesHashMap this)))))) this "doStartTag")
            assignedValue <- (TagHelperFactoryInterface.getInstance ((jget (this).tagHelperFactoryInterface)) (jio (PropertiesTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            jset (this).anyType (assignedValue)
        pure ()


getHelper :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getHelper object_ = jmethod object_ "getHelper" (\() -> (getHelper_impl (javaCast object_ :: HelperTag))) ()

getHelper_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getHelper_super object_ = (getHelper_impl (javaCast object_ :: HelperTag))

getHelper_impl :: HelperTag -> IO (Any.Any)
getHelper_impl this = do
        pure ((jtoObject (jget (this).anyType)))


doEndTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag object_ = jmethod object_ "doEndTag" (\() -> (doEndTag_impl (javaCast object_ :: HelperTag))) ()

doEndTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doEndTag_super object_ = (doEndTag_impl (javaCast object_ :: HelperTag))

doEndTag_impl :: HelperTag -> IO (Int)
doEndTag_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag Ended" this "doEndTag")
        jset (this).anyType (javaNull)
        (PropertiesTag.doEndTag_super this.base)


