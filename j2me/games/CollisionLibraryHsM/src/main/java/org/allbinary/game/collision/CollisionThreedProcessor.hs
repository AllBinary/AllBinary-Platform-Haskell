{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.collision
module CollisionThreedProcessor (module CollisionThreedProcessor, module CollisionProcessor) where

import CollisionProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isCollision, isCollision_super, isCollision_impl)
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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified CollisionProcessor

data CollisionThreedProcessor = CollisionThreedProcessor
    { header_ :: JavaHeader
    , base :: CollisionProcessor.CollisionProcessor
    }

instance JavaNull CollisionThreedProcessor where
    javaNull = javaNullRecord "CollisionThreedProcessor"

instance JavaEquals CollisionThreedProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollisionThreedProcessor where
    (==) = jrecordEquals

instance JavaObjectClass CollisionThreedProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CollisionThreedProcessor
newRecord_ = do
    base <- CollisionProcessor.newRecord_
    let header_ = base.header_
    let this = CollisionThreedProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isCollision" (\() -> isCollision_impl this)
    pure this

initFields_ :: CollisionThreedProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CollisionThreedProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CollisionThreedProcessor -> IO ()
init_ this = do
    CollisionProcessor.init_ this.base
    initFields_ this


isCollision :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision object_ a1 a2 = jmethod object_ "isCollision" (\() -> (isCollision_impl (javaCast object_ :: CollisionThreedProcessor))) () a1 a2

isCollision_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_super object_ a1 a2 = (isCollision_impl (javaCast object_ :: CollisionThreedProcessor)) a1 a2

isCollision_impl :: CollisionThreedProcessor -> AllBinaryLayer.AllBinaryLayer -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isCollision_impl this myLayer myLayer2 = do
    javaCatchReturn $ do
        if (((((((jio (AllBinaryLayer.getXP myLayer2)) >= (jio (AllBinaryLayer.getX2 myLayer))) || ((jio (AllBinaryLayer.getYP myLayer2)) >= (jio (AllBinaryLayer.getY2 myLayer)))) || ((jio (AllBinaryLayer.getX2 myLayer2)) <= (jio (AllBinaryLayer.getXP myLayer)))) || ((jio (AllBinaryLayer.getY2 myLayer2)) <= (jio (AllBinaryLayer.getYP myLayer)))) || ((jio (AllBinaryLayer.getZP myLayer2)) < (jio (AllBinaryLayer.getZ2 myLayer)))) || ((jio (AllBinaryLayer.getZ2 myLayer2)) > (jio (AllBinaryLayer.getZP myLayer)))) then do
            javaReturn (False)
        else do
            javaReturn (True)


