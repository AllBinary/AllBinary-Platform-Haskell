{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.view
module AllBinaryMidletViewInterface (module AllBinaryMidletViewInterface, module MidletCompositeInterface, module EmulatorViewInterface, module DemoGameMidletEventListener, module GameInitializedListenerInterface) where

import MidletCompositeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onResume, onResume_super, onResume_impl, onPause, onPause_super, onPause_impl, onDestroy, onDestroy_super, onDestroy_impl, toString)
import EmulatorViewInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onResume, onResume_super, onResume_impl, onPause, onPause_super, onPause_impl, onDestroy, onDestroy_super, onDestroy_impl, toString)
import DemoGameMidletEventListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onResume, onResume_super, onResume_impl, onPause, onPause_super, onPause_impl, onDestroy, onDestroy_super, onDestroy_impl, toString)
import GameInitializedListenerInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onResume, onResume_super, onResume_impl, onPause, onPause_super, onPause_impl, onDestroy, onDestroy_super, onDestroy_impl, toString)
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
import qualified GameInitializedListenerInterface -- org.allbinary.game.configuration.event.GameInitializedListenerInterface
import qualified DemoGameMidletEventListener -- org.allbinary.game.midlet.DemoGameMidletEventListener
import qualified MidletCompositeInterface -- org.allbinary.midlet.MidletCompositeInterface
import qualified EmulatorViewInterface

-- Java interface: the classes that implement it have these functions
data AllBinaryMidletViewInterface = AllBinaryMidletViewInterface
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryMidletViewInterface where
    javaNull = javaNullRecord "AllBinaryMidletViewInterface"

instance JavaEquals AllBinaryMidletViewInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryMidletViewInterface where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryMidletViewInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AllBinaryMidletViewInterface
fromHeader_ header = AllBinaryMidletViewInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AllBinaryMidletViewInterface header)
    MidletCompositeInterface.registerInterface_ header
    EmulatorViewInterface.registerInterface_ header
    DemoGameMidletEventListener.registerInterface_ header
    GameInitializedListenerInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onResume :: (JavaObjectClass this_) => this_ -> IO (())
onResume object_ = jmethod object_ "onResume" (\() -> (onResume_impl (javaCast object_ :: AllBinaryMidletViewInterface))) ()

onResume_super :: (JavaObjectClass this_) => this_ -> IO (())
onResume_super object_ = (onResume_impl (javaCast object_ :: AllBinaryMidletViewInterface))

onResume_impl :: AllBinaryMidletViewInterface -> IO (())
onResume_impl this = javaAbstractMethod "onResume"


onPause :: (JavaObjectClass this_) => this_ -> IO (())
onPause object_ = jmethod object_ "onPause" (\() -> (onPause_impl (javaCast object_ :: AllBinaryMidletViewInterface))) ()

onPause_super :: (JavaObjectClass this_) => this_ -> IO (())
onPause_super object_ = (onPause_impl (javaCast object_ :: AllBinaryMidletViewInterface))

onPause_impl :: AllBinaryMidletViewInterface -> IO (())
onPause_impl this = javaAbstractMethod "onPause"


onDestroy :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy object_ = jmethod object_ "onDestroy" (\() -> (onDestroy_impl (javaCast object_ :: AllBinaryMidletViewInterface))) ()

onDestroy_super :: (JavaObjectClass this_) => this_ -> IO (())
onDestroy_super object_ = (onDestroy_impl (javaCast object_ :: AllBinaryMidletViewInterface))

onDestroy_impl :: AllBinaryMidletViewInterface -> IO (())
onDestroy_impl this = javaAbstractMethod "onDestroy"


