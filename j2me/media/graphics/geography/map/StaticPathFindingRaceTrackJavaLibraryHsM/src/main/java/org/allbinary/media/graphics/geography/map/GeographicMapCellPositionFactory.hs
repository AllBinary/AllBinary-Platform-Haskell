{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellPositionFactory (module GeographicMapCellPositionFactory, module GeographicMapCellPositionBaseFactory) where

import GeographicMapCellPositionBaseFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getHashtable, getHashtable_super, getHashtable_impl, logUtil, hashtable)
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
import qualified Any -- same package or java.lang
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified GeographicMapCellPositionBaseFactory

data GeographicMapCellPositionFactory = GeographicMapCellPositionFactory
    { header_ :: JavaHeader
    , base :: GeographicMapCellPositionBaseFactory.GeographicMapCellPositionBaseFactory
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull GeographicMapCellPositionFactory where
    javaNull = javaNullRecord "GeographicMapCellPositionFactory"

instance JavaEquals GeographicMapCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashtable #-}
hashtable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))))

newRecord_ :: IO GeographicMapCellPositionFactory
newRecord_ = do
    base <- GeographicMapCellPositionBaseFactory.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = GeographicMapCellPositionFactory header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: GeographicMapCellPositionFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO GeographicMapCellPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPositionFactory -> IO ()
init_ this = do
    GeographicMapCellPositionBaseFactory.init_ this.base
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GeographicMapCellPositionFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: GeographicMapCellPositionFactory)) a1

getInstance_impl :: GeographicMapCellPositionFactory -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance_impl this geographicMapInterface = do
    javaCatchReturn $ do
        commonStrings <- (CommonStrings.getInstance)
        allBinaryTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)
        geographicMapCellPositionFactoryCanBeNull <- newIORef =<< (get GeographicMapCellPositionFactory.hashtable (jio (AllBinaryTiledLayer.getDataId allBinaryTiledLayer)))
        if ((jget geographicMapCellPositionFactoryCanBeNull) == javaNull) then do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Creating GeographicMapCellPositionFactory for TileLayer: "))) (jio (AllBinaryTiledLayer.getDataId allBinaryTiledLayer))))))) this (jget (commonStrings).gET_INSTANCE))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Any.Any) (BasicGeographicMapCellPositionFactory.new_1 geographicMapInterface))
            jset geographicMapCellPositionFactoryCanBeNull (assignedValue)
            Control.Monad.void (put GeographicMapCellPositionFactory.hashtable (jio (AllBinaryTiledLayer.getDataId allBinaryTiledLayer)) (jget geographicMapCellPositionFactoryCanBeNull))
            javaReturn ((javaCast (jget geographicMapCellPositionFactoryCanBeNull) :: BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Reusing GeographicMapCellPositionFactory for TileLayer: "))) (jio (AllBinaryTiledLayer.getDataId allBinaryTiledLayer))))))) this (jget (commonStrings).gET_INSTANCE))
            javaReturn ((javaCast (jget geographicMapCellPositionFactoryCanBeNull) :: BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory))


getHashtable :: IO (ABHashtable.ABHashtable)
getHashtable = do
        pure (GeographicMapCellPositionFactory.hashtable)


