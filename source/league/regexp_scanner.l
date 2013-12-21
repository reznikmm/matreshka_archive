------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

--  Binary properties
ASCII_HEX_DIGIT			[Aa][Ss][Cc][Ii][Ii](_|-|\p{Pattern_White_Space}*)[Hh][Ee][Xx](_|\p{Pattern_White_Space}*)[Dd][Ii][Gg][Ii][Tt]|[Aa][Hh][Ee][Xx]
ALPHABETIC			[Aa][Ll][Pp][Hh][Aa][Bb][Ee][Tt][Ii][Cc]|[Aa][Ll][Pp][Hh][Aa]
BIDI_CONTROL			[Bb][Ii][Dd][Ii](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Rr][Oo][Ll]|[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Cc]
BIDI_MIRRORED			[Bb][Ii][Dd][Ii](_|-|\p{Pattern_White_Space}*)[Mm][Ii][Rr][Rr][Oo][Rr][Ee][Dd]|[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Mm]
CASED				[Cc][Aa][Ss][Ee][Dd]
CASE_IGNORABLE			[Cc][Aa][Ss][Ee](_|-|\p{Pattern_White_Space}*)[Ii][Gg][Nn][Oo][Rr][Aa][Bb][Ll][Ee]|[Cc][Ii]
CHANGES_WHEN_CASEFOLDED		[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Cc][Aa][Ss][Ee][Ff][Oo][Ll][Dd][Ee][Dd]|[Cc][Ww][Cc][Ff]
CHANGES_WHEN_CASEMAPPED		[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Cc][Aa][Ss][Ee][Mm][Aa][Pp][Pp][Ee][Dd]|[Cc][Ww][Cc][Mm]
CHANGES_WHEN_NFKC_CASEFOLDED	[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Cc](_|-|\p{Pattern_White_Space}*)[Cc][Aa][Ss][Ee][Ff][Oo][Ll][Dd][Ee][Dd]|[Cc][Ww][Kk][Cc][Ff]
CHANGES_WHEN_LOWERCASED		[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee][Dd]|[Cc][Ww][Ll]
CHANGES_WHEN_TITLECASED		[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Tt][Ii][Tt][Ll][Ee][Cc][Aa][Ss][Ee][Dd]|[Cc][Ww][Tt]
CHANGES_WHEN_UPPERCASED		[Cc][Hh][Aa][Nn][Gg][Ee][Ss](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee][Dd]|[Cc][Ww][Uu]
COMPOSITION_EXCLUSION		[Cc][Oo][Mm][Pp][Oo][Ss][Ii][Tt][Ii][Oo][Nn](_|-|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ll][Uu][Ss][Ii][Oo][Nn]|[Cc][Ee]
FULL_COMPOSITION_EXCLUSION	[Ff][Uu][Ll][Ll](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Mm][Pp][Oo][Ss][Ii][Tt][Ii][Oo][Nn](_|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ll][Uu][Ss][Ii][Oo][Nn]|[Cc][Oo][Mm][Pp](_|\p{Pattern_White_Space}*)[Ee][Xx]
DASH				[Dd][Aa][Ss][Hh]
DEPRECATED			[Dd][Ee][Pp][Rr][Ee][Cc][Aa][Tt][Ee][Dd]|[Dd][Ee][Pp]
DEFAULT_IGNORABLE_CODE_POINT	[Dd][Ee][Ff][Aa][Uu][Ll][Tt](_|-|\p{Pattern_White_Space}*)[Ii][Gg][Nn][Oo][Rr][Aa][Bb][Ll][Ee](_|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee](_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Dd][Ii]
DIACRITIC			[Dd][Ii][Aa][Cc][Rr][Ii][Tt][Ii][Cc]|[Dd][Ii][Aa]
EXTENDER			[Ee][Xx][Tt][Ee][Nn][Dd][Ee][Rr]|[Ee][Xx][Tt]
GRAPHEME_BASE			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|-|\p{Pattern_White_Space}*)[Bb][Aa][Ss][Ee]|[Gg][Rr](_|\p{Pattern_White_Space}*)[Bb][Aa][Ss][Ee]
GRAPHEME_EXTEND			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|-|\p{Pattern_White_Space}*)[Ee][Xx][Tt][Ee][Nn][Dd]|[Gg][Rr](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt]
GRAPHEME_LINK			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|-|\p{Pattern_White_Space}*)[Ll][Ii][Nn][Kk]|[Gg][Rr](_|\p{Pattern_White_Space}*)[Ll][Ii][Nn][Kk]
HEX_DIGIT			[Hh][Ee][Xx](_|-|\p{Pattern_White_Space}*)[Dd][Ii][Gg][Ii][Tt]|[Hh][Ee][Xx]
HYPHEN				[Hh][Yy][Pp][Hh][Ee][Nn]
ID_CONTINUE			[Ii][Dd](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Ii][Dd][Cc]
IDEOGRAPHIC			[Ii][Dd][Ee][Oo][Gg][Rr][Aa][Pp][Hh][Ii][Cc]|[Ii][Dd][Ee][Oo]
ID_START			[Ii][Dd](_|-|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Ii][Dd][Ss]
IDS_BINARY_OPERATOR		[Ii][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Bb][Ii][Nn][Aa][Rr][Yy](_|\p{Pattern_White_Space}*)[Oo][Pp][Ee][Rr][Aa][Tt][Oo][Rr]|[Ii][Dd][Ss][Bb]
IDS_TRINARY_OPERATOR		[Ii][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Tt][Rr][Ii][Nn][Aa][Rr][Yy](_|\p{Pattern_White_Space}*)[Oo][Pp][Ee][Rr][Aa][Tt][Oo][Rr]|[Ii][Dd][Ss][Tt]
JOIN_CONTROL			[Jj][Oo][Ii][Nn](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Rr][Oo][Ll]|[Jj][Oo][Ii][Nn](_|\p{Pattern_White_Space}*)[Cc]
LOGICAL_ORDER_EXCEPTION		[Ll][Oo][Gg][Ii][Cc][Aa][Ll](_|-|\p{Pattern_White_Space}*)[Oo][Rr][Dd][Ee][Rr](_|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ee][Pp][Tt][Ii][Oo][Nn]|[Ll][Oo][Ee]
LOWERCASE			[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee]|[Ll][Oo][Ww][Ee][Rr]
MATH				[Mm][Aa][Tt][Hh]
NONCHARACTER_CODE_POINT		[Nn][Oo][Nn][Cc][Hh][Aa][Rr][Aa][Cc][Tt][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee](_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Nn][Cc][Hh][Aa][Rr]
OTHER_ALPHABETIC		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Aa][Ll][Pp][Hh][Aa][Bb][Ee][Tt][Ii][Cc]|[Oo][Aa][Ll][Pp][Hh][Aa]
OTHER_DEFAULT_IGNORABLE_CODE_POINT	[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Dd][Ee][Ff][Aa][Uu][Ll][Tt](_|\p{Pattern_White_Space}*)[Ii][Gg][Nn][Oo][Rr][Aa][Bb][Ll][Ee](_|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee](_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Oo][Dd][Ii]
OTHER_GRAPHEME_EXTEND		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt][Ee][Nn][Dd]|[Oo][Gg][Rr](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt]
OTHER_ID_CONTINUE		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ii][Dd](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Oo][Ii][Dd][Cc]
OTHER_ID_START			[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ii][Dd](_|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Oo][Ii][Dd][Ss]
OTHER_LOWERCASE			[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee]|[Oo][Ll][Oo][Ww][Ee][Rr]
OTHER_MATH			[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Mm][Aa][Tt][Hh]|[Oo][Mm][Aa][Tt][Hh]
OTHER_UPPERCASE			[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee]|[Oo][Uu][Pp][Pp][Ee][Rr]
PATTERN_SYNTAX			[Pp][Aa][Tt][Tt][Ee][Rr][Nn](_|-|\p{Pattern_White_Space}*)[Ss][Yy][Nn][Tt][Aa][Xx]|[Pp][Aa][Tt](_|\p{Pattern_White_Space}*)[Ss][Yy][Nn]
PATTERN_WHITE_SPACE		[Pp][Aa][Tt][Tt][Ee][Rr][Nn](_|-|\p{Pattern_White_Space}*)[Ww][Hh][Ii][Tt][Ee](_|\p{Pattern_White_Space}*)[Ss][Pp][Aa][Cc][Ee]|[Pp][Aa][Tt](_|\p{Pattern_White_Space}*)[Ww][Ss]
QUOTATION_MARK			[Qq][Uu][Oo][Tt][Aa][Tt][Ii][Oo][Nn](_|-|\p{Pattern_White_Space}*)[Mm][Aa][Rr][Kk]|[Qq][Mm][Aa][Rr][Kk]
RADICAL				[Rr][Aa][Dd][Ii][Cc][Aa][Ll]
SOFT_DOTTED			[Ss][Oo][Ff][Tt](_|-|\p{Pattern_White_Space}*)[Dd][Oo][Tt][Tt][Ee][Dd]|[Ss][Dd]
STERM				[Ss][Tt][Ee][Rr][Mm]
TERMINAL_PUNCTUATION		[Tt][Ee][Rr][Mm][Ii][Nn][Aa][Ll](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Tt][Ee][Rr][Mm]
UNIFIED_IDEOGRAPH		[Uu][Nn][Ii][Ff][Ii][Ee][Dd](_|-|\p{Pattern_White_Space}*)[Ii][Dd][Ee][Oo][Gg][Rr][Aa][Pp][Hh]|[Uu][Ii][Dd][Ee][Oo]
UPPERCASE			[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee]|[Uu][Pp][Pp][Ee][Rr]
VARIATION_SELECTOR		[Vv][Aa][Rr][Ii][Aa][Tt][Ii][Oo][Nn](_|-|\p{Pattern_White_Space}*)[Ss][Ee][Ll][Ee][Cc][Tt][Oo][Rr]|[Vv][Ss]
WHITE_SPACE			[Ww][Hh][Ii][Tt][Ee](_|-|\p{Pattern_White_Space}*)[Ss][Pp][Aa][Cc][Ee]|[Ws][Ss][Pp][Aa][Cc][Ee]|[Ss][Pp][Aa][Cc][Ee]
XID_CONTINUE			[Xx][Ii][Dd](_|-|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Xx][Ii][Dd][Cc]
XID_START			[Xx][Ii][Dd](_|-|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Xx][Ii][Dd][Ss]
EXPANDS_ON_NFC			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Cc]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Cc]
EXPANDS_ON_NFD			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Dd]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Dd]
EXPANDS_ON_NFKC			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Cc]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Cc]
EXPANDS_ON_NFKD			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|-|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Dd]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Dd]

