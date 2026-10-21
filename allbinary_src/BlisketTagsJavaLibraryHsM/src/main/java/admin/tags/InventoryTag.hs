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
module InventoryTag (module InventoryTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setStoreName, setStoreName_super, setStoreName_impl, doStartTag, doStartTag_super, doStartTag_impl, storeName)
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
import qualified ParentInventoryTagHelper -- same package or java.lang
import qualified AbTagData -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified Tag -- javax.servlet.jsp.tagext.Tag
import qualified InventoryHelperFactory -- admin.taghelpers.InventoryHelperFactory
import qualified InventoryRequestHelperFactory -- admin.taghelpers.InventoryRequestHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified TableTag

data InventoryTag = InventoryTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    , storeName :: IORef (String)
    }

instance JavaNull InventoryTag where
    javaNull = javaNullRecord "InventoryTag"

instance JavaEquals InventoryTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryTag where
    (==) = jrecordEquals

instance JavaObjectClass InventoryTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventoryTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    storeName <- newIORef ""
    let this = InventoryTag header_ base storeName
    jregisterLevel header_ this
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: InventoryTag -> IO ()
initFields_ this = do
    jset this.storeName ("")
    pure ()

new_ :: IO InventoryTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TableTag.setTagHelperFactory this (jio (InventoryHelperFactory.new_)))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (jio (InventoryRequestHelperFactory.new_)))
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: InventoryTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: InventoryTag)) a1

setStoreName_impl :: InventoryTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: InventoryTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: InventoryTag))

doStartTag_impl :: InventoryTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (TableTag.isEnabled this)) $ do
                when ((jio (TableTag.getCommand this)) /= javaNull) $ do
                    when (((((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).bACKUP)) - 1) /= 0) && ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).rESTORE)) - 1) /= 0)) && ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget (this).base.base.base.base.commonStrings)).cREATE)) - 1) /= 0)) && ((Prelude.fromEnum (Prelude.compare (jio (TableTag.getCommand this)) (jget ((jget (this).base.base.base.base.commonStrings)).dROP)) - 1) /= 0)) $ do
                        parentTag <- (TableTag.getParent this)
                        Control.Monad.void (ParentInventoryTagHelper.isValid ((jio (ParentInventoryTagHelper.getInstance))) this parentTag)
                        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (AbTagData.pARENT) parentTag)
                        Control.Monad.void (HashMap.put ((jio (TableTag.getPropertiesHashMap this))) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
                    javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


