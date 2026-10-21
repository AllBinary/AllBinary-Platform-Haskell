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
-- package org.allbinary.game.input
module PCKeyFactory where

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
import qualified ABKeyEventWrapper -- same package or java.lang
import qualified PCGameKey -- same package or java.lang
import qualified Input -- same package or java.lang
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data PCKeyFactory = PCKeyFactory
    { header_ :: JavaHeader
    , keyEventWrapper :: IORef (ABKeyEventWrapper.ABKeyEventWrapper)
    , uNKNOWN :: IORef (PCGameKey.PCGameKey)
    , eNTER :: IORef (PCGameKey.PCGameKey)
    , _A :: IORef (PCGameKey.PCGameKey)
    , _B :: IORef (PCGameKey.PCGameKey)
    , _C :: IORef (PCGameKey.PCGameKey)
    , _D :: IORef (PCGameKey.PCGameKey)
    , _E :: IORef (PCGameKey.PCGameKey)
    , _F :: IORef (PCGameKey.PCGameKey)
    , _G :: IORef (PCGameKey.PCGameKey)
    , _H :: IORef (PCGameKey.PCGameKey)
    , _I :: IORef (PCGameKey.PCGameKey)
    , _J :: IORef (PCGameKey.PCGameKey)
    , _K :: IORef (PCGameKey.PCGameKey)
    , _L :: IORef (PCGameKey.PCGameKey)
    , _M :: IORef (PCGameKey.PCGameKey)
    , _N :: IORef (PCGameKey.PCGameKey)
    , _O :: IORef (PCGameKey.PCGameKey)
    , _P :: IORef (PCGameKey.PCGameKey)
    , _Q :: IORef (PCGameKey.PCGameKey)
    , _R :: IORef (PCGameKey.PCGameKey)
    , _S :: IORef (PCGameKey.PCGameKey)
    , _T :: IORef (PCGameKey.PCGameKey)
    , _U :: IORef (PCGameKey.PCGameKey)
    , _V :: IORef (PCGameKey.PCGameKey)
    , _W :: IORef (PCGameKey.PCGameKey)
    , _X :: IORef (PCGameKey.PCGameKey)
    , _Y :: IORef (PCGameKey.PCGameKey)
    , _Z :: IORef (PCGameKey.PCGameKey)
    , a :: IORef (PCGameKey.PCGameKey)
    , b :: IORef (PCGameKey.PCGameKey)
    , c :: IORef (PCGameKey.PCGameKey)
    , d :: IORef (PCGameKey.PCGameKey)
    , e :: IORef (PCGameKey.PCGameKey)
    , f :: IORef (PCGameKey.PCGameKey)
    , g :: IORef (PCGameKey.PCGameKey)
    , h :: IORef (PCGameKey.PCGameKey)
    , i :: IORef (PCGameKey.PCGameKey)
    , j :: IORef (PCGameKey.PCGameKey)
    , k :: IORef (PCGameKey.PCGameKey)
    , l :: IORef (PCGameKey.PCGameKey)
    , m :: IORef (PCGameKey.PCGameKey)
    , n :: IORef (PCGameKey.PCGameKey)
    , o :: IORef (PCGameKey.PCGameKey)
    , p :: IORef (PCGameKey.PCGameKey)
    , q :: IORef (PCGameKey.PCGameKey)
    , r :: IORef (PCGameKey.PCGameKey)
    , s :: IORef (PCGameKey.PCGameKey)
    , t :: IORef (PCGameKey.PCGameKey)
    , u :: IORef (PCGameKey.PCGameKey)
    , v :: IORef (PCGameKey.PCGameKey)
    , w :: IORef (PCGameKey.PCGameKey)
    , x :: IORef (PCGameKey.PCGameKey)
    , y :: IORef (PCGameKey.PCGameKey)
    , z :: IORef (PCGameKey.PCGameKey)
    , zERO :: IORef (PCGameKey.PCGameKey)
    , oNE :: IORef (PCGameKey.PCGameKey)
    , tWO :: IORef (PCGameKey.PCGameKey)
    , tHREE :: IORef (PCGameKey.PCGameKey)
    , fOUR :: IORef (PCGameKey.PCGameKey)
    , fIVE :: IORef (PCGameKey.PCGameKey)
    , sIX :: IORef (PCGameKey.PCGameKey)
    , sEVEN :: IORef (PCGameKey.PCGameKey)
    , eIGHT :: IORef (PCGameKey.PCGameKey)
    , nINE :: IORef (PCGameKey.PCGameKey)
    , dPAD_UP :: IORef (PCGameKey.PCGameKey)
    , dPAD_DOWN :: IORef (PCGameKey.PCGameKey)
    , dPAD_LEFT :: IORef (PCGameKey.PCGameKey)
    , dPAD_RIGHT :: IORef (PCGameKey.PCGameKey)
    , dPAD_UP2 :: IORef (PCGameKey.PCGameKey)
    , dPAD_DOWN2 :: IORef (PCGameKey.PCGameKey)
    , dPAD_LEFT2 :: IORef (PCGameKey.PCGameKey)
    , dPAD_RIGHT2 :: IORef (PCGameKey.PCGameKey)
    , cOMMA :: IORef (PCGameKey.PCGameKey)
    , sPACE :: IORef (PCGameKey.PCGameKey)
    , dEL :: IORef (PCGameKey.PCGameKey)
    , sTAR :: IORef (PCGameKey.PCGameKey)
    , qUESTION :: IORef (PCGameKey.PCGameKey)
    , pERIOD :: IORef (PCGameKey.PCGameKey)
    , eSCAPE :: IORef (PCGameKey.PCGameKey)
    , bACK_SPACE :: IORef (PCGameKey.PCGameKey)
    }

