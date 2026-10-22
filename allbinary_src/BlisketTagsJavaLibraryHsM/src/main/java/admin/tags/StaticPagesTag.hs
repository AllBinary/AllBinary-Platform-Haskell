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
-- package admin.tags
module StaticPagesTag (module StaticPagesTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setXsl, setXsl_super, setXsl_impl, generateStaticPages, generateStaticPages_super, generateStaticPages_impl, makePublic, makePublic_super, makePublic_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, xslFile)
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
import qualified Class -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified StaticPagesHelperFactory -- admin.taghelpers.StaticPagesHelperFactory
import qualified StaticPagesRequestHelperFactory -- admin.taghelpers.StaticPagesRequestHelperFactory
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchData -- org.allbinary.logic.control.search.SearchData
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TableTag

data StaticPagesTag = StaticPagesTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , xslFile :: IORef (String)
    }

instance JavaNull StaticPagesTag where
    javaNull = javaNullRecord "StaticPagesTag"

instance JavaEquals StaticPagesTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPagesTag where
    (==) = jrecordEquals

instance JavaObjectClass StaticPagesTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StaticPagesTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    xslFile <- newIORef ""
    let this = StaticPagesTag header_ base logUtil xslFile
    jregisterLevel header_ this
    jregisterMethod header_ "setXsl" (\() -> setXsl_impl this)
    jregisterMethod header_ "generateStaticPages" (\() -> generateStaticPages_impl this)
    jregisterMethod header_ "makePublic" (\() -> makePublic_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StaticPagesTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.xslFile ("")
    pure ()

new_ :: IO StaticPagesTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticPagesTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (StaticPagesHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (StaticPagesRequestHelperFactory.new_))))
        pure ()


setXsl :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl object_ a1 = jmethod object_ "setXsl" (\() -> (setXsl_impl (javaCast object_ :: StaticPagesTag))) () a1

setXsl_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl_super object_ a1 = (setXsl_impl (javaCast object_ :: StaticPagesTag)) a1

setXsl_impl :: StaticPagesTag -> String -> IO (())
setXsl_impl this value = do
        jset (this).xslFile (value)
        pure ()


-- throws LicensingException
generateStaticPages :: (JavaObjectClass this_) => this_ -> IO (String)
generateStaticPages object_ = jmethod object_ "generateStaticPages" (\() -> (generateStaticPages_impl (javaCast object_ :: StaticPagesTag))) ()

generateStaticPages_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateStaticPages_super object_ = (generateStaticPages_impl (javaCast object_ :: StaticPagesTag))

generateStaticPages_impl :: StaticPagesTag -> IO (String)
generateStaticPages_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (StaticPagesRequestHelperFactory.getInstance ((jio (StaticPagesRequestHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "generateStaticPages" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
makePublic :: (JavaObjectClass this_) => this_ -> IO (String)
makePublic object_ = jmethod object_ "makePublic" (\() -> (makePublic_impl (javaCast object_ :: StaticPagesTag))) ()

makePublic_super :: (JavaObjectClass this_) => this_ -> IO (String)
makePublic_super object_ = (makePublic_impl (javaCast object_ :: StaticPagesTag))

makePublic_impl :: StaticPagesTag -> IO (String)
makePublic_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (StaticPagesRequestHelperFactory.getInstance ((jio (StaticPagesRequestHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "makePublic" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StaticPagesTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StaticPagesTag))

doStartTag_impl :: StaticPagesTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (SearchData.gENERATESTATICPAGES)) - 1) == 0) then do
                        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).tEMPLATEFILENAME) (jget (this).xslFile))
                        output <- (StaticPagesTag.generateStaticPages this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) output)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (SearchData.mAKEPUBLIC)) - 1) == 0) then do
                        output <- (StaticPagesTag.makePublic this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) output)
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