--  Values of General_Category property
OTHER			[Oo][Tt][Hh][Ee][Rr]|[Cc]
CONTROL			[Cc][Oo][Nn][Tt][Rr][Oo][Ll]|[Cc][Cc]|[Cc][Nn][Tt][Rr][Ll]
FORMAT			[Ff][Oo][Rr][Mm][Aa][Tt]|[Cc][Ff]
UNASSIGNED		[Uu][Nn][Aa][Ss][Ss][Ii][Gg][Nn][Ee][Dd]|[Cc][Nn]
PRIVATE_USE		[Pp][Rr][Ii][Vv][Aa][Tt][Ee](_|-|\p{Pattern_White_Space}*)[Uu][Ss][Ee]|[Cc][Oo]
SURROGATE		[Ss][Uu][Rr][Rr][Oo][Gg][Aa][Tt][Ee]|[Cc][Ss]
LETTER			[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll]
CASED_LETTER		[Cc][Aa][Ss][Ee][Dd](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Cc]
LOWERCASE_LETTER	[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Ll]
MODIFIER_LETTER		[Mm][Oo][Dd][Ii][Ff][Ii][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Mm]
OTHER_LETTER		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Oo]
TITLECASE_LETTER	[Tt][Ii][Tt][Ll][Ee][Cc][Aa][Ss][Ee](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Tt]
UPPERCASE_LETTER	[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee](_|-|\p{Pattern_White_Space}*)[Ll][Ee][Tt][Tt][Ee][Rr]|[Ll][Uu]
MARK			[Mm][Aa][Rr][Kk]
SPACING_MARK		[Ss][Pp][Aa][Cc][Ii][Nn][Gg](_|-|\p{Pattern_White_Space}*)[Mm][Aa][Rr][Kk]|[Mm][Cc]
ENCLOSING_MARK		[Ee][Nn][Cc][Ll][Oo][Ss][Ii][Nn][Gg](_|-|\p{Pattern_White_Space}*)[Mm][Aa][Rr][Kk]|[Mm][Ee]
NONSPACING_MARK		[Nn][Oo][Nn][Ss][Pp][Aa][Cc][Ii][Nn][Gg](_|-|\p{Pattern_White_Space}*)[Mm][Aa][Rr][Kk]|[Mm][Nn]
NUMBER			[Nn][Uu][Mm][Bb][Ee][Rr]|[Nn]
DECIMAL_NUMBER		[Dd][Ee][Cc][Ii][Mm][Aa][Ll](_|-|\p{Pattern_White_Space}*)[Nn][Uu][Mm][Bb][Ee][Rr]|[nN][Dd]|[Dd][Ii][Gg][Ii][Tt]
LETTER_NUMBER		[Ll][Ee][Tt][Tt][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Nn][Uu][Mm][Bb][Ee][Rr]|[Nn][Ll]
OTHER_NUMBER		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Nn][Uu][Mm][Bb][Ee][Rr]|[Nn][Oo]
PUNCTUATION		[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp]|[Pp][Uu][Nn][Cc][Tt]
CONNECTOR_PUNCTUATION	[Cc][Oo][Nn][Nn][Ee][Cc][Tt][Oo][Rr](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Cc]
DASH_PUNCTUATION	[Dd][Aa][Ss][Hh](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Dd]
CLOSE_PUNCTUATION	[Cc][Ll][Oo][Ss][Ee](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Ee]|[Pp][Ee]
FINAL_PUNCTUATION	[Ff][Ii][Nn][Aa][Ll](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Ff]
INITIAL_PUNCTUATION	[Ii][Nn][Ii][Tt][Ii][Aa][Ll](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Ii]
OTHER_PUNCTUATION	[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Oo]
OPEN_PUNCTUATION	[Oo][Pp][Ee][Nn](_|-|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Pp][Ss]
SYMBOL			[Ss][Yy][Mm][Bb][Oo][Ll]|[Ss]
CURRENCY_SYMBOL		[Cc][Uu][Rr][Rr][Ee][Nn][Cc][Yy](_|-|\p{Pattern_White_Space}*)[Ss][Yy][Mm][Bb][Oo][Ll]|[Ss][Cc]
MODIFIER_SYMBOL		[Mm][Oo][Dd][Ii][Ff][Ii][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ss][Yy][Mm][Bb][Oo][Ll]|[Ss][Kk]
MATH_SYMBOL		[Mm][Aa][Tt][Hh](_|-|\p{Pattern_White_Space}*)[Ss][Yy][Mm][Bb][Oo][Ll]|[Ss][Mm]
OTHER_SYMBOL		[Oo][Tt][Hh][Ee][Rr](_|-|\p{Pattern_White_Space}*)[Ss][Yy][Mm][Bb][Oo][Ll]|[Ss][Oo]
SEPARATOR		[Ss][Ee][Pp][Aa][Rr][Aa][Tt][Oo][Rr]|[Zz]
LINE_SEPARATOR		[Ll][Ii][Nn][Ee](_|-|\p{Pattern_White_Space}*)[Ss][Ee][Pp][Aa][Rr][Aa][Tt][Oo][Rr]|[Zz][Ll]
PARAGRAPH_SEPARATOR	[Pp][Aa][Rr][Aa][Gg][Rr][Aa][Pp][Hh](_|-|\p{Pattern_White_Space}*)[Ss][Ee][Pp][Aa][Rr][Aa][Tt][Oo][Rr]|[Zz][Pp]
SPACE_SEPARATOR		[Ss][Pp][Aa][Cc][Ee](_|-|\p{Pattern_White_Space}*)[Ss][Ee][Pp][Aa][Rr][Aa][Tt][Oo][Rr]|[Zz][Ss]

