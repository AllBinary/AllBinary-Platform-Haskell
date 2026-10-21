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
-- package org.allbinary.logic.visual.transform
module TransformInterface (module TransformInterface, module DomDocumentMappingInterface, module CompositeTransformInfoInterface) where

import DomDocumentMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, setTransformDocumentInterface, setTransformDocumentInterface_super, setTransformDocumentInterface_impl, getTransformDocumentInterface, getTransformDocumentInterface_super, getTransformDocumentInterface_impl, view, view_super, view_impl, toString)
import CompositeTransformInfoInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, setTransformDocumentInterface, setTransformDocumentInterface_super, setTransformDocumentInterface_impl, getTransformDocumentInterface, getTransformDocumentInterface_super, getTransformDocumentInterface_impl, view, view_super, view_impl, toString)
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
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified CompositeTransformInfoInterface -- org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface

-- Java interface: the classes that implement it have these functions
data TransformInterface = TransformInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInterface where
    javaNull = javaNullRecord "TransformInterface"

instance JavaEquals TransformInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInterface
fromHeader_ header = TransformInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInterface header)
    DomDocumentMappingInterface.registerInterface_ header
    CompositeTransformInfoInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: TransformInterface))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: TransformInterface))

getTypeId_impl :: TransformInterface -> IO (Int)
getTypeId_impl this = javaAbstractMethod "getTypeId"


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: TransformInterface))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: TransformInterface)) a1

setTransformDocumentInterface_impl :: TransformInterface -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this viewDocumentInterface = javaAbstractMethod "setTransformDocumentInterface"


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: TransformInterface))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: TransformInterface))

getTransformDocumentInterface_impl :: TransformInterface -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = javaAbstractMethod "getTransformDocumentInterface"


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: TransformInterface))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: TransformInterface))

view_impl :: TransformInterface -> IO (String)
view_impl this = javaAbstractMethod "view"


