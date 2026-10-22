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
module DownloadItemsTag (module DownloadItemsTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, doStartTag, doStartTag_super, doStartTag_impl)
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
import qualified DownloadItemsHelperFactory -- admin.taghelpers.DownloadItemsHelperFactory
import qualified DownloadItemsRequestHelperFactory -- admin.taghelpers.DownloadItemsRequestHelperFactory
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified TableTag

data DownloadItemsTag = DownloadItemsTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    }

instance JavaNull DownloadItemsTag where
    javaNull = javaNullRecord "DownloadItemsTag"

instance JavaEquals DownloadItemsTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadItemsTag where
    (==) = jrecordEquals

instance JavaObjectClass DownloadItemsTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DownloadItemsTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    let this = DownloadItemsTag header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: DownloadItemsTag -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DownloadItemsTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DownloadItemsTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (DownloadItemsHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (DownloadItemsRequestHelperFactory.new_))))
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: DownloadItemsTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: DownloadItemsTag))

doStartTag_impl :: DownloadItemsTag -> IO (Int)
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
                    javaReturn =<< (TableTag.doStartTag_super this.base)
            pure (sKIP_BODY)


