{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.input.automation.actions.script
module JTreeInterface where

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
import qualified JTree -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data JTreeInterface = JTreeInterface
    { header_ :: JavaHeader
    }

instance JavaNull JTreeInterface where
    javaNull = javaNullRecord "JTreeInterface"

instance JavaEquals JTreeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JTreeInterface where
    (==) = jrecordEquals

instance JavaObjectClass JTreeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> JTreeInterface
fromHeader_ header = JTreeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (JTreeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


updateJTree :: (JavaObjectClass this_) => this_ -> IO (())
updateJTree object_ = jmethod object_ "updateJTree" (\() -> (updateJTree_impl (javaCast object_ :: JTreeInterface))) ()

updateJTree_super :: (JavaObjectClass this_) => this_ -> IO (())
updateJTree_super object_ = (updateJTree_impl (javaCast object_ :: JTreeInterface))

updateJTree_impl :: JTreeInterface -> IO (())
updateJTree_impl this = javaAbstractMethod "updateJTree"


getActionScriptJTree :: (JavaObjectClass this_) => this_ -> IO (JTree.JTree)
getActionScriptJTree object_ = jmethod object_ "getActionScriptJTree" (\() -> (getActionScriptJTree_impl (javaCast object_ :: JTreeInterface))) ()

getActionScriptJTree_super :: (JavaObjectClass this_) => this_ -> IO (JTree.JTree)
getActionScriptJTree_super object_ = (getActionScriptJTree_impl (javaCast object_ :: JTreeInterface))

getActionScriptJTree_impl :: JTreeInterface -> IO (JTree.JTree)
getActionScriptJTree_impl this = javaAbstractMethod "getActionScriptJTree"


