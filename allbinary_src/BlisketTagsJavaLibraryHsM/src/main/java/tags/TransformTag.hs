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
module TransformTag (module TransformTag, module TransformInfoTag) where

import TransformInfoTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified Class -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified ViewHelperFactory -- taghelpers.ViewHelperFactory
import qualified TransformInfoTag -- tags.transform.info.TransformInfoTag

data TransformTag = TransformTag
    { header_ :: JavaHeader
    , base :: TransformInfoTag.TransformInfoTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformTag where
    javaNull = javaNullRecord "TransformTag"

instance JavaEquals TransformTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformTag where
    (==) = jrecordEquals

instance JavaObjectClass TransformTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformTag
newRecord_ = do
    base <- TransformInfoTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TransformTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: TransformTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO TransformTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformTag -> IO ()
init_ this = do
        TransformInfoTag.init_1 this.base (jio (ViewHelperFactory.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: TagHelperFactoryInterface.TagHelperFactoryInterface -> IO TransformTag
new_1 tagHelperFactoryInterface = do
    this <- newRecord_
    init_1 this tagHelperFactoryInterface
    pure this

init_1 :: TransformTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO ()
init_1 this tagHelperFactoryInterface = do
        TransformInfoTag.init_1 this.base (tagHelperFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: TransformTag))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: TransformTag))

view_impl :: TransformTag -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            let result = (javaCast (jio (Class.invoke ((jio (Class.getMethod ((jio (jobjectGetClass (jio (TransformInfoTag.getHelper this))))) "view" javaNull))) (jio (TransformInfoTag.getHelper this)) javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: TransformTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: TransformTag))

doStartTag_impl :: TransformTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating with: \n" ++ (jio (HashMap.toString ((jio (TransformInfoTag.getPropertiesHashMap this)))))) this (jget ((jget this.base.base.base.base.base.tagStrings)).dO_START_TAG))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "ViewTag Start For: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoTag.getName this)))
                Control.Monad.void (StringMaker.append stringBuffer "\nViewFile: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoTag.getObjectFile this)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.base.base.base.base.tagStrings)).dO_START_TAG))
            Control.Monad.void (TransformInfoTag.setHelper this)
            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) (jio (TransformTag.view this)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tag End" this (jget ((jget this.base.base.base.base.base.tagStrings)).dO_START_TAG))
            pure (sKIP_BODY)


