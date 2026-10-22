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
module CategoryTag (module CategoryTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setXsl, setXsl_super, setXsl_impl, viewCategory, viewCategory_super, viewCategory_impl, viewCategories, viewCategories_super, viewCategories_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, xsl)
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
import qualified CategoryHelperFactory -- admin.taghelpers.CategoryHelperFactory
import qualified CategoryRequestHelperFactory -- admin.taghelpers.CategoryRequestHelperFactory
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TableTag

data CategoryTag = CategoryTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , xsl :: IORef (String)
    }

instance JavaNull CategoryTag where
    javaNull = javaNullRecord "CategoryTag"

instance JavaEquals CategoryTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryTag where
    (==) = jrecordEquals

instance JavaObjectClass CategoryTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CategoryTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    xsl <- newIORef ""
    let this = CategoryTag header_ base logUtil xsl
    jregisterLevel header_ this
    jregisterMethod header_ "setXsl" (\() -> setXsl_impl this)
    jregisterMethod header_ "viewCategory" (\() -> viewCategory_impl this)
    jregisterMethod header_ "viewCategories" (\() -> viewCategories_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: CategoryTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.xsl ("")
    pure ()

new_ :: IO CategoryTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CategoryTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (CategoryHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (CategoryRequestHelperFactory.new_))))
        pure ()


setXsl :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl object_ a1 = jmethod object_ "setXsl" (\() -> (setXsl_impl (javaCast object_ :: CategoryTag))) () a1

setXsl_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setXsl_super object_ a1 = (setXsl_impl (javaCast object_ :: CategoryTag)) a1

setXsl_impl :: CategoryTag -> String -> IO (())
setXsl_impl this value = do
        jset (this).xsl (value)
        pure ()


-- throws LicensingException
viewCategory :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategory object_ = jmethod object_ "viewCategory" (\() -> (viewCategory_impl (javaCast object_ :: CategoryTag))) ()

viewCategory_super :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategory_super object_ = (viewCategory_impl (javaCast object_ :: CategoryTag))

viewCategory_impl :: CategoryTag -> IO (String)
viewCategory_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (CategoryRequestHelperFactory.getInstance ((jio (CategoryRequestHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "viewCategory" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws LicensingException
viewCategories :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategories object_ = jmethod object_ "viewCategories" (\() -> (viewCategories_impl (javaCast object_ :: CategoryTag))) ()

viewCategories_super :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategories_super object_ = (viewCategories_impl (javaCast object_ :: CategoryTag))

viewCategories_impl :: CategoryTag -> IO (String)
viewCategories_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (CategoryRequestHelperFactory.getInstance ((jio (CategoryRequestHelperFactory.new_))) (jio (TableTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "viewCategories" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: CategoryTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: CategoryTag))

doStartTag_impl :: CategoryTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).tEMPLATEFILENAME) (jget (this).xsl))
                    if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jio (CategoryData.getInstance))).vIEW)) - 1) == 0) then do
                        output <- (CategoryTag.viewCategory this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) output)
                    else if ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jio (CategoryData.getInstance))).vIEW)) - 1) == 0) then do
                        output <- (CategoryTag.viewCategories this)
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) output)
                    else do
                        javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


