{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.android
module ToastUtil where

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
import qualified Runnable -- same package or java.lang
import qualified Context -- android.content.Context
import qualified View -- android.view.View
import qualified Toast -- android.widget.Toast
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ToastUtil = ToastUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ToastUtil where
    javaNull = javaNullRecord "ToastUtil"

instance JavaEquals ToastUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ToastUtil where
    (==) = jrecordEquals

instance JavaObjectClass ToastUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ToastUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ToastUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "makeToast" (\() -> makeToast_impl this)
    pure this

initFields_ :: ToastUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO ToastUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ToastUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ToastUtil)
getInstance = do
        pure (ToastUtil.instance_)


makeToast :: (JavaObjectClass this_) => this_ -> View.View -> Context.Context -> String -> Int -> IO (())
makeToast object_ a1 a2 a3 a4 = jmethod object_ "makeToast" (\() -> (makeToast_impl (javaCast object_ :: ToastUtil))) () a1 a2 a3 a4

makeToast_super :: (JavaObjectClass this_) => this_ -> View.View -> Context.Context -> String -> Int -> IO (())
makeToast_super object_ a1 a2 a3 a4 = (makeToast_impl (javaCast object_ :: ToastUtil)) a1 a2 a3 a4

makeToast_impl :: ToastUtil -> View.View -> Context.Context -> String -> Int -> IO (())
makeToast_impl this view context message time = do
        -- Java nested class MakeToast: move it to its own module

        Control.Monad.void (View.post view (jio (MakeToast.new_1 message)))
        pure ()


