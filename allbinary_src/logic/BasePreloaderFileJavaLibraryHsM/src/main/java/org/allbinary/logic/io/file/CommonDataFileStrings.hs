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
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
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
    , pM :: IORef (String)
    , _PM :: IORef (String)
    , kTS :: IORef (String)
    , _KTS :: IORef (String)
    , cBL :: IORef (String)
    , _CBL :: IORef (String)
    , cOB :: IORef (String)
    , _COB :: IORef (String)
    , f90 :: IORef (String)
    , _F90 :: IORef (String)
    , f :: IORef (String)
    , _F :: IORef (String)
    , dART :: IORef (String)
    , _DART :: IORef (String)
    , eX :: IORef (String)
    , _EX :: IORef (String)
    , eXS :: IORef (String)
    , _EXS :: IORef (String)
    , kOTLIN :: IORef (String)
    , tYPESCRIPT :: IORef (String)
    , jAVASCRIPT :: IORef (String)
    , c_PLUS_PLUS :: IORef (String)
    , pYTHON :: IORef (String)
    , c_SHARP :: IORef (String)
    , rUST_NAME :: IORef (String)
    , rUBY :: IORef (String)
    , pERL :: IORef (String)
    , oBJECT_PASCAL :: IORef (String)
    , oCAML :: IORef (String)
    , hASKELL :: IORef (String)
    , hAXE :: IORef (String)
    , eRLANG :: IORef (String)
    , cOBOL :: IORef (String)
    , fORTRAN :: IORef (String)
    , eLIXIR :: IORef (String)
    , cPLUSPLUS :: IORef (String)
    , gOLANG :: IORef (String)
    , cSHARP_ALIAS :: IORef (String)
    , c23 :: IORef (String)
    , pASCAL :: IORef (String)
    , oBJECT_PASCAL_ALIAS :: IORef (String)
    , kT_SHORT_NAME :: IORef (String)
    , tS_SHORT_NAME :: IORef (String)
    , jS_SHORT_NAME :: IORef (String)
    , cPP_SHORT_NAME :: IORef (String)
    , pY_SHORT_NAME :: IORef (String)
    , gO_SHORT_NAME :: IORef (String)
    , cS_SHORT_NAME :: IORef (String)
    , aDA_SHORT_NAME :: IORef (String)
    , rUST_SHORT_NAME :: IORef (String)
    , lUA_SHORT_NAME :: IORef (String)
    , c_SHORT_NAME :: IORef (String)
    , zIG_SHORT_NAME :: IORef (String)
    , rB_SHORT_NAME :: IORef (String)
    , pL_SHORT_NAME :: IORef (String)
    , pAS_SHORT_NAME :: IORef (String)
    , mL_SHORT_NAME :: IORef (String)
    , hS_SHORT_NAME :: IORef (String)
    , hX_SHORT_NAME :: IORef (String)
    , eRL_SHORT_NAME :: IORef (String)
    , cBL_SHORT_NAME :: IORef (String)
    , f90_SHORT_NAME :: IORef (String)
    , dART_SHORT_NAME :: IORef (String)
    , eX_SHORT_NAME :: IORef (String)
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