instance JavaNull PCKeyFactory where
    javaNull = javaNullRecord "PCKeyFactory"

instance JavaEquals PCKeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PCKeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass PCKeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PCKeyFactory
newRecord_ = do
    header_ <- newJavaHeader
    keyEventWrapper <- newIORef javaNull
    uNKNOWN <- newIORef javaNull
    eNTER <- newIORef javaNull
    _A <- newIORef javaNull
    _B <- newIORef javaNull
    _C <- newIORef javaNull
    _D <- newIORef javaNull
    _E <- newIORef javaNull
    _F <- newIORef javaNull
    _G <- newIORef javaNull
    _H <- newIORef javaNull
    _I <- newIORef javaNull
    _J <- newIORef javaNull
    _K <- newIORef javaNull
    _L <- newIORef javaNull
    _M <- newIORef javaNull
    _N <- newIORef javaNull
    _O <- newIORef javaNull
    _P <- newIORef javaNull
    _Q <- newIORef javaNull
    _R <- newIORef javaNull
    _S <- newIORef javaNull
    _T <- newIORef javaNull
    _U <- newIORef javaNull
    _V <- newIORef javaNull
    _W <- newIORef javaNull
    _X <- newIORef javaNull
    _Y <- newIORef javaNull
    _Z <- newIORef javaNull
    a <- newIORef javaNull
    b <- newIORef javaNull
    c <- newIORef javaNull
    d <- newIORef javaNull
    e <- newIORef javaNull
    f <- newIORef javaNull
    g <- newIORef javaNull
    h <- newIORef javaNull
    i <- newIORef javaNull
    j <- newIORef javaNull
    k <- newIORef javaNull
    l <- newIORef javaNull
    m <- newIORef javaNull
    n <- newIORef javaNull
    o <- newIORef javaNull
    p <- newIORef javaNull
    q <- newIORef javaNull
    r <- newIORef javaNull
    s <- newIORef javaNull
    t <- newIORef javaNull
    u <- newIORef javaNull
    v <- newIORef javaNull
    w <- newIORef javaNull
    x <- newIORef javaNull
    y <- newIORef javaNull
    z <- newIORef javaNull
    zERO <- newIORef javaNull
    oNE <- newIORef javaNull
    tWO <- newIORef javaNull
    tHREE <- newIORef javaNull
    fOUR <- newIORef javaNull
    fIVE <- newIORef javaNull
    sIX <- newIORef javaNull
    sEVEN <- newIORef javaNull
    eIGHT <- newIORef javaNull
    nINE <- newIORef javaNull
    dPAD_UP <- newIORef javaNull
    dPAD_DOWN <- newIORef javaNull
    dPAD_LEFT <- newIORef javaNull
    dPAD_RIGHT <- newIORef javaNull
    dPAD_UP2 <- newIORef javaNull
    dPAD_DOWN2 <- newIORef javaNull
    dPAD_LEFT2 <- newIORef javaNull
    dPAD_RIGHT2 <- newIORef javaNull
    cOMMA <- newIORef javaNull
    sPACE <- newIORef javaNull
    dEL <- newIORef javaNull
    sTAR <- newIORef javaNull
    qUESTION <- newIORef javaNull
    pERIOD <- newIORef javaNull
    eSCAPE <- newIORef javaNull
    bACK_SPACE <- newIORef javaNull
    let this = PCKeyFactory header_ keyEventWrapper uNKNOWN eNTER _A _B _C _D _E _F _G _H _I _J _K _L _M _N _O _P _Q _R _S _T _U _V _W _X _Y _Z a b c d e f g h i j k l m n o p q r s t u v w x y z zERO oNE tWO tHREE fOUR fIVE sIX sEVEN eIGHT nINE dPAD_UP dPAD_DOWN dPAD_LEFT dPAD_RIGHT dPAD_UP2 dPAD_DOWN2 dPAD_LEFT2 dPAD_RIGHT2 cOMMA sPACE dEL sTAR qUESTION pERIOD eSCAPE bACK_SPACE
    jregisterLevel header_ this
    jregisterMethod header_ "isSubmission" (\() -> isSubmission_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isBackSpace" (\() -> isBackSpace_impl this)
    jregisterMethod header_ "isUp" (\() -> isUp_impl this)
    jregisterMethod header_ "isDown" (\() -> isDown_impl this)
    jregisterMethod header_ "isLeft" (\() -> isLeft_impl this)
    jregisterMethod header_ "isRight" (\() -> isRight_impl this)
    jregisterMethod header_ "isEnter" (\() -> isEnter_impl this)
    pure this

initFields_ :: PCKeyFactory -> IO ()
initFields_ this = do
    jset this.keyEventWrapper =<< (ABKeyEventWrapper.getInstance)
    jset this.uNKNOWN =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_UNDEFINED) "UNKNOWN")
    jset this.eNTER =<< (PCGameKey.new_2 5 "Enter")
    jset this._A =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_A) "A")
    jset this._B =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_B) "B")
    jset this._C =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_C) "C")
    jset this._D =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_D) "D")
    jset this._E =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_E) "E")
    jset this._F =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_F) "F")
    jset this._G =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_G) "G")
    jset this._H =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_H) "H")
    jset this._I =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_I) "I")
    jset this._J =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_J) "J")
    jset this._K =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_K) "K")
    jset this._L =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_L) "L")
    jset this._M =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_M) "M")
    jset this._N =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_N) "N")
    jset this._O =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_O) "O")
    jset this._P =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_P) "P")
    jset this._Q =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_Q) "Q")
    jset this._R =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_R) "R")
    jset this._S =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_S) "S")
    jset this._T =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_T) "T")
    jset this._U =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_U) "U")
    jset this._V =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_V) "V")
    jset this._W =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_W) "W")
    jset this._X =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_X) "X")
    jset this._Y =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_Y) "Y")
    jset this._Z =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_Z) "Z")
    jset this.a =<< (PCGameKey.new_2 97 "a")
    jset this.b =<< (PCGameKey.new_2 98 "b")
    jset this.c =<< (PCGameKey.new_2 99 "c")
    jset this.d =<< (PCGameKey.new_2 100 "d")
    jset this.e =<< (PCGameKey.new_2 101 "e")
    jset this.f =<< (PCGameKey.new_2 102 "f")
    jset this.g =<< (PCGameKey.new_2 103 "g")
    jset this.h =<< (PCGameKey.new_2 104 "h")
    jset this.i =<< (PCGameKey.new_2 105 "i")
    jset this.j =<< (PCGameKey.new_2 106 "j")
    jset this.k =<< (PCGameKey.new_2 107 "k")
    jset this.l =<< (PCGameKey.new_2 108 "l")
    jset this.m =<< (PCGameKey.new_2 109 "m")
    jset this.n =<< (PCGameKey.new_2 110 "n")
    jset this.o =<< (PCGameKey.new_2 111 "o")
    jset this.p =<< (PCGameKey.new_2 112 "p")
    jset this.q =<< (PCGameKey.new_2 113 "q")
    jset this.r =<< (PCGameKey.new_2 114 "r")
    jset this.s =<< (PCGameKey.new_2 115 "s")
    jset this.t =<< (PCGameKey.new_2 116 "t")
    jset this.u =<< (PCGameKey.new_2 117 "u")
    jset this.v =<< (PCGameKey.new_2 118 "v")
    jset this.w =<< (PCGameKey.new_2 119 "w")
    jset this.x =<< (PCGameKey.new_2 120 (jget ((jio (PositionStrings.getInstance))).x))
    jset this.y =<< (PCGameKey.new_2 121 (jget ((jio (PositionStrings.getInstance))).y))
    jset this.z =<< (PCGameKey.new_2 122 "z")
    jset this.zERO =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_0) (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
    jset this.oNE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_1) (jget ((jio (CommonPhoneStrings.getInstance))).oNE))
    jset this.tWO =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_2) (jget ((jio (CommonPhoneStrings.getInstance))).tWO))
    jset this.tHREE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_3) (jget ((jio (CommonPhoneStrings.getInstance))).tHREE))
    jset this.fOUR =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_4) (jget ((jio (CommonPhoneStrings.getInstance))).fOUR))
    jset this.fIVE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_5) (jget ((jio (CommonPhoneStrings.getInstance))).fIVE))
    jset this.sIX =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_6) (jget ((jio (CommonPhoneStrings.getInstance))).sIX))
    jset this.sEVEN =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_7) (jget ((jio (CommonPhoneStrings.getInstance))).sEVEN))
    jset this.eIGHT =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_8) (jget ((jio (CommonPhoneStrings.getInstance))).eIGHT))
    jset this.nINE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_9) (jget ((jio (CommonPhoneStrings.getInstance))).nINE))
    jset this.dPAD_UP =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_UP) (jget ((jio (CommonPhoneStrings.getInstance))).uP))
    jset this.dPAD_DOWN =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_DOWN) (jget ((jio (CommonPhoneStrings.getInstance))).dOWN))
    jset this.dPAD_LEFT =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_LEFT) (jget ((jio (CommonPhoneStrings.getInstance))).lEFT))
    jset this.dPAD_RIGHT =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_RIGHT) (jget ((jio (CommonPhoneStrings.getInstance))).rIGHT))
    jset this.dPAD_UP2 ((jget (this).dPAD_UP))
    jset this.dPAD_DOWN2 ((jget (this).dPAD_DOWN))
    jset this.dPAD_LEFT2 ((jget (this).dPAD_LEFT))
    jset this.dPAD_RIGHT2 ((jget (this).dPAD_RIGHT))
    jset this.cOMMA =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_COMMA) "COMMA")
    jset this.sPACE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_SPACE) "SPACE")
    jset this.dEL =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_DELETE) "DEL")
    jset this.sTAR =<< (PCGameKey.new_2 42 (jget ((jio (CommonPhoneStrings.getInstance))).sTAR))
    jset this.qUESTION =<< (PCGameKey.new_2 47 "?")
    jset this.pERIOD =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_PERIOD) (jget ((jio (CommonSeps.getInstance))).pERIOD))
    jset this.eSCAPE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_ESCAPE) "Esc")
    jset this.bACK_SPACE =<< (PCGameKey.new_2 (jget ((jget (this).keyEventWrapper)).vK_BACK_SPACE) "Backspace")
    pure ()

