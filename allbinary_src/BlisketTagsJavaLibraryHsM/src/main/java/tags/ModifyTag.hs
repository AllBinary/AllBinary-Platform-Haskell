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
module ModifyTag (module ModifyTag, module HelperTag) where

import HelperTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified Method -- java.lang.reflect.Method
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified TagHelperFactoryInterface -- admin.taghelpers.TagHelperFactoryInterface
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified HelperTag

data ModifyTag = ModifyTag
    { header_ :: JavaHeader
    , base :: HelperTag.HelperTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ModifyTag where
    javaNull = javaNullRecord "ModifyTag"

instance JavaEquals ModifyTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModifyTag where
    (==) = jrecordEquals

instance JavaObjectClass ModifyTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ModifyTag
newRecord_ = do
    base <- HelperTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = ModifyTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: ModifyTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TagHelperFactoryInterface.TagHelperFactoryInterface -> IO ModifyTag
new_1 tagHelperFactoryInterface = do
    this <- newRecord_
    init_1 this tagHelperFactoryInterface
    pure this

init_1 :: ModifyTag -> TagHelperFactoryInterface.TagHelperFactoryInterface -> IO ()
init_1 this tagHelperFactoryInterface = do
        HelperTag.init_1 this.base (tagHelperFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws LicensingException
insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: ModifyTag))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: ModifyTag))

insert_impl :: ModifyTag -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to insert"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this "insert()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jio (HelperTag.getHelper this)))
            method <- (Class.getMethod helperClass "insert" javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (HelperTag.getHelper this)) javaNull)) :: String)
            pure (result)


-- throws LicensingException
delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: ModifyTag))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: ModifyTag))

delete_impl :: ModifyTag -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to delete"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jio (HelperTag.getHelper this)))
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.base.commonStrings)).delete) javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (HelperTag.getHelper this)) javaNull)) :: String)
            pure (result)


-- throws LicensingException
update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ModifyTag))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: ModifyTag))

update_impl :: ModifyTag -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            helperClass <- (jobjectGetClass (jio (HelperTag.getHelper this)))
            method <- (Class.getMethod helperClass "update" javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (HelperTag.getHelper this)) javaNull)) :: String)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: ModifyTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: ModifyTag))

doStartTag_impl :: ModifyTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                let request = (javaCast (jio (getRequest ((jget (this).base.pageContext)))) :: HttpServletRequest.HttpServletRequest)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Command: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (HelperTag.getCommand this)))
                Control.Monad.void (StringMaker.append stringBuffer " Request URI: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (HttpServletRequest.getRequestURI request)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget this.base.base.base.tagStrings)).dO_START_TAG))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                pure ()
            when ((jio (HelperTag.getCommand this)) /= javaNull) $ do
                Control.Monad.void (HelperTag.setHelper this)
                commonStrings <- (CommonStrings.getInstance)
                if ((Prelude.fromEnum (Prelude.compare (jio (HelperTag.getCommand this)) (jget (commonStrings).iNSERT)) - 1) == 0) then do
                    output <- (ModifyTag.insert this)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                        Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                else if ((Prelude.fromEnum (Prelude.compare (jio (HelperTag.getCommand this)) (jget (commonStrings).dELETE)) - 1) == 0) then do
                    output <- (ModifyTag.delete this)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                        Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
                else when ((Prelude.fromEnum (Prelude.compare (jio (HelperTag.getCommand this)) (jget (commonStrings).uPDATE)) - 1) == 0) $ do
                    output <- (ModifyTag.update this)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAGEXTRAOUTPUT))) $ do
                        Control.Monad.void (print ((jio (getOut ((jget (this).base.pageContext))))) (output ++ "<br />"))
            pure ((jget (this).base.eVAL_BODY_INCLUDE))