%x LITERAL
%x CHARACTER_CLASS
%x MULTIPLICITY
%x COMMENT
%x PROPERTY_SPECIFICATION_UNICODE
%x PROPERTY_SPECIFICATION_POSIX

%%

"." {

   return Token_Any_Code_Point;
}

"\\Q" {
   Enter_Start_Condition (Self, LITERAL);
}

<LITERAL>"\\E" {
   Enter_Start_Condition (Self, INITIAL);
}

<LITERAL>.|\n {  --  aflex . is any but newline
   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First));

      return Token_Code_Point;
   end;
}

<LITERAL><<EOF>> {
   --  Unexprected end of literal

   YYError (Self, Unexpected_End_Of_Literal, 0);

   return Error;
}

"(?:" {
   --  Start of subexpression (non-capturing)

   return Token_Subexpression_Begin;
}

"(?#" {
   --  Start of the comment

   Enter_Start_Condition (Self, COMMENT);
}

<COMMENT>")" {
   --  End of comment

   Enter_Start_Condition (Self, INITIAL);
}

<COMMENT>.|\n {
   --  Comment

   null;
}

<COMMENT><<EOF>> {
   --  Unexpected end of comment

   return Error;
}

"^" {
   --  Start of line anchor

   return Token_Start_Of_Line;
}

