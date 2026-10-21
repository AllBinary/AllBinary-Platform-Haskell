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
-- package org.allbinary.input.automation.module.generic.configuration.profile
module GenericProfileDataWorkerType where

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
import qualified SavedCaptureGenericProfileDataWorkerType -- same package or java.lang
import qualified GenericProfileDataWorkerData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified InputImageType -- org.allbinary.input.media.image.InputImageType
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified GenericProfileDataWorkerTypeInterface

-- implements GenericProfileDataWorkerTypeInterface
data GenericProfileDataWorkerType = GenericProfileDataWorkerType
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull GenericProfileDataWorkerType where
    javaNull = javaNullRecord "GenericProfileDataWorkerType"

instance JavaEquals GenericProfileDataWorkerType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileDataWorkerType where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileDataWorkerType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashMap #-}
hashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

{-# NOINLINE sAVED_CAPTURE #-}
sAVED_CAPTURE = unsafePerformIO (newIORef ((javaCast (jget SavedCaptureGenericProfileDataWorkerType.sAVED_CAPTURE) :: GenericProfileDataWorkerType)))

{-# NOINLINE sCREEN_CAPTURE #-}
sCREEN_CAPTURE = unsafePerformIO ((new_1 ("Screen " ++ (jio (InputImageType.getName ((jget InputImageType.cAPTURE)))))) >>= newIORef)

{-# NOINLINE cOMPARISON #-}
cOMPARISON = unsafePerformIO ((new_1 (jio (InputImageType.getName ((jget InputImageType.cOMPARISON))))) >>= newIORef)

{-# NOINLINE mOTION #-}
mOTION = unsafePerformIO ((new_1 (jio (InputImageType.getName ((jget InputImageType.mOTION))))) >>= newIORef)

newRecord_ :: IO GenericProfileDataWorkerType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = GenericProfileDataWorkerType header_ name
    jregisterLevel header_ this
    GenericProfileDataWorkerTypeInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GenericProfileDataWorkerType -> IO ()
initFields_ this = do
    jset this.name ("")
    pure ()

new_1 :: String -> IO GenericProfileDataWorkerType
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: GenericProfileDataWorkerType -> String -> IO ()
init_1 this name = do
        initFields_ this
        Control.Monad.void (GenericProfileDataWorkerType.setName this name)
        Control.Monad.void (put ((jget GenericProfileDataWorkerType.hashMap)) (jio (GenericProfileDataWorkerType.getName this)) this)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericProfileDataWorkerType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericProfileDataWorkerType))

getName_impl :: GenericProfileDataWorkerType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GenericProfileDataWorkerType))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GenericProfileDataWorkerType)) a1

setName_impl :: GenericProfileDataWorkerType -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfileDataWorkerType))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfileDataWorkerType)) a1

toXmlNode_impl :: GenericProfileDataWorkerType -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createTextNode document (jget GenericProfileDataWorkerData.nAME) (jget (this).name))
        pure (node)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GenericProfileDataWorkerType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GenericProfileDataWorkerType))

toString_impl :: GenericProfileDataWorkerType -> IO (String)
toString_impl this = do
        pure (("GenericProfileDataWorkerType: " ++ (jio (GenericProfileDataWorkerType.getName this))))


getInstance :: Node.Node -> IO (GenericProfileDataWorkerType)
getInstance node = do
        name <- (DomNodeHelper.getTextNodeValue node)
        pure ((javaCast (jio (get ((jget GenericProfileDataWorkerType.hashMap)) name)) :: GenericProfileDataWorkerType))


