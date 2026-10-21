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
-- package tags.generic.advertisement
module AdvertisementTag (module AdvertisementTag, module StoreValidationTransformTag) where

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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data AdvertisementTag = AdvertisementTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    }

instance JavaNull AdvertisementTag where
    javaNull = javaNullRecord "AdvertisementTag"

instance JavaEquals AdvertisementTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementTag where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdvertisementTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    let this = AdvertisementTag header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: AdvertisementTag -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AdvertisementTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: AdvertisementTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: AdvertisementTag))

doStartTag_impl :: AdvertisementTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            Control.Monad.void (StoreValidationTransformTag.setName this "Basic Ad View")
            Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.advertisement.ValidationView")
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    pure ()
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
                javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
            javaThrow ((JavaException "Exception" "Command Null"))


