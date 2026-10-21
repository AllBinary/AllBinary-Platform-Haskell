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
-- package org.allbinary.logic.visual.transform.template.util
module TransformTemplateCustomizerUtil where

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
import qualified HashMap -- java.util.HashMap
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified CustomizerTransformInfoData -- org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData
import qualified BodyData -- org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData
import qualified TitleData -- org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformTemplateCustomizerUtil = TransformTemplateCustomizerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , cUSTOMIZER_NAME :: IORef (String)
    , bODY_VIEWNAMEKEY :: IORef (String)
    , tITLE_VIEWNAMEKEY :: IORef (String)
    , gLOBALS_NEW :: IORef (String)
    , gLOBALS_INSERT :: IORef (String)
    , gLOBALS_DELETE :: IORef (String)
    , gLOBALS_EDIT :: IORef (String)
    , gLOBALS_UPDATE :: IORef (String)
    }

instance JavaNull TransformTemplateCustomizerUtil where
    javaNull = javaNullRecord "TransformTemplateCustomizerUtil"

instance JavaEquals TransformTemplateCustomizerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformTemplateCustomizerUtil where
    (==) = jrecordEquals

instance JavaObjectClass TransformTemplateCustomizerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformTemplateCustomizerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    cUSTOMIZER_NAME <- newIORef ""
    bODY_VIEWNAMEKEY <- newIORef ""
    tITLE_VIEWNAMEKEY <- newIORef ""
    gLOBALS_NEW <- newIORef ""
    gLOBALS_INSERT <- newIORef ""
    gLOBALS_DELETE <- newIORef ""
    gLOBALS_EDIT <- newIORef ""
    gLOBALS_UPDATE <- newIORef ""
    let this = TransformTemplateCustomizerUtil header_ logUtil cUSTOMIZER_NAME bODY_VIEWNAMEKEY tITLE_VIEWNAMEKEY gLOBALS_NEW gLOBALS_INSERT gLOBALS_DELETE gLOBALS_EDIT gLOBALS_UPDATE
    jregisterLevel header_ this
    jregisterMethod header_ "getPageNameHack" (\() -> getPageNameHack_impl this)
    pure this

initFields_ :: TransformTemplateCustomizerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.cUSTOMIZER_NAME (javaNull)
    jset this.bODY_VIEWNAMEKEY (javaNull)
    jset this.tITLE_VIEWNAMEKEY (javaNull)
    jset this.gLOBALS_NEW (javaNull)
    jset this.gLOBALS_INSERT (javaNull)
    jset this.gLOBALS_DELETE (javaNull)
    jset this.gLOBALS_EDIT (javaNull)
    jset this.gLOBALS_UPDATE (javaNull)
    pure ()


getInstance :: IO (TransformTemplateCustomizerUtil)
getInstance = do
        pure (TransformTemplateCustomizerUtil.instance_)

new_ :: IO TransformTemplateCustomizerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformTemplateCustomizerUtil -> IO ()
init_ this = do
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        let sPACE = (jget ((jio (CommonSeps.getInstance))).sPACE)
        jset (this).cUSTOMIZER_NAME ((sPACE ++ javaToString CustomizerTransformInfoData.nAME))
        jset (this).bODY_VIEWNAMEKEY ((sPACE ++ javaToString (jget ((jio (BodyData.getInstance))).vIEWNAMEKEY)))
        jset (this).tITLE_VIEWNAMEKEY ((sPACE ++ javaToString (jget ((jio (TitleData.getInstance))).vIEWNAMEKEY)))
        jset (this).gLOBALS_NEW ((javaToString GLOBALS2.nEW ++ sPACE))
        jset (this).gLOBALS_INSERT ((javaToString (jget (commonStrings).iNSERT) ++ sPACE))
        jset (this).gLOBALS_DELETE ((javaToString (jget (commonStrings).dELETE) ++ sPACE))
        jset (this).gLOBALS_EDIT ((javaToString GLOBALS2.eDIT ++ sPACE))
        jset (this).gLOBALS_UPDATE ((javaToString (jget (commonStrings).uPDATE) ++ sPACE))
        pure ()


getPageNameHack :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
getPageNameHack object_ a1 a2 = jmethod object_ "getPageNameHack" (\() -> (getPageNameHack_impl (javaCast object_ :: TransformTemplateCustomizerUtil))) () a1 a2

getPageNameHack_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
getPageNameHack_super object_ a1 a2 = (getPageNameHack_impl (javaCast object_ :: TransformTemplateCustomizerUtil)) a1 a2

getPageNameHack_impl :: TransformTemplateCustomizerUtil -> String -> String -> IO (String)
getPageNameHack_impl this viewName storeName = do
        let sPACE = (jget ((jio (CommonSeps.getInstance))).sPACE)
        let oNE_EMPTY_STRING_ARRAY = (jget ((jio (StringUtil.getInstance))).oNE_EMPTY_STRING_ARRAY)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(viewName ++ sPACE)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(storeName ++ sPACE)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).cUSTOMIZER_NAME)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).bODY_VIEWNAMEKEY)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).tITLE_VIEWNAMEKEY)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).gLOBALS_NEW)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).gLOBALS_INSERT)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).gLOBALS_DELETE)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).gLOBALS_EDIT)]) oNE_EMPTY_STRING_ARRAY)
        Control.Monad.void (HashMap.put hashMap (jarrayFromList [(jget (this).gLOBALS_UPDATE)]) oNE_EMPTY_STRING_ARRAY)
        let replace = javaNull
        rootViewName <- (Replace.all replace viewName)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("RootViewName for ObjectConfig: " ++ rootViewName) this "getPageNameHack")
        pure (rootViewName)


