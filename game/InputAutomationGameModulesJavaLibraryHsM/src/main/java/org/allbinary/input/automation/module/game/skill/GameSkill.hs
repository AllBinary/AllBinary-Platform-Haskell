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
-- package org.allbinary.input.automation.module.game.skill
module GameSkill where

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
import qualified GameSkillType -- same package or java.lang
import qualified GameSkillPropertyInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data GameSkill = GameSkill
    { header_ :: JavaHeader
    , gameSkillType :: IORef (GameSkillType.GameSkillType)
    , extra :: IORef (String)
    , time :: IORef (Int)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    , gAME_SKILL_LABEL :: IORef (String)
    , eXTRA_LABEL :: IORef (String)
    , tIME_LABEL :: IORef (String)
    }

instance JavaNull GameSkill where
    javaNull = javaNullRecord "GameSkill"

instance JavaEquals GameSkill where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameSkill where
    (==) = jrecordEquals

instance JavaObjectClass GameSkill where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashMap #-}
hashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

newRecord_ :: IO GameSkill
newRecord_ = do
    header_ <- newJavaHeader
    gameSkillType <- newIORef javaNull
    extra <- newIORef ""
    time <- newIORef 0
    vector <- newIORef javaNull
    gAME_SKILL_LABEL <- newIORef ""
    eXTRA_LABEL <- newIORef ""
    tIME_LABEL <- newIORef ""
    let this = GameSkill header_ gameSkillType extra time vector gAME_SKILL_LABEL eXTRA_LABEL tIME_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "getGameSkillType" (\() -> getGameSkillType_impl this)
    jregisterMethod header_ "setGameSkillType" (\() -> setGameSkillType_impl this)
    jregisterMethod header_ "getExtra" (\() -> getExtra_impl this)
    jregisterMethod header_ "setExtra" (\() -> setExtra_impl this)
    jregisterMethod header_ "getTime" (\() -> getTime_impl this)
    jregisterMethod header_ "setTime" (\() -> setTime_impl this)
    jregisterMethod header_ "addProperty" (\() -> addProperty_impl this)
    jregisterMethod header_ "getProperties" (\() -> getProperties_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameSkill -> IO ()
initFields_ this = do
    jset this.gameSkillType (javaNull)
    jset this.extra ("")
    jset this.time (0)
    jset this.vector (javaNull)
    jset this.gAME_SKILL_LABEL ("GameSkill: ")
    jset this.eXTRA_LABEL ("Extra: ")
    jset this.tIME_LABEL ("Time: ")
    pure ()

new_3 :: GameSkillType.GameSkillType -> String -> Int -> IO GameSkill
new_3 gameSkillType extra time = do
    this <- newRecord_
    init_3 this gameSkillType extra time
    pure this

init_3 :: GameSkill -> GameSkillType.GameSkillType -> String -> Int -> IO ()
init_3 this gameSkillType extra time = do
        initFields_ this
        Control.Monad.void (GameSkill.setGameSkillType this gameSkillType)
        Control.Monad.void (GameSkill.setExtra this extra)
        Control.Monad.void (GameSkill.setTime this time)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).vector (assignedValue)
        Control.Monad.void (put ((jget GameSkill.hashMap)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (GameSkillType.getName ((jio (GameSkill.getGameSkillType this)))))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) extra))))) this)
        pure ()


getGameSkillType :: (JavaObjectClass this_) => this_ -> IO (GameSkillType.GameSkillType)
getGameSkillType object_ = jmethod object_ "getGameSkillType" (\() -> (getGameSkillType_impl (javaCast object_ :: GameSkill))) ()

getGameSkillType_super :: (JavaObjectClass this_) => this_ -> IO (GameSkillType.GameSkillType)
getGameSkillType_super object_ = (getGameSkillType_impl (javaCast object_ :: GameSkill))

getGameSkillType_impl :: GameSkill -> IO (GameSkillType.GameSkillType)
getGameSkillType_impl this = do
        pure ((jget (this).gameSkillType))


