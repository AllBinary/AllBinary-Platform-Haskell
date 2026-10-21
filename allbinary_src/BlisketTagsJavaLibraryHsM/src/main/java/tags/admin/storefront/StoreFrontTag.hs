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
-- package tags.admin.storefront
module StoreFrontTag (module StoreFrontTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, doStartTag, doStartTag_super, doStartTag_impl)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data StoreFrontTag = StoreFrontTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    }

instance JavaNull StoreFrontTag where
    javaNull = javaNullRecord "StoreFrontTag"

instance JavaEquals StoreFrontTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontTag where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreFrontTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    let this = StoreFrontTag header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StoreFrontTag -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StoreFrontTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StoreFrontTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StoreFrontTag))

doStartTag_impl :: StoreFrontTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).iNSERT)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Add Validation StoreFront View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.admin.storefront.AddValidationStoreFrontView")
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    javaThrow ((JavaException "Exception" "View not implemented"))
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).eDIT)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Edit Validation StoreFront View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.admin.storefront.EditValidationStoreFrontView")
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).uPDATE)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Update Validation StoreFront View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.admin.storefront.UpdateValidationStoreFrontView")
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).dELETE)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Delete Validation StoreFront View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.admin.storefront.DeleteValidationStoreFrontView")
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).bACKUP)) - 1) == 0) then do
                    javaThrow ((JavaException "Exception" "View not implemented"))
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).rESTORE)) - 1) == 0) then do
                    javaThrow ((JavaException "Exception" "View not implemented"))
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).dROP)) - 1) == 0) then do
                    javaThrow ((JavaException "Exception" "View not implemented"))
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget (this).base.base.base.base.base.base.base.base.base.commonStrings)).cREATE)) - 1) == 0) then do
                    javaThrow ((JavaException "Exception" "View not implemented"))
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
                javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
            javaThrow ((JavaException "Exception" "Command Null"))