new_ :: IO PCKeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PCKeyFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PCKeyFactory)
getInstance = do
        pure (PCKeyFactory.sINGLETON)


isSubmission :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission object_ a1 = jmethod object_ "isSubmission" (\() -> (isSubmission_impl (javaCast object_ :: PCKeyFactory))) () a1

isSubmission_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSubmission_super object_ a1 = (isSubmission_impl (javaCast object_ :: PCKeyFactory)) a1

isSubmission_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isSubmission_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).eNTER))) $ do
            javaReturn (True)
        pure (False)


isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: PCKeyFactory))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: PCKeyFactory)) a1

isDelete_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isDelete_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).dEL))) $ do
            javaReturn (True)
        pure (False)


isBackSpace :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace object_ a1 = jmethod object_ "isBackSpace" (\() -> (isBackSpace_impl (javaCast object_ :: PCKeyFactory))) () a1

isBackSpace_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isBackSpace_super object_ a1 = (isBackSpace_impl (javaCast object_ :: PCKeyFactory)) a1

isBackSpace_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isBackSpace_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).bACK_SPACE))) $ do
            javaReturn (True)
        pure (False)


isUp :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp object_ a1 = jmethod object_ "isUp" (\() -> (isUp_impl (javaCast object_ :: PCKeyFactory))) () a1

