{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.game.multiplayer.layer
module RemoteInfo where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data RemoteInfo = RemoteInfo
    { header_ :: JavaHeader
    }

instance JavaNull RemoteInfo where
    javaNull = javaNullRecord "RemoteInfo"

instance JavaEquals RemoteInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteInfo where
    (==) = jrecordEquals

instance JavaObjectClass RemoteInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nEW_PLAYER_ID = 0

{-# NOINLINE rEMOTE_INFO #-}
rEMOTE_INFO = unsafePerformIO ((new_4 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Prelude.negate 1) (Prelude.negate 1) (RemoteInfo.nEW_PLAYER_ID)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RemoteInfo
newRecord_ = do
    header_ <- newJavaHeader
    let this = RemoteInfo header_
    jregisterLevel header_ this
    pure this

initFields_ :: RemoteInfo -> IO ()
initFields_ this = do
    pure ()

new_4 :: String -> Int -> Int -> Int -> IO RemoteInfo
new_4 username actorSessionId playerInputId id = do
    this <- newRecord_
    init_4 this username actorSessionId playerInputId id
    pure this

init_4 :: RemoteInfo -> String -> Int -> Int -> Int -> IO ()
init_4 this username actorSessionId playerInputId id = do
        initFields_ this
        pure ()
        pure ()


