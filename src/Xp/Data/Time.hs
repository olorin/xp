{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Xp.Data.Time (
    Interval(..)
  , days
  , weeks

  , Recurrence(..)
  ) where

import           Psi

import           Text.Show (Show)

newtype Interval =
  Interval {
    unInterval :: Word
  } deriving (Eq, Show, Ord, Num)

days :: Word -> Interval
days = Interval

weeks :: Word -> Interval
weeks = Interval . (* 7)

data Recurrence =
    Every !Interval
  deriving (Eq, Show)

