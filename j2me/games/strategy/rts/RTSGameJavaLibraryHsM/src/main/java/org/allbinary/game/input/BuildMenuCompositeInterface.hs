{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.input
module BuildMenuCompositeInterface where

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
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm

-- Java interface: the classes that implement it have these functions
data BuildMenuCompositeInterface = BuildMenuCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull BuildMenuCompositeInterface where
    javaNull = javaNullRecord "BuildMenuCompositeInterface"

instance JavaEquals BuildMenuCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildMenuCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass BuildMenuCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BuildMenuCompositeInterface
fromHeader_ header = BuildMenuCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BuildMenuCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getCurrentScrollSelectionForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm object_ = jmethod object_ "getCurrentScrollSelectionForm" (\() -> (getCurrentScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface))) ()

getCurrentScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm_super object_ = (getCurrentScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface))

getCurrentScrollSelectionForm_impl :: BuildMenuCompositeInterface -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm_impl this = javaAbstractMethod "getCurrentScrollSelectionForm"


setCurrentScrollSelectionForm :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm object_ a1 = jmethod object_ "setCurrentScrollSelectionForm" (\() -> (setCurrentScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface))) () a1

setCurrentScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm_super object_ a1 = (setCurrentScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface)) a1

setCurrentScrollSelectionForm_impl :: BuildMenuCompositeInterface -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm_impl this currentScrollSelectionForm = javaAbstractMethod "setCurrentScrollSelectionForm"


getBuildingScrollSelectionForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm object_ = jmethod object_ "getBuildingScrollSelectionForm" (\() -> (getBuildingScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface))) ()

getBuildingScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm_super object_ = (getBuildingScrollSelectionForm_impl (javaCast object_ :: BuildMenuCompositeInterface))

getBuildingScrollSelectionForm_impl :: BuildMenuCompositeInterface -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm_impl this = javaAbstractMethod "getBuildingScrollSelectionForm"


