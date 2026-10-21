{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
-- package org.allbinary.game.layer.geological.resources
module GeologicalGameResources (module GeologicalGameResources, module BasicGameResources) where

import BasicGameResources hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, append, append_super, append_impl, getString, getString_super, getString_impl, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified BasicGameResources -- org.allbinary.game.layer.resources.BasicGameResources
import qualified GameGraphicsResourceUtil -- org.allbinary.game.layer.resources.GameGraphicsResourceUtil
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified GraphicsFeatureFactory -- org.allbinary.game.configuration.feature.GraphicsFeatureFactory

data GeologicalGameResources = GeologicalGameResources
    { header_ :: JavaHeader
    , base :: BasicGameResources.BasicGameResources
    }

instance JavaNull GeologicalGameResources where
    javaNull = javaNullRecord "GeologicalGameResources"

instance JavaEquals GeologicalGameResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeologicalGameResources where
    (==) = jrecordEquals

instance JavaObjectClass GeologicalGameResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO GeologicalGameResources
newRecord_ = do
    base <- BasicGameResources.newRecord_
    let header_ = base.header_
    let this = GeologicalGameResources header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "getString" (\() -> getString_impl this)
    pure this

initFields_ :: GeologicalGameResources -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GeologicalGameResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeologicalGameResources -> IO ()
init_ this = do
        BasicGameResources.init_ this.base
        initFields_ this
        let rOOT = "/resource"
        let sMALL = "_20_by_20.png"
        let mEDIUM = sMALL
        let sIZE_FOUR = sMALL
        let sIZE_FIVE = sMALL
        let sIZE_SIX = sMALL
        let sIZE = (jarrayFromList [sMALL, mEDIUM, sIZE_FOUR, sIZE_FIVE, sIZE_SIX])
        Control.Monad.void (BasicGameResources.init_super this.base rOOT sIZE)
        pure ()


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append object_ a1 a2 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: GeologicalGameResources))) () a1 a2

append_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
append_super object_ a1 a2 = (append_impl (javaCast object_ :: GeologicalGameResources)) a1 a2

append_impl :: GeologicalGameResources -> String -> String -> IO (())
append_impl this rOOT sizeString = do
        Control.Monad.void (BasicGameResources.append_super this.base rOOT sizeString)
        pure ()


-- throws Exception
getString :: (JavaObjectClass this_) => this_ -> IO (String)
getString object_ = jmethod object_ "getString" (\() -> (getString_impl (javaCast object_ :: GeologicalGameResources))) ()

getString_super :: (JavaObjectClass this_) => this_ -> IO (String)
getString_super object_ = (getString_impl (javaCast object_ :: GeologicalGameResources))

getString_impl :: GeologicalGameResources -> IO (String)
getString_impl this = do
    javaCatchReturn $ do
        if (jio (AndroidUtil.isAndroid)) then do
            javaReturn =<< (GameGraphicsResourceUtil.getStringForFeature ((jio (GameGraphicsResourceUtil.getInstance))) (jget ((jio (GraphicsFeatureFactory.getInstance))).sPRITE_QUARTER_ROTATION_GRAPHICS))
        else do
            javaReturn =<< (BasicGameResources.getString_super this.base)


getInstance :: IO (BasicGameResources.BasicGameResources)
getInstance = do
        pure ((javaCast GeologicalGameResources.instance_ :: BasicGameResources.BasicGameResources))


