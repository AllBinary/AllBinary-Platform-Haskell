{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.logic.io.file
module CommonDataFileStrings where

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

data CommonDataFileStrings = CommonDataFileStrings
    { header_ :: JavaHeader
    , xML :: IORef (String)
    , _XML :: IORef (String)
    , jSON :: IORef (String)
    , _JSON :: IORef (String)
    , xSL :: IORef (String)
    , _XSL :: IORef (String)
    , jAVA :: IORef (String)
    , _JAVA :: IORef (String)
    , kT :: IORef (String)
    , _KT :: IORef (String)
    , tS :: IORef (String)
    , _TS :: IORef (String)
    , jS :: IORef (String)
    , _JS :: IORef (String)
    , cPP :: IORef (String)
    , _CPP :: IORef (String)
    , h :: IORef (String)
    , _H :: IORef (String)
    , pY :: IORef (String)
    , _PY :: IORef (String)
    , gO :: IORef (String)
    , _GO :: IORef (String)
    , cS :: IORef (String)
    , _CS :: IORef (String)
    , aDB :: IORef (String)
    , _ADB :: IORef (String)
    , aDS :: IORef (String)
    , _ADS :: IORef (String)
    , aDA :: IORef (String)
    , _ADA :: IORef (String)
    , rUST :: IORef (String)
    , _RUST :: IORef (String)
    , c :: IORef (String)
    , _C :: IORef (String)
    , cSHARP :: IORef (String)
    , _CSHARP :: IORef (String)
    , eRL :: IORef (String)
    , _ERL :: IORef (String)
    , hS :: IORef (String)
    , _HS :: IORef (String)
    , hX :: IORef (String)
    , _HX :: IORef (String)
    , lUA :: IORef (String)
    , _LUA :: IORef (String)
    , pAS :: IORef (String)
    , _PAS :: IORef (String)
    , mL :: IORef (String)
    , _ML :: IORef (String)
    , pL :: IORef (String)
    , _PL :: IORef (String)
    , rB :: IORef (String)
    , _RB :: IORef (String)
    , zIG :: IORef (String)
    , _ZIG :: IORef (String)
    , uNCRYPTED_EXTENSION :: IORef (String)
    , eNCRYPTED_EXTENSION :: IORef (String)
    }

instance JavaNull CommonDataFileStrings where
    javaNull = javaNullRecord "CommonDataFileStrings"

instance JavaEquals CommonDataFileStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommonDataFileStrings where
    (==) = jrecordEquals

instance JavaObjectClass CommonDataFileStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CommonDataFileStrings
newRecord_ = do
    header_ <- newJavaHeader
    xML <- newIORef ""
    _XML <- newIORef ""
    jSON <- newIORef ""
    _JSON <- newIORef ""
    xSL <- newIORef ""
    _XSL <- newIORef ""
    jAVA <- newIORef ""
    _JAVA <- newIORef ""
    kT <- newIORef ""
    _KT <- newIORef ""
    tS <- newIORef ""
    _TS <- newIORef ""
    jS <- newIORef ""
    _JS <- newIORef ""
    cPP <- newIORef ""
    _CPP <- newIORef ""
    h <- newIORef ""
    _H <- newIORef ""
    pY <- newIORef ""
    _PY <- newIORef ""
    gO <- newIORef ""
    _GO <- newIORef ""
    cS <- newIORef ""
    _CS <- newIORef ""
    aDB <- newIORef ""
    _ADB <- newIORef ""
    aDS <- newIORef ""
    _ADS <- newIORef ""
    aDA <- newIORef ""
    _ADA <- newIORef ""
    rUST <- newIORef ""
    _RUST <- newIORef ""
    c <- newIORef ""
    _C <- newIORef ""
    cSHARP <- newIORef ""
    _CSHARP <- newIORef ""
    eRL <- newIORef ""
    _ERL <- newIORef ""
    hS <- newIORef ""
    _HS <- newIORef ""
    hX <- newIORef ""
    _HX <- newIORef ""
    lUA <- newIORef ""
    _LUA <- newIORef ""
    pAS <- newIORef ""
    _PAS <- newIORef ""
    mL <- newIORef ""
    _ML <- newIORef ""
    pL <- newIORef ""
    _PL <- newIORef ""
    rB <- newIORef ""
    _RB <- newIORef ""
    zIG <- newIORef ""
    _ZIG <- newIORef ""
    uNCRYPTED_EXTENSION <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    let this = CommonDataFileStrings header_ xML _XML jSON _JSON xSL _XSL jAVA _JAVA kT _KT tS _TS jS _JS cPP _CPP h _H pY _PY gO _GO cS _CS aDB _ADB aDS _ADS aDA _ADA rUST _RUST c _C cSHARP _CSHARP eRL _ERL hS _HS hX _HX lUA _LUA pAS _PAS mL _ML pL _PL rB _RB zIG _ZIG uNCRYPTED_EXTENSION eNCRYPTED_EXTENSION
    jregisterLevel header_ this
    pure this

initFields_ :: CommonDataFileStrings -> IO ()
initFields_ this = do
    jset this.xML ("xml")
    jset this._XML (".xml")
    jset this.jSON ("json")
    jset this._JSON (".json")
    jset this.xSL ("xsl")
    jset this._XSL (".xsl")
    jset this.jAVA ("java")
    jset this._JAVA (".java")
    jset this.kT ("kt")
    jset this._KT (".kt")
    jset this.tS ("ts")
    jset this._TS (".ts")
    jset this.jS ("js")
    jset this._JS (".js")
    jset this.cPP ("cpp")
    jset this._CPP (".cpp")
    jset this.h ("h")
    jset this._H (".h")
    jset this.pY ("py")
    jset this._PY (".py")
    jset this.gO ("go")
    jset this._GO (".go")
    jset this.cS ("cs")
    jset this._CS (".cs")
    jset this.aDB ("adb")
    jset this._ADB (".adb")
    jset this.aDS ("ads")
    jset this._ADS (".ads")
    jset this.aDA ("ada")
    jset this._ADA (".ada")
    jset this.rUST ("rs")
    jset this._RUST (".rs")
    jset this.c ("c")
    jset this._C (".c")
    jset this.cSHARP ("cs")
    jset this._CSHARP (".cs")
    jset this.eRL ("erl")
    jset this._ERL (".erl")
    jset this.hS ("hs")
    jset this._HS (".hs")
    jset this.hX ("hx")
    jset this._HX (".hx")
    jset this.lUA ("lua")
    jset this._LUA (".lua")
    jset this.pAS ("pas")
    jset this._PAS (".pas")
    jset this.mL ("ml")
    jset this._ML (".ml")
    jset this.pL ("pl")
    jset this._PL (".pl")
    jset this.rB ("rb")
    jset this._RB (".rb")
    jset this.zIG ("zig")
    jset this._ZIG (".zig")
    jset this.uNCRYPTED_EXTENSION ((jget (this).xML))
    jset this.eNCRYPTED_EXTENSION ("abd")
    pure ()

new_ :: IO CommonDataFileStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CommonDataFileStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CommonDataFileStrings)
getInstance = do
        pure (CommonDataFileStrings.instance_)