setGameSkillType :: (JavaObjectClass this_) => this_ -> GameSkillType.GameSkillType -> IO (())
setGameSkillType object_ a1 = jmethod object_ "setGameSkillType" (\() -> (setGameSkillType_impl (javaCast object_ :: GameSkill))) () a1

setGameSkillType_super :: (JavaObjectClass this_) => this_ -> GameSkillType.GameSkillType -> IO (())
setGameSkillType_super object_ a1 = (setGameSkillType_impl (javaCast object_ :: GameSkill)) a1

setGameSkillType_impl :: GameSkill -> GameSkillType.GameSkillType -> IO (())
setGameSkillType_impl this gameSkillType = do
        jset (this).gameSkillType (gameSkillType)
        pure ()


getExtra :: (JavaObjectClass this_) => this_ -> IO (String)
getExtra object_ = jmethod object_ "getExtra" (\() -> (getExtra_impl (javaCast object_ :: GameSkill))) ()

getExtra_super :: (JavaObjectClass this_) => this_ -> IO (String)
getExtra_super object_ = (getExtra_impl (javaCast object_ :: GameSkill))

getExtra_impl :: GameSkill -> IO (String)
getExtra_impl this = do
        pure ((jget (this).extra))


setExtra :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExtra object_ a1 = jmethod object_ "setExtra" (\() -> (setExtra_impl (javaCast object_ :: GameSkill))) () a1

setExtra_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setExtra_super object_ a1 = (setExtra_impl (javaCast object_ :: GameSkill)) a1

setExtra_impl :: GameSkill -> String -> IO (())
setExtra_impl this extra = do
        jset (this).extra (extra)
        pure ()


getTime :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime object_ = jmethod object_ "getTime" (\() -> (getTime_impl (javaCast object_ :: GameSkill))) ()

getTime_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime_super object_ = (getTime_impl (javaCast object_ :: GameSkill))

getTime_impl :: GameSkill -> IO (Int)
getTime_impl this = do
        pure ((jget (this).time))


setTime :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime object_ a1 = jmethod object_ "setTime" (\() -> (setTime_impl (javaCast object_ :: GameSkill))) () a1

setTime_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime_super object_ a1 = (setTime_impl (javaCast object_ :: GameSkill)) a1

setTime_impl :: GameSkill -> Int -> IO (())
setTime_impl this time = do
        jset (this).time (time)
        pure ()


addProperty :: (JavaObjectClass this_) => this_ -> GameSkillPropertyInterface.GameSkillPropertyInterface -> IO (())
addProperty object_ a1 = jmethod object_ "addProperty" (\() -> (addProperty_impl (javaCast object_ :: GameSkill))) () a1

addProperty_super :: (JavaObjectClass this_) => this_ -> GameSkillPropertyInterface.GameSkillPropertyInterface -> IO (())
addProperty_super object_ a1 = (addProperty_impl (javaCast object_ :: GameSkill)) a1

addProperty_impl :: GameSkill -> GameSkillPropertyInterface.GameSkillPropertyInterface -> IO (())
addProperty_impl this gameSkillPropertyInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).vector)) gameSkillPropertyInterface)
        pure ()


getProperties :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProperties object_ = jmethod object_ "getProperties" (\() -> (getProperties_impl (javaCast object_ :: GameSkill))) ()

getProperties_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProperties_super object_ = (getProperties_impl (javaCast object_ :: GameSkill))

getProperties_impl :: GameSkill -> IO (BasicArrayList.BasicArrayList)
getProperties_impl this = do
        pure ((jget (this).vector))


getInstance :: GameSkillType.GameSkillType -> String -> IO (GameSkill)
getInstance gameSkillType extra = do
        pure ((javaCast (jio (get ((jget GameSkill.hashMap)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (GameSkillType.getName gameSkillType))))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) extra))))))) :: GameSkill))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameSkill))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameSkill))

toString_impl :: GameSkill -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).gAME_SKILL_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameSkillType.toString ((jio (GameSkill.getGameSkillType this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).eXTRA_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameSkill.getExtra this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tIME_LABEL))
        Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromIntegral (jio (GameSkill.getTime this))))
        (StringMaker.toString stringBuffer)


