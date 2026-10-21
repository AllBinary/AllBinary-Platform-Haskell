{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module ActivityFractureControllerUtilFactory where

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
import qualified AndroidAPI12KeyFactory -- same package or java.lang
import qualified AndroidAPI9KeyFactory -- same package or java.lang
import qualified AndroidAPI1KeyFactory -- same package or java.lang
import qualified AndroidKeyFactory -- same package or java.lang
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory

data ActivityFractureControllerUtilFactory = ActivityFractureControllerUtilFactory
    { header_ :: JavaHeader
    }

instance JavaNull ActivityFractureControllerUtilFactory where
    javaNull = javaNullRecord "ActivityFractureControllerUtilFactory"

instance JavaEquals ActivityFractureControllerUtilFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureControllerUtilFactory where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureControllerUtilFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ActivityFractureControllerUtilFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ActivityFractureControllerUtilFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ActivityFractureControllerUtilFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ActivityFractureControllerUtilFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureControllerUtilFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AndroidKeyFactory.AndroidKeyFactory)
getInstance = do
    javaCatchReturn $ do
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION <= 8) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: AndroidKeyFactory.AndroidKeyFactory) (AndroidAPI1KeyFactory.getInstance))
        else if (sDK_VERSION <= 11) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: AndroidKeyFactory.AndroidKeyFactory) (AndroidAPI9KeyFactory.getInstance))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: AndroidKeyFactory.AndroidKeyFactory) (AndroidAPI12KeyFactory.getAPI12Instance))


