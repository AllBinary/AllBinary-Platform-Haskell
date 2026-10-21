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
-- package org.allbinary.graphics.j2me.workarea.tools
module MouseStrings where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data MouseStrings = MouseStrings
    { header_ :: JavaHeader
    , mOUSE_PRESSED :: IORef (String)
    , mOUSE_RELEASED :: IORef (String)
    , mOUSE_CLICKED :: IORef (String)
    , mOUSE_DRAGGED :: IORef (String)
    , mOUSE_MOVED :: IORef (String)
    , mOUSE_PRESSED_LABEL :: IORef (String)
    , mOUSE_RELEASED_LABEL :: IORef (String)
    , mOUSE_CLICKED_LABEL :: IORef (String)
    , mOUSE_DRAGGED_LABEL :: IORef (String)
    , mOUSE_MOVED_LABEL :: IORef (String)
    }

instance JavaNull MouseStrings where
    javaNull = javaNullRecord "MouseStrings"

instance JavaEquals MouseStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MouseStrings where
    (==) = jrecordEquals

instance JavaObjectClass MouseStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MouseStrings
newRecord_ = do
    header_ <- newJavaHeader
    mOUSE_PRESSED <- newIORef ""
    mOUSE_RELEASED <- newIORef ""
    mOUSE_CLICKED <- newIORef ""
    mOUSE_DRAGGED <- newIORef ""
    mOUSE_MOVED <- newIORef ""
    mOUSE_PRESSED_LABEL <- newIORef ""
    mOUSE_RELEASED_LABEL <- newIORef ""
    mOUSE_CLICKED_LABEL <- newIORef ""
    mOUSE_DRAGGED_LABEL <- newIORef ""
    mOUSE_MOVED_LABEL <- newIORef ""
    let this = MouseStrings header_ mOUSE_PRESSED mOUSE_RELEASED mOUSE_CLICKED mOUSE_DRAGGED mOUSE_MOVED mOUSE_PRESSED_LABEL mOUSE_RELEASED_LABEL mOUSE_CLICKED_LABEL mOUSE_DRAGGED_LABEL mOUSE_MOVED_LABEL
    jregisterLevel header_ this
    pure this

initFields_ :: MouseStrings -> IO ()
initFields_ this = do
    jset this.mOUSE_PRESSED ("mousePressed")
    jset this.mOUSE_RELEASED ("mouseReleased")
    jset this.mOUSE_CLICKED ("mouseClicked")
    jset this.mOUSE_DRAGGED ("mouseDragged")
    jset this.mOUSE_MOVED ("mouseMoved")
    jset this.mOUSE_PRESSED_LABEL (("MousePressed" ++ javaToString (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))
    jset this.mOUSE_RELEASED_LABEL (("MouseReleased" ++ javaToString (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))
    jset this.mOUSE_CLICKED_LABEL (("MouseClicked" ++ javaToString (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))
    jset this.mOUSE_DRAGGED_LABEL (("MouseDragged" ++ javaToString (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))
    jset this.mOUSE_MOVED_LABEL (("MouseMoved" ++ javaToString (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))
    pure ()

new_ :: IO MouseStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MouseStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MouseStrings)
getInstance = do
        pure (MouseStrings.instance_)


