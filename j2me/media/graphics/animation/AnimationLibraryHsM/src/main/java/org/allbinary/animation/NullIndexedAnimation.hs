{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module NullIndexedAnimation (module NullIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified IndexedAnimation

data NullIndexedAnimation = NullIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    }

instance JavaNull NullIndexedAnimation where
    javaNull = javaNullRecord "NullIndexedAnimation"

instance JavaEquals NullIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass NullIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NullIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    let this = NullIndexedAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    pure this

initFields_ :: NullIndexedAnimation -> IO ()
initFields_ this = do
    pure ()

new_1 :: AnimationBehavior.AnimationBehavior -> IO NullIndexedAnimation
new_1 animationBehavior = do
    this <- newRecord_
    init_1 this animationBehavior
    pure this

init_1 :: NullIndexedAnimation -> AnimationBehavior.AnimationBehavior -> IO ()
init_1 this animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: NullIndexedAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: NullIndexedAnimation))

getAnimationSize_impl :: NullIndexedAnimation -> IO (Int)
getAnimationSize_impl this = do
        pure (0)