instance_ :: CommonDataFileStrings
{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

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
    pM <- newIORef ""
    _PM <- newIORef ""
    kTS <- newIORef ""
    _KTS <- newIORef ""
    cBL <- newIORef ""
    _CBL <- newIORef ""
    cOB <- newIORef ""
    _COB <- newIORef ""
    f90 <- newIORef ""
    _F90 <- newIORef ""
    f <- newIORef ""
    _F <- newIORef ""
    dART <- newIORef ""
    _DART <- newIORef ""
    eX <- newIORef ""
    _EX <- newIORef ""
    eXS <- newIORef ""
    _EXS <- newIORef ""
    kOTLIN <- newIORef ""
    tYPESCRIPT <- newIORef ""
    jAVASCRIPT <- newIORef ""
    c_PLUS_PLUS <- newIORef ""
    pYTHON <- newIORef ""
    c_SHARP <- newIORef ""
    rUST_NAME <- newIORef ""
    rUBY <- newIORef ""
    pERL <- newIORef ""
    oBJECT_PASCAL <- newIORef ""
    oCAML <- newIORef ""
    hASKELL <- newIORef ""
    hAXE <- newIORef ""
    eRLANG <- newIORef ""
    cOBOL <- newIORef ""
    fORTRAN <- newIORef ""
    eLIXIR <- newIORef ""
    cPLUSPLUS <- newIORef ""
    gOLANG <- newIORef ""
    cSHARP_ALIAS <- newIORef ""
    c23 <- newIORef ""
    pASCAL <- newIORef ""
    oBJECT_PASCAL_ALIAS <- newIORef ""
    kT_SHORT_NAME <- newIORef ""
    tS_SHORT_NAME <- newIORef ""
    jS_SHORT_NAME <- newIORef ""
    cPP_SHORT_NAME <- newIORef ""
    pY_SHORT_NAME <- newIORef ""
    gO_SHORT_NAME <- newIORef ""
    cS_SHORT_NAME <- newIORef ""
    aDA_SHORT_NAME <- newIORef ""
    rUST_SHORT_NAME <- newIORef ""
    lUA_SHORT_NAME <- newIORef ""
    c_SHORT_NAME <- newIORef ""
    zIG_SHORT_NAME <- newIORef ""
    rB_SHORT_NAME <- newIORef ""
    pL_SHORT_NAME <- newIORef ""
    pAS_SHORT_NAME <- newIORef ""
    mL_SHORT_NAME <- newIORef ""
    hS_SHORT_NAME <- newIORef ""
    hX_SHORT_NAME <- newIORef ""
    eRL_SHORT_NAME <- newIORef ""
    cBL_SHORT_NAME <- newIORef ""
    f90_SHORT_NAME <- newIORef ""
    dART_SHORT_NAME <- newIORef ""
    eX_SHORT_NAME <- newIORef ""
    uNCRYPTED_EXTENSION <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    let this = CommonDataFileStrings header_ xML _XML jSON _JSON xSL _XSL jAVA _JAVA kT _KT tS _TS jS _JS cPP _CPP h _H pY _PY gO _GO cS _CS aDB _ADB aDS _ADS aDA _ADA rUST _RUST c _C cSHARP _CSHARP eRL _ERL hS _HS hX _HX lUA _LUA pAS _PAS mL _ML pL _PL rB _RB zIG _ZIG pM _PM kTS _KTS cBL _CBL cOB _COB f90 _F90 f _F dART _DART eX _EX eXS _EXS kOTLIN tYPESCRIPT jAVASCRIPT c_PLUS_PLUS pYTHON c_SHARP rUST_NAME rUBY pERL oBJECT_PASCAL oCAML hASKELL hAXE eRLANG cOBOL fORTRAN eLIXIR cPLUSPLUS gOLANG cSHARP_ALIAS c23 pASCAL oBJECT_PASCAL_ALIAS kT_SHORT_NAME tS_SHORT_NAME jS_SHORT_NAME cPP_SHORT_NAME pY_SHORT_NAME gO_SHORT_NAME cS_SHORT_NAME aDA_SHORT_NAME rUST_SHORT_NAME lUA_SHORT_NAME c_SHORT_NAME zIG_SHORT_NAME rB_SHORT_NAME pL_SHORT_NAME pAS_SHORT_NAME mL_SHORT_NAME hS_SHORT_NAME hX_SHORT_NAME eRL_SHORT_NAME cBL_SHORT_NAME f90_SHORT_NAME dART_SHORT_NAME eX_SHORT_NAME uNCRYPTED_EXTENSION eNCRYPTED_EXTENSION
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
    jset this.pM ("pm")
    jset this._PM (".pm")
    jset this.kTS ("kts")
    jset this._KTS (".kts")
    jset this.cBL ("cbl")
    jset this._CBL (".cbl")
    jset this.cOB ("cob")
    jset this._COB (".cob")
    jset this.f90 ("f90")
    jset this._F90 (".f90")
    jset this.f ("f")
    jset this._F (".f")
    jset this.dART ("dart")
    jset this._DART (".dart")
    jset this.eX ("ex")
    jset this._EX (".ex")
    jset this.eXS ("exs")
    jset this._EXS (".exs")
    jset this.kOTLIN ("kotlin")
    jset this.tYPESCRIPT ("typescript")
    jset this.jAVASCRIPT ("javascript")
    jset this.c_PLUS_PLUS ("c++")
    jset this.pYTHON ("python")
    jset this.c_SHARP ("c#")
    jset this.rUST_NAME ("rust")
    jset this.rUBY ("ruby")
    jset this.pERL ("perl")
    jset this.oBJECT_PASCAL ("objectpascal")
    jset this.oCAML ("ocaml")
    jset this.hASKELL ("haskell")
    jset this.hAXE ("haxe")
    jset this.eRLANG ("erlang")
    jset this.cOBOL ("cobol")
    jset this.fORTRAN ("fortran")
    jset this.eLIXIR ("elixir")
    jset this.cPLUSPLUS ("cplusplus")
    jset this.gOLANG ("golang")
    jset this.cSHARP_ALIAS ("csharp")
    jset this.c23 ("c23")
    jset this.pASCAL ("pascal")
    jset this.oBJECT_PASCAL_ALIAS ("object pascal")
    jset this.kT_SHORT_NAME ("Kt")
    jset this.tS_SHORT_NAME ("Ts")
    jset this.jS_SHORT_NAME ("Js")
    jset this.cPP_SHORT_NAME ("Cpp")
    jset this.pY_SHORT_NAME ("Py")
    jset this.gO_SHORT_NAME ("Go")
    jset this.cS_SHORT_NAME ("Cs")
    jset this.aDA_SHORT_NAME ("Ada")
    jset this.rUST_SHORT_NAME ("Rust")
    jset this.lUA_SHORT_NAME ("Lua")
    jset this.c_SHORT_NAME ("C")
    jset this.zIG_SHORT_NAME ("Zig")
    jset this.rB_SHORT_NAME ("Rb")
    jset this.pL_SHORT_NAME ("Pl")
    jset this.pAS_SHORT_NAME ("Pas")
    jset this.mL_SHORT_NAME ("Ml")
    jset this.hS_SHORT_NAME ("Hs")
    jset this.hX_SHORT_NAME ("Hx")
    jset this.eRL_SHORT_NAME ("Erl")
    jset this.cBL_SHORT_NAME ("Cbl")
    jset this.f90_SHORT_NAME ("F90")
    jset this.dART_SHORT_NAME ("Dart")
    jset this.eX_SHORT_NAME ("Ex")
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