"$" {
   --  End of line anchor

   return Token_End_Of_Line;
}

"(" {
   --  Start of subexpression (capturing)

   return Token_Subexpression_Capture_Begin;
}

")" {
   --  End of subexpression

   return Token_Subexpression_End;
}

"|" {
   --  Alternation

   return Token_Alternation;
}

"??" {

   return Token_Optional_Lazy;
}

"?" {

   return Token_Optional_Greedy;
}

"*?" {

   return Token_Zero_Or_More_Lazy;
}

"*" {

   return Token_Zero_Or_More_Greedy;
}

"+?" {

   return Token_One_Or_More_Lazy;
}

"+" {

   return Token_One_Or_More_Greedy;
}

"[" {
   --  Enter character class

   Self.Character_Class_Mode := True;
   Enter_Start_Condition (Self, CHARACTER_CLASS);

   return Token_Character_Class_Begin;
}

<CHARACTER_CLASS>"]" {
   --  XXX Leave character class

   Self.Character_Class_Mode := False;
   Enter_Start_Condition (Self, INITIAL);

   return Token_Character_Class_End;
}

<CHARACTER_CLASS>\^ {
   --  Negate character class

   return Token_Negate_Character_Class;
}

<CHARACTER_CLASS>- {
   --  Range of characters

   return Token_Character_Class_Range;
}