isUp_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isUp_super object_ a1 = (isUp_impl (javaCast object_ :: PCKeyFactory)) a1

isUp_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isUp_impl this input = do
    javaCatchReturn $ do
        when (((jtoObject input) == (jtoObject (jget (this).dPAD_UP))) || ((jtoObject input) == (jtoObject (jget (this).dPAD_UP2)))) $ do
            javaReturn (True)
        pure (False)


isDown :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown object_ a1 = jmethod object_ "isDown" (\() -> (isDown_impl (javaCast object_ :: PCKeyFactory))) () a1

isDown_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDown_super object_ a1 = (isDown_impl (javaCast object_ :: PCKeyFactory)) a1

isDown_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isDown_impl this input = do
    javaCatchReturn $ do
        when (((jtoObject input) == (jtoObject (jget (this).dPAD_DOWN))) || ((jtoObject input) == (jtoObject (jget (this).dPAD_DOWN2)))) $ do
            javaReturn (True)
        pure (False)


isLeft :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft object_ a1 = jmethod object_ "isLeft" (\() -> (isLeft_impl (javaCast object_ :: PCKeyFactory))) () a1

isLeft_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isLeft_super object_ a1 = (isLeft_impl (javaCast object_ :: PCKeyFactory)) a1

isLeft_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isLeft_impl this input = do
    javaCatchReturn $ do
        when (((jtoObject input) == (jtoObject (jget (this).dPAD_LEFT))) || ((jtoObject input) == (jtoObject (jget (this).dPAD_LEFT2)))) $ do
            javaReturn (True)
        pure (False)


isRight :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight object_ a1 = jmethod object_ "isRight" (\() -> (isRight_impl (javaCast object_ :: PCKeyFactory))) () a1

isRight_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isRight_super object_ a1 = (isRight_impl (javaCast object_ :: PCKeyFactory)) a1

isRight_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isRight_impl this input = do
    javaCatchReturn $ do
        when (((jtoObject input) == (jtoObject (jget (this).dPAD_RIGHT))) || ((jtoObject input) == (jtoObject (jget (this).dPAD_RIGHT2)))) $ do
            javaReturn (True)
        pure (False)


isEnter :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter object_ a1 = jmethod object_ "isEnter" (\() -> (isEnter_impl (javaCast object_ :: PCKeyFactory))) () a1

isEnter_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isEnter_super object_ a1 = (isEnter_impl (javaCast object_ :: PCKeyFactory)) a1

isEnter_impl :: PCKeyFactory -> Input.Input -> IO (Bool)
isEnter_impl this input = do
    javaCatchReturn $ do
        when ((jtoObject input) == (jtoObject (jget (this).eNTER))) $ do
            javaReturn (True)
        pure (False)


