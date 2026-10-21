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
module GeographicMapCellHistory where

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
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified TextAnimation -- org.allbinary.animation.text.TextAnimation
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal

-- implements UpdateMyFontInterface
data GeographicMapCellHistory = GeographicMapCellHistory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , booleanFactory :: IORef (BooleanFactory.BooleanFactory)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , visitedList :: IORef (BasicArrayList.BasicArrayList)
    , mISSED_INFO :: IORef (String)
    , animation :: IORef (Animation.Animation)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , totalVisited :: IORef (Int)
    , halfWidth :: IORef (Int)
    , fontHeight :: IORef (Int)
    , rED :: IORef (Int)
    }

instance JavaNull GeographicMapCellHistory where
    javaNull = javaNullRecord "GeographicMapCellHistory"

instance JavaEquals GeographicMapCellHistory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellHistory where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellHistory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY = (jnewArray (0) javaNull)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellHistory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    booleanFactory <- newIORef javaNull
    list <- newIORef javaNull
    visitedList <- newIORef javaNull
    mISSED_INFO <- newIORef ""
    animation <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    totalVisited <- newIORef 0
    halfWidth <- newIORef 0
    fontHeight <- newIORef 0
    rED <- newIORef 0
    let this = GeographicMapCellHistory header_ logUtil booleanFactory list visitedList mISSED_INFO animation myFontProcessor totalVisited halfWidth fontHeight rED
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getTotalVisited" (\() -> getTotalVisited_impl this)
    jregisterMethod header_ "getTotalNotVisited" (\() -> getTotalNotVisited_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "trackAll" (\() -> trackAll_impl this)
    jregisterMethod header_ "track" (\() -> track_impl this)
    jregisterMethod header_ "getTracked" (\() -> getTracked_impl this)
    jregisterMethod header_ "getVisited" (\() -> getVisited_impl this)
    jregisterMethod header_ "getAfterIfNotLast" (\() -> getAfterIfNotLast_impl this)
    jregisterMethod header_ "getFirstUnvisited" (\() -> getFirstUnvisited_impl this)
    jregisterMethod header_ "getFirstUnvisitedIndex" (\() -> getFirstUnvisitedIndex_impl this)
    jregisterMethod header_ "getInPathButNotTracked" (\() -> getInPathButNotTracked_impl this)
    jregisterMethod header_ "isVisited" (\() -> isVisited_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "isAllVisited" (\() -> isAllVisited_impl this)
    jregisterMethod header_ "isAllVisited2" (\() -> isAllVisited2_impl this)
    jregisterMethod header_ "isPortionVisited" (\() -> isPortionVisited_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "paintNotVisitedRelativeToPoint" (\() -> paintNotVisitedRelativeToPoint_impl this)
    jregisterMethod header_ "paintNotVisited" (\() -> paintNotVisited_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: GeographicMapCellHistory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.booleanFactory =<< (BooleanFactory.getInstance)
    jset this.list (javaNull)
    jset this.visitedList (javaNull)
    jset this.mISSED_INFO ("Missed")
    jset this.animation =<< (fmap (\value_ -> javaCast value_ :: Animation.Animation) (TextAnimation.new_2 (jget (this).mISSED_INFO) (jio (AnimationBehavior.getInstance))))
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.totalVisited (0)
    jset this.halfWidth (0)
    jset this.fontHeight (0)
    jset this.rED =<< (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED)))
    pure ()

new_ :: IO GeographicMapCellHistory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellHistory -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).visitedList (assignedValue)
        Control.Monad.void (GeographicMapCellHistory.init this)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: GeographicMapCellHistory)) a1

updateMeasurement_impl :: GeographicMapCellHistory -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


getTotalVisited :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalVisited object_ = jmethod object_ "getTotalVisited" (\() -> (getTotalVisited_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getTotalVisited_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalVisited_super object_ = (getTotalVisited_impl (javaCast object_ :: GeographicMapCellHistory))

getTotalVisited_impl :: GeographicMapCellHistory -> IO (Int)
getTotalVisited_impl this = do
        pure ((jget (this).totalVisited))


getTotalNotVisited :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalNotVisited object_ = jmethod object_ "getTotalNotVisited" (\() -> (getTotalNotVisited_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getTotalNotVisited_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalNotVisited_super object_ = (getTotalNotVisited_impl (javaCast object_ :: GeographicMapCellHistory))

getTotalNotVisited_impl :: GeographicMapCellHistory -> IO (Int)
getTotalNotVisited_impl this = do
        pure (((jio (GeographicMapCellHistory.getSize this)) - (jget (this).totalVisited)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: GeographicMapCellHistory))

getSize_impl :: GeographicMapCellHistory -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).list)))