<CHARACTER_CLASS><<EOF>> {
   --  Unexpected and of character class

   YYError (Self, Unexpected_End_Of_Character_Class, 0);

   return Error;
}

"{" {
   --  Multiplicity

   Enter_Start_Condition (Self, MULTIPLICITY);

   return Token_Multiplicity_Begin;
}

<MULTIPLICITY>"}" {
   --  End of multiplicity specifier

   Enter_Start_Condition (Self, INITIAL);

   return Token_Multiplicity_End_Greedy;
}

<MULTIPLICITY>"}?" {
   --  End of multiplicity specifier

   Enter_Start_Condition (Self, INITIAL);

   return Token_Multiplicity_End_Lazy;
}

<MULTIPLICITY>"," {
   --  Number separator

   return Token_Multiplicity_Comma;
}

<MULTIPLICITY>[0-9]+ {
   --  Number

   YYLVal := (Number, Natural'Wide_Wide_Value (YYText));

   return Token_Multiplicity_Number;
}

<MULTIPLICITY>[^\p{Pattern_White_Space}] {
   --  Unexpected character in multiplicidy declaration

   YYError (Self, Unexpected_Character_in_Multiplicity_Specifier, YY_Back_Index);

   return Error;
}

<MULTIPLICITY><<EOF>> {
   --  Unexpected end of multiplicity specifier

   YYError (Self, Unexpected_End_Of_Multiplicity_Specifier, 0);

   return Error;
}

<INITIAL,CHARACTER_CLASS>\\[\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Escaped pattern special code point

   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First + 1));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>"\\n" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.LF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\r" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.CR);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\t" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.HT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\a" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.BEL);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\e" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.ESC);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\f" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.FF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\v" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.VT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\c"[A-Z] {
