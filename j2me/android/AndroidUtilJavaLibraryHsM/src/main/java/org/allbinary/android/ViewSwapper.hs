{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.android
module ViewSwapper where

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
import qualified Activity -- android.app.Activity
import qualified View -- android.view.View
import qualified ViewGroup -- android.view.ViewGroup

data ViewSwapper = ViewSwapper
    { header_ :: JavaHeader
    , rootViewId :: IORef (Int)
    , activity :: IORef (Activity.Activity)
    , currentMainViewId :: IORef (Int)
    , mainViewArray :: IORef (JavaArray (View.View))
    , topViewArray :: IORef (JavaArray (View.View))
    }

instance JavaNull ViewSwapper where
    javaNull = javaNullRecord "ViewSwapper"

instance JavaEquals ViewSwapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewSwapper where
    (==) = jrecordEquals

instance JavaObjectClass ViewSwapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_VIEW_ARRAY = (jnewArray (0) javaNull)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ViewSwapper
newRecord_ = do
    header_ <- newJavaHeader
    rootViewId <- newIORef 0
    activity <- newIORef javaNull
    currentMainViewId <- newIORef 0
    mainViewArray <- newIORef javaNull
    topViewArray <- newIORef javaNull
    let this = ViewSwapper header_ rootViewId activity currentMainViewId mainViewArray topViewArray
    jregisterLevel header_ this
    jregisterMethod header_ "setMainViews" (\() -> setMainViews_impl this)
    jregisterMethod header_ "setTopViewArray" (\() -> setTopViewArray_impl this)
    jregisterMethod header_ "setMainView" (\() -> setMainView_impl this)
    pure this

initFields_ :: ViewSwapper -> IO ()
initFields_ this = do
    jset this.rootViewId (0)
    jset this.activity (javaNull)
    jset this.currentMainViewId ((Prelude.negate 1))
    jset this.mainViewArray (ViewSwapper.nULL_VIEW_ARRAY)
    jset this.topViewArray (ViewSwapper.nULL_VIEW_ARRAY)
    pure ()

new_2 :: Activity.Activity -> Int -> IO ViewSwapper
new_2 activity rootViewId = do
    this <- newRecord_
    init_2 this activity rootViewId
    pure this

init_2 :: ViewSwapper -> Activity.Activity -> Int -> IO ()
init_2 this activity rootViewId = do
        initFields_ this
        jset (this).activity (activity)
        jset (this).rootViewId (rootViewId)
        pure ()


setMainViews :: (JavaObjectClass this_) => this_ -> JavaArray (View.View) -> IO (())
setMainViews object_ a1 = jmethod object_ "setMainViews" (\() -> (setMainViews_impl (javaCast object_ :: ViewSwapper))) () a1

setMainViews_super :: (JavaObjectClass this_) => this_ -> JavaArray (View.View) -> IO (())
setMainViews_super object_ a1 = (setMainViews_impl (javaCast object_ :: ViewSwapper)) a1

setMainViews_impl :: ViewSwapper -> JavaArray (View.View) -> IO (())
setMainViews_impl this viewArray = do
        jset (this).mainViewArray (viewArray)
        pure ()


setTopViewArray :: (JavaObjectClass this_) => this_ -> JavaArray (View.View) -> IO (())
setTopViewArray object_ a1 = jmethod object_ "setTopViewArray" (\() -> (setTopViewArray_impl (javaCast object_ :: ViewSwapper))) () a1

setTopViewArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (View.View) -> IO (())
setTopViewArray_super object_ a1 = (setTopViewArray_impl (javaCast object_ :: ViewSwapper)) a1

setTopViewArray_impl :: ViewSwapper -> JavaArray (View.View) -> IO (())
setTopViewArray_impl this topViewArray = do
        jset (this).topViewArray (topViewArray)
        pure ()


setMainView :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMainView object_ a1 = jmethod object_ "setMainView" (\() -> (setMainView_impl (javaCast object_ :: ViewSwapper))) () a1

setMainView_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMainView_super object_ a1 = (setMainView_impl (javaCast object_ :: ViewSwapper)) a1

setMainView_impl :: ViewSwapper -> Int -> IO (())
setMainView_impl this id = do
        let viewGroup = (javaCast (jio (Activity.findViewById ((jget (this).activity)) (jget (this).rootViewId))) :: ViewGroup.ViewGroup)
        when (id /= (jget (this).currentMainViewId)) $ do
            forM_ [0 .. (jlength (jget (this).topViewArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (ViewGroup.removeView viewGroup (jindex ((jget (this).topViewArray)) (index)))
            forM_ [0 .. (jlength (jget (this).mainViewArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                when (id /= (jio (getId ((jindex ((jget (this).mainViewArray)) (index)))))) $ do
                    Control.Monad.void (ViewGroup.removeView viewGroup (jindex ((jget (this).mainViewArray)) (index)))
            forM_ [0 .. (jlength (jget (this).mainViewArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                when (id == (jio (getId ((jindex ((jget (this).mainViewArray)) (index)))))) $ do
                    Control.Monad.void (ViewGroup.addView viewGroup (jindex ((jget (this).mainViewArray)) (index)))
                    jset (this).currentMainViewId (id)
            forM_ [0 .. (jlength (jget (this).topViewArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (ViewGroup.addView viewGroup (jindex ((jget (this).topViewArray)) (index)))
        pure ()