trackAll :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
trackAll object_ a1 = jmethod object_ "trackAll" (\() -> (trackAll_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

trackAll_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
trackAll_super object_ a1 = (trackAll_impl (javaCast object_ :: GeographicMapCellHistory)) a1

trackAll_impl :: GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (())
trackAll_impl this list = do
        size <- (BasicArrayList.size list)
        Control.Monad.void (BasicArrayList.ensureCapacity ((jget (this).list)) size)
        Control.Monad.void (BasicArrayList.ensureCapacity ((jget (this).visitedList)) size)
        geographicMapCellPosition <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get list index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
            Control.Monad.void (GeographicMapCellHistory.track this (jget geographicMapCellPosition))
        pure ()


track :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
track object_ a1 = jmethod object_ "track" (\() -> (track_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

track_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
track_super object_ a1 = (track_impl (javaCast object_ :: GeographicMapCellHistory)) a1

track_impl :: GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
track_impl this geographicMapCellPosition = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) geographicMapCellPosition))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) geographicMapCellPosition)
            Control.Monad.void (BasicArrayList.add ((jget (this).visitedList)) (jget ((jget (this).booleanFactory)).fALSE))
        pure ()


getTracked :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTracked object_ = jmethod object_ "getTracked" (\() -> (getTracked_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getTracked_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTracked_super object_ = (getTracked_impl (javaCast object_ :: GeographicMapCellHistory))

getTracked_impl :: GeographicMapCellHistory -> IO (BasicArrayList.BasicArrayList)
getTracked_impl this = do
        pure ((jget (this).list))


getVisited :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVisited object_ = jmethod object_ "getVisited" (\() -> (getVisited_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getVisited_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getVisited_super object_ = (getVisited_impl (javaCast object_ :: GeographicMapCellHistory))

getVisited_impl :: GeographicMapCellHistory -> IO (BasicArrayList.BasicArrayList)
getVisited_impl this = do
        pure ((jget (this).visitedList))


getAfterIfNotLast :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAfterIfNotLast object_ a1 = jmethod object_ "getAfterIfNotLast" (\() -> (getAfterIfNotLast_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

getAfterIfNotLast_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAfterIfNotLast_super object_ a1 = (getAfterIfNotLast_impl (javaCast object_ :: GeographicMapCellHistory)) a1

getAfterIfNotLast_impl :: GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getAfterIfNotLast_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        let localList = (jget (this).list)
        index <- (BasicArrayList.indexOf localList geographicMapCellPosition)
        when ((jio (BasicArrayList.size localList)) > (index + 1)) $ do
            javaReturn ((javaCast (jio (BasicArrayList.get localList (index + 1))) :: GeographicMapCellPosition.GeographicMapCellPosition))
        pure (geographicMapCellPosition)


getFirstUnvisited :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstUnvisited object_ = jmethod object_ "getFirstUnvisited" (\() -> (getFirstUnvisited_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getFirstUnvisited_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstUnvisited_super object_ = (getFirstUnvisited_impl (javaCast object_ :: GeographicMapCellHistory))

getFirstUnvisited_impl :: GeographicMapCellHistory -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getFirstUnvisited_impl this = do
    javaCatchReturn $ do
        let localList = (jget (this).list)
        let localVisitedList = (jget (this).visitedList)
        size <- (BasicArrayList.size localVisitedList)
        value <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset value ((javaCast (jio (BasicArrayList.get ((jget (this).visitedList)) index)) :: Bool))
            when ((jget value) == (jget ((jget (this).booleanFactory)).fALSE)) $ do
                javaReturn ((javaCast (jio (BasicArrayList.get localList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
        pure ((javaCast (jio (BasicArrayList.get localList 0)) :: GeographicMapCellPosition.GeographicMapCellPosition))


getFirstUnvisitedIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getFirstUnvisitedIndex object_ = jmethod object_ "getFirstUnvisitedIndex" (\() -> (getFirstUnvisitedIndex_impl (javaCast object_ :: GeographicMapCellHistory))) ()

getFirstUnvisitedIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFirstUnvisitedIndex_super object_ = (getFirstUnvisitedIndex_impl (javaCast object_ :: GeographicMapCellHistory))

getFirstUnvisitedIndex_impl :: GeographicMapCellHistory -> IO (Int)
getFirstUnvisitedIndex_impl this = do
    javaCatchReturn $ do
        let localVisitedList = (jget (this).visitedList)
        size <- (BasicArrayList.size localVisitedList)
        value <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset value ((javaCast (jio (BasicArrayList.get ((jget (this).visitedList)) index)) :: Bool))
            when ((jget value) == (jget ((jget (this).booleanFactory)).fALSE)) $ do
                javaReturn (index)
        pure (0)


getInPathButNotTracked :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getInPathButNotTracked object_ a1 = jmethod object_ "getInPathButNotTracked" (\() -> (getInPathButNotTracked_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

getInPathButNotTracked_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getInPathButNotTracked_super object_ a1 = (getInPathButNotTracked_impl (javaCast object_ :: GeographicMapCellHistory)) a1

getInPathButNotTracked_impl :: GeographicMapCellHistory -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getInPathButNotTracked_impl this pathList = do
        inPathButNotTrackedList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        let localList = (jget (this).list)
        size <- (BasicArrayList.size pathList)
        geographicMapCellPosition <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get pathList index)) :: GeographicMapCellPosition.GeographicMapCellPosition))
            when (Prelude.not (jio (BasicArrayList.contains localList (jget geographicMapCellPosition)))) $ do
                Control.Monad.void (BasicArrayList.add inPathButNotTrackedList (jget geographicMapCellPosition))
        pure (inPathButNotTrackedList)


isVisited :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isVisited object_ a1 = jmethod object_ "isVisited" (\() -> (isVisited_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

isVisited_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isVisited_super object_ a1 = (isVisited_impl (javaCast object_ :: GeographicMapCellHistory)) a1

isVisited_impl :: GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
isVisited_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        index <- (BasicArrayList.indexOf ((jget (this).list)) geographicMapCellPosition)
        if (index /= (Prelude.negate 1)) then do
            let value = (javaCast (jio (BasicArrayList.get ((jget (this).visitedList)) index)) :: Bool)
            when (value == (jget ((jget (this).booleanFactory)).tRUE)) $ do
                javaReturn (True)
        else do
            pure ()
        pure (False)


visit :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visit_super object_ a1 = (visit_impl (javaCast object_ :: GeographicMapCellHistory)) a1

visit_impl :: GeographicMapCellHistory -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Bool)
visit_impl this geographicMapCellPosition = do
    javaCatchReturn $ do
        index <- (BasicArrayList.indexOf ((jget (this).list)) geographicMapCellPosition)
        value <- newIORef (javaNull)
        if (index /= (Prelude.negate 1)) then do
            jset value ((javaCast (jio (BasicArrayList.get ((jget (this).visitedList)) index)) :: Bool))
            let tRUE = (jget ((jget (this).booleanFactory)).tRUE)
            when ((jget value) /= tRUE) $ do
                Control.Monad.void (BasicArrayList.set ((jget (this).visitedList)) index tRUE)
                jset (this).totalVisited ((jget (this).totalVisited) + 1)
                javaReturn (True)
        else do
            pure ()
        pure (False)


-- throws Exception
isAllVisited :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAllVisited object_ = jmethod object_ "isAllVisited" (\() -> (isAllVisited_impl (javaCast object_ :: GeographicMapCellHistory))) ()

isAllVisited_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAllVisited_super object_ = (isAllVisited_impl (javaCast object_ :: GeographicMapCellHistory))

isAllVisited_impl :: GeographicMapCellHistory -> IO (Bool)
isAllVisited_impl this = do
    javaCatchReturn $ do
        if ((jget (this).totalVisited) == ((jio (GeographicMapCellHistory.getSize this)) - 1)) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
isAllVisited2 :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAllVisited2 object_ = jmethod object_ "isAllVisited2" (\() -> (isAllVisited2_impl (javaCast object_ :: GeographicMapCellHistory))) ()

isAllVisited2_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAllVisited2_super object_ = (isAllVisited2_impl (javaCast object_ :: GeographicMapCellHistory))

isAllVisited2_impl :: GeographicMapCellHistory -> IO (Bool)
isAllVisited2_impl this = do
    javaCatchReturn $ do
        if ((jget (this).totalVisited) == (jio (GeographicMapCellHistory.getSize this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
isPortionVisited :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (Bool)
isPortionVisited object_ a1 = jmethod object_ "isPortionVisited" (\() -> (isPortionVisited_impl (javaCast object_ :: GeographicMapCellHistory))) () a1

isPortionVisited_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (Bool)
isPortionVisited_super object_ a1 = (isPortionVisited_impl (javaCast object_ :: GeographicMapCellHistory)) a1

isPortionVisited_impl :: GeographicMapCellHistory -> BasicDecimal.BasicDecimal -> IO (Bool)
isPortionVisited_impl this basicDecimal = do
    javaCatchReturn $ do
        size <- (GeographicMapCellHistory.getSize this)
        let numberRequired = (((size `Data.Bits.shiftL` (jio (BasicDecimal.getScaledFactor basicDecimal)))) `quot` (Prelude.fromIntegral (jio (BasicDecimal.getUnscaled basicDecimal))))
        let numberNotVisited = (((jio (GeographicMapCellHistory.getSize this)) - 1) - (jget (this).totalVisited))
        if ((size - numberNotVisited) > numberRequired) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- throws Exception
reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: GeographicMapCellHistory))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: GeographicMapCellHistory))

reset_impl :: GeographicMapCellHistory -> IO (())
reset_impl this = do
        let localVisitedList = (jget (this).visitedList)
        let localFalseBoolean = (jget ((jget (this).booleanFactory)).fALSE)
        size <- (BasicArrayList.size localVisitedList)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.set localVisitedList index localFalseBoolean)
        jset (this).totalVisited (0)
        pure ()


paintNotVisitedRelativeToPoint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GPoint.GPoint -> IO (())
paintNotVisitedRelativeToPoint object_ a1 a2 a3 = jmethod object_ "paintNotVisitedRelativeToPoint" (\() -> (paintNotVisitedRelativeToPoint_impl (javaCast object_ :: GeographicMapCellHistory))) () a1 a2 a3

paintNotVisitedRelativeToPoint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GPoint.GPoint -> IO (())
paintNotVisitedRelativeToPoint_super object_ a1 a2 a3 = (paintNotVisitedRelativeToPoint_impl (javaCast object_ :: GeographicMapCellHistory)) a1 a2 a3

paintNotVisitedRelativeToPoint_impl :: GeographicMapCellHistory -> Graphics.Graphics -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GPoint.GPoint -> IO (())
paintNotVisitedRelativeToPoint_impl this graphics tiledLayer point = do
        let x = ((jio (GPoint.getX point)) - (jio (AllBinaryTiledLayer.getXP tiledLayer)))
        let y = ((jio (GPoint.getY point)) - (jio (AllBinaryTiledLayer.getYP tiledLayer)))
        when ((jget (this).halfWidth) == 0) $ do
            jset (this).halfWidth ((((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jget (this).mISSED_INFO))) `Data.Bits.shiftR` 1)))
        let height = (2 * (jget (this).fontHeight))
        Control.Monad.void (Animation.paintXY ((jget (this).animation)) graphics (x + (jget (this).halfWidth)) (y + (height)))
        pure ()


paintNotVisited :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicGeographicMap.BasicGeographicMap -> IO (())
paintNotVisited object_ a1 a2 = jmethod object_ "paintNotVisited" (\() -> (paintNotVisited_impl (javaCast object_ :: GeographicMapCellHistory))) () a1 a2

paintNotVisited_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicGeographicMap.BasicGeographicMap -> IO (())
paintNotVisited_super object_ a1 a2 = (paintNotVisited_impl (javaCast object_ :: GeographicMapCellHistory)) a1 a2

paintNotVisited_impl :: GeographicMapCellHistory -> Graphics.Graphics -> BasicGeographicMap.BasicGeographicMap -> IO (())
paintNotVisited_impl this graphics geographicMapInterface = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "paintNotVisited" e)
            ) $ do
            Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
            Control.Monad.void (Graphics.setColor graphics (jget (this).rED))
            let localVisitedList = (jget (this).visitedList)
            size <- (BasicArrayList.size localVisitedList)
            geographicMapCellPosition <- newIORef (javaNull)
            isCellVisitedBoolean <- newIORef (javaNull)
            index <- newIORef (size)
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                jset geographicMapCellPosition ((javaCast (jio (BasicArrayList.get ((jget (this).list)) (jget index))) :: GeographicMapCellPosition.GeographicMapCellPosition))
                jset isCellVisitedBoolean ((javaCast (jio (BasicArrayList.get localVisitedList (jget index))) :: Bool))
                when (Prelude.not (jget isCellVisitedBoolean)) $ do
                    Control.Monad.void (GeographicMapCellHistory.paintNotVisitedRelativeToPoint this graphics (jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface)) (jio (GeographicMapCellPosition.getPoint ((jget geographicMapCellPosition)))))
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GeographicMapCellHistory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GeographicMapCellHistory))

init_impl :: GeographicMapCellHistory -> IO (())
init_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).visitedList)))
        jset (this).totalVisited (0)
        pure ()