--   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.VT);

   raise Program_Error;
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\u\p{Hex_Digit}{4} {
   --  Short hex notation of the code point

   YYLVal :=
     (Match_Code_Point,
      Wide_Wide_Character'Val
        (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 6) & "#")));

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\U\p{Hex_Digit}{8} {
   --  Long hex notation of the code point

   YYLVal :=
     (Match_Code_Point,
      Wide_Wide_Character'Val
        (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 10) & "#")));

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\p\{ {
   --  Unicode property specification

   Enter_Start_Condition (Self, PROPERTY_SPECIFICATION_UNICODE);

   return Token_Property_Begin_Positive;
}

<INITIAL,CHARACTER_CLASS>"[:" {
   --  Unicode property specification

   Enter_Start_Condition (Self, PROPERTY_SPECIFICATION_POSIX);

   return Token_Property_Begin_Positive;
}

<INITIAL,CHARACTER_CLASS>\\P\{ {
   --  Unicode property specification

   Enter_Start_Condition (Self, PROPERTY_SPECIFICATION_UNICODE);

   return Token_Property_Begin_Negative;
}

<INITIAL,CHARACTER_CLASS>"[:^" {
   --  Unicode property specification

   Enter_Start_Condition (Self, PROPERTY_SPECIFICATION_POSIX);

   return Token_Property_Begin_Negative;
}

<PROPERTY_SPECIFICATION_UNICODE>\} {
   --  End of Unicode property specification

   if Self.Character_Class_Mode then
      Enter_Start_Condition (Self, CHARACTER_CLASS);

   else
      Enter_Start_Condition (Self, INITIAL);
   end if;

   return Token_Property_End;
}

<PROPERTY_SPECIFICATION_POSIX>":]" {
   --  End of Unicode property specification

   if Self.Character_Class_Mode then
      Enter_Start_Condition (Self, CHARACTER_CLASS);

   else
      Enter_Start_Condition (Self, INITIAL);
   end if;

   return Token_Property_End;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{ASCII_HEX_DIGIT} {
   --  ASCII_Hex_Digit

   YYLVal := (Property_Keyword, ASCII_Hex_Digit);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{ALPHABETIC} {
   --  Alphabetic

   YYLVal := (Property_Keyword, Alphabetic);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{BIDI_CONTROL} {

   --  Bidi_Control

   YYLVal := (Property_Keyword, Bidi_Control);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{BIDI_MIRRORED} {
   --  Bidi_Mirrored

--  XXX Bidi_Mirrored is absent in UCD now
--   YYLVal := (Property_Keyword, Bidi_Mirrored);
--
--   return Token_Property_Keyword;
   raise Program_Error;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CASED} {
   --  Cased

   YYLVal := (Property_Keyword, Cased);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CASE_IGNORABLE} {
   --  Case_Ignorable

   YYLVal := (Property_Keyword, Case_Ignorable);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_CASEFOLDED} {
   --  Changes_When_Casefolded

   YYLVal := (Property_Keyword, Changes_When_Casefolded);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_CASEMAPPED} {
   --  Changes_When_Casemapped

   YYLVal := (Property_Keyword, Changes_When_Casemapped);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_LOWERCASED} {
   --  Changes_When_Lowercased

   YYLVal := (Property_Keyword, Changes_When_Lowercased);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_NFKC_CASEFOLDED} {
   --  Changes_When_NFKC_Casefolded

   YYLVal := (Property_Keyword, Changes_When_NFKC_Casefolded);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_TITLECASED} {
   --  Changes_When_Titlecased

   YYLVal := (Property_Keyword, Changes_When_Titlecased);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CHANGES_WHEN_UPPERCASED} {
   --  Changes_When_Uppercased

   YYLVal := (Property_Keyword, Changes_When_Uppercased);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{COMPOSITION_EXCLUSION} {
   --  Composition_Exclusion

   YYLVal := (Property_Keyword, Composition_Exclusion);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{FULL_COMPOSITION_EXCLUSION} {
   --  Full_Composition_Exclusion

   YYLVal := (Property_Keyword, Full_Composition_Exclusion);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DASH} {
   --  Dash

   YYLVal := (Property_Keyword, Dash);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DEPRECATED} {
   --  Deprecated

   YYLVal := (Property_Keyword, Deprecated);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DEFAULT_IGNORABLE_CODE_POINT} {
   --  Default_Ignorable_Code_Point

   YYLVal := (Property_Keyword, Default_Ignorable_Code_Point);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DIACRITIC} {
   --  Diacritic

   YYLVal := (Property_Keyword, Diacritic);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{EXTENDER} {
   --  Extender

   YYLVal := (Property_Keyword, Extender);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{GRAPHEME_BASE} {
   --  Grapheme_Base

   YYLVal := (Property_Keyword, Grapheme_Base);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{GRAPHEME_EXTEND} {
   --  Grapheme_Extend

   YYLVal := (Property_Keyword, Grapheme_Extend);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{GRAPHEME_LINK} {
   --  Grapheme_Link

   YYLVal := (Property_Keyword, Grapheme_Link);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{HEX_DIGIT} {
   --  Hex_Digit

   YYLVal := (Property_Keyword, Hex_Digit);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{HYPHEN} {
   --  Hyphen

   YYLVal := (Property_Keyword, Hyphen);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{ID_CONTINUE} {
   --  ID_Continue

   YYLVal := (Property_Keyword, ID_Continue);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{IDEOGRAPHIC} {
   --  Ideographic

   YYLVal := (Property_Keyword, Ideographic);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{ID_START} {
   --  ID_Start

   YYLVal := (Property_Keyword, ID_Start);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{IDS_BINARY_OPERATOR} {
   --  IDS_Binary_Operator

   YYLVal := (Property_Keyword, IDS_Binary_Operator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{IDS_TRINARY_OPERATOR} {
   --  IDS_Trinary_Operator

   YYLVal := (Property_Keyword, IDS_Trinary_Operator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{JOIN_CONTROL} {
   --  Join_Control

   YYLVal := (Property_Keyword, Join_Control);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LOGICAL_ORDER_EXCEPTION} {
   --  Logical_Order_Exception

   YYLVal := (Property_Keyword, Logical_Order_Exception);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LOWERCASE} {
   --  Lowercase

   YYLVal := (Property_Keyword, Lowercase);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{MATH} {
   --  Math

   YYLVal := (Property_Keyword, Math);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{NONCHARACTER_CODE_POINT} {
   --  Noncharacter_Code_Point

   YYLVal := (Property_Keyword, Noncharacter_Code_Point);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_ALPHABETIC} {
   --  Other_Alphabetic

   YYLVal := (Property_Keyword, Other_Alphabetic);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_DEFAULT_IGNORABLE_CODE_POINT} {
   --  Other_Default_Ignorable_Code_Point

   YYLVal := (Property_Keyword, Other_Default_Ignorable_Code_Point);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_GRAPHEME_EXTEND} {
   --  Other_Grapheme_Extend

   YYLVal := (Property_Keyword, Other_Grapheme_Extend);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_ID_CONTINUE} {
   --  Other_ID_Continue

   YYLVal := (Property_Keyword, Other_ID_Continue);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_ID_START} {
   --  Other_ID_Start

   YYLVal := (Property_Keyword, Other_ID_Start);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_LOWERCASE} {
   --  Other_Lowercase

   YYLVal := (Property_Keyword, Other_Lowercase);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_MATH} {
   --  Other_Math

   YYLVal := (Property_Keyword, Other_Math);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_UPPERCASE} {
   --  Other_Uppercase

   YYLVal := (Property_Keyword, Other_Uppercase);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{PATTERN_SYNTAX} {
   --  Pattern_Syntax

   YYLVal := (Property_Keyword, Pattern_Syntax);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{PATTERN_WHITE_SPACE} {
   --  Pattern_White_Space

   YYLVal := (Property_Keyword, Pattern_White_Space);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{QUOTATION_MARK} {
   --  Quotation_Mark

   YYLVal := (Property_Keyword, Quotation_Mark);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{RADICAL} {
   --  Radical

   YYLVal := (Property_Keyword, Radical);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SOFT_DOTTED} {
   --  Soft_Dotted

   YYLVal := (Property_Keyword, Soft_Dotted);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{STERM} {
   --  STerm

   YYLVal := (Property_Keyword, STerm);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{TERMINAL_PUNCTUATION} {
   --  Terminal_Punctuation

   YYLVal := (Property_Keyword, Terminal_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{UNIFIED_IDEOGRAPH} {
   --  Unified_Ideograph

   YYLVal := (Property_Keyword, Unified_Ideograph);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{UPPERCASE} {
   --  Uppercase

   YYLVal := (Property_Keyword, Uppercase);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{VARIATION_SELECTOR} {
   --  Variation_Selector

   YYLVal := (Property_Keyword, Variation_Selector);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{WHITE_SPACE} {
   --  White_Space

   YYLVal := (Property_Keyword, White_Space);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{XID_CONTINUE} {
   --  XID_Continue

   YYLVal := (Property_Keyword, XID_Continue);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{XID_START} {
   --  XID_Start

   YYLVal := (Property_Keyword, XID_Start);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{EXPANDS_ON_NFC} {
   --  Expands_On_NFC

   YYLVal := (Property_Keyword, Expands_On_NFC);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{EXPANDS_ON_NFD} {
   --  Expands_On_NFD

   YYLVal := (Property_Keyword, Expands_On_NFD);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{EXPANDS_ON_NFKC} {
   --  Expands_On_NFKC

   YYLVal := (Property_Keyword, Expands_On_NFKC);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{EXPANDS_ON_NFKD} {
   --  Expands_On_NFKD

   YYLVal := (Property_Keyword, Expands_On_NFKD);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER} {
   --  Other

   YYLVal := (Property_Keyword, Other);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CONTROL} {
   --  Control

   YYLVal := (Property_Keyword, Control);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{FORMAT} {
   --  Format

   YYLVal := (Property_Keyword, Format);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{UNASSIGNED} {
   --  Unassigned

   YYLVal := (Property_Keyword, Unassigned);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{PRIVATE_USE} {
   --  Private_Use

   YYLVal := (Property_Keyword, Private_Use);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SURROGATE} {
   --  Surrogate

   YYLVal := (Property_Keyword, Surrogate);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LETTER} {
   --  Letter

   YYLVal := (Property_Keyword, Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CASED_LETTER} {
   --  Cased_Letter

   YYLVal := (Property_Keyword, Cased_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LOWERCASE_LETTER} {
   --  Lowercase_Letter

   YYLVal := (Property_Keyword, Lowercase_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{MODIFIER_LETTER} {
   --  Modifier_Letter

   YYLVal := (Property_Keyword, Modifier_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_LETTER} {
   --  Other_Letter

   YYLVal := (Property_Keyword, Other_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{TITLECASE_LETTER} {
   --  Titlecase_Letter

   YYLVal := (Property_Keyword, Titlecase_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{UPPERCASE_LETTER} {
   --  Uppercase_Letter

   YYLVal := (Property_Keyword, Uppercase_Letter);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{MARK} {
   --  Mark

   YYLVal := (Property_Keyword, Mark);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SPACING_MARK} {
   --  Spacing_Mark

   YYLVal := (Property_Keyword, Spacing_Mark);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{ENCLOSING_MARK} {
   --  Enclosing_Mark

   YYLVal := (Property_Keyword, Enclosing_Mark);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{NONSPACING_MARK} {
   --  Nonspacing_Mark

   YYLVal := (Property_Keyword, Nonspacing_Mark);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{NUMBER} {
   --  Number

   YYLVal := (Property_Keyword, Number);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DECIMAL_NUMBER} {
   --  Decimal_Number

   YYLVal := (Property_Keyword, Decimal_Number);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LETTER_NUMBER} {
   --  Letter_Number

   YYLVal := (Property_Keyword, Letter_Number);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_NUMBER} {
   --  Other_Number

   YYLVal := (Property_Keyword, Other_Number);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{PUNCTUATION} {
   --  Punctuation

   YYLVal := (Property_Keyword, Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CONNECTOR_PUNCTUATION} {
   --  Connector_Punctuation

   YYLVal := (Property_Keyword, Connector_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{DASH_PUNCTUATION} {
   --  Dash_Punctuation

   YYLVal := (Property_Keyword, Dash_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CLOSE_PUNCTUATION} {
   --  Close_Punctuation

   YYLVal := (Property_Keyword, Close_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{FINAL_PUNCTUATION} {
   --  Final_Punctuation

   YYLVal := (Property_Keyword, Final_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{INITIAL_PUNCTUATION} {
   --  Initial_Punctuation

   YYLVal := (Property_Keyword, Initial_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_PUNCTUATION} {
   --  Other_Punctuation

   YYLVal := (Property_Keyword, Other_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OPEN_PUNCTUATION} {
   --  Open_Punctuation

   YYLVal := (Property_Keyword, Open_Punctuation);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SYMBOL} {
   --  Symbol

   YYLVal := (Property_Keyword, Symbol);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{CURRENCY_SYMBOL} {
   --  Currency_Symbol

   YYLVal := (Property_Keyword, Currency_Symbol);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{MODIFIER_SYMBOL} {
   --  Modifier_Symbol

   YYLVal := (Property_Keyword, Modifier_Symbol);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{MATH_SYMBOL} {
   --  Math_Symbol

   YYLVal := (Property_Keyword, Math_Symbol);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{OTHER_SYMBOL} {
   --  Other_Symbol

   YYLVal := (Property_Keyword, Other_Symbol);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SEPARATOR} {
   --  Separator

   YYLVal := (Property_Keyword, Separator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{LINE_SEPARATOR} {
   --  Line_Separator

   YYLVal := (Property_Keyword, Line_Separator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{PARAGRAPH_SEPARATOR} {
   --  Paragraph_Separator

   YYLVal := (Property_Keyword, Paragraph_Separator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>{SPACE_SEPARATOR} {
   --  Space_Separator

   YYLVal := (Property_Keyword, Space_Separator);

   return Token_Property_Keyword;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>\p{Pattern_Syntax} {
   --  Pattern syntax character in property specification

   YYError (Self, Unrecognized_Character_In_Property_Specification, 0);

   return Error;
}

<PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX><<EOF>> {
   --  Unexpected end of string in property specification

   YYError (Self, Unexpected_End_Of_Property_Specification, 0);

   return Error;
}

<INITIAL,CHARACTER_CLASS,MULTIPLICITY,PROPERTY_SPECIFICATION_UNICODE,PROPERTY_SPECIFICATION_POSIX>\p{Pattern_White_Space}+ {
   --  Sequence of whitespaces is ignored in all modes

   null;
}

<INITIAL,CHARACTER_CLASS>[^\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Single code point

   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>\p{Pattern_Syntax} {
   --  Special outside of sequence

   YYError (Self, Unescaped_Pattern_Syntax_Character, YY_Back_Index);

   return Error;
}

<<EOF>> {
   --  End of data

   return End_Of_Input;
}

%%
with Matreshka.Internals.Regexps.Compiler;
##
   function YYLex return Matreshka.Internals.Regexps.Compiler.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;
##
   use Ada.Wide_Wide_Text_IO;
   use Matreshka.Internals.Regexps.Compiler;

   procedure Enter_Start_Condition
    (Self  : not null access Matreshka.Internals.Regexps.Compiler.Compiler_State;
     Start : Integer) is null;

   procedure YYError
    (Self  : not null access Matreshka.Internals.Regexps.Compiler.Compiler_State;
     Error : YY_Errors;
     Index : Natural) is null;

   YY_Back_Index : Natural;
   Self : access Matreshka.Internals.Regexps.Compiler.Compiler_State;

   YYLVal : YYSType renames Self.YYLVal;
