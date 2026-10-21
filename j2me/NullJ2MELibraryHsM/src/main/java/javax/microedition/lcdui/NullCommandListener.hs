{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
module NullCommandListener where

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
import qualified Command -- same package or java.lang
import qualified Displayable -- same package or java.lang
import qualified CommandListener

-- implements CommandListener
data NullCommandListener = NullCommandListener
    { header_ :: JavaHeader
    }

instance JavaNull NullCommandListener where
    javaNull = javaNullRecord "NullCommandListener"

instance JavaEquals NullCommandListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullCommandListener where
    (==) = jrecordEquals

instance JavaObjectClass NullCommandListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COMMAND_LISTENER #-}
nULL_COMMAND_LISTENER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullCommandListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullCommandListener header_
    jregisterLevel header_ this
    CommandListener.registerInterface_ header_
    jregisterMethod header_ "commandAction" (\() -> commandAction_impl this)
    pure this

initFields_ :: NullCommandListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullCommandListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullCommandListener -> IO ()
init_ this = do
    initFields_ this


commandAction :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction object_ a1 a2 = jmethod object_ "commandAction" (\() -> (commandAction_impl (javaCast object_ :: NullCommandListener))) () a1 a2

commandAction_super :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_super object_ a1 a2 = (commandAction_impl (javaCast object_ :: NullCommandListener)) a1 a2

commandAction_impl :: NullCommandListener -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_impl this c d = do
        pure ()


