------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with League.Strings;

with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;

package body AMF.Internals.Tables.CMOF_Setup is

   use AMF.CMOF;
   use AMF.Internals.Extents;
   use AMF.Internals.Links;
   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Attributes;
   use AMF.Internals.Tables.CMOF_Constructors;
   use AMF.Internals.Tables.CMOF_Metamodel;

   Extent : constant AMF.Internals.AMF_Extent
     := AMF.Internals.Extents.Allocate_Extent;

begin
   CMOF_Element_Table.Set_Last (800);

   Initialize_Package (189);
   Internal_Append (Extent, 189);
   Initialize_Primitive_Type (190);
   Internal_Append (Extent, 190);
   Initialize_Comment (191);
   Internal_Append (Extent, 191);
   Initialize_Primitive_Type (192);
   Internal_Append (Extent, 192);
   Initialize_Comment (193);
   Internal_Append (Extent, 193);
   Initialize_Primitive_Type (194);
   Internal_Append (Extent, 194);
   Initialize_Comment (195);
   Internal_Append (Extent, 195);
   Initialize_Primitive_Type (196);
   Internal_Append (Extent, 196);
   Initialize_Comment (197);
   Internal_Append (Extent, 197);
   Initialize_Class (4);
   Internal_Append (Extent, 4);
   Initialize_Comment (198);
   Internal_Append (Extent, 198);
   Initialize_Constraint (199);
   Internal_Append (Extent, 199);
   Initialize_Comment (200);
   Internal_Append (Extent, 200);
   Initialize_Opaque_Expression (201);
   Internal_Append (Extent, 201);
   Initialize_Constraint (202);
   Internal_Append (Extent, 202);
   Initialize_Comment (203);
   Internal_Append (Extent, 203);
   Initialize_Opaque_Expression (204);
   Internal_Append (Extent, 204);
   Initialize_Property (43);
   Internal_Append (Extent, 43);
   Initialize_Comment (205);
   Internal_Append (Extent, 205);
   Initialize_Property (44);
   Internal_Append (Extent, 44);
   Initialize_Comment (206);
   Internal_Append (Extent, 206);
   Initialize_Property (45);
   Internal_Append (Extent, 45);
   Initialize_Comment (207);
   Internal_Append (Extent, 207);
   Initialize_Property (46);
   Internal_Append (Extent, 46);
   Initialize_Comment (208);
   Internal_Append (Extent, 208);
   Initialize_Property (81);
   Internal_Append (Extent, 81);
   Initialize_Comment (209);
   Internal_Append (Extent, 209);
   Initialize_Operation (210);
   Internal_Append (Extent, 210);
   Initialize_Comment (211);
   Internal_Append (Extent, 211);
   Initialize_Constraint (212);
   Internal_Append (Extent, 212);
   Initialize_Opaque_Expression (213);
   Internal_Append (Extent, 213);
   Initialize_Parameter (214);
   Internal_Append (Extent, 214);
   Initialize_Parameter (215);
   Internal_Append (Extent, 215);
   Initialize_Operation (216);
   Internal_Append (Extent, 216);
   Initialize_Comment (217);
   Internal_Append (Extent, 217);
   Initialize_Constraint (218);
   Internal_Append (Extent, 218);
   Initialize_Opaque_Expression (219);
   Internal_Append (Extent, 219);
   Initialize_Parameter (220);
   Internal_Append (Extent, 220);
   Initialize_Operation (221);
   Internal_Append (Extent, 221);
   Initialize_Comment (222);
   Internal_Append (Extent, 222);
   Initialize_Constraint (223);
   Internal_Append (Extent, 223);
   Initialize_Opaque_Expression (224);
   Internal_Append (Extent, 224);
   Initialize_Parameter (225);
   Internal_Append (Extent, 225);
   Initialize_Operation (226);
   Internal_Append (Extent, 226);
   Initialize_Comment (227);
   Internal_Append (Extent, 227);
   Initialize_Constraint (228);
   Internal_Append (Extent, 228);
   Initialize_Opaque_Expression (229);
   Internal_Append (Extent, 229);
   Initialize_Parameter (230);
   Internal_Append (Extent, 230);
   Initialize_Operation (231);
   Internal_Append (Extent, 231);
   Initialize_Comment (232);
   Internal_Append (Extent, 232);
   Initialize_Constraint (233);
   Internal_Append (Extent, 233);
   Initialize_Opaque_Expression (234);
   Internal_Append (Extent, 234);
   Initialize_Parameter (235);
   Internal_Append (Extent, 235);
   Initialize_Operation (236);
   Internal_Append (Extent, 236);
   Initialize_Comment (237);
   Internal_Append (Extent, 237);
   Initialize_Constraint (238);
   Internal_Append (Extent, 238);
   Initialize_Opaque_Expression (239);
   Internal_Append (Extent, 239);
   Initialize_Parameter (240);
   Internal_Append (Extent, 240);
   Initialize_Operation (241);
   Internal_Append (Extent, 241);
   Initialize_Comment (242);
   Internal_Append (Extent, 242);
   Initialize_Constraint (243);
   Internal_Append (Extent, 243);
   Initialize_Opaque_Expression (244);
   Internal_Append (Extent, 244);
   Initialize_Constraint (245);
   Internal_Append (Extent, 245);
   Initialize_Opaque_Expression (246);
   Internal_Append (Extent, 246);
   Initialize_Parameter (247);
   Internal_Append (Extent, 247);
   Initialize_Parameter (248);
   Internal_Append (Extent, 248);
   Initialize_Operation (249);
   Internal_Append (Extent, 249);
   Initialize_Comment (250);
   Internal_Append (Extent, 250);
   Initialize_Constraint (251);
   Internal_Append (Extent, 251);
   Initialize_Opaque_Expression (252);
   Internal_Append (Extent, 252);
   Initialize_Constraint (253);
   Internal_Append (Extent, 253);
   Initialize_Opaque_Expression (254);
   Internal_Append (Extent, 254);
   Initialize_Parameter (255);
   Internal_Append (Extent, 255);
   Initialize_Parameter (256);
   Internal_Append (Extent, 256);
   Initialize_Operation (257);
   Internal_Append (Extent, 257);
   Initialize_Comment (258);
   Internal_Append (Extent, 258);
   Initialize_Constraint (259);
   Internal_Append (Extent, 259);
   Initialize_Opaque_Expression (260);
   Internal_Append (Extent, 260);
   Initialize_Parameter (261);
   Internal_Append (Extent, 261);
   Initialize_Parameter (262);
   Internal_Append (Extent, 262);
   Initialize_Operation (263);
   Internal_Append (Extent, 263);
   Initialize_Comment (264);
   Internal_Append (Extent, 264);
   Initialize_Constraint (265);
   Internal_Append (Extent, 265);
   Initialize_Opaque_Expression (266);
   Internal_Append (Extent, 266);
   Initialize_Parameter (267);
   Internal_Append (Extent, 267);
   Initialize_Parameter (268);
   Internal_Append (Extent, 268);
   Initialize_Class (8);
   Internal_Append (Extent, 8);
   Initialize_Comment (269);
   Internal_Append (Extent, 269);
   Initialize_Property (51);
   Internal_Append (Extent, 51);
   Initialize_Comment (270);
   Internal_Append (Extent, 270);
   Initialize_Property (52);
   Internal_Append (Extent, 52);
   Initialize_Comment (271);
   Internal_Append (Extent, 271);
   Initialize_Class (9);
   Internal_Append (Extent, 9);
   Initialize_Comment (272);
   Internal_Append (Extent, 272);
   Initialize_Constraint (273);
   Internal_Append (Extent, 273);
   Initialize_Comment (274);
   Internal_Append (Extent, 274);
   Initialize_Opaque_Expression (275);
   Internal_Append (Extent, 275);
   Initialize_Constraint (276);
   Internal_Append (Extent, 276);
   Initialize_Comment (277);
   Internal_Append (Extent, 277);
   Initialize_Opaque_Expression (278);
   Internal_Append (Extent, 278);
   Initialize_Property (54);
   Internal_Append (Extent, 54);
   Initialize_Comment (279);
   Internal_Append (Extent, 279);
   Initialize_Property (85);
   Internal_Append (Extent, 85);
   Initialize_Comment (280);
   Internal_Append (Extent, 280);
   Initialize_Property (53);
   Internal_Append (Extent, 53);
   Initialize_Comment (281);
   Internal_Append (Extent, 281);
   Initialize_Operation (282);
   Internal_Append (Extent, 282);
   Initialize_Comment (283);
   Internal_Append (Extent, 283);
   Initialize_Constraint (284);
   Internal_Append (Extent, 284);
   Initialize_Opaque_Expression (285);
   Internal_Append (Extent, 285);
   Initialize_Parameter (286);
   Internal_Append (Extent, 286);
   Initialize_Operation (287);
   Internal_Append (Extent, 287);
   Initialize_Comment (288);
   Internal_Append (Extent, 288);
   Initialize_Constraint (289);
   Internal_Append (Extent, 289);
   Initialize_Opaque_Expression (290);
   Internal_Append (Extent, 290);
   Initialize_Parameter (291);
   Internal_Append (Extent, 291);
   Initialize_Class (14);
   Internal_Append (Extent, 14);
   Initialize_Comment (292);
   Internal_Append (Extent, 292);
   Initialize_Property (57);
   Internal_Append (Extent, 57);
   Initialize_Comment (293);
   Internal_Append (Extent, 293);
   Initialize_Class (15);
   Internal_Append (Extent, 15);
   Initialize_Comment (294);
   Internal_Append (Extent, 294);
   Initialize_Constraint (295);
   Internal_Append (Extent, 295);
   Initialize_Comment (296);
   Internal_Append (Extent, 296);
   Initialize_Opaque_Expression (297);
   Internal_Append (Extent, 297);
   Initialize_Constraint (298);
   Internal_Append (Extent, 298);
   Initialize_Comment (299);
   Internal_Append (Extent, 299);
   Initialize_Opaque_Expression (300);
   Internal_Append (Extent, 300);
   Initialize_Property (91);
   Internal_Append (Extent, 91);
   Initialize_Comment (301);
   Internal_Append (Extent, 301);
   Initialize_Property (92);
   Internal_Append (Extent, 92);
   Initialize_Comment (302);
   Internal_Append (Extent, 302);
   Initialize_Property (93);
   Internal_Append (Extent, 93);
   Initialize_Comment (303);
   Internal_Append (Extent, 303);
   Initialize_Property (94);
   Internal_Append (Extent, 94);
   Initialize_Comment (304);
   Internal_Append (Extent, 304);
   Initialize_Operation (305);
   Internal_Append (Extent, 305);
   Initialize_Comment (306);
   Internal_Append (Extent, 306);
   Initialize_Constraint (307);
   Internal_Append (Extent, 307);
   Initialize_Opaque_Expression (308);
   Internal_Append (Extent, 308);
   Initialize_Constraint (309);
   Internal_Append (Extent, 309);
   Initialize_Opaque_Expression (310);
   Internal_Append (Extent, 310);
   Initialize_Parameter (311);
   Internal_Append (Extent, 311);
   Initialize_Operation (312);
   Internal_Append (Extent, 312);
   Initialize_Comment (313);
   Internal_Append (Extent, 313);
   Initialize_Constraint (314);
   Internal_Append (Extent, 314);
   Initialize_Opaque_Expression (315);
   Internal_Append (Extent, 315);
   Initialize_Constraint (316);
   Internal_Append (Extent, 316);
   Initialize_Opaque_Expression (317);
   Internal_Append (Extent, 317);
   Initialize_Parameter (318);
   Internal_Append (Extent, 318);
   Initialize_Parameter (319);
   Internal_Append (Extent, 319);
   Initialize_Operation (320);
   Internal_Append (Extent, 320);
   Initialize_Comment (321);
   Internal_Append (Extent, 321);
   Initialize_Constraint (322);
   Internal_Append (Extent, 322);
   Initialize_Opaque_Expression (323);
   Internal_Append (Extent, 323);
   Initialize_Constraint (324);
   Internal_Append (Extent, 324);
   Initialize_Opaque_Expression (325);
   Internal_Append (Extent, 325);
   Initialize_Parameter (326);
   Internal_Append (Extent, 326);
   Initialize_Parameter (327);
   Internal_Append (Extent, 327);
   Initialize_Operation (328);
   Internal_Append (Extent, 328);
   Initialize_Comment (329);
   Internal_Append (Extent, 329);
   Initialize_Constraint (330);
   Internal_Append (Extent, 330);
   Initialize_Opaque_Expression (331);
   Internal_Append (Extent, 331);
   Initialize_Parameter (332);
   Internal_Append (Extent, 332);
   Initialize_Operation (333);
   Internal_Append (Extent, 333);
   Initialize_Comment (334);
   Internal_Append (Extent, 334);
   Initialize_Constraint (335);
   Internal_Append (Extent, 335);
   Initialize_Opaque_Expression (336);
   Internal_Append (Extent, 336);
   Initialize_Parameter (337);
   Internal_Append (Extent, 337);
   Initialize_Class (17);
   Internal_Append (Extent, 17);
   Initialize_Comment (338);
   Internal_Append (Extent, 338);
   Initialize_Constraint (339);
   Internal_Append (Extent, 339);
   Initialize_Comment (340);
   Internal_Append (Extent, 340);
   Initialize_Opaque_Expression (341);
   Internal_Append (Extent, 341);
   Initialize_Property (59);
   Internal_Append (Extent, 59);
   Initialize_Comment (342);
   Internal_Append (Extent, 342);
   Initialize_Property (58);
   Internal_Append (Extent, 58);
   Initialize_Comment (343);
   Internal_Append (Extent, 343);
   Initialize_Property (63);
   Internal_Append (Extent, 63);
   Initialize_Comment (344);
   Internal_Append (Extent, 344);
   Initialize_Property (61);
   Internal_Append (Extent, 61);
   Initialize_Comment (345);
   Internal_Append (Extent, 345);
   Initialize_Property (60);
   Internal_Append (Extent, 60);
   Initialize_Comment (346);
   Internal_Append (Extent, 346);
   Initialize_Property (62);
   Internal_Append (Extent, 62);
   Initialize_Operation (347);
   Internal_Append (Extent, 347);
   Initialize_Comment (348);
   Internal_Append (Extent, 348);
   Initialize_Constraint (349);
   Internal_Append (Extent, 349);
   Initialize_Opaque_Expression (350);
   Internal_Append (Extent, 350);
   Initialize_Parameter (351);
   Internal_Append (Extent, 351);
   Initialize_Operation (352);
   Internal_Append (Extent, 352);
   Initialize_Comment (353);
   Internal_Append (Extent, 353);
   Initialize_Constraint (354);
   Internal_Append (Extent, 354);
   Initialize_Opaque_Expression (355);
   Internal_Append (Extent, 355);
   Initialize_Parameter (356);
   Internal_Append (Extent, 356);
   Initialize_Parameter (357);
   Internal_Append (Extent, 357);
   Initialize_Operation (358);
   Internal_Append (Extent, 358);
   Initialize_Comment (359);
   Internal_Append (Extent, 359);
   Initialize_Constraint (360);
   Internal_Append (Extent, 360);
   Initialize_Opaque_Expression (361);
   Internal_Append (Extent, 361);
   Initialize_Parameter (362);
   Internal_Append (Extent, 362);
   Initialize_Parameter (363);
   Internal_Append (Extent, 363);
   Initialize_Operation (364);
   Internal_Append (Extent, 364);
   Initialize_Comment (365);
   Internal_Append (Extent, 365);
   Initialize_Constraint (366);
   Internal_Append (Extent, 366);
   Initialize_Opaque_Expression (367);
   Internal_Append (Extent, 367);
   Initialize_Parameter (368);
   Internal_Append (Extent, 368);
   Initialize_Parameter (369);
   Internal_Append (Extent, 369);
   Initialize_Operation (370);
   Internal_Append (Extent, 370);
   Initialize_Comment (371);
   Internal_Append (Extent, 371);
   Initialize_Constraint (372);
   Internal_Append (Extent, 372);
   Initialize_Opaque_Expression (373);
   Internal_Append (Extent, 373);
   Initialize_Parameter (374);
   Internal_Append (Extent, 374);
   Initialize_Class (23);
   Internal_Append (Extent, 23);
   Initialize_Comment (375);
   Internal_Append (Extent, 375);
   Initialize_Class (27);
   Internal_Append (Extent, 27);
   Initialize_Comment (376);
   Internal_Append (Extent, 376);
   Initialize_Constraint (377);
   Internal_Append (Extent, 377);
   Initialize_Comment (378);
   Internal_Append (Extent, 378);
   Initialize_Opaque_Expression (379);
   Internal_Append (Extent, 379);
   Initialize_Constraint (380);
   Internal_Append (Extent, 380);
   Initialize_Comment (381);
   Internal_Append (Extent, 381);
   Initialize_Opaque_Expression (382);
   Internal_Append (Extent, 382);
   Initialize_Constraint (383);
   Internal_Append (Extent, 383);
   Initialize_Comment (384);
   Internal_Append (Extent, 384);
   Initialize_Opaque_Expression (385);
   Internal_Append (Extent, 385);
   Initialize_Property (76);
   Internal_Append (Extent, 76);
   Initialize_Comment (386);
   Internal_Append (Extent, 386);
   Initialize_Property (75);
   Internal_Append (Extent, 75);
   Initialize_Comment (387);
   Internal_Append (Extent, 387);
   Initialize_Property (130);
   Internal_Append (Extent, 130);
   Initialize_Comment (388);
   Internal_Append (Extent, 388);
   Initialize_Operation (389);
   Internal_Append (Extent, 389);
   Initialize_Comment (390);
   Internal_Append (Extent, 390);
   Initialize_Constraint (391);
   Internal_Append (Extent, 391);
   Initialize_Opaque_Expression (392);
   Internal_Append (Extent, 392);
   Initialize_Constraint (393);
   Internal_Append (Extent, 393);
   Initialize_Opaque_Expression (394);
   Internal_Append (Extent, 394);
   Initialize_Parameter (395);
   Internal_Append (Extent, 395);
   Initialize_Parameter (396);
   Internal_Append (Extent, 396);
   Initialize_Operation (397);
   Internal_Append (Extent, 397);
   Initialize_Comment (398);
   Internal_Append (Extent, 398);
   Initialize_Constraint (399);
   Internal_Append (Extent, 399);
   Initialize_Opaque_Expression (400);
   Internal_Append (Extent, 400);
   Initialize_Parameter (401);
   Internal_Append (Extent, 401);
   Initialize_Parameter (402);
   Internal_Append (Extent, 402);
   Initialize_Class (28);
   Internal_Append (Extent, 28);
   Initialize_Comment (403);
   Internal_Append (Extent, 403);
   Initialize_Property (77);
   Internal_Append (Extent, 77);
   Initialize_Comment (404);
   Internal_Append (Extent, 404);
   Initialize_Class (29);
   Internal_Append (Extent, 29);
   Initialize_Comment (405);
   Internal_Append (Extent, 405);
   Initialize_Class (32);
   Internal_Append (Extent, 32);
   Initialize_Comment (406);
   Internal_Append (Extent, 406);
   Initialize_Property (135);
   Internal_Append (Extent, 135);
   Initialize_Comment (407);
   Internal_Append (Extent, 407);
   Initialize_Class (33);
   Internal_Append (Extent, 33);
   Initialize_Comment (408);
   Internal_Append (Extent, 408);
   Initialize_Operation (409);
   Internal_Append (Extent, 409);
   Initialize_Comment (410);
   Internal_Append (Extent, 410);
   Initialize_Constraint (411);
   Internal_Append (Extent, 411);
   Initialize_Opaque_Expression (412);
   Internal_Append (Extent, 412);
   Initialize_Parameter (413);
   Internal_Append (Extent, 413);
   Initialize_Operation (414);
   Internal_Append (Extent, 414);
   Initialize_Comment (415);
   Internal_Append (Extent, 415);
   Initialize_Constraint (416);
   Internal_Append (Extent, 416);
   Initialize_Opaque_Expression (417);
   Internal_Append (Extent, 417);
   Initialize_Parameter (418);
   Internal_Append (Extent, 418);
   Initialize_Operation (419);
   Internal_Append (Extent, 419);
   Initialize_Comment (420);
   Internal_Append (Extent, 420);
   Initialize_Constraint (421);
   Internal_Append (Extent, 421);
   Initialize_Opaque_Expression (422);
   Internal_Append (Extent, 422);
   Initialize_Parameter (423);
   Internal_Append (Extent, 423);
   Initialize_Operation (424);
   Internal_Append (Extent, 424);
   Initialize_Comment (425);
   Internal_Append (Extent, 425);
   Initialize_Constraint (426);
   Internal_Append (Extent, 426);
   Initialize_Opaque_Expression (427);
   Internal_Append (Extent, 427);
   Initialize_Parameter (428);
   Internal_Append (Extent, 428);
   Initialize_Operation (429);
   Internal_Append (Extent, 429);
   Initialize_Comment (430);
   Internal_Append (Extent, 430);
   Initialize_Constraint (431);
   Internal_Append (Extent, 431);
   Initialize_Opaque_Expression (432);
   Internal_Append (Extent, 432);
   Initialize_Parameter (433);
   Internal_Append (Extent, 433);
   Initialize_Operation (434);
   Internal_Append (Extent, 434);
   Initialize_Comment (435);
   Internal_Append (Extent, 435);
   Initialize_Constraint (436);
   Internal_Append (Extent, 436);
   Initialize_Opaque_Expression (437);
   Internal_Append (Extent, 437);
   Initialize_Parameter (438);
   Internal_Append (Extent, 438);
   Initialize_Class (1);
   Internal_Append (Extent, 1);
   Initialize_Comment (439);
   Internal_Append (Extent, 439);
   Initialize_Constraint (440);
   Internal_Append (Extent, 440);
   Initialize_Comment (441);
   Internal_Append (Extent, 441);
   Initialize_Opaque_Expression (442);
   Internal_Append (Extent, 442);
   Initialize_Constraint (443);
   Internal_Append (Extent, 443);
   Initialize_Comment (444);
   Internal_Append (Extent, 444);
   Initialize_Opaque_Expression (445);
   Internal_Append (Extent, 445);
   Initialize_Constraint (446);
   Internal_Append (Extent, 446);
   Initialize_Comment (447);
   Internal_Append (Extent, 447);
   Initialize_Opaque_Expression (448);
   Internal_Append (Extent, 448);
   Initialize_Constraint (449);
   Internal_Append (Extent, 449);
   Initialize_Comment (450);
   Internal_Append (Extent, 450);
   Initialize_Opaque_Expression (451);
   Internal_Append (Extent, 451);
   Initialize_Property (79);
   Internal_Append (Extent, 79);
   Initialize_Comment (452);
   Internal_Append (Extent, 452);
   Initialize_Property (37);
   Internal_Append (Extent, 37);
   Initialize_Comment (453);
   Internal_Append (Extent, 453);
   Initialize_Property (34);
   Internal_Append (Extent, 34);
   Initialize_Comment (454);
   Internal_Append (Extent, 454);
   Initialize_Property (35);
   Internal_Append (Extent, 35);
   Initialize_Comment (455);
   Internal_Append (Extent, 455);
   Initialize_Property (36);
   Internal_Append (Extent, 36);
   Initialize_Comment (456);
   Internal_Append (Extent, 456);
   Initialize_Operation (457);
   Internal_Append (Extent, 457);
   Initialize_Comment (458);
   Internal_Append (Extent, 458);
   Initialize_Constraint (459);
   Internal_Append (Extent, 459);
   Initialize_Opaque_Expression (460);
   Internal_Append (Extent, 460);
   Initialize_Parameter (461);
   Internal_Append (Extent, 461);
   Initialize_Class (3);
   Internal_Append (Extent, 3);
   Initialize_Comment (462);
   Internal_Append (Extent, 462);
   Initialize_Property (80);
   Internal_Append (Extent, 80);
   Initialize_Comment (463);
   Internal_Append (Extent, 463);
   Initialize_Property (40);
   Internal_Append (Extent, 40);
   Initialize_Comment (464);
   Internal_Append (Extent, 464);
   Initialize_Property (41);
   Internal_Append (Extent, 41);
   Initialize_Comment (465);
   Internal_Append (Extent, 465);
   Initialize_Property (42);
   Internal_Append (Extent, 42);
   Initialize_Comment (466);
   Internal_Append (Extent, 466);
   Initialize_Operation (467);
   Internal_Append (Extent, 467);
   Initialize_Comment (468);
   Internal_Append (Extent, 468);
   Initialize_Constraint (469);
   Internal_Append (Extent, 469);
   Initialize_Opaque_Expression (470);
   Internal_Append (Extent, 470);
   Initialize_Parameter (471);
   Internal_Append (Extent, 471);
   Initialize_Parameter (472);
   Internal_Append (Extent, 472);
   Initialize_Class (26);
   Internal_Append (Extent, 26);
   Initialize_Comment (473);
   Internal_Append (Extent, 473);
   Initialize_Constraint (474);
   Internal_Append (Extent, 474);
   Initialize_Comment (475);
   Internal_Append (Extent, 475);
   Initialize_Opaque_Expression (476);
   Internal_Append (Extent, 476);
   Initialize_Constraint (477);
   Internal_Append (Extent, 477);
   Initialize_Comment (478);
   Internal_Append (Extent, 478);
   Initialize_Opaque_Expression (479);
   Internal_Append (Extent, 479);
   Initialize_Constraint (480);
   Internal_Append (Extent, 480);
   Initialize_Comment (481);
   Internal_Append (Extent, 481);
   Initialize_Opaque_Expression (482);
   Internal_Append (Extent, 482);
   Initialize_Constraint (483);
   Internal_Append (Extent, 483);
   Initialize_Comment (484);
   Internal_Append (Extent, 484);
   Initialize_Opaque_Expression (485);
   Internal_Append (Extent, 485);
   Initialize_Constraint (486);
   Internal_Append (Extent, 486);
   Initialize_Comment (487);
   Internal_Append (Extent, 487);
   Initialize_Opaque_Expression (488);
   Internal_Append (Extent, 488);
   Initialize_Constraint (489);
   Internal_Append (Extent, 489);
   Initialize_Comment (490);
   Internal_Append (Extent, 490);
   Initialize_Opaque_Expression (491);
   Internal_Append (Extent, 491);
   Initialize_Constraint (492);
   Internal_Append (Extent, 492);
   Initialize_Comment (493);
   Internal_Append (Extent, 493);
   Initialize_Opaque_Expression (494);
   Internal_Append (Extent, 494);
   Initialize_Property (127);
   Internal_Append (Extent, 127);
   Initialize_Comment (495);
   Internal_Append (Extent, 495);
   Initialize_Property (123);
   Internal_Append (Extent, 123);
   Initialize_Comment (496);
   Internal_Append (Extent, 496);
   Initialize_Property (124);
   Internal_Append (Extent, 124);
   Initialize_Comment (497);
   Internal_Append (Extent, 497);
   Initialize_Property (125);
   Internal_Append (Extent, 125);
   Initialize_Comment (498);
   Internal_Append (Extent, 498);
   Initialize_Property (126);
   Internal_Append (Extent, 126);
   Initialize_Comment (499);
   Internal_Append (Extent, 499);
   Initialize_Property (121);
   Internal_Append (Extent, 121);
   Initialize_Comment (500);
   Internal_Append (Extent, 500);
   Initialize_Property (129);
   Internal_Append (Extent, 129);
   Initialize_Comment (501);
   Internal_Append (Extent, 501);
   Initialize_Property (73);
   Internal_Append (Extent, 73);
   Initialize_Comment (502);
   Internal_Append (Extent, 502);
   Initialize_Property (74);
   Internal_Append (Extent, 74);
   Initialize_Comment (503);
   Internal_Append (Extent, 503);
   Initialize_Property (128);
   Internal_Append (Extent, 128);
   Initialize_Comment (504);
   Internal_Append (Extent, 504);
   Initialize_Property (122);
   Internal_Append (Extent, 122);
   Initialize_Comment (505);
   Internal_Append (Extent, 505);
   Initialize_Property (120);
   Internal_Append (Extent, 120);
   Initialize_Comment (506);
   Internal_Append (Extent, 506);
   Initialize_Operation (507);
   Internal_Append (Extent, 507);
   Initialize_Comment (508);
   Internal_Append (Extent, 508);
   Initialize_Constraint (509);
   Internal_Append (Extent, 509);
   Initialize_Opaque_Expression (510);
   Internal_Append (Extent, 510);
   Initialize_Parameter (511);
   Internal_Append (Extent, 511);
   Initialize_Operation (512);
   Internal_Append (Extent, 512);
   Initialize_Comment (513);
   Internal_Append (Extent, 513);
   Initialize_Constraint (514);
   Internal_Append (Extent, 514);
   Initialize_Opaque_Expression (515);
   Internal_Append (Extent, 515);
   Initialize_Constraint (516);
   Internal_Append (Extent, 516);
   Initialize_Opaque_Expression (517);
   Internal_Append (Extent, 517);
   Initialize_Parameter (518);
   Internal_Append (Extent, 518);
   Initialize_Parameter (519);
   Internal_Append (Extent, 519);
   Initialize_Operation (520);
   Internal_Append (Extent, 520);
   Initialize_Comment (521);
   Internal_Append (Extent, 521);
   Initialize_Constraint (522);
   Internal_Append (Extent, 522);
   Initialize_Opaque_Expression (523);
   Internal_Append (Extent, 523);
   Initialize_Parameter (524);
   Internal_Append (Extent, 524);
   Initialize_Operation (525);
   Internal_Append (Extent, 525);
   Initialize_Comment (526);
   Internal_Append (Extent, 526);
   Initialize_Constraint (527);
   Internal_Append (Extent, 527);
   Initialize_Opaque_Expression (528);
   Internal_Append (Extent, 528);
   Initialize_Parameter (529);
   Internal_Append (Extent, 529);
   Initialize_Operation (530);
   Internal_Append (Extent, 530);
   Initialize_Comment (531);
   Internal_Append (Extent, 531);
   Initialize_Constraint (532);
   Internal_Append (Extent, 532);
   Initialize_Opaque_Expression (533);
   Internal_Append (Extent, 533);
   Initialize_Parameter (534);
   Internal_Append (Extent, 534);
   Initialize_Parameter (535);
   Internal_Append (Extent, 535);
   Initialize_Class (7);
   Internal_Append (Extent, 7);
   Initialize_Comment (536);
   Internal_Append (Extent, 536);
   Initialize_Property (49);
   Internal_Append (Extent, 49);
   Initialize_Comment (537);
   Internal_Append (Extent, 537);
   Initialize_Property (50);
   Internal_Append (Extent, 50);
   Initialize_Comment (538);
   Internal_Append (Extent, 538);
   Initialize_Operation (539);
   Internal_Append (Extent, 539);
   Initialize_Comment (540);
   Internal_Append (Extent, 540);
   Initialize_Constraint (541);
   Internal_Append (Extent, 541);
   Initialize_Opaque_Expression (542);
   Internal_Append (Extent, 542);
   Initialize_Parameter (543);
   Internal_Append (Extent, 543);
   Initialize_Parameter (544);
   Internal_Append (Extent, 544);
   Initialize_Class (11);
   Internal_Append (Extent, 11);
   Initialize_Comment (545);
   Internal_Append (Extent, 545);
   Initialize_Property (55);
   Internal_Append (Extent, 55);
   Initialize_Comment (546);
   Internal_Append (Extent, 546);
   Initialize_Class (12);
   Internal_Append (Extent, 12);
   Initialize_Comment (547);
   Internal_Append (Extent, 547);
   Initialize_Property (90);
   Internal_Append (Extent, 90);
   Initialize_Comment (548);
   Internal_Append (Extent, 548);
   Initialize_Class (25);
   Internal_Append (Extent, 25);
   Initialize_Comment (549);
   Internal_Append (Extent, 549);
   Initialize_Class (6);
   Internal_Append (Extent, 6);
   Initialize_Comment (550);
   Internal_Append (Extent, 550);
   Initialize_Constraint (551);
   Internal_Append (Extent, 551);
   Initialize_Comment (552);
   Internal_Append (Extent, 552);
   Initialize_Opaque_Expression (553);
   Internal_Append (Extent, 553);
   Initialize_Constraint (554);
   Internal_Append (Extent, 554);
   Initialize_Comment (555);
   Internal_Append (Extent, 555);
   Initialize_Opaque_Expression (556);
   Internal_Append (Extent, 556);
   Initialize_Property (48);
   Internal_Append (Extent, 48);
   Initialize_Comment (557);
   Internal_Append (Extent, 557);
   Initialize_Property (84);
   Internal_Append (Extent, 84);
   Initialize_Comment (558);
   Internal_Append (Extent, 558);
   Initialize_Property (83);
   Internal_Append (Extent, 83);
   Initialize_Class (18);
   Internal_Append (Extent, 18);
   Initialize_Comment (559);
   Internal_Append (Extent, 559);
   Initialize_Constraint (560);
   Internal_Append (Extent, 560);
   Initialize_Comment (561);
   Internal_Append (Extent, 561);
   Initialize_Opaque_Expression (562);
   Internal_Append (Extent, 562);
   Initialize_Property (99);
   Internal_Append (Extent, 99);
   Initialize_Comment (563);
   Internal_Append (Extent, 563);
   Initialize_Property (100);
   Internal_Append (Extent, 100);
   Initialize_Comment (564);
   Internal_Append (Extent, 564);
   Initialize_Class (19);
   Internal_Append (Extent, 19);
   Initialize_Comment (565);
   Internal_Append (Extent, 565);
   Initialize_Constraint (566);
   Internal_Append (Extent, 566);
   Initialize_Comment (567);
   Internal_Append (Extent, 567);
   Initialize_Opaque_Expression (568);
   Internal_Append (Extent, 568);
   Initialize_Constraint (569);
   Internal_Append (Extent, 569);
   Initialize_Comment (570);
   Internal_Append (Extent, 570);
   Initialize_Opaque_Expression (571);
   Internal_Append (Extent, 571);
   Initialize_Property (105);
   Internal_Append (Extent, 105);
   Initialize_Comment (572);
   Internal_Append (Extent, 572);
   Initialize_Property (104);
   Internal_Append (Extent, 104);
   Initialize_Comment (573);
   Internal_Append (Extent, 573);
   Initialize_Property (106);
   Internal_Append (Extent, 106);
   Initialize_Comment (574);
   Internal_Append (Extent, 574);
   Initialize_Property (107);
   Internal_Append (Extent, 107);
   Initialize_Comment (575);
   Internal_Append (Extent, 575);
   Initialize_Property (109);
   Internal_Append (Extent, 109);
   Initialize_Comment (576);
   Internal_Append (Extent, 576);
   Initialize_Property (102);
   Internal_Append (Extent, 102);
   Initialize_Comment (577);
   Internal_Append (Extent, 577);
   Initialize_Property (103);
   Internal_Append (Extent, 103);
   Initialize_Comment (578);
   Internal_Append (Extent, 578);
   Initialize_Property (67);
   Internal_Append (Extent, 67);
   Initialize_Comment (579);
   Internal_Append (Extent, 579);
   Initialize_Property (68);
   Internal_Append (Extent, 68);
   Initialize_Comment (580);
   Internal_Append (Extent, 580);
   Initialize_Property (108);
   Internal_Append (Extent, 108);
   Initialize_Comment (581);
   Internal_Append (Extent, 581);
   Initialize_Property (64);
   Internal_Append (Extent, 64);
   Initialize_Comment (582);
   Internal_Append (Extent, 582);
   Initialize_Property (66);
   Internal_Append (Extent, 66);
   Initialize_Property (65);
   Internal_Append (Extent, 65);
   Initialize_Property (101);
   Internal_Append (Extent, 101);
   Initialize_Operation (583);
   Internal_Append (Extent, 583);
   Initialize_Comment (584);
   Internal_Append (Extent, 584);
   Initialize_Constraint (585);
   Internal_Append (Extent, 585);
   Initialize_Opaque_Expression (586);
   Internal_Append (Extent, 586);
   Initialize_Parameter (587);
   Internal_Append (Extent, 587);
   Initialize_Operation (588);
   Internal_Append (Extent, 588);
   Initialize_Comment (589);
   Internal_Append (Extent, 589);
   Initialize_Constraint (590);
   Internal_Append (Extent, 590);
   Initialize_Opaque_Expression (591);
   Internal_Append (Extent, 591);
   Initialize_Parameter (592);
   Internal_Append (Extent, 592);
   Initialize_Operation (593);
   Internal_Append (Extent, 593);
   Initialize_Comment (594);
   Internal_Append (Extent, 594);
   Initialize_Constraint (595);
   Internal_Append (Extent, 595);
   Initialize_Opaque_Expression (596);
   Internal_Append (Extent, 596);
   Initialize_Parameter (597);
   Internal_Append (Extent, 597);
   Initialize_Operation (598);
   Internal_Append (Extent, 598);
   Initialize_Comment (599);
   Internal_Append (Extent, 599);
   Initialize_Constraint (600);
   Internal_Append (Extent, 600);
   Initialize_Opaque_Expression (601);
   Internal_Append (Extent, 601);
   Initialize_Parameter (602);
   Internal_Append (Extent, 602);
   Initialize_Operation (603);
   Internal_Append (Extent, 603);
   Initialize_Comment (604);
   Internal_Append (Extent, 604);
   Initialize_Constraint (605);
   Internal_Append (Extent, 605);
   Initialize_Opaque_Expression (606);
   Internal_Append (Extent, 606);
   Initialize_Parameter (607);
   Internal_Append (Extent, 607);
   Initialize_Operation (608);
   Internal_Append (Extent, 608);
   Initialize_Comment (609);
   Internal_Append (Extent, 609);
   Initialize_Constraint (610);
   Internal_Append (Extent, 610);
   Initialize_Opaque_Expression (611);
   Internal_Append (Extent, 611);
   Initialize_Constraint (612);
   Internal_Append (Extent, 612);
   Initialize_Opaque_Expression (613);
   Internal_Append (Extent, 613);
   Initialize_Parameter (614);
   Internal_Append (Extent, 614);
   Initialize_Parameter (615);
   Internal_Append (Extent, 615);
   Initialize_Operation (616);
   Internal_Append (Extent, 616);
   Initialize_Constraint (617);
   Internal_Append (Extent, 617);
   Initialize_Opaque_Expression (618);
   Internal_Append (Extent, 618);
   Initialize_Parameter (619);
   Internal_Append (Extent, 619);
   Initialize_Class (24);
   Internal_Append (Extent, 24);
   Initialize_Comment (620);
   Internal_Append (Extent, 620);
   Initialize_Property (117);
   Internal_Append (Extent, 117);
   Initialize_Comment (621);
   Internal_Append (Extent, 621);
   Initialize_Property (118);
   Internal_Append (Extent, 118);
   Initialize_Comment (622);
   Internal_Append (Extent, 622);
   Initialize_Property (119);
   Internal_Append (Extent, 119);
   Initialize_Comment (623);
   Internal_Append (Extent, 623);
   Initialize_Class (2);
   Internal_Append (Extent, 2);
   Initialize_Comment (624);
   Internal_Append (Extent, 624);
   Initialize_Property (38);
   Internal_Append (Extent, 38);
   Initialize_Comment (625);
   Internal_Append (Extent, 625);
   Initialize_Property (39);
   Internal_Append (Extent, 39);
   Initialize_Comment (626);
   Internal_Append (Extent, 626);
   Initialize_Operation (627);
   Internal_Append (Extent, 627);
   Initialize_Comment (628);
   Internal_Append (Extent, 628);
   Initialize_Constraint (629);
   Internal_Append (Extent, 629);
   Initialize_Opaque_Expression (630);
   Internal_Append (Extent, 630);
   Initialize_Parameter (631);
   Internal_Append (Extent, 631);
   Initialize_Parameter (632);
   Internal_Append (Extent, 632);
   Initialize_Parameter (633);
   Internal_Append (Extent, 633);
   Initialize_Class (10);
   Internal_Append (Extent, 10);
   Initialize_Comment (634);
   Internal_Append (Extent, 634);
   Initialize_Constraint (635);
   Internal_Append (Extent, 635);
   Initialize_Comment (636);
   Internal_Append (Extent, 636);
   Initialize_Opaque_Expression (637);
   Internal_Append (Extent, 637);
   Initialize_Constraint (638);
   Internal_Append (Extent, 638);
   Initialize_Comment (639);
   Internal_Append (Extent, 639);
   Initialize_Opaque_Expression (640);
   Internal_Append (Extent, 640);
   Initialize_Property (89);
   Internal_Append (Extent, 89);
   Initialize_Comment (641);
   Internal_Append (Extent, 641);
   Initialize_Property (86);
   Internal_Append (Extent, 86);
   Initialize_Comment (642);
   Internal_Append (Extent, 642);
   Initialize_Property (87);
   Internal_Append (Extent, 87);
   Initialize_Comment (643);
   Internal_Append (Extent, 643);
   Initialize_Property (88);
   Internal_Append (Extent, 88);
   Initialize_Comment (644);
   Internal_Append (Extent, 644);
   Initialize_Operation (645);
   Internal_Append (Extent, 645);
   Initialize_Comment (646);
   Internal_Append (Extent, 646);
   Initialize_Constraint (647);
   Internal_Append (Extent, 647);
   Initialize_Opaque_Expression (648);
   Internal_Append (Extent, 648);
   Initialize_Parameter (649);
   Internal_Append (Extent, 649);
   Initialize_Class (20);
   Internal_Append (Extent, 20);
   Initialize_Comment (650);
   Internal_Append (Extent, 650);
   Initialize_Constraint (651);
   Internal_Append (Extent, 651);
   Initialize_Comment (652);
   Internal_Append (Extent, 652);
   Initialize_Opaque_Expression (653);
   Internal_Append (Extent, 653);
   Initialize_Property (72);
   Internal_Append (Extent, 72);
   Initialize_Comment (654);
   Internal_Append (Extent, 654);
   Initialize_Property (70);
   Internal_Append (Extent, 70);
   Initialize_Comment (655);
   Internal_Append (Extent, 655);
   Initialize_Property (69);
   Internal_Append (Extent, 69);
   Initialize_Comment (656);
   Internal_Append (Extent, 656);
   Initialize_Property (110);
   Internal_Append (Extent, 110);
   Initialize_Comment (657);
   Internal_Append (Extent, 657);
   Initialize_Property (71);
   Internal_Append (Extent, 71);
   Initialize_Comment (658);
   Internal_Append (Extent, 658);
   Initialize_Property (111);
   Internal_Append (Extent, 111);
   Initialize_Comment (659);
   Internal_Append (Extent, 659);
   Initialize_Operation (660);
   Internal_Append (Extent, 660);
   Initialize_Comment (661);
   Internal_Append (Extent, 661);
   Initialize_Constraint (662);
   Internal_Append (Extent, 662);
   Initialize_Opaque_Expression (663);
   Internal_Append (Extent, 663);
   Initialize_Parameter (664);
   Internal_Append (Extent, 664);
   Initialize_Operation (665);
   Internal_Append (Extent, 665);
   Initialize_Comment (666);
   Internal_Append (Extent, 666);
   Initialize_Constraint (667);
   Internal_Append (Extent, 667);
   Initialize_Opaque_Expression (668);
   Internal_Append (Extent, 668);
   Initialize_Parameter (669);
   Internal_Append (Extent, 669);
   Initialize_Operation (670);
   Internal_Append (Extent, 670);
   Initialize_Comment (671);
   Internal_Append (Extent, 671);
   Initialize_Constraint (672);
   Internal_Append (Extent, 672);
   Initialize_Opaque_Expression (673);
   Internal_Append (Extent, 673);
   Initialize_Constraint (674);
   Internal_Append (Extent, 674);
   Initialize_Opaque_Expression (675);
   Internal_Append (Extent, 675);
   Initialize_Parameter (676);
   Internal_Append (Extent, 676);
   Initialize_Parameter (677);
   Internal_Append (Extent, 677);
   Initialize_Class (21);
   Internal_Append (Extent, 21);
   Initialize_Comment (678);
   Internal_Append (Extent, 678);
   Initialize_Constraint (679);
   Internal_Append (Extent, 679);
   Initialize_Comment (680);
   Internal_Append (Extent, 680);
   Initialize_Opaque_Expression (681);
   Internal_Append (Extent, 681);
   Initialize_Property (114);
   Internal_Append (Extent, 114);
   Initialize_Comment (682);
   Internal_Append (Extent, 682);
   Initialize_Property (112);
   Internal_Append (Extent, 112);
   Initialize_Comment (683);
   Internal_Append (Extent, 683);
   Initialize_Property (113);
   Internal_Append (Extent, 113);
   Initialize_Comment (684);
   Internal_Append (Extent, 684);
   Initialize_Class (22);
   Internal_Append (Extent, 22);
   Initialize_Comment (685);
   Internal_Append (Extent, 685);
   Initialize_Property (116);
   Internal_Append (Extent, 116);
   Initialize_Comment (686);
   Internal_Append (Extent, 686);
   Initialize_Property (115);
   Internal_Append (Extent, 115);
   Initialize_Comment (687);
   Internal_Append (Extent, 687);
   Initialize_Class (31);
   Internal_Append (Extent, 31);
   Initialize_Comment (688);
   Internal_Append (Extent, 688);
   Initialize_Property (134);
   Internal_Append (Extent, 134);
   Initialize_Comment (689);
   Internal_Append (Extent, 689);
   Initialize_Operation (690);
   Internal_Append (Extent, 690);
   Initialize_Comment (691);
   Internal_Append (Extent, 691);
   Initialize_Constraint (692);
   Internal_Append (Extent, 692);
   Initialize_Opaque_Expression (693);
   Internal_Append (Extent, 693);
   Initialize_Parameter (694);
   Internal_Append (Extent, 694);
   Initialize_Parameter (695);
   Internal_Append (Extent, 695);
   Initialize_Class (16);
   Internal_Append (Extent, 16);
   Initialize_Comment (696);
   Internal_Append (Extent, 696);
   Initialize_Constraint (697);
   Internal_Append (Extent, 697);
   Initialize_Comment (698);
   Internal_Append (Extent, 698);
   Initialize_Opaque_Expression (699);
   Internal_Append (Extent, 699);
   Initialize_Constraint (700);
   Internal_Append (Extent, 700);
   Initialize_Comment (701);
   Internal_Append (Extent, 701);
   Initialize_Opaque_Expression (702);
   Internal_Append (Extent, 702);
   Initialize_Constraint (703);
   Internal_Append (Extent, 703);
   Initialize_Comment (704);
   Internal_Append (Extent, 704);
   Initialize_Opaque_Expression (705);
   Internal_Append (Extent, 705);
   Initialize_Property (95);
   Internal_Append (Extent, 95);
   Initialize_Comment (706);
   Internal_Append (Extent, 706);
   Initialize_Property (98);
   Internal_Append (Extent, 98);
   Initialize_Comment (707);
   Internal_Append (Extent, 707);
   Initialize_Property (96);
   Internal_Append (Extent, 96);
   Initialize_Comment (708);
   Internal_Append (Extent, 708);
   Initialize_Property (97);
   Internal_Append (Extent, 97);
   Initialize_Comment (709);
   Internal_Append (Extent, 709);
   Initialize_Operation (710);
   Internal_Append (Extent, 710);
   Initialize_Comment (711);
   Internal_Append (Extent, 711);
   Initialize_Constraint (712);
   Internal_Append (Extent, 712);
   Initialize_Opaque_Expression (713);
   Internal_Append (Extent, 713);
   Initialize_Parameter (714);
   Internal_Append (Extent, 714);
   Initialize_Operation (715);
   Internal_Append (Extent, 715);
   Initialize_Comment (716);
   Internal_Append (Extent, 716);
   Initialize_Constraint (717);
   Internal_Append (Extent, 717);
   Initialize_Opaque_Expression (718);
   Internal_Append (Extent, 718);
   Initialize_Parameter (719);
   Internal_Append (Extent, 719);
   Initialize_Parameter (720);
   Internal_Append (Extent, 720);
   Initialize_Parameter (721);
   Internal_Append (Extent, 721);
   Initialize_Operation (722);
   Internal_Append (Extent, 722);
   Initialize_Comment (723);
   Internal_Append (Extent, 723);
   Initialize_Constraint (724);
   Internal_Append (Extent, 724);
   Initialize_Opaque_Expression (725);
   Internal_Append (Extent, 725);
   Initialize_Parameter (726);
   Internal_Append (Extent, 726);
   Initialize_Operation (727);
   Internal_Append (Extent, 727);
   Initialize_Comment (728);
   Internal_Append (Extent, 728);
   Initialize_Constraint (729);
   Internal_Append (Extent, 729);
   Initialize_Opaque_Expression (730);
   Internal_Append (Extent, 730);
   Initialize_Parameter (731);
   Internal_Append (Extent, 731);
   Initialize_Class (13);
   Internal_Append (Extent, 13);
   Initialize_Comment (732);
   Internal_Append (Extent, 732);
   Initialize_Property (56);
   Internal_Append (Extent, 56);
   Initialize_Comment (733);
   Internal_Append (Extent, 733);
   Initialize_Class (5);
   Internal_Append (Extent, 5);
   Initialize_Comment (734);
   Internal_Append (Extent, 734);
   Initialize_Property (82);
   Internal_Append (Extent, 82);
   Initialize_Comment (735);
   Internal_Append (Extent, 735);
   Initialize_Property (47);
   Internal_Append (Extent, 47);
   Initialize_Comment (736);
   Internal_Append (Extent, 736);
   Initialize_Enumeration (737);
   Internal_Append (Extent, 737);
   Initialize_Comment (738);
   Internal_Append (Extent, 738);
   Initialize_Enumeration_Literal (739);
   Internal_Append (Extent, 739);
   Initialize_Comment (740);
   Internal_Append (Extent, 740);
   Initialize_Enumeration_Literal (741);
   Internal_Append (Extent, 741);
   Initialize_Comment (742);
   Internal_Append (Extent, 742);
   Initialize_Enumeration_Literal (743);
   Internal_Append (Extent, 743);
   Initialize_Comment (744);
   Internal_Append (Extent, 744);
   Initialize_Enumeration_Literal (745);
   Internal_Append (Extent, 745);
   Initialize_Comment (746);
   Internal_Append (Extent, 746);
   Initialize_Enumeration (747);
   Internal_Append (Extent, 747);
   Initialize_Comment (748);
   Internal_Append (Extent, 748);
   Initialize_Operation (749);
   Internal_Append (Extent, 749);
   Initialize_Comment (750);
   Internal_Append (Extent, 750);
   Initialize_Constraint (751);
   Internal_Append (Extent, 751);
   Initialize_Opaque_Expression (752);
   Internal_Append (Extent, 752);
   Initialize_Parameter (753);
   Internal_Append (Extent, 753);
   Initialize_Parameter (754);
   Internal_Append (Extent, 754);
   Initialize_Enumeration_Literal (755);
   Internal_Append (Extent, 755);
   Initialize_Comment (756);
   Internal_Append (Extent, 756);
   Initialize_Enumeration_Literal (757);
   Internal_Append (Extent, 757);
   Initialize_Comment (758);
   Internal_Append (Extent, 758);
   Initialize_Enumeration_Literal (759);
   Internal_Append (Extent, 759);
   Initialize_Comment (760);
   Internal_Append (Extent, 760);
   Initialize_Enumeration_Literal (761);
   Internal_Append (Extent, 761);
   Initialize_Comment (762);
   Internal_Append (Extent, 762);
   Initialize_Association (153);
   Internal_Append (Extent, 153);
   Initialize_Property (763);
   Internal_Append (Extent, 763);
   Initialize_Association (155);
   Internal_Append (Extent, 155);
   Initialize_Association (156);
   Internal_Append (Extent, 156);
   Initialize_Association (158);
   Internal_Append (Extent, 158);
   Initialize_Association (159);
   Internal_Append (Extent, 159);
   Initialize_Property (764);
   Internal_Append (Extent, 764);
   Initialize_Association (162);
   Internal_Append (Extent, 162);
   Initialize_Property (765);
   Internal_Append (Extent, 765);
   Initialize_Association (164);
   Internal_Append (Extent, 164);
   Initialize_Property (766);
   Internal_Append (Extent, 766);
   Initialize_Association (166);
   Internal_Append (Extent, 166);
   Initialize_Property (767);
   Internal_Append (Extent, 767);
   Initialize_Association (168);
   Internal_Append (Extent, 168);
   Initialize_Property (768);
   Internal_Append (Extent, 768);
   Initialize_Association (170);
   Internal_Append (Extent, 170);
   Initialize_Property (769);
   Internal_Append (Extent, 769);
   Initialize_Association (172);
   Internal_Append (Extent, 172);
   Initialize_Association (174);
   Internal_Append (Extent, 174);
   Initialize_Association (175);
   Internal_Append (Extent, 175);
   Initialize_Association (177);
   Internal_Append (Extent, 177);
   Initialize_Property (770);
   Internal_Append (Extent, 770);
   Initialize_Association (179);
   Internal_Append (Extent, 179);
   Initialize_Property (771);
   Internal_Append (Extent, 771);
   Initialize_Association (181);
   Internal_Append (Extent, 181);
   Initialize_Property (772);
   Internal_Append (Extent, 772);
   Initialize_Association (183);
   Internal_Append (Extent, 183);
   Initialize_Property (773);
   Internal_Append (Extent, 773);
   Initialize_Association (185);
   Internal_Append (Extent, 185);
   Initialize_Property (774);
   Internal_Append (Extent, 774);
   Initialize_Association (187);
   Internal_Append (Extent, 187);
   Initialize_Property (775);
   Internal_Append (Extent, 775);
   Initialize_Association (136);
   Internal_Append (Extent, 136);
   Initialize_Property (776);
   Internal_Append (Extent, 776);
   Initialize_Association (137);
   Internal_Append (Extent, 137);
   Initialize_Association (138);
   Internal_Append (Extent, 138);
   Initialize_Association (139);
   Internal_Append (Extent, 139);
   Initialize_Property (777);
   Internal_Append (Extent, 777);
   Initialize_Association (141);
   Internal_Append (Extent, 141);
   Initialize_Association (143);
   Internal_Append (Extent, 143);
   Initialize_Association (144);
   Internal_Append (Extent, 144);
   Initialize_Association (145);
   Internal_Append (Extent, 145);
   Initialize_Property (778);
   Internal_Append (Extent, 778);
   Initialize_Association (146);
   Internal_Append (Extent, 146);
   Initialize_Association (147);
   Internal_Append (Extent, 147);
   Initialize_Property (779);
   Internal_Append (Extent, 779);
   Initialize_Association (148);
   Internal_Append (Extent, 148);
   Initialize_Association (149);
   Internal_Append (Extent, 149);
   Initialize_Property (780);
   Internal_Append (Extent, 780);
   Initialize_Association (150);
   Internal_Append (Extent, 150);
   Initialize_Property (781);
   Internal_Append (Extent, 781);
   Initialize_Association (151);
   Internal_Append (Extent, 151);
   Initialize_Property (782);
   Internal_Append (Extent, 782);
   Initialize_Association (152);
   Internal_Append (Extent, 152);
   Initialize_Property (783);
   Internal_Append (Extent, 783);
   Initialize_Association (154);
   Internal_Append (Extent, 154);
   Initialize_Property (784);
   Internal_Append (Extent, 784);
   Initialize_Association (157);
   Internal_Append (Extent, 157);
   Initialize_Property (785);
   Internal_Append (Extent, 785);
   Initialize_Association (160);
   Internal_Append (Extent, 160);
   Initialize_Association (161);
   Internal_Append (Extent, 161);
   Initialize_Property (786);
   Internal_Append (Extent, 786);
   Initialize_Association (163);
   Internal_Append (Extent, 163);
   Initialize_Property (787);
   Internal_Append (Extent, 787);
   Initialize_Association (165);
   Internal_Append (Extent, 165);
   Initialize_Property (788);
   Internal_Append (Extent, 788);
   Initialize_Association (167);
   Internal_Append (Extent, 167);
   Initialize_Association (169);
   Internal_Append (Extent, 169);
   Initialize_Property (789);
   Internal_Append (Extent, 789);
   Initialize_Association (171);
   Internal_Append (Extent, 171);
   Initialize_Property (790);
   Internal_Append (Extent, 790);
   Initialize_Association (173);
   Internal_Append (Extent, 173);
   Initialize_Property (791);
   Internal_Append (Extent, 791);
   Initialize_Association (176);
   Internal_Append (Extent, 176);
   Initialize_Association (178);
   Internal_Append (Extent, 178);
   Initialize_Property (792);
   Internal_Append (Extent, 792);
   Initialize_Association (180);
   Internal_Append (Extent, 180);
   Initialize_Property (793);
   Internal_Append (Extent, 793);
   Initialize_Association (182);
   Internal_Append (Extent, 182);
   Initialize_Property (794);
   Internal_Append (Extent, 794);
   Initialize_Association (184);
   Internal_Append (Extent, 184);
   Initialize_Property (795);
   Internal_Append (Extent, 795);
   Initialize_Association (186);
   Internal_Append (Extent, 186);
   Initialize_Property (796);
   Internal_Append (Extent, 796);
   Initialize_Association (188);
   Internal_Append (Extent, 188);
   Initialize_Class (30);
   Internal_Append (Extent, 30);
   Initialize_Property (131);
   Internal_Append (Extent, 131);
   Initialize_Property (133);
   Internal_Append (Extent, 133);
   Initialize_Property (78);
   Internal_Append (Extent, 78);
   Initialize_Property (132);
   Internal_Append (Extent, 132);
   Initialize_Association (140);
   Internal_Append (Extent, 140);
   Initialize_Property (797);
   Internal_Append (Extent, 797);
   Initialize_Association (142);
   Internal_Append (Extent, 142);
   Initialize_Property (798);
   Internal_Append (Extent, 798);
   Initialize_Tag (799);
   Internal_Append (Extent, 799);
   Initialize_Tag (800);
   Internal_Append (Extent, 800);

   Internal_Set_Name
    (189,
     (False, League.Strings.To_Universal_String ("CMOF")));
   Internal_Set_Uri
    (189,
     (False, League.Strings.To_Universal_String ("http://schema.omg.org/spec/MOF/2.0/cmof.xml")));

   Internal_Set_Is_Final_Specialization (190, False);
   Internal_Set_Name
    (190,
     (False, League.Strings.To_Universal_String ("Integer")));

   Internal_Set_Body
    (191,
     (False, League.Strings.To_Universal_String ("An integer is a primitive type representing integer values.")));

   Internal_Set_Is_Final_Specialization (192, False);
   Internal_Set_Name
    (192,
     (False, League.Strings.To_Universal_String ("Boolean")));

   Internal_Set_Body
    (193,
     (False, League.Strings.To_Universal_String ("A Boolean type is used for logical expression, consisting of the predefined values true and false.")));

   Internal_Set_Is_Final_Specialization (194, False);
   Internal_Set_Name
    (194,
     (False, League.Strings.To_Universal_String ("String")));

   Internal_Set_Body
    (195,
     (False, League.Strings.To_Universal_String ("A string is a sequence of characters in some suitable character set used to display information about the model. Character sets may include non-Roman alphabets and characters.")));

   Internal_Set_Is_Final_Specialization (196, False);
   Internal_Set_Name
    (196,
     (False, League.Strings.To_Universal_String ("UnlimitedNatural")));

   Internal_Set_Body
    (197,
     (False, League.Strings.To_Universal_String ("An unlimited natural is a primitive type representing unlimited natural values.")));

   Internal_Set_Is_Abstract (4, True);
   Internal_Set_Is_Final_Specialization (4, False);
   Internal_Set_Name
    (4,
     (False, League.Strings.To_Universal_String ("Classifier")));

   Internal_Set_Body
    (198,
     (False, League.Strings.To_Universal_String ("A classifier is a classification of instances - it describes a set of instances that have features in common. A classifier can specify a generalization hierarchy by referencing its general classifiers.")));

   Internal_Set_Name
    (199,
     (False, League.Strings.To_Universal_String ("no_cycles_in_generalization")));

   Internal_Set_Body
    (200,
     (False, League.Strings.To_Universal_String ("Generalization hierarchies must be directed and acyclical. A classifier can not be both a transitively general and transitively specific classifier of the same classifier.")));


   Internal_Set_Name
    (202,
     (False, League.Strings.To_Universal_String ("specialize_type")));

   Internal_Set_Body
    (203,
     (False, League.Strings.To_Universal_String ("A classifier may only specialize classifiers of a valid type.")));


   Internal_Set_Is_Composite (43, False);
   Internal_Set_Is_Derived (43, True);
   Internal_Set_Is_Derived_Union (43, True);
   Internal_Set_Is_Leaf (43, False);
   Internal_Set_Is_Ordered (43, False);
   Internal_Set_Is_Read_Only (43, True);
   Internal_Set_Is_Unique (43, True);
   Internal_Set_Lower (43, (False, 0));
   Internal_Set_Name
    (43,
     (False, League.Strings.To_Universal_String ("attribute")));
   Internal_Set_Upper (43, (False, (Unlimited => True)));

   Internal_Set_Body
    (205,
     (False, League.Strings.To_Universal_String ("Refers to all of the Properties that are direct (i.e. not inherited or imported) attributes of the classifier.")));

   Internal_Set_Is_Composite (44, False);
   Internal_Set_Is_Derived (44, True);
   Internal_Set_Is_Derived_Union (44, True);
   Internal_Set_Is_Leaf (44, False);
   Internal_Set_Is_Ordered (44, False);
   Internal_Set_Is_Read_Only (44, True);
   Internal_Set_Is_Unique (44, True);
   Internal_Set_Lower (44, (False, 0));
   Internal_Set_Name
    (44,
     (False, League.Strings.To_Universal_String ("feature")));
   Internal_Set_Upper (44, (False, (Unlimited => True)));

   Internal_Set_Body
    (206,
     (False, League.Strings.To_Universal_String ("Note that there may be members of the Classifier that are of the type Feature but are not included in this association, e.g. inherited features.")));

   Internal_Set_Is_Composite (45, False);
   Internal_Set_Is_Derived (45, False);
   Internal_Set_Is_Derived_Union (45, False);
   Internal_Set_Is_Leaf (45, False);
   Internal_Set_Is_Ordered (45, False);
   Internal_Set_Is_Read_Only (45, False);
   Internal_Set_Is_Unique (45, True);
   Internal_Set_Lower (45, (False, 0));
   Internal_Set_Name
    (45,
     (False, League.Strings.To_Universal_String ("general")));
   Internal_Set_Upper (45, (False, (Unlimited => True)));

   Internal_Set_Body
    (207,
     (False, League.Strings.To_Universal_String ("References the general classifier in the Generalization relationship.")));

   Internal_Set_Is_Composite (46, False);
   Internal_Set_Is_Derived (46, True);
   Internal_Set_Is_Derived_Union (46, False);
   Internal_Set_Is_Leaf (46, False);
   Internal_Set_Is_Ordered (46, False);
   Internal_Set_Is_Read_Only (46, True);
   Internal_Set_Is_Unique (46, True);
   Internal_Set_Lower (46, (False, 0));
   Internal_Set_Name
    (46,
     (False, League.Strings.To_Universal_String ("inheritedMember")));
   Internal_Set_Upper (46, (False, (Unlimited => True)));

   Internal_Set_Body
    (208,
     (False, League.Strings.To_Universal_String ("Specifies all elements inherited by this classifier from the general classifiers.")));

   Internal_Set_Default
    (81,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (81, False);
   Internal_Set_Is_Derived (81, False);
   Internal_Set_Is_Derived_Union (81, False);
   Internal_Set_Is_Leaf (81, False);
   Internal_Set_Is_Ordered (81, False);
   Internal_Set_Is_Read_Only (81, False);
   Internal_Set_Is_Unique (81, True);
   Internal_Set_Lower (81, (False, 1));
   Internal_Set_Name
    (81,
     (False, League.Strings.To_Universal_String ("isFinalSpecialization")));
   Internal_Set_Upper (81, (False, (False, 1)));

   Internal_Set_Body
    (209,
     (False, League.Strings.To_Universal_String ("If true, the Classifier cannot be specialized by generalization. Note that this property is preserved through package merge operations; that is, the capability to specialize a Classifier (i.e., isFinalSpecialization =false) must be preserved in the resulting Classifier of a package merge operation where a Classifier with isFinalSpecialization =false is merged with a matching Classifier with isFinalSpecialization =true: the resulting Classifier will have isFinalSpecialization =false.")));

   Internal_Set_Is_Leaf (210, False);
   Internal_Set_Is_Ordered (210, False);
   Internal_Set_Is_Query (210, True);
   Internal_Set_Is_Unique (210, True);
   Internal_Set_Lower (210, (False, 1));
   Internal_Set_Name
    (210,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (210, (False, (False, 1)));

   Internal_Set_Body
    (211,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations.")));

   Internal_Set_Name
    (212,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (214, Return_Direction);
   Internal_Set_Is_Ordered (214, False);
   Internal_Set_Is_Unique (214, True);
   Internal_Set_Lower (214, (False, 1));
   Internal_Set_Upper (214, (False, (False, 1)));

   Internal_Set_Direction (215, In_Direction);
   Internal_Set_Is_Ordered (215, False);
   Internal_Set_Is_Unique (215, True);
   Internal_Set_Lower (215, (False, 1));
   Internal_Set_Name
    (215,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (215, (False, (False, 1)));

   Internal_Set_Is_Leaf (216, False);
   Internal_Set_Is_Ordered (216, False);
   Internal_Set_Is_Query (216, True);
   Internal_Set_Is_Unique (216, True);
   Internal_Set_Lower (216, (False, 1));
   Internal_Set_Name
    (216,
     (False, League.Strings.To_Universal_String ("allFeatures")));
   Internal_Set_Upper (216, (False, (False, 1)));

   Internal_Set_Body
    (217,
     (False, League.Strings.To_Universal_String ("The query allFeatures() gives all of the features in the namespace of the classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature.")));

   Internal_Set_Name
    (218,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (220, Return_Direction);
   Internal_Set_Is_Ordered (220, False);
   Internal_Set_Is_Unique (220, True);
   Internal_Set_Lower (220, (False, 0));
   Internal_Set_Upper (220, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (221, False);
   Internal_Set_Is_Ordered (221, False);
   Internal_Set_Is_Query (221, True);
   Internal_Set_Is_Unique (221, True);
   Internal_Set_Lower (221, (False, 1));
   Internal_Set_Name
    (221,
     (False, League.Strings.To_Universal_String ("general")));
   Internal_Set_Upper (221, (False, (False, 1)));

   Internal_Set_Body
    (222,
     (False, League.Strings.To_Universal_String ("The general classifiers are the classifiers referenced by the generalization relationships.")));

   Internal_Set_Name
    (223,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (225, Return_Direction);
   Internal_Set_Is_Ordered (225, False);
   Internal_Set_Is_Unique (225, True);
   Internal_Set_Lower (225, (False, 0));
   Internal_Set_Upper (225, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (226, False);
   Internal_Set_Is_Ordered (226, False);
   Internal_Set_Is_Query (226, True);
   Internal_Set_Is_Unique (226, True);
   Internal_Set_Lower (226, (False, 1));
   Internal_Set_Name
    (226,
     (False, League.Strings.To_Universal_String ("parents")));
   Internal_Set_Upper (226, (False, (False, 1)));

   Internal_Set_Body
    (227,
     (False, League.Strings.To_Universal_String ("The query parents() gives all of the immediate ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (228,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (230, Return_Direction);
   Internal_Set_Is_Ordered (230, False);
   Internal_Set_Is_Unique (230, True);
   Internal_Set_Lower (230, (False, 0));
   Internal_Set_Upper (230, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (231, False);
   Internal_Set_Is_Ordered (231, False);
   Internal_Set_Is_Query (231, True);
   Internal_Set_Is_Unique (231, True);
   Internal_Set_Lower (231, (False, 1));
   Internal_Set_Name
    (231,
     (False, League.Strings.To_Universal_String ("inheritedMember")));
   Internal_Set_Upper (231, (False, (False, 1)));

   Internal_Set_Body
    (232,
     (False, League.Strings.To_Universal_String ("The inheritedMember association is derived by inheriting the inheritable members of the parents.")));

   Internal_Set_Name
    (233,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (235, Return_Direction);
   Internal_Set_Is_Ordered (235, False);
   Internal_Set_Is_Unique (235, True);
   Internal_Set_Lower (235, (False, 0));
   Internal_Set_Upper (235, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (236, False);
   Internal_Set_Is_Ordered (236, False);
   Internal_Set_Is_Query (236, True);
   Internal_Set_Is_Unique (236, True);
   Internal_Set_Lower (236, (False, 1));
   Internal_Set_Name
    (236,
     (False, League.Strings.To_Universal_String ("allParents")));
   Internal_Set_Upper (236, (False, (False, 1)));

   Internal_Set_Body
    (237,
     (False, League.Strings.To_Universal_String ("The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (238,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (240, Return_Direction);
   Internal_Set_Is_Ordered (240, False);
   Internal_Set_Is_Unique (240, True);
   Internal_Set_Lower (240, (False, 0));
   Internal_Set_Upper (240, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (241, False);
   Internal_Set_Is_Ordered (241, False);
   Internal_Set_Is_Query (241, True);
   Internal_Set_Is_Unique (241, True);
   Internal_Set_Lower (241, (False, 1));
   Internal_Set_Name
    (241,
     (False, League.Strings.To_Universal_String ("inheritableMembers")));
   Internal_Set_Upper (241, (False, (False, 1)));

   Internal_Set_Body
    (242,
     (False, League.Strings.To_Universal_String ("The query inheritableMembers() gives all of the members of a classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply.")));



   Internal_Set_Name
    (245,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (247, Return_Direction);
   Internal_Set_Is_Ordered (247, False);
   Internal_Set_Is_Unique (247, True);
   Internal_Set_Lower (247, (False, 0));
   Internal_Set_Upper (247, (False, (Unlimited => True)));

   Internal_Set_Direction (248, In_Direction);
   Internal_Set_Is_Ordered (248, False);
   Internal_Set_Is_Unique (248, True);
   Internal_Set_Lower (248, (False, 1));
   Internal_Set_Name
    (248,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (248, (False, (False, 1)));

   Internal_Set_Is_Leaf (249, False);
   Internal_Set_Is_Ordered (249, False);
   Internal_Set_Is_Query (249, True);
   Internal_Set_Is_Unique (249, True);
   Internal_Set_Lower (249, (False, 1));
   Internal_Set_Name
    (249,
     (False, League.Strings.To_Universal_String ("hasVisibilityOf")));
   Internal_Set_Upper (249, (False, (False, 1)));

   Internal_Set_Body
    (250,
     (False, League.Strings.To_Universal_String ("The query hasVisibilityOf() determines whether a named element is visible in the classifier. By default all are visible. It is only called when the argument is something owned by a parent.")));



   Internal_Set_Name
    (253,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (255, Return_Direction);
   Internal_Set_Is_Ordered (255, False);
   Internal_Set_Is_Unique (255, True);
   Internal_Set_Lower (255, (False, 1));
   Internal_Set_Upper (255, (False, (False, 1)));

   Internal_Set_Direction (256, In_Direction);
   Internal_Set_Is_Ordered (256, False);
   Internal_Set_Is_Unique (256, True);
   Internal_Set_Lower (256, (False, 1));
   Internal_Set_Name
    (256,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (256, (False, (False, 1)));

   Internal_Set_Is_Leaf (257, False);
   Internal_Set_Is_Ordered (257, False);
   Internal_Set_Is_Query (257, True);
   Internal_Set_Is_Unique (257, True);
   Internal_Set_Lower (257, (False, 1));
   Internal_Set_Name
    (257,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (257, (False, (False, 1)));

   Internal_Set_Body
    (258,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (259,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (261, Return_Direction);
   Internal_Set_Is_Ordered (261, False);
   Internal_Set_Is_Unique (261, True);
   Internal_Set_Lower (261, (False, 0));
   Internal_Set_Upper (261, (False, (Unlimited => True)));

   Internal_Set_Direction (262, In_Direction);
   Internal_Set_Is_Ordered (262, False);
   Internal_Set_Is_Unique (262, True);
   Internal_Set_Lower (262, (False, 0));
   Internal_Set_Name
    (262,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (262, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (263, False);
   Internal_Set_Is_Ordered (263, False);
   Internal_Set_Is_Query (263, True);
   Internal_Set_Is_Unique (263, True);
   Internal_Set_Lower (263, (False, 1));
   Internal_Set_Name
    (263,
     (False, League.Strings.To_Universal_String ("maySpecializeType")));
   Internal_Set_Upper (263, (False, (False, 1)));

   Internal_Set_Body
    (264,
     (False, League.Strings.To_Universal_String ("The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints.")));

   Internal_Set_Name
    (265,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (267, Return_Direction);
   Internal_Set_Is_Ordered (267, False);
   Internal_Set_Is_Unique (267, True);
   Internal_Set_Lower (267, (False, 1));
   Internal_Set_Upper (267, (False, (False, 1)));

   Internal_Set_Direction (268, In_Direction);
   Internal_Set_Is_Ordered (268, False);
   Internal_Set_Is_Unique (268, True);
   Internal_Set_Lower (268, (False, 1));
   Internal_Set_Name
    (268,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (268, (False, (False, 1)));

   Internal_Set_Is_Abstract (8, True);
   Internal_Set_Is_Final_Specialization (8, False);
   Internal_Set_Name
    (8,
     (False, League.Strings.To_Universal_String ("DirectedRelationship")));

   Internal_Set_Body
    (269,
     (False, League.Strings.To_Universal_String ("A directed relationship represents a relationship between a collection of source model elements and a collection of target model elements.")));

   Internal_Set_Is_Composite (51, False);
   Internal_Set_Is_Derived (51, True);
   Internal_Set_Is_Derived_Union (51, True);
   Internal_Set_Is_Leaf (51, False);
   Internal_Set_Is_Ordered (51, False);
   Internal_Set_Is_Read_Only (51, True);
   Internal_Set_Is_Unique (51, True);
   Internal_Set_Lower (51, (False, 1));
   Internal_Set_Name
    (51,
     (False, League.Strings.To_Universal_String ("source")));
   Internal_Set_Upper (51, (False, (Unlimited => True)));

   Internal_Set_Body
    (270,
     (False, League.Strings.To_Universal_String ("Specifies the sources of the DirectedRelationship.")));

   Internal_Set_Is_Composite (52, False);
   Internal_Set_Is_Derived (52, True);
   Internal_Set_Is_Derived_Union (52, True);
   Internal_Set_Is_Leaf (52, False);
   Internal_Set_Is_Ordered (52, False);
   Internal_Set_Is_Read_Only (52, True);
   Internal_Set_Is_Unique (52, True);
   Internal_Set_Lower (52, (False, 1));
   Internal_Set_Name
    (52,
     (False, League.Strings.To_Universal_String ("target")));
   Internal_Set_Upper (52, (False, (Unlimited => True)));

   Internal_Set_Body
    (271,
     (False, League.Strings.To_Universal_String ("Specifies the targets of the DirectedRelationship.")));

   Internal_Set_Is_Abstract (9, True);
   Internal_Set_Is_Final_Specialization (9, False);
   Internal_Set_Name
    (9,
     (False, League.Strings.To_Universal_String ("Element")));

   Internal_Set_Body
    (272,
     (False, League.Strings.To_Universal_String ("An element is a constituent of a model. As such, it has the capability of owning other elements.")));

   Internal_Set_Name
    (273,
     (False, League.Strings.To_Universal_String ("not_own_self")));

   Internal_Set_Body
    (274,
     (False, League.Strings.To_Universal_String ("An element may not directly or indirectly own itself.")));


   Internal_Set_Name
    (276,
     (False, League.Strings.To_Universal_String ("has_owner")));

   Internal_Set_Body
    (277,
     (False, League.Strings.To_Universal_String ("Elements that must be owned must have an owner.")));


   Internal_Set_Is_Composite (54, True);
   Internal_Set_Is_Derived (54, True);
   Internal_Set_Is_Derived_Union (54, True);
   Internal_Set_Is_Leaf (54, False);
   Internal_Set_Is_Ordered (54, False);
   Internal_Set_Is_Read_Only (54, True);
   Internal_Set_Is_Unique (54, True);
   Internal_Set_Lower (54, (False, 0));
   Internal_Set_Name
    (54,
     (False, League.Strings.To_Universal_String ("ownedElement")));
   Internal_Set_Upper (54, (False, (Unlimited => True)));

   Internal_Set_Body
    (279,
     (False, League.Strings.To_Universal_String ("The Elements owned by this element.")));

   Internal_Set_Is_Composite (85, False);
   Internal_Set_Is_Derived (85, True);
   Internal_Set_Is_Derived_Union (85, True);
   Internal_Set_Is_Leaf (85, False);
   Internal_Set_Is_Ordered (85, False);
   Internal_Set_Is_Read_Only (85, True);
   Internal_Set_Is_Unique (85, True);
   Internal_Set_Lower (85, (False, 0));
   Internal_Set_Name
    (85,
     (False, League.Strings.To_Universal_String ("owner")));
   Internal_Set_Upper (85, (False, (False, 1)));

   Internal_Set_Body
    (280,
     (False, League.Strings.To_Universal_String ("The Element that owns this element.")));

   Internal_Set_Is_Composite (53, True);
   Internal_Set_Is_Derived (53, False);
   Internal_Set_Is_Derived_Union (53, False);
   Internal_Set_Is_Leaf (53, False);
   Internal_Set_Is_Ordered (53, False);
   Internal_Set_Is_Read_Only (53, False);
   Internal_Set_Is_Unique (53, True);
   Internal_Set_Lower (53, (False, 0));
   Internal_Set_Name
    (53,
     (False, League.Strings.To_Universal_String ("ownedComment")));
   Internal_Set_Upper (53, (False, (Unlimited => True)));

   Internal_Set_Body
    (281,
     (False, League.Strings.To_Universal_String ("The Comments owned by this element.")));

   Internal_Set_Is_Leaf (282, False);
   Internal_Set_Is_Ordered (282, False);
   Internal_Set_Is_Query (282, True);
   Internal_Set_Is_Unique (282, True);
   Internal_Set_Lower (282, (False, 1));
   Internal_Set_Name
    (282,
     (False, League.Strings.To_Universal_String ("allOwnedElements")));
   Internal_Set_Upper (282, (False, (False, 1)));

   Internal_Set_Body
    (283,
     (False, League.Strings.To_Universal_String ("The query allOwnedElements() gives all of the direct and indirect owned elements of an element.")));

   Internal_Set_Name
    (284,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (286, Return_Direction);
   Internal_Set_Is_Ordered (286, False);
   Internal_Set_Is_Unique (286, True);
   Internal_Set_Lower (286, (False, 0));
   Internal_Set_Upper (286, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (287, False);
   Internal_Set_Is_Ordered (287, False);
   Internal_Set_Is_Query (287, True);
   Internal_Set_Is_Unique (287, True);
   Internal_Set_Lower (287, (False, 1));
   Internal_Set_Name
    (287,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (287, (False, (False, 1)));

   Internal_Set_Body
    (288,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner. Subclasses of Element that do not require an owner must override this operation.")));

   Internal_Set_Name
    (289,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (291, Return_Direction);
   Internal_Set_Is_Ordered (291, False);
   Internal_Set_Is_Unique (291, True);
   Internal_Set_Lower (291, (False, 1));
   Internal_Set_Upper (291, (False, (False, 1)));

   Internal_Set_Is_Abstract (14, True);
   Internal_Set_Is_Final_Specialization (14, False);
   Internal_Set_Name
    (14,
     (False, League.Strings.To_Universal_String ("Feature")));

   Internal_Set_Body
    (292,
     (False, League.Strings.To_Universal_String ("A feature declares a behavioral or structural characteristic of instances of classifiers.")));

   Internal_Set_Is_Composite (57, False);
   Internal_Set_Is_Derived (57, True);
   Internal_Set_Is_Derived_Union (57, True);
   Internal_Set_Is_Leaf (57, False);
   Internal_Set_Is_Ordered (57, False);
   Internal_Set_Is_Read_Only (57, True);
   Internal_Set_Is_Unique (57, True);
   Internal_Set_Lower (57, (False, 0));
   Internal_Set_Name
    (57,
     (False, League.Strings.To_Universal_String ("featuringClassifier")));
   Internal_Set_Upper (57, (False, (Unlimited => True)));

   Internal_Set_Body
    (293,
     (False, League.Strings.To_Universal_String ("The Classifiers that have this Feature as a feature.")));

   Internal_Set_Is_Abstract (15, True);
   Internal_Set_Is_Final_Specialization (15, False);
   Internal_Set_Name
    (15,
     (False, League.Strings.To_Universal_String ("MultiplicityElement")));

   Internal_Set_Body
    (294,
     (False, League.Strings.To_Universal_String ("A multiplicity is a definition of an inclusive interval of non-negative integers beginning with a lower bound and ending with a (possibly infinite) upper bound. A multiplicity element embeds this information to specify the allowable cardinalities for an instantiation of this element.")));

   Internal_Set_Name
    (295,
     (False, League.Strings.To_Universal_String ("upper_ge_lower")));

   Internal_Set_Body
    (296,
     (False, League.Strings.To_Universal_String ("The upper bound must be greater than or equal to the lower bound.")));


   Internal_Set_Name
    (298,
     (False, League.Strings.To_Universal_String ("lower_ge_0")));

   Internal_Set_Body
    (299,
     (False, League.Strings.To_Universal_String ("The lower bound must be a non-negative integer literal.")));


   Internal_Set_Default
    (91,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (91, False);
   Internal_Set_Is_Derived (91, False);
   Internal_Set_Is_Derived_Union (91, False);
   Internal_Set_Is_Leaf (91, False);
   Internal_Set_Is_Ordered (91, False);
   Internal_Set_Is_Read_Only (91, False);
   Internal_Set_Is_Unique (91, True);
   Internal_Set_Lower (91, (False, 1));
   Internal_Set_Name
    (91,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (91, (False, (False, 1)));

   Internal_Set_Body
    (301,
     (False, League.Strings.To_Universal_String ("For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are sequentially ordered.")));

   Internal_Set_Default
    (92,
     (False, League.Strings.To_Universal_String ("true")));
   Internal_Set_Is_Composite (92, False);
   Internal_Set_Is_Derived (92, False);
   Internal_Set_Is_Derived_Union (92, False);
   Internal_Set_Is_Leaf (92, False);
   Internal_Set_Is_Ordered (92, False);
   Internal_Set_Is_Read_Only (92, False);
   Internal_Set_Is_Unique (92, True);
   Internal_Set_Lower (92, (False, 1));
   Internal_Set_Name
    (92,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (92, (False, (False, 1)));

   Internal_Set_Body
    (302,
     (False, League.Strings.To_Universal_String ("For a multivalued multiplicity, this attributes specifies whether the values in an instantiation of this element are unique.")));

   Internal_Set_Default
    (93,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (93, False);
   Internal_Set_Is_Derived (93, False);
   Internal_Set_Is_Derived_Union (93, False);
   Internal_Set_Is_Leaf (93, False);
   Internal_Set_Is_Ordered (93, False);
   Internal_Set_Is_Read_Only (93, False);
   Internal_Set_Is_Unique (93, True);
   Internal_Set_Lower (93, (False, 0));
   Internal_Set_Name
    (93,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (93, (False, (False, 1)));

   Internal_Set_Body
    (303,
     (False, League.Strings.To_Universal_String ("Specifies the lower bound of the multiplicity interval.")));

   Internal_Set_Default
    (94,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (94, False);
   Internal_Set_Is_Derived (94, False);
   Internal_Set_Is_Derived_Union (94, False);
   Internal_Set_Is_Leaf (94, False);
   Internal_Set_Is_Ordered (94, False);
   Internal_Set_Is_Read_Only (94, False);
   Internal_Set_Is_Unique (94, True);
   Internal_Set_Lower (94, (False, 0));
   Internal_Set_Name
    (94,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (94, (False, (False, 1)));

   Internal_Set_Body
    (304,
     (False, League.Strings.To_Universal_String ("Specifies the upper bound of the multiplicity interval.")));

   Internal_Set_Is_Leaf (305, False);
   Internal_Set_Is_Ordered (305, False);
   Internal_Set_Is_Query (305, True);
   Internal_Set_Is_Unique (305, True);
   Internal_Set_Lower (305, (False, 1));
   Internal_Set_Name
    (305,
     (False, League.Strings.To_Universal_String ("isMultivalued")));
   Internal_Set_Upper (305, (False, (False, 1)));

   Internal_Set_Body
    (306,
     (False, League.Strings.To_Universal_String ("The query isMultivalued() checks whether this multiplicity has an upper bound greater than one.")));



   Internal_Set_Name
    (309,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (311, Return_Direction);
   Internal_Set_Is_Ordered (311, False);
   Internal_Set_Is_Unique (311, True);
   Internal_Set_Lower (311, (False, 1));
   Internal_Set_Upper (311, (False, (False, 1)));

   Internal_Set_Is_Leaf (312, False);
   Internal_Set_Is_Ordered (312, False);
   Internal_Set_Is_Query (312, True);
   Internal_Set_Is_Unique (312, True);
   Internal_Set_Lower (312, (False, 1));
   Internal_Set_Name
    (312,
     (False, League.Strings.To_Universal_String ("includesMultiplicity")));
   Internal_Set_Upper (312, (False, (False, 1)));

   Internal_Set_Body
    (313,
     (False, League.Strings.To_Universal_String ("The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity.")));



   Internal_Set_Name
    (316,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (318, Return_Direction);
   Internal_Set_Is_Ordered (318, False);
   Internal_Set_Is_Unique (318, True);
   Internal_Set_Lower (318, (False, 1));
   Internal_Set_Upper (318, (False, (False, 1)));

   Internal_Set_Direction (319, In_Direction);
   Internal_Set_Is_Ordered (319, False);
   Internal_Set_Is_Unique (319, True);
   Internal_Set_Lower (319, (False, 1));
   Internal_Set_Name
    (319,
     (False, League.Strings.To_Universal_String ("M")));
   Internal_Set_Upper (319, (False, (False, 1)));

   Internal_Set_Is_Leaf (320, False);
   Internal_Set_Is_Ordered (320, False);
   Internal_Set_Is_Query (320, True);
   Internal_Set_Is_Unique (320, True);
   Internal_Set_Lower (320, (False, 1));
   Internal_Set_Name
    (320,
     (False, League.Strings.To_Universal_String ("includesCardinality")));
   Internal_Set_Upper (320, (False, (False, 1)));

   Internal_Set_Body
    (321,
     (False, League.Strings.To_Universal_String ("The query includesCardinality() checks whether the specified cardinality is valid for this multiplicity.")));



   Internal_Set_Name
    (324,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (326, Return_Direction);
   Internal_Set_Is_Ordered (326, False);
   Internal_Set_Is_Unique (326, True);
   Internal_Set_Lower (326, (False, 1));
   Internal_Set_Upper (326, (False, (False, 1)));

   Internal_Set_Direction (327, In_Direction);
   Internal_Set_Is_Ordered (327, False);
   Internal_Set_Is_Unique (327, True);
   Internal_Set_Lower (327, (False, 1));
   Internal_Set_Name
    (327,
     (False, League.Strings.To_Universal_String ("C")));
   Internal_Set_Upper (327, (False, (False, 1)));

   Internal_Set_Is_Leaf (328, False);
   Internal_Set_Is_Ordered (328, False);
   Internal_Set_Is_Query (328, True);
   Internal_Set_Is_Unique (328, True);
   Internal_Set_Lower (328, (False, 1));
   Internal_Set_Name
    (328,
     (False, League.Strings.To_Universal_String ("lowerBound")));
   Internal_Set_Upper (328, (False, (False, 1)));

   Internal_Set_Body
    (329,
     (False, League.Strings.To_Universal_String ("The query lowerBound() returns the lower bound of the multiplicity as an integer.")));

   Internal_Set_Name
    (330,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (332, Return_Direction);
   Internal_Set_Is_Ordered (332, False);
   Internal_Set_Is_Unique (332, True);
   Internal_Set_Lower (332, (False, 1));
   Internal_Set_Upper (332, (False, (False, 1)));

   Internal_Set_Is_Leaf (333, False);
   Internal_Set_Is_Ordered (333, False);
   Internal_Set_Is_Query (333, True);
   Internal_Set_Is_Unique (333, True);
   Internal_Set_Lower (333, (False, 1));
   Internal_Set_Name
    (333,
     (False, League.Strings.To_Universal_String ("upperBound")));
   Internal_Set_Upper (333, (False, (False, 1)));

   Internal_Set_Body
    (334,
     (False, League.Strings.To_Universal_String ("The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural.")));

   Internal_Set_Name
    (335,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (337, Return_Direction);
   Internal_Set_Is_Ordered (337, False);
   Internal_Set_Is_Unique (337, True);
   Internal_Set_Lower (337, (False, 1));
   Internal_Set_Upper (337, (False, (False, 1)));

   Internal_Set_Is_Abstract (17, True);
   Internal_Set_Is_Final_Specialization (17, False);
   Internal_Set_Name
    (17,
     (False, League.Strings.To_Universal_String ("Namespace")));

   Internal_Set_Body
    (338,
     (False, League.Strings.To_Universal_String ("A namespace is an element in a model that contains a set of named elements that can be identified by name.")));

   Internal_Set_Name
    (339,
     (False, League.Strings.To_Universal_String ("members_distinguishable")));

   Internal_Set_Body
    (340,
     (False, League.Strings.To_Universal_String ("All the members of a Namespace are distinguishable within it.")));


   Internal_Set_Is_Composite (59, False);
   Internal_Set_Is_Derived (59, True);
   Internal_Set_Is_Derived_Union (59, False);
   Internal_Set_Is_Leaf (59, False);
   Internal_Set_Is_Ordered (59, False);
   Internal_Set_Is_Read_Only (59, True);
   Internal_Set_Is_Unique (59, True);
   Internal_Set_Lower (59, (False, 0));
   Internal_Set_Name
    (59,
     (False, League.Strings.To_Universal_String ("importedMember")));
   Internal_Set_Upper (59, (False, (Unlimited => True)));

   Internal_Set_Body
    (342,
     (False, League.Strings.To_Universal_String ("References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.")));

   Internal_Set_Is_Composite (58, True);
   Internal_Set_Is_Derived (58, False);
   Internal_Set_Is_Derived_Union (58, False);
   Internal_Set_Is_Leaf (58, False);
   Internal_Set_Is_Ordered (58, False);
   Internal_Set_Is_Read_Only (58, False);
   Internal_Set_Is_Unique (58, True);
   Internal_Set_Lower (58, (False, 0));
   Internal_Set_Name
    (58,
     (False, League.Strings.To_Universal_String ("elementImport")));
   Internal_Set_Upper (58, (False, (Unlimited => True)));

   Internal_Set_Body
    (343,
     (False, League.Strings.To_Universal_String ("References the ElementImports owned by the Namespace.")));

   Internal_Set_Is_Composite (63, True);
   Internal_Set_Is_Derived (63, False);
   Internal_Set_Is_Derived_Union (63, False);
   Internal_Set_Is_Leaf (63, False);
   Internal_Set_Is_Ordered (63, False);
   Internal_Set_Is_Read_Only (63, False);
   Internal_Set_Is_Unique (63, True);
   Internal_Set_Lower (63, (False, 0));
   Internal_Set_Name
    (63,
     (False, League.Strings.To_Universal_String ("packageImport")));
   Internal_Set_Upper (63, (False, (Unlimited => True)));

   Internal_Set_Body
    (344,
     (False, League.Strings.To_Universal_String ("References the PackageImports owned by the Namespace.")));

   Internal_Set_Is_Composite (61, True);
   Internal_Set_Is_Derived (61, True);
   Internal_Set_Is_Derived_Union (61, True);
   Internal_Set_Is_Leaf (61, False);
   Internal_Set_Is_Ordered (61, False);
   Internal_Set_Is_Read_Only (61, True);
   Internal_Set_Is_Unique (61, True);
   Internal_Set_Lower (61, (False, 0));
   Internal_Set_Name
    (61,
     (False, League.Strings.To_Universal_String ("ownedMember")));
   Internal_Set_Upper (61, (False, (Unlimited => True)));

   Internal_Set_Body
    (345,
     (False, League.Strings.To_Universal_String ("A collection of NamedElements owned by the Namespace.")));

   Internal_Set_Is_Composite (60, False);
   Internal_Set_Is_Derived (60, True);
   Internal_Set_Is_Derived_Union (60, True);
   Internal_Set_Is_Leaf (60, False);
   Internal_Set_Is_Ordered (60, False);
   Internal_Set_Is_Read_Only (60, True);
   Internal_Set_Is_Unique (60, True);
   Internal_Set_Lower (60, (False, 0));
   Internal_Set_Name
    (60,
     (False, League.Strings.To_Universal_String ("member")));
   Internal_Set_Upper (60, (False, (Unlimited => True)));

   Internal_Set_Body
    (346,
     (False, League.Strings.To_Universal_String ("A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance.")));

   Internal_Set_Is_Composite (62, True);
   Internal_Set_Is_Derived (62, False);
   Internal_Set_Is_Derived_Union (62, False);
   Internal_Set_Is_Leaf (62, False);
   Internal_Set_Is_Ordered (62, False);
   Internal_Set_Is_Read_Only (62, False);
   Internal_Set_Is_Unique (62, True);
   Internal_Set_Lower (62, (False, 0));
   Internal_Set_Name
    (62,
     (False, League.Strings.To_Universal_String ("ownedRule")));
   Internal_Set_Upper (62, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (347, False);
   Internal_Set_Is_Ordered (347, False);
   Internal_Set_Is_Query (347, True);
   Internal_Set_Is_Unique (347, True);
   Internal_Set_Lower (347, (False, 1));
   Internal_Set_Name
    (347,
     (False, League.Strings.To_Universal_String ("importedMember")));
   Internal_Set_Upper (347, (False, (False, 1)));

   Internal_Set_Body
    (348,
     (False, League.Strings.To_Universal_String ("The importedMember property is derived from the ElementImports and the PackageImports. References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.")));

   Internal_Set_Name
    (349,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (351, Return_Direction);
   Internal_Set_Is_Ordered (351, False);
   Internal_Set_Is_Unique (351, True);
   Internal_Set_Lower (351, (False, 0));
   Internal_Set_Upper (351, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (352, False);
   Internal_Set_Is_Ordered (352, False);
   Internal_Set_Is_Query (352, True);
   Internal_Set_Is_Unique (352, True);
   Internal_Set_Lower (352, (False, 1));
   Internal_Set_Name
    (352,
     (False, League.Strings.To_Universal_String ("getNamesOfMember")));
   Internal_Set_Upper (352, (False, (False, 1)));

   Internal_Set_Body
    (353,
     (False, League.Strings.To_Universal_String ("The query getNamesOfMember() takes importing into account. It gives back the set of names that an element would have in an importing namespace, either because it is owned, or if not owned then imported individually, or if not individually then from a package.")));

   Internal_Set_Name
    (354,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (356, Return_Direction);
   Internal_Set_Is_Ordered (356, False);
   Internal_Set_Is_Unique (356, True);
   Internal_Set_Lower (356, (False, 0));
   Internal_Set_Upper (356, (False, (Unlimited => True)));

   Internal_Set_Direction (357, In_Direction);
   Internal_Set_Is_Ordered (357, False);
   Internal_Set_Is_Unique (357, True);
   Internal_Set_Lower (357, (False, 1));
   Internal_Set_Name
    (357,
     (False, League.Strings.To_Universal_String ("element")));
   Internal_Set_Upper (357, (False, (False, 1)));

   Internal_Set_Is_Leaf (358, False);
   Internal_Set_Is_Ordered (358, False);
   Internal_Set_Is_Query (358, True);
   Internal_Set_Is_Unique (358, True);
   Internal_Set_Lower (358, (False, 1));
   Internal_Set_Name
    (358,
     (False, League.Strings.To_Universal_String ("importMembers")));
   Internal_Set_Upper (358, (False, (False, 1)));

   Internal_Set_Body
    (359,
     (False, League.Strings.To_Universal_String ("The query importMembers() defines which of a set of PackageableElements are actually imported into the namespace. This excludes hidden ones, i.e., those which have names that conflict with names of owned members, and also excludes elements which would have the same name when imported.")));

   Internal_Set_Name
    (360,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (362, Return_Direction);
   Internal_Set_Is_Ordered (362, False);
   Internal_Set_Is_Unique (362, True);
   Internal_Set_Lower (362, (False, 0));
   Internal_Set_Upper (362, (False, (Unlimited => True)));

   Internal_Set_Direction (363, In_Direction);
   Internal_Set_Is_Ordered (363, False);
   Internal_Set_Is_Unique (363, True);
   Internal_Set_Lower (363, (False, 0));
   Internal_Set_Name
    (363,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (363, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (364, False);
   Internal_Set_Is_Ordered (364, False);
   Internal_Set_Is_Query (364, True);
   Internal_Set_Is_Unique (364, True);
   Internal_Set_Lower (364, (False, 1));
   Internal_Set_Name
    (364,
     (False, League.Strings.To_Universal_String ("excludeCollisions")));
   Internal_Set_Upper (364, (False, (False, 1)));

   Internal_Set_Body
    (365,
     (False, League.Strings.To_Universal_String ("The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this namespace.")));

   Internal_Set_Name
    (366,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (368, Return_Direction);
   Internal_Set_Is_Ordered (368, False);
   Internal_Set_Is_Unique (368, True);
   Internal_Set_Lower (368, (False, 0));
   Internal_Set_Upper (368, (False, (Unlimited => True)));

   Internal_Set_Direction (369, In_Direction);
   Internal_Set_Is_Ordered (369, False);
   Internal_Set_Is_Unique (369, True);
   Internal_Set_Lower (369, (False, 0));
   Internal_Set_Name
    (369,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (369, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (370, False);
   Internal_Set_Is_Ordered (370, False);
   Internal_Set_Is_Query (370, True);
   Internal_Set_Is_Unique (370, True);
   Internal_Set_Lower (370, (False, 1));
   Internal_Set_Name
    (370,
     (False, League.Strings.To_Universal_String ("membersAreDistinguishable")));
   Internal_Set_Upper (370, (False, (False, 1)));

   Internal_Set_Body
    (371,
     (False, League.Strings.To_Universal_String ("The Boolean query membersAreDistinguishable() determines whether all of the namespace's members are distinguishable within it.")));

   Internal_Set_Name
    (372,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (374, Return_Direction);
   Internal_Set_Is_Ordered (374, False);
   Internal_Set_Is_Unique (374, True);
   Internal_Set_Lower (374, (False, 1));
   Internal_Set_Upper (374, (False, (False, 1)));

   Internal_Set_Is_Abstract (23, True);
   Internal_Set_Is_Final_Specialization (23, False);
   Internal_Set_Name
    (23,
     (False, League.Strings.To_Universal_String ("PackageableElement")));

   Internal_Set_Body
    (375,
     (False, League.Strings.To_Universal_String ("A packageable element indicates a named element that may be owned directly by a package.")));

   Internal_Set_Is_Abstract (27, True);
   Internal_Set_Is_Final_Specialization (27, False);
   Internal_Set_Name
    (27,
     (False, League.Strings.To_Universal_String ("RedefinableElement")));

   Internal_Set_Body
    (376,
     (False, League.Strings.To_Universal_String ("A redefinable element is an element that, when defined in the context of a classifier, can be redefined more specifically or differently in the context of another classifier that specializes (directly or indirectly) the context classifier.")));

   Internal_Set_Name
    (377,
     (False, League.Strings.To_Universal_String ("redefinition_context_valid")));

   Internal_Set_Body
    (378,
     (False, League.Strings.To_Universal_String ("At least one of the redefinition contexts of the redefining element must be a specialization of at least one of the redefinition contexts for each redefined element.")));


   Internal_Set_Name
    (380,
     (False, League.Strings.To_Universal_String ("redefinition_consistent")));

   Internal_Set_Body
    (381,
     (False, League.Strings.To_Universal_String ("A redefining element must be consistent with each redefined element.")));


   Internal_Set_Name
    (383,
     (False, League.Strings.To_Universal_String ("non_leaf_redefinition")));

   Internal_Set_Body
    (384,
     (False, League.Strings.To_Universal_String ("A redefinable element can only redefine non-leaf redefinable elements")));


   Internal_Set_Is_Composite (76, False);
   Internal_Set_Is_Derived (76, True);
   Internal_Set_Is_Derived_Union (76, True);
   Internal_Set_Is_Leaf (76, False);
   Internal_Set_Is_Ordered (76, False);
   Internal_Set_Is_Read_Only (76, True);
   Internal_Set_Is_Unique (76, True);
   Internal_Set_Lower (76, (False, 0));
   Internal_Set_Name
    (76,
     (False, League.Strings.To_Universal_String ("redefinitionContext")));
   Internal_Set_Upper (76, (False, (Unlimited => True)));

   Internal_Set_Body
    (386,
     (False, League.Strings.To_Universal_String ("References the contexts that this element may be redefined from.")));

   Internal_Set_Is_Composite (75, False);
   Internal_Set_Is_Derived (75, True);
   Internal_Set_Is_Derived_Union (75, True);
   Internal_Set_Is_Leaf (75, False);
   Internal_Set_Is_Ordered (75, False);
   Internal_Set_Is_Read_Only (75, True);
   Internal_Set_Is_Unique (75, True);
   Internal_Set_Lower (75, (False, 0));
   Internal_Set_Name
    (75,
     (False, League.Strings.To_Universal_String ("redefinedElement")));
   Internal_Set_Upper (75, (False, (Unlimited => True)));

   Internal_Set_Body
    (387,
     (False, League.Strings.To_Universal_String ("The redefinable element that is being redefined by this element.")));

   Internal_Set_Default
    (130,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (130, False);
   Internal_Set_Is_Derived (130, False);
   Internal_Set_Is_Derived_Union (130, False);
   Internal_Set_Is_Leaf (130, False);
   Internal_Set_Is_Ordered (130, False);
   Internal_Set_Is_Read_Only (130, False);
   Internal_Set_Is_Unique (130, True);
   Internal_Set_Lower (130, (False, 1));
   Internal_Set_Name
    (130,
     (False, League.Strings.To_Universal_String ("isLeaf")));
   Internal_Set_Upper (130, (False, (False, 1)));

   Internal_Set_Body
    (388,
     (False, League.Strings.To_Universal_String ("Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement. Note that this property is preserved through package merge operations; that is, the capability to redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in the resulting RedefinableElement of a package merge operation where a RedefinableElement with isLeaf=false is merged with a matching RedefinableElement with isLeaf=true: the resulting RedefinableElement will have isLeaf=false. Default value is false.")));

   Internal_Set_Is_Leaf (389, False);
   Internal_Set_Is_Ordered (389, False);
   Internal_Set_Is_Query (389, True);
   Internal_Set_Is_Unique (389, True);
   Internal_Set_Lower (389, (False, 1));
   Internal_Set_Name
    (389,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (389, (False, (False, 1)));

   Internal_Set_Body
    (390,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two RedefinableElements in a context in which redefinition is possible, whether redefinition would be logically consistent. By default, this is false; this operation must be overridden for subclasses of RedefinableElement to define the consistency conditions.")));

   Internal_Set_Name
    (391,
     (False, League.Strings.To_Universal_String ("spec")));




   Internal_Set_Direction (395, Return_Direction);
   Internal_Set_Is_Ordered (395, False);
   Internal_Set_Is_Unique (395, True);
   Internal_Set_Lower (395, (False, 1));
   Internal_Set_Upper (395, (False, (False, 1)));

   Internal_Set_Direction (396, In_Direction);
   Internal_Set_Is_Ordered (396, False);
   Internal_Set_Is_Unique (396, True);
   Internal_Set_Lower (396, (False, 1));
   Internal_Set_Name
    (396,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (396, (False, (False, 1)));

   Internal_Set_Is_Leaf (397, False);
   Internal_Set_Is_Ordered (397, False);
   Internal_Set_Is_Query (397, True);
   Internal_Set_Is_Unique (397, True);
   Internal_Set_Lower (397, (False, 1));
   Internal_Set_Name
    (397,
     (False, League.Strings.To_Universal_String ("isRedefinitionContextValid")));
   Internal_Set_Upper (397, (False, (False, 1)));

   Internal_Set_Body
    (398,
     (False, League.Strings.To_Universal_String ("The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element.")));

   Internal_Set_Name
    (399,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (401, Return_Direction);
   Internal_Set_Is_Ordered (401, False);
   Internal_Set_Is_Unique (401, True);
   Internal_Set_Lower (401, (False, 1));
   Internal_Set_Upper (401, (False, (False, 1)));

   Internal_Set_Direction (402, In_Direction);
   Internal_Set_Is_Ordered (402, False);
   Internal_Set_Is_Unique (402, True);
   Internal_Set_Lower (402, (False, 1));
   Internal_Set_Name
    (402,
     (False, League.Strings.To_Universal_String ("redefined")));
   Internal_Set_Upper (402, (False, (False, 1)));

   Internal_Set_Is_Abstract (28, True);
   Internal_Set_Is_Final_Specialization (28, False);
   Internal_Set_Name
    (28,
     (False, League.Strings.To_Universal_String ("Relationship")));

   Internal_Set_Body
    (403,
     (False, League.Strings.To_Universal_String ("Relationship is an abstract concept that specifies some kind of relationship between elements.")));

   Internal_Set_Is_Composite (77, False);
   Internal_Set_Is_Derived (77, True);
   Internal_Set_Is_Derived_Union (77, True);
   Internal_Set_Is_Leaf (77, False);
   Internal_Set_Is_Ordered (77, False);
   Internal_Set_Is_Read_Only (77, True);
   Internal_Set_Is_Unique (77, True);
   Internal_Set_Lower (77, (False, 1));
   Internal_Set_Name
    (77,
     (False, League.Strings.To_Universal_String ("relatedElement")));
   Internal_Set_Upper (77, (False, (Unlimited => True)));

   Internal_Set_Body
    (404,
     (False, League.Strings.To_Universal_String ("Specifies the elements related by the Relationship.")));

   Internal_Set_Is_Abstract (29, True);
   Internal_Set_Is_Final_Specialization (29, False);
   Internal_Set_Name
    (29,
     (False, League.Strings.To_Universal_String ("StructuralFeature")));

   Internal_Set_Body
    (405,
     (False, League.Strings.To_Universal_String ("A structural feature is a typed feature of a classifier that specifies the structure of instances of the classifier.")));

   Internal_Set_Is_Abstract (32, True);
   Internal_Set_Is_Final_Specialization (32, False);
   Internal_Set_Name
    (32,
     (False, League.Strings.To_Universal_String ("TypedElement")));

   Internal_Set_Body
    (406,
     (False, League.Strings.To_Universal_String ("A typed element is a kind of named element that represents an element with a type.")));

   Internal_Set_Is_Composite (135, False);
   Internal_Set_Is_Derived (135, False);
   Internal_Set_Is_Derived_Union (135, False);
   Internal_Set_Is_Leaf (135, False);
   Internal_Set_Is_Ordered (135, False);
   Internal_Set_Is_Read_Only (135, False);
   Internal_Set_Is_Unique (135, True);
   Internal_Set_Lower (135, (False, 0));
   Internal_Set_Name
    (135,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (135, (False, (False, 1)));

   Internal_Set_Body
    (407,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Abstract (33, True);
   Internal_Set_Is_Final_Specialization (33, False);
   Internal_Set_Name
    (33,
     (False, League.Strings.To_Universal_String ("ValueSpecification")));

   Internal_Set_Body
    (408,
     (False, League.Strings.To_Universal_String ("A value specification is the specification of a (possibly empty) set of instances, including both objects and data values.")));

   Internal_Set_Is_Leaf (409, False);
   Internal_Set_Is_Ordered (409, False);
   Internal_Set_Is_Query (409, True);
   Internal_Set_Is_Unique (409, True);
   Internal_Set_Lower (409, (False, 1));
   Internal_Set_Name
    (409,
     (False, League.Strings.To_Universal_String ("isComputable")));
   Internal_Set_Upper (409, (False, (False, 1)));

   Internal_Set_Body
    (410,
     (False, League.Strings.To_Universal_String ("The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all value specifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute the value of all literals.")));

   Internal_Set_Name
    (411,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (413, Return_Direction);
   Internal_Set_Is_Ordered (413, False);
   Internal_Set_Is_Unique (413, True);
   Internal_Set_Lower (413, (False, 1));
   Internal_Set_Upper (413, (False, (False, 1)));

   Internal_Set_Is_Leaf (414, False);
   Internal_Set_Is_Ordered (414, False);
   Internal_Set_Is_Query (414, True);
   Internal_Set_Is_Unique (414, True);
   Internal_Set_Lower (414, (False, 1));
   Internal_Set_Name
    (414,
     (False, League.Strings.To_Universal_String ("integerValue")));
   Internal_Set_Upper (414, (False, (False, 1)));

   Internal_Set_Body
    (415,
     (False, League.Strings.To_Universal_String ("The query integerValue() gives a single Integer value when one can be computed.")));

   Internal_Set_Name
    (416,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (418, Return_Direction);
   Internal_Set_Is_Ordered (418, False);
   Internal_Set_Is_Unique (418, True);
   Internal_Set_Lower (418, (False, 1));
   Internal_Set_Upper (418, (False, (False, 1)));

   Internal_Set_Is_Leaf (419, False);
   Internal_Set_Is_Ordered (419, False);
   Internal_Set_Is_Query (419, True);
   Internal_Set_Is_Unique (419, True);
   Internal_Set_Lower (419, (False, 1));
   Internal_Set_Name
    (419,
     (False, League.Strings.To_Universal_String ("booleanValue")));
   Internal_Set_Upper (419, (False, (False, 1)));

   Internal_Set_Body
    (420,
     (False, League.Strings.To_Universal_String ("The query booleanValue() gives a single Boolean value when one can be computed.")));

   Internal_Set_Name
    (421,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (423, Return_Direction);
   Internal_Set_Is_Ordered (423, False);
   Internal_Set_Is_Unique (423, True);
   Internal_Set_Lower (423, (False, 1));
   Internal_Set_Upper (423, (False, (False, 1)));

   Internal_Set_Is_Leaf (424, False);
   Internal_Set_Is_Ordered (424, False);
   Internal_Set_Is_Query (424, True);
   Internal_Set_Is_Unique (424, True);
   Internal_Set_Lower (424, (False, 1));
   Internal_Set_Name
    (424,
     (False, League.Strings.To_Universal_String ("stringValue")));
   Internal_Set_Upper (424, (False, (False, 1)));

   Internal_Set_Body
    (425,
     (False, League.Strings.To_Universal_String ("The query stringValue() gives a single String value when one can be computed.")));

   Internal_Set_Name
    (426,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (428, Return_Direction);
   Internal_Set_Is_Ordered (428, False);
   Internal_Set_Is_Unique (428, True);
   Internal_Set_Lower (428, (False, 1));
   Internal_Set_Upper (428, (False, (False, 1)));

   Internal_Set_Is_Leaf (429, False);
   Internal_Set_Is_Ordered (429, False);
   Internal_Set_Is_Query (429, True);
   Internal_Set_Is_Unique (429, True);
   Internal_Set_Lower (429, (False, 1));
   Internal_Set_Name
    (429,
     (False, League.Strings.To_Universal_String ("unlimitedValue")));
   Internal_Set_Upper (429, (False, (False, 1)));

   Internal_Set_Body
    (430,
     (False, League.Strings.To_Universal_String ("The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed.")));

   Internal_Set_Name
    (431,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (433, Return_Direction);
   Internal_Set_Is_Ordered (433, False);
   Internal_Set_Is_Unique (433, True);
   Internal_Set_Lower (433, (False, 1));
   Internal_Set_Upper (433, (False, (False, 1)));

   Internal_Set_Is_Leaf (434, False);
   Internal_Set_Is_Ordered (434, False);
   Internal_Set_Is_Query (434, True);
   Internal_Set_Is_Unique (434, True);
   Internal_Set_Lower (434, (False, 1));
   Internal_Set_Name
    (434,
     (False, League.Strings.To_Universal_String ("isNull")));
   Internal_Set_Upper (434, (False, (False, 1)));

   Internal_Set_Body
    (435,
     (False, League.Strings.To_Universal_String ("The query isNull() returns true when it can be computed that the value is null.")));

   Internal_Set_Name
    (436,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (438, Return_Direction);
   Internal_Set_Is_Ordered (438, False);
   Internal_Set_Is_Unique (438, True);
   Internal_Set_Lower (438, (False, 1));
   Internal_Set_Upper (438, (False, (False, 1)));

   Internal_Set_Is_Abstract (1, False);
   Internal_Set_Is_Final_Specialization (1, False);
   Internal_Set_Name
    (1,
     (False, League.Strings.To_Universal_String ("Association")));

   Internal_Set_Body
    (439,
     (False, League.Strings.To_Universal_String ("An association describes a set of tuples whose values refer to typed instances. An instance of an association is called a link.A link is a tuple with one value for each end of the association, where each value is an instance of the type of the end.")));

   Internal_Set_Name
    (440,
     (False, League.Strings.To_Universal_String ("association_ends")));

   Internal_Set_Body
    (441,
     (False, League.Strings.To_Universal_String ("Association ends of associations with more than two ends must be owned by the association.")));


   Internal_Set_Name
    (443,
     (False, League.Strings.To_Universal_String ("binary_associations")));

   Internal_Set_Body
    (444,
     (False, League.Strings.To_Universal_String ("Only binary associations can be aggregations.")));


   Internal_Set_Name
    (446,
     (False, League.Strings.To_Universal_String ("specialized_end_number")));

   Internal_Set_Body
    (447,
     (False, League.Strings.To_Universal_String ("An association specializing another association has the same number of ends as the other association.")));


   Internal_Set_Name
    (449,
     (False, League.Strings.To_Universal_String ("specialized_end_types")));

   Internal_Set_Body
    (450,
     (False, League.Strings.To_Universal_String ("When an association specializes another association, every end of the specific association corresponds to an end of the general association, and the specific end reaches the same type or a subtype of the more general end.")));


   Internal_Set_Default
    (79,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (79, False);
   Internal_Set_Is_Derived (79, False);
   Internal_Set_Is_Derived_Union (79, False);
   Internal_Set_Is_Leaf (79, False);
   Internal_Set_Is_Ordered (79, False);
   Internal_Set_Is_Read_Only (79, False);
   Internal_Set_Is_Unique (79, True);
   Internal_Set_Lower (79, (False, 1));
   Internal_Set_Name
    (79,
     (False, League.Strings.To_Universal_String ("isDerived")));
   Internal_Set_Upper (79, (False, (False, 1)));

   Internal_Set_Body
    (452,
     (False, League.Strings.To_Universal_String ("Specifies whether the association is derived from other model elements such as other associations or constraints.")));

   Internal_Set_Is_Composite (37, True);
   Internal_Set_Is_Derived (37, False);
   Internal_Set_Is_Derived_Union (37, False);
   Internal_Set_Is_Leaf (37, False);
   Internal_Set_Is_Ordered (37, True);
   Internal_Set_Is_Read_Only (37, False);
   Internal_Set_Is_Unique (37, True);
   Internal_Set_Lower (37, (False, 0));
   Internal_Set_Name
    (37,
     (False, League.Strings.To_Universal_String ("ownedEnd")));
   Internal_Set_Upper (37, (False, (Unlimited => True)));

   Internal_Set_Body
    (453,
     (False, League.Strings.To_Universal_String ("The ends that are owned by the association itself.")));

   Internal_Set_Is_Composite (34, False);
   Internal_Set_Is_Derived (34, True);
   Internal_Set_Is_Derived_Union (34, False);
   Internal_Set_Is_Leaf (34, False);
   Internal_Set_Is_Ordered (34, False);
   Internal_Set_Is_Read_Only (34, True);
   Internal_Set_Is_Unique (34, True);
   Internal_Set_Lower (34, (False, 1));
   Internal_Set_Name
    (34,
     (False, League.Strings.To_Universal_String ("endType")));
   Internal_Set_Upper (34, (False, (Unlimited => True)));

   Internal_Set_Body
    (454,
     (False, League.Strings.To_Universal_String ("References the classifiers that are used as types of the ends of the association.")));

   Internal_Set_Is_Composite (35, False);
   Internal_Set_Is_Derived (35, False);
   Internal_Set_Is_Derived_Union (35, False);
   Internal_Set_Is_Leaf (35, False);
   Internal_Set_Is_Ordered (35, True);
   Internal_Set_Is_Read_Only (35, False);
   Internal_Set_Is_Unique (35, True);
   Internal_Set_Lower (35, (False, 2));
   Internal_Set_Name
    (35,
     (False, League.Strings.To_Universal_String ("memberEnd")));
   Internal_Set_Upper (35, (False, (Unlimited => True)));

   Internal_Set_Body
    (455,
     (False, League.Strings.To_Universal_String ("Each end represents participation of instances of the classifier connected to the end in links of the association.")));

   Internal_Set_Is_Composite (36, False);
   Internal_Set_Is_Derived (36, False);
   Internal_Set_Is_Derived_Union (36, False);
   Internal_Set_Is_Leaf (36, False);
   Internal_Set_Is_Ordered (36, False);
   Internal_Set_Is_Read_Only (36, False);
   Internal_Set_Is_Unique (36, True);
   Internal_Set_Lower (36, (False, 0));
   Internal_Set_Name
    (36,
     (False, League.Strings.To_Universal_String ("navigableOwnedEnd")));
   Internal_Set_Upper (36, (False, (Unlimited => True)));

   Internal_Set_Body
    (456,
     (False, League.Strings.To_Universal_String ("The navigable ends that are owned by the association itself.")));

   Internal_Set_Is_Leaf (457, False);
   Internal_Set_Is_Ordered (457, False);
   Internal_Set_Is_Query (457, True);
   Internal_Set_Is_Unique (457, True);
   Internal_Set_Lower (457, (False, 1));
   Internal_Set_Name
    (457,
     (False, League.Strings.To_Universal_String ("endType")));
   Internal_Set_Upper (457, (False, (False, 1)));

   Internal_Set_Body
    (458,
     (False, League.Strings.To_Universal_String ("endType is derived from the types of the member ends.")));

   Internal_Set_Name
    (459,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (461, Return_Direction);
   Internal_Set_Is_Ordered (461, True);
   Internal_Set_Is_Unique (461, True);
   Internal_Set_Lower (461, (False, 0));
   Internal_Set_Upper (461, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (3, False);
   Internal_Set_Is_Final_Specialization (3, False);
   Internal_Set_Name
    (3,
     (False, League.Strings.To_Universal_String ("Class")));

   Internal_Set_Body
    (462,
     (False, League.Strings.To_Universal_String ("A class describes a set of objects that share the same specifications of features, constraints, and semantics.")));

   Internal_Set_Default
    (80,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (80, False);
   Internal_Set_Is_Derived (80, False);
   Internal_Set_Is_Derived_Union (80, False);
   Internal_Set_Is_Leaf (80, False);
   Internal_Set_Is_Ordered (80, False);
   Internal_Set_Is_Read_Only (80, False);
   Internal_Set_Is_Unique (80, True);
   Internal_Set_Lower (80, (False, 1));
   Internal_Set_Name
    (80,
     (False, League.Strings.To_Universal_String ("isAbstract")));
   Internal_Set_Upper (80, (False, (False, 1)));

   Internal_Set_Body
    (463,
     (False, League.Strings.To_Universal_String ("True when a class is abstract.")));

   Internal_Set_Is_Composite (40, True);
   Internal_Set_Is_Derived (40, False);
   Internal_Set_Is_Derived_Union (40, False);
   Internal_Set_Is_Leaf (40, False);
   Internal_Set_Is_Ordered (40, True);
   Internal_Set_Is_Read_Only (40, False);
   Internal_Set_Is_Unique (40, True);
   Internal_Set_Lower (40, (False, 0));
   Internal_Set_Name
    (40,
     (False, League.Strings.To_Universal_String ("ownedAttribute")));
   Internal_Set_Upper (40, (False, (Unlimited => True)));

   Internal_Set_Body
    (464,
     (False, League.Strings.To_Universal_String ("The attributes (i.e. the properties) owned by the class.")));

   Internal_Set_Is_Composite (41, True);
   Internal_Set_Is_Derived (41, False);
   Internal_Set_Is_Derived_Union (41, False);
   Internal_Set_Is_Leaf (41, False);
   Internal_Set_Is_Ordered (41, True);
   Internal_Set_Is_Read_Only (41, False);
   Internal_Set_Is_Unique (41, True);
   Internal_Set_Lower (41, (False, 0));
   Internal_Set_Name
    (41,
     (False, League.Strings.To_Universal_String ("ownedOperation")));
   Internal_Set_Upper (41, (False, (Unlimited => True)));

   Internal_Set_Body
    (465,
     (False, League.Strings.To_Universal_String ("The operations owned by the class.")));

   Internal_Set_Is_Composite (42, False);
   Internal_Set_Is_Derived (42, False);
   Internal_Set_Is_Derived_Union (42, False);
   Internal_Set_Is_Leaf (42, False);
   Internal_Set_Is_Ordered (42, False);
   Internal_Set_Is_Read_Only (42, False);
   Internal_Set_Is_Unique (42, True);
   Internal_Set_Lower (42, (False, 0));
   Internal_Set_Name
    (42,
     (False, League.Strings.To_Universal_String ("superClass")));
   Internal_Set_Upper (42, (False, (Unlimited => True)));

   Internal_Set_Body
    (466,
     (False, League.Strings.To_Universal_String ("This gives the superclasses of a class.")));

   Internal_Set_Is_Leaf (467, False);
   Internal_Set_Is_Ordered (467, False);
   Internal_Set_Is_Query (467, True);
   Internal_Set_Is_Unique (467, True);
   Internal_Set_Lower (467, (False, 1));
   Internal_Set_Name
    (467,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (467, (False, (False, 1)));

   Internal_Set_Body
    (468,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (469,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (471, Return_Direction);
   Internal_Set_Is_Ordered (471, False);
   Internal_Set_Is_Unique (471, True);
   Internal_Set_Lower (471, (False, 0));
   Internal_Set_Upper (471, (False, (Unlimited => True)));

   Internal_Set_Direction (472, In_Direction);
   Internal_Set_Is_Ordered (472, False);
   Internal_Set_Is_Unique (472, True);
   Internal_Set_Lower (472, (False, 0));
   Internal_Set_Name
    (472,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (472, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (26, False);
   Internal_Set_Is_Final_Specialization (26, False);
   Internal_Set_Name
    (26,
     (False, League.Strings.To_Universal_String ("Property")));

   Internal_Set_Body
    (473,
     (False, League.Strings.To_Universal_String ("A property is a structural feature of a classifier that characterizes instances of the classifier. A property related by ownedAttribute to a classifier (other than an association) represents an attribute and might also represent an association end. It relates an instance of the class to a value or set of values of the type of the attribute. A property related by memberEnd or its specializations to an association represents an end of the association. The type of the property is the type of the end of the association.")));

   Internal_Set_Name
    (474,
     (False, League.Strings.To_Universal_String ("multiplicity_of_composite")));

   Internal_Set_Body
    (475,
     (False, League.Strings.To_Universal_String ("A multiplicity of a composite aggregation must not have an upper bound greater than 1.")));


   Internal_Set_Name
    (477,
     (False, League.Strings.To_Universal_String ("subsetting_context_conforms")));

   Internal_Set_Body
    (478,
     (False, League.Strings.To_Universal_String ("Subsetting may only occur when the context of the subsetting property conforms to the context of the subsetted property.")));


   Internal_Set_Name
    (480,
     (False, League.Strings.To_Universal_String ("redefined_property_inherited")));

   Internal_Set_Body
    (481,
     (False, League.Strings.To_Universal_String ("A redefined property must be inherited from a more general classifier containing the redefining property.")));


   Internal_Set_Name
    (483,
     (False, League.Strings.To_Universal_String ("subsetting_rules")));

   Internal_Set_Body
    (484,
     (False, League.Strings.To_Universal_String ("A subsetting property may strengthen the type of the subsetted property, and its upper bound may be less.")));


   Internal_Set_Name
    (486,
     (False, League.Strings.To_Universal_String ("navigable_readonly")));

   Internal_Set_Body
    (487,
     (False, League.Strings.To_Universal_String ("Only a navigable property can be marked as readOnly.")));


   Internal_Set_Name
    (489,
     (False, League.Strings.To_Universal_String ("derived_union_is_derived")));

   Internal_Set_Body
    (490,
     (False, League.Strings.To_Universal_String ("A derived union is derived.")));


   Internal_Set_Name
    (492,
     (False, League.Strings.To_Universal_String ("subsetted_property_names")));

   Internal_Set_Body
    (493,
     (False, League.Strings.To_Universal_String ("A property may not subset a property with the same name.")));


   Internal_Set_Default
    (127,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (127, False);
   Internal_Set_Is_Derived (127, False);
   Internal_Set_Is_Derived_Union (127, False);
   Internal_Set_Is_Leaf (127, False);
   Internal_Set_Is_Ordered (127, False);
   Internal_Set_Is_Read_Only (127, False);
   Internal_Set_Is_Unique (127, True);
   Internal_Set_Lower (127, (False, 1));
   Internal_Set_Name
    (127,
     (False, League.Strings.To_Universal_String ("isReadOnly")));
   Internal_Set_Upper (127, (False, (False, 1)));

   Internal_Set_Body
    (495,
     (False, League.Strings.To_Universal_String ("If isReadOnly is true, the attribute may not be written to after initialization.")));

   Internal_Set_Is_Composite (123, False);
   Internal_Set_Is_Derived (123, False);
   Internal_Set_Is_Derived_Union (123, False);
   Internal_Set_Is_Leaf (123, False);
   Internal_Set_Is_Ordered (123, False);
   Internal_Set_Is_Read_Only (123, False);
   Internal_Set_Is_Unique (123, True);
   Internal_Set_Lower (123, (False, 0));
   Internal_Set_Name
    (123,
     (False, League.Strings.To_Universal_String ("default")));
   Internal_Set_Upper (123, (False, (False, 1)));

   Internal_Set_Body
    (496,
     (False, League.Strings.To_Universal_String ("Specifies a String that represents a value to be used when no argument is supplied for the Property.")));

   Internal_Set_Default
    (124,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (124, False);
   Internal_Set_Is_Derived (124, False);
   Internal_Set_Is_Derived_Union (124, False);
   Internal_Set_Is_Leaf (124, False);
   Internal_Set_Is_Ordered (124, False);
   Internal_Set_Is_Read_Only (124, False);
   Internal_Set_Is_Unique (124, True);
   Internal_Set_Lower (124, (False, 1));
   Internal_Set_Name
    (124,
     (False, League.Strings.To_Universal_String ("isComposite")));
   Internal_Set_Upper (124, (False, (False, 1)));

   Internal_Set_Body
    (497,
     (False, League.Strings.To_Universal_String ("If isComposite is true, the object containing the attribute is a container for the object or value contained in the attribute.")));

   Internal_Set_Default
    (125,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (125, False);
   Internal_Set_Is_Derived (125, False);
   Internal_Set_Is_Derived_Union (125, False);
   Internal_Set_Is_Leaf (125, False);
   Internal_Set_Is_Ordered (125, False);
   Internal_Set_Is_Read_Only (125, False);
   Internal_Set_Is_Unique (125, True);
   Internal_Set_Lower (125, (False, 1));
   Internal_Set_Name
    (125,
     (False, League.Strings.To_Universal_String ("isDerived")));
   Internal_Set_Upper (125, (False, (False, 1)));

   Internal_Set_Body
    (498,
     (False, League.Strings.To_Universal_String ("If isDerived is true, the value of the attribute is derived from information elsewhere.")));

   Internal_Set_Default
    (126,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (126, False);
   Internal_Set_Is_Derived (126, False);
   Internal_Set_Is_Derived_Union (126, False);
   Internal_Set_Is_Leaf (126, False);
   Internal_Set_Is_Ordered (126, False);
   Internal_Set_Is_Read_Only (126, False);
   Internal_Set_Is_Unique (126, True);
   Internal_Set_Lower (126, (False, 1));
   Internal_Set_Name
    (126,
     (False, League.Strings.To_Universal_String ("isDerivedUnion")));
   Internal_Set_Upper (126, (False, (False, 1)));

   Internal_Set_Body
    (499,
     (False, League.Strings.To_Universal_String ("Specifies whether the property is derived as the union of all of the properties that are constrained to subset it.")));

   Internal_Set_Is_Composite (121, False);
   Internal_Set_Is_Derived (121, False);
   Internal_Set_Is_Derived_Union (121, False);
   Internal_Set_Is_Leaf (121, False);
   Internal_Set_Is_Ordered (121, False);
   Internal_Set_Is_Read_Only (121, False);
   Internal_Set_Is_Unique (121, True);
   Internal_Set_Lower (121, (False, 0));
   Internal_Set_Name
    (121,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (121, (False, (False, 1)));

   Internal_Set_Body
    (500,
     (False, League.Strings.To_Universal_String ("References the Class that owns the Property.")));

   Internal_Set_Is_Composite (129, False);
   Internal_Set_Is_Derived (129, False);
   Internal_Set_Is_Derived_Union (129, False);
   Internal_Set_Is_Leaf (129, False);
   Internal_Set_Is_Ordered (129, False);
   Internal_Set_Is_Read_Only (129, False);
   Internal_Set_Is_Unique (129, True);
   Internal_Set_Lower (129, (False, 0));
   Internal_Set_Name
    (129,
     (False, League.Strings.To_Universal_String ("owningAssociation")));
   Internal_Set_Upper (129, (False, (False, 1)));

   Internal_Set_Body
    (501,
     (False, League.Strings.To_Universal_String ("References the owning association of this property, if any.")));

   Internal_Set_Is_Composite (73, False);
   Internal_Set_Is_Derived (73, False);
   Internal_Set_Is_Derived_Union (73, False);
   Internal_Set_Is_Leaf (73, False);
   Internal_Set_Is_Ordered (73, False);
   Internal_Set_Is_Read_Only (73, False);
   Internal_Set_Is_Unique (73, True);
   Internal_Set_Lower (73, (False, 0));
   Internal_Set_Name
    (73,
     (False, League.Strings.To_Universal_String ("redefinedProperty")));
   Internal_Set_Upper (73, (False, (Unlimited => True)));

   Internal_Set_Body
    (502,
     (False, League.Strings.To_Universal_String ("References the properties that are redefined by this property.")));

   Internal_Set_Is_Composite (74, False);
   Internal_Set_Is_Derived (74, False);
   Internal_Set_Is_Derived_Union (74, False);
   Internal_Set_Is_Leaf (74, False);
   Internal_Set_Is_Ordered (74, False);
   Internal_Set_Is_Read_Only (74, False);
   Internal_Set_Is_Unique (74, True);
   Internal_Set_Lower (74, (False, 0));
   Internal_Set_Name
    (74,
     (False, League.Strings.To_Universal_String ("subsettedProperty")));
   Internal_Set_Upper (74, (False, (Unlimited => True)));

   Internal_Set_Body
    (503,
     (False, League.Strings.To_Universal_String ("References the properties of which this property is constrained to be a subset.")));

   Internal_Set_Is_Composite (128, False);
   Internal_Set_Is_Derived (128, True);
   Internal_Set_Is_Derived_Union (128, False);
   Internal_Set_Is_Leaf (128, False);
   Internal_Set_Is_Ordered (128, False);
   Internal_Set_Is_Read_Only (128, False);
   Internal_Set_Is_Unique (128, True);
   Internal_Set_Lower (128, (False, 0));
   Internal_Set_Name
    (128,
     (False, League.Strings.To_Universal_String ("opposite")));
   Internal_Set_Upper (128, (False, (False, 1)));

   Internal_Set_Body
    (504,
     (False, League.Strings.To_Universal_String ("In the case where the property is one navigable end of a binary association with both ends navigable, this gives the other end.")));

   Internal_Set_Is_Composite (122, False);
   Internal_Set_Is_Derived (122, False);
   Internal_Set_Is_Derived_Union (122, False);
   Internal_Set_Is_Leaf (122, False);
   Internal_Set_Is_Ordered (122, False);
   Internal_Set_Is_Read_Only (122, False);
   Internal_Set_Is_Unique (122, True);
   Internal_Set_Lower (122, (False, 0));
   Internal_Set_Name
    (122,
     (False, League.Strings.To_Universal_String ("datatype")));
   Internal_Set_Upper (122, (False, (False, 1)));

   Internal_Set_Body
    (505,
     (False, League.Strings.To_Universal_String ("The DataType that owns this Property.")));

   Internal_Set_Is_Composite (120, False);
   Internal_Set_Is_Derived (120, False);
   Internal_Set_Is_Derived_Union (120, False);
   Internal_Set_Is_Leaf (120, False);
   Internal_Set_Is_Ordered (120, False);
   Internal_Set_Is_Read_Only (120, False);
   Internal_Set_Is_Unique (120, True);
   Internal_Set_Lower (120, (False, 0));
   Internal_Set_Name
    (120,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (120, (False, (False, 1)));

   Internal_Set_Body
    (506,
     (False, League.Strings.To_Universal_String ("References the association of which this property is a member, if any.")));

   Internal_Set_Is_Leaf (507, False);
   Internal_Set_Is_Ordered (507, False);
   Internal_Set_Is_Query (507, True);
   Internal_Set_Is_Unique (507, True);
   Internal_Set_Lower (507, (False, 1));
   Internal_Set_Name
    (507,
     (False, League.Strings.To_Universal_String ("opposite")));
   Internal_Set_Upper (507, (False, (False, 1)));

   Internal_Set_Body
    (508,
     (False, League.Strings.To_Universal_String ("If this property is owned by a class, associated with a binary association, and the other end of the association is also owned by a class, then opposite gives the other end.")));

   Internal_Set_Name
    (509,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (511, Return_Direction);
   Internal_Set_Is_Ordered (511, False);
   Internal_Set_Is_Unique (511, True);
   Internal_Set_Lower (511, (False, 1));
   Internal_Set_Upper (511, (False, (False, 1)));

   Internal_Set_Is_Leaf (512, False);
   Internal_Set_Is_Ordered (512, False);
   Internal_Set_Is_Query (512, True);
   Internal_Set_Is_Unique (512, True);
   Internal_Set_Lower (512, (False, 1));
   Internal_Set_Name
    (512,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (512, (False, (False, 1)));

   Internal_Set_Body
    (513,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Properties in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining property is consistent with a redefined property if the type of the redefining property conforms to the type of the redefined property, the multiplicity of the redefining property (if specified) is contained in the multiplicity of the redefined property, and the redefining property is derived if the redefined property is derived.")));



   Internal_Set_Name
    (516,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (518, Return_Direction);
   Internal_Set_Is_Ordered (518, False);
   Internal_Set_Is_Unique (518, True);
   Internal_Set_Lower (518, (False, 1));
   Internal_Set_Upper (518, (False, (False, 1)));

   Internal_Set_Direction (519, In_Direction);
   Internal_Set_Is_Ordered (519, False);
   Internal_Set_Is_Unique (519, True);
   Internal_Set_Lower (519, (False, 1));
   Internal_Set_Name
    (519,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (519, (False, (False, 1)));

   Internal_Set_Is_Leaf (520, False);
   Internal_Set_Is_Ordered (520, False);
   Internal_Set_Is_Query (520, True);
   Internal_Set_Is_Unique (520, True);
   Internal_Set_Lower (520, (False, 1));
   Internal_Set_Name
    (520,
     (False, League.Strings.To_Universal_String ("subsettingContext")));
   Internal_Set_Upper (520, (False, (False, 1)));

   Internal_Set_Body
    (521,
     (False, League.Strings.To_Universal_String ("The query subsettingContext() gives the context for subsetting a property. It consists, in the case of an attribute, of the corresponding classifier, and in the case of an association end, all of the classifiers at the other ends.")));

   Internal_Set_Name
    (522,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (524, Return_Direction);
   Internal_Set_Is_Ordered (524, False);
   Internal_Set_Is_Unique (524, True);
   Internal_Set_Lower (524, (False, 0));
   Internal_Set_Upper (524, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (525, False);
   Internal_Set_Is_Ordered (525, False);
   Internal_Set_Is_Query (525, True);
   Internal_Set_Is_Unique (525, True);
   Internal_Set_Lower (525, (False, 1));
   Internal_Set_Name
    (525,
     (False, League.Strings.To_Universal_String ("isNavigable")));
   Internal_Set_Upper (525, (False, (False, 1)));

   Internal_Set_Body
    (526,
     (False, League.Strings.To_Universal_String ("The query isNavigable() indicates whether it is possible to navigate across the property.")));

   Internal_Set_Name
    (527,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (529, Return_Direction);
   Internal_Set_Is_Ordered (529, False);
   Internal_Set_Is_Unique (529, True);
   Internal_Set_Lower (529, (False, 1));
   Internal_Set_Upper (529, (False, (False, 1)));

   Internal_Set_Is_Leaf (530, False);
   Internal_Set_Is_Ordered (530, False);
   Internal_Set_Is_Query (530, True);
   Internal_Set_Is_Unique (530, True);
   Internal_Set_Lower (530, (False, 1));
   Internal_Set_Name
    (530,
     (False, League.Strings.To_Universal_String ("isAttribute")));
   Internal_Set_Upper (530, (False, (False, 1)));

   Internal_Set_Body
    (531,
     (False, League.Strings.To_Universal_String ("The query isAttribute() is true if the Property is defined as an attribute of some classifier.")));

   Internal_Set_Name
    (532,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (534, Return_Direction);
   Internal_Set_Is_Ordered (534, False);
   Internal_Set_Is_Unique (534, True);
   Internal_Set_Lower (534, (False, 1));
   Internal_Set_Upper (534, (False, (False, 1)));

   Internal_Set_Direction (535, In_Direction);
   Internal_Set_Is_Ordered (535, False);
   Internal_Set_Is_Unique (535, True);
   Internal_Set_Lower (535, (False, 1));
   Internal_Set_Name
    (535,
     (False, League.Strings.To_Universal_String ("p")));
   Internal_Set_Upper (535, (False, (False, 1)));

   Internal_Set_Is_Abstract (7, False);
   Internal_Set_Is_Final_Specialization (7, False);
   Internal_Set_Name
    (7,
     (False, League.Strings.To_Universal_String ("DataType")));

   Internal_Set_Body
    (536,
     (False, League.Strings.To_Universal_String ("A data type is a type whose instances are identified only by their value. A data type may contain attributes to support the modeling of structured data types.")));

   Internal_Set_Is_Composite (49, True);
   Internal_Set_Is_Derived (49, False);
   Internal_Set_Is_Derived_Union (49, False);
   Internal_Set_Is_Leaf (49, False);
   Internal_Set_Is_Ordered (49, True);
   Internal_Set_Is_Read_Only (49, False);
   Internal_Set_Is_Unique (49, True);
   Internal_Set_Lower (49, (False, 0));
   Internal_Set_Name
    (49,
     (False, League.Strings.To_Universal_String ("ownedAttribute")));
   Internal_Set_Upper (49, (False, (Unlimited => True)));

   Internal_Set_Body
    (537,
     (False, League.Strings.To_Universal_String ("The Attributes owned by the DataType.")));

   Internal_Set_Is_Composite (50, True);
   Internal_Set_Is_Derived (50, False);
   Internal_Set_Is_Derived_Union (50, False);
   Internal_Set_Is_Leaf (50, False);
   Internal_Set_Is_Ordered (50, True);
   Internal_Set_Is_Read_Only (50, False);
   Internal_Set_Is_Unique (50, True);
   Internal_Set_Lower (50, (False, 0));
   Internal_Set_Name
    (50,
     (False, League.Strings.To_Universal_String ("ownedOperation")));
   Internal_Set_Upper (50, (False, (Unlimited => True)));

   Internal_Set_Body
    (538,
     (False, League.Strings.To_Universal_String ("The Operations owned by the DataType.")));

   Internal_Set_Is_Leaf (539, False);
   Internal_Set_Is_Ordered (539, False);
   Internal_Set_Is_Query (539, True);
   Internal_Set_Is_Unique (539, True);
   Internal_Set_Lower (539, (False, 1));
   Internal_Set_Name
    (539,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (539, (False, (False, 1)));

   Internal_Set_Body
    (540,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (541,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (543, Return_Direction);
   Internal_Set_Is_Ordered (543, False);
   Internal_Set_Is_Unique (543, True);
   Internal_Set_Lower (543, (False, 0));
   Internal_Set_Upper (543, (False, (Unlimited => True)));

   Internal_Set_Direction (544, In_Direction);
   Internal_Set_Is_Ordered (544, False);
   Internal_Set_Is_Unique (544, True);
   Internal_Set_Lower (544, (False, 0));
   Internal_Set_Name
    (544,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (544, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (11, False);
   Internal_Set_Is_Final_Specialization (11, False);
   Internal_Set_Name
    (11,
     (False, League.Strings.To_Universal_String ("Enumeration")));

   Internal_Set_Body
    (545,
     (False, League.Strings.To_Universal_String ("An enumeration is a data type whose values are enumerated in the model as enumeration literals.")));

   Internal_Set_Is_Composite (55, True);
   Internal_Set_Is_Derived (55, False);
   Internal_Set_Is_Derived_Union (55, False);
   Internal_Set_Is_Leaf (55, False);
   Internal_Set_Is_Ordered (55, True);
   Internal_Set_Is_Read_Only (55, False);
   Internal_Set_Is_Unique (55, True);
   Internal_Set_Lower (55, (False, 0));
   Internal_Set_Name
    (55,
     (False, League.Strings.To_Universal_String ("ownedLiteral")));
   Internal_Set_Upper (55, (False, (Unlimited => True)));

   Internal_Set_Body
    (546,
     (False, League.Strings.To_Universal_String ("The ordered set of literals for this Enumeration.")));

   Internal_Set_Is_Abstract (12, False);
   Internal_Set_Is_Final_Specialization (12, False);
   Internal_Set_Name
    (12,
     (False, League.Strings.To_Universal_String ("EnumerationLiteral")));

   Internal_Set_Body
    (547,
     (False, League.Strings.To_Universal_String ("An enumeration literal is a user-defined data value for an enumeration.")));

   Internal_Set_Is_Composite (90, False);
   Internal_Set_Is_Derived (90, False);
   Internal_Set_Is_Derived_Union (90, False);
   Internal_Set_Is_Leaf (90, False);
   Internal_Set_Is_Ordered (90, False);
   Internal_Set_Is_Read_Only (90, False);
   Internal_Set_Is_Unique (90, True);
   Internal_Set_Lower (90, (False, 0));
   Internal_Set_Name
    (90,
     (False, League.Strings.To_Universal_String ("enumeration")));
   Internal_Set_Upper (90, (False, (False, 1)));

   Internal_Set_Body
    (548,
     (False, League.Strings.To_Universal_String ("The Enumeration that this EnumerationLiteral is a member of.")));

   Internal_Set_Is_Abstract (25, False);
   Internal_Set_Is_Final_Specialization (25, False);
   Internal_Set_Name
    (25,
     (False, League.Strings.To_Universal_String ("PrimitiveType")));

   Internal_Set_Body
    (549,
     (False, League.Strings.To_Universal_String ("A primitive type defines a predefined data type, without any relevant substructure (i.e., it has no parts in the context of UML). A primitive datatype may have an algebra and operations defined outside of UML, for example, mathematically.")));

   Internal_Set_Is_Abstract (6, False);
   Internal_Set_Is_Final_Specialization (6, False);
   Internal_Set_Name
    (6,
     (False, League.Strings.To_Universal_String ("Constraint")));

   Internal_Set_Body
    (550,
     (False, League.Strings.To_Universal_String ("A constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an element.")));

   Internal_Set_Name
    (551,
     (False, League.Strings.To_Universal_String ("not_apply_to_self")));

   Internal_Set_Body
    (552,
     (False, League.Strings.To_Universal_String ("A constraint cannot be applied to itself.")));


   Internal_Set_Name
    (554,
     (False, League.Strings.To_Universal_String ("value_specification_boolean")));

   Internal_Set_Body
    (555,
     (False, League.Strings.To_Universal_String ("The value specification for a constraint must evaluate to a Boolean value.")));


   Internal_Set_Is_Composite (48, False);
   Internal_Set_Is_Derived (48, False);
   Internal_Set_Is_Derived_Union (48, False);
   Internal_Set_Is_Leaf (48, False);
   Internal_Set_Is_Ordered (48, True);
   Internal_Set_Is_Read_Only (48, False);
   Internal_Set_Is_Unique (48, True);
   Internal_Set_Lower (48, (False, 0));
   Internal_Set_Name
    (48,
     (False, League.Strings.To_Universal_String ("constrainedElement")));
   Internal_Set_Upper (48, (False, (Unlimited => True)));

   Internal_Set_Body
    (557,
     (False, League.Strings.To_Universal_String ("The ordered set of Elements referenced by this Constraint.")));

   Internal_Set_Is_Composite (84, True);
   Internal_Set_Is_Derived (84, False);
   Internal_Set_Is_Derived_Union (84, False);
   Internal_Set_Is_Leaf (84, False);
   Internal_Set_Is_Ordered (84, False);
   Internal_Set_Is_Read_Only (84, False);
   Internal_Set_Is_Unique (84, True);
   Internal_Set_Lower (84, (False, 1));
   Internal_Set_Name
    (84,
     (False, League.Strings.To_Universal_String ("specification")));
   Internal_Set_Upper (84, (False, (False, 1)));

   Internal_Set_Body
    (558,
     (False, League.Strings.To_Universal_String ("A condition that must be true when evaluated in order for the constraint to be satisfied.")));

   Internal_Set_Is_Composite (83, False);
   Internal_Set_Is_Derived (83, False);
   Internal_Set_Is_Derived_Union (83, False);
   Internal_Set_Is_Leaf (83, False);
   Internal_Set_Is_Ordered (83, False);
   Internal_Set_Is_Read_Only (83, False);
   Internal_Set_Is_Unique (83, True);
   Internal_Set_Lower (83, (False, 0));
   Internal_Set_Name
    (83,
     (False, League.Strings.To_Universal_String ("context")));
   Internal_Set_Upper (83, (False, (False, 1)));

   Internal_Set_Is_Abstract (18, False);
   Internal_Set_Is_Final_Specialization (18, False);
   Internal_Set_Name
    (18,
     (False, League.Strings.To_Universal_String ("OpaqueExpression")));

   Internal_Set_Body
    (559,
     (False, League.Strings.To_Universal_String ("An opaque expression is an uninterpreted textual statement that denotes a (possibly empty) set of values when evaluated in a context.")));

   Internal_Set_Name
    (560,
     (False, League.Strings.To_Universal_String ("language_body_size")));

   Internal_Set_Body
    (561,
     (False, League.Strings.To_Universal_String ("If the language attribute is not empty, then the size of the body and language arrays must be the same.")));


   Internal_Set_Is_Composite (99, True);
   Internal_Set_Is_Derived (99, False);
   Internal_Set_Is_Derived_Union (99, False);
   Internal_Set_Is_Leaf (99, False);
   Internal_Set_Is_Ordered (99, True);
   Internal_Set_Is_Read_Only (99, False);
   Internal_Set_Is_Unique (99, False);
   Internal_Set_Lower (99, (False, 0));
   Internal_Set_Name
    (99,
     (False, League.Strings.To_Universal_String ("body")));
   Internal_Set_Upper (99, (False, (Unlimited => True)));

   Internal_Set_Body
    (563,
     (False, League.Strings.To_Universal_String ("The text of the expression, possibly in multiple languages.")));

   Internal_Set_Is_Composite (100, True);
   Internal_Set_Is_Derived (100, False);
   Internal_Set_Is_Derived_Union (100, False);
   Internal_Set_Is_Leaf (100, False);
   Internal_Set_Is_Ordered (100, True);
   Internal_Set_Is_Read_Only (100, False);
   Internal_Set_Is_Unique (100, True);
   Internal_Set_Lower (100, (False, 0));
   Internal_Set_Name
    (100,
     (False, League.Strings.To_Universal_String ("language")));
   Internal_Set_Upper (100, (False, (Unlimited => True)));

   Internal_Set_Body
    (564,
     (False, League.Strings.To_Universal_String ("Specifies the languages in which the expression is stated. The interpretation of the expression body depends on the languages. If the languages are unspecified, they might be implicit from the expression body or the context. Languages are matched to body strings by order.")));

   Internal_Set_Is_Abstract (19, False);
   Internal_Set_Is_Final_Specialization (19, False);
   Internal_Set_Name
    (19,
     (False, League.Strings.To_Universal_String ("Operation")));

   Internal_Set_Body
    (565,
     (False, League.Strings.To_Universal_String ("An operation is a behavioral feature of a classifier that specifies the name, type, parameters, and constraints for invoking an associated behavior.")));

   Internal_Set_Name
    (566,
     (False, League.Strings.To_Universal_String ("only_body_for_query")));

   Internal_Set_Body
    (567,
     (False, League.Strings.To_Universal_String ("A bodyCondition can only be specified for a query operation.")));


   Internal_Set_Name
    (569,
     (False, League.Strings.To_Universal_String ("at_most_one_return")));

   Internal_Set_Body
    (570,
     (False, League.Strings.To_Universal_String ("An operation can have at most one return parameter; i.e., an owned parameter with the direction set to 'return'")));


   Internal_Set_Default
    (105,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (105, False);
   Internal_Set_Is_Derived (105, False);
   Internal_Set_Is_Derived_Union (105, False);
   Internal_Set_Is_Leaf (105, False);
   Internal_Set_Is_Ordered (105, False);
   Internal_Set_Is_Read_Only (105, False);
   Internal_Set_Is_Unique (105, True);
   Internal_Set_Lower (105, (False, 1));
   Internal_Set_Name
    (105,
     (False, League.Strings.To_Universal_String ("isQuery")));
   Internal_Set_Upper (105, (False, (False, 1)));

   Internal_Set_Body
    (572,
     (False, League.Strings.To_Universal_String ("Specifies whether an execution of the BehavioralFeature leaves the state of the system unchanged (isQuery=true) or whether side effects may occur (isQuery=false).")));

   Internal_Set_Default
    (104,
     (False, League.Strings.To_Universal_String ("false")));
   Internal_Set_Is_Composite (104, False);
   Internal_Set_Is_Derived (104, True);
   Internal_Set_Is_Derived_Union (104, False);
   Internal_Set_Is_Leaf (104, False);
   Internal_Set_Is_Ordered (104, False);
   Internal_Set_Is_Read_Only (104, False);
   Internal_Set_Is_Unique (104, True);
   Internal_Set_Lower (104, (False, 1));
   Internal_Set_Name
    (104,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (104, (False, (False, 1)));

   Internal_Set_Body
    (573,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (106,
     (False, League.Strings.To_Universal_String ("true")));
   Internal_Set_Is_Composite (106, False);
   Internal_Set_Is_Derived (106, True);
   Internal_Set_Is_Derived_Union (106, False);
   Internal_Set_Is_Leaf (106, False);
   Internal_Set_Is_Ordered (106, False);
   Internal_Set_Is_Read_Only (106, False);
   Internal_Set_Is_Unique (106, True);
   Internal_Set_Lower (106, (False, 1));
   Internal_Set_Name
    (106,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (106, (False, (False, 1)));

   Internal_Set_Body
    (574,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (107,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (107, False);
   Internal_Set_Is_Derived (107, True);
   Internal_Set_Is_Derived_Union (107, False);
   Internal_Set_Is_Leaf (107, False);
   Internal_Set_Is_Ordered (107, False);
   Internal_Set_Is_Read_Only (107, False);
   Internal_Set_Is_Unique (107, True);
   Internal_Set_Lower (107, (False, 0));
   Internal_Set_Name
    (107,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (107, (False, (False, 1)));

   Internal_Set_Body
    (575,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Default
    (109,
     (False, League.Strings.To_Universal_String ("1")));
   Internal_Set_Is_Composite (109, False);
   Internal_Set_Is_Derived (109, True);
   Internal_Set_Is_Derived_Union (109, False);
   Internal_Set_Is_Leaf (109, False);
   Internal_Set_Is_Ordered (109, False);
   Internal_Set_Is_Read_Only (109, False);
   Internal_Set_Is_Unique (109, True);
   Internal_Set_Lower (109, (False, 0));
   Internal_Set_Name
    (109,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (109, (False, (False, 1)));

   Internal_Set_Body
    (576,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Composite (102, False);
   Internal_Set_Is_Derived (102, False);
   Internal_Set_Is_Derived_Union (102, False);
   Internal_Set_Is_Leaf (102, False);
   Internal_Set_Is_Ordered (102, False);
   Internal_Set_Is_Read_Only (102, False);
   Internal_Set_Is_Unique (102, True);
   Internal_Set_Lower (102, (False, 0));
   Internal_Set_Name
    (102,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (102, (False, (False, 1)));

   Internal_Set_Body
    (577,
     (False, League.Strings.To_Universal_String ("The class that owns the operation.")));

   Internal_Set_Is_Composite (103, False);
   Internal_Set_Is_Derived (103, False);
   Internal_Set_Is_Derived_Union (103, False);
   Internal_Set_Is_Leaf (103, False);
   Internal_Set_Is_Ordered (103, False);
   Internal_Set_Is_Read_Only (103, False);
   Internal_Set_Is_Unique (103, True);
   Internal_Set_Lower (103, (False, 0));
   Internal_Set_Name
    (103,
     (False, League.Strings.To_Universal_String ("datatype")));
   Internal_Set_Upper (103, (False, (False, 1)));

   Internal_Set_Body
    (578,
     (False, League.Strings.To_Universal_String ("The DataType that owns this Operation.")));

   Internal_Set_Is_Composite (67, False);
   Internal_Set_Is_Derived (67, False);
   Internal_Set_Is_Derived_Union (67, False);
   Internal_Set_Is_Leaf (67, False);
   Internal_Set_Is_Ordered (67, False);
   Internal_Set_Is_Read_Only (67, False);
   Internal_Set_Is_Unique (67, True);
   Internal_Set_Lower (67, (False, 0));
   Internal_Set_Name
    (67,
     (False, League.Strings.To_Universal_String ("raisedException")));
   Internal_Set_Upper (67, (False, (Unlimited => True)));

   Internal_Set_Body
    (579,
     (False, League.Strings.To_Universal_String ("References the Types representing exceptions that may be raised during an invocation of this operation.")));

   Internal_Set_Is_Composite (68, False);
   Internal_Set_Is_Derived (68, False);
   Internal_Set_Is_Derived_Union (68, False);
   Internal_Set_Is_Leaf (68, False);
   Internal_Set_Is_Ordered (68, False);
   Internal_Set_Is_Read_Only (68, False);
   Internal_Set_Is_Unique (68, True);
   Internal_Set_Lower (68, (False, 0));
   Internal_Set_Name
    (68,
     (False, League.Strings.To_Universal_String ("redefinedOperation")));
   Internal_Set_Upper (68, (False, (Unlimited => True)));

   Internal_Set_Body
    (580,
     (False, League.Strings.To_Universal_String ("References the Operations that are redefined by this Operation.")));

   Internal_Set_Is_Composite (108, False);
   Internal_Set_Is_Derived (108, True);
   Internal_Set_Is_Derived_Union (108, False);
   Internal_Set_Is_Leaf (108, False);
   Internal_Set_Is_Ordered (108, False);
   Internal_Set_Is_Read_Only (108, False);
   Internal_Set_Is_Unique (108, True);
   Internal_Set_Lower (108, (False, 0));
   Internal_Set_Name
    (108,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (108, (False, (False, 1)));

   Internal_Set_Body
    (581,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Composite (64, True);
   Internal_Set_Is_Derived (64, False);
   Internal_Set_Is_Derived_Union (64, False);
   Internal_Set_Is_Leaf (64, False);
   Internal_Set_Is_Ordered (64, True);
   Internal_Set_Is_Read_Only (64, False);
   Internal_Set_Is_Unique (64, True);
   Internal_Set_Lower (64, (False, 0));
   Internal_Set_Name
    (64,
     (False, League.Strings.To_Universal_String ("ownedParameter")));
   Internal_Set_Upper (64, (False, (Unlimited => True)));

   Internal_Set_Body
    (582,
     (False, League.Strings.To_Universal_String ("Specifies the ordered set of formal parameters of this BehavioralFeature.")));

   Internal_Set_Is_Composite (66, True);
   Internal_Set_Is_Derived (66, False);
   Internal_Set_Is_Derived_Union (66, False);
   Internal_Set_Is_Leaf (66, False);
   Internal_Set_Is_Ordered (66, False);
   Internal_Set_Is_Read_Only (66, False);
   Internal_Set_Is_Unique (66, True);
   Internal_Set_Lower (66, (False, 0));
   Internal_Set_Name
    (66,
     (False, League.Strings.To_Universal_String ("precondition")));
   Internal_Set_Upper (66, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (65, True);
   Internal_Set_Is_Derived (65, False);
   Internal_Set_Is_Derived_Union (65, False);
   Internal_Set_Is_Leaf (65, False);
   Internal_Set_Is_Ordered (65, False);
   Internal_Set_Is_Read_Only (65, False);
   Internal_Set_Is_Unique (65, True);
   Internal_Set_Lower (65, (False, 0));
   Internal_Set_Name
    (65,
     (False, League.Strings.To_Universal_String ("postcondition")));
   Internal_Set_Upper (65, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (101, True);
   Internal_Set_Is_Derived (101, False);
   Internal_Set_Is_Derived_Union (101, False);
   Internal_Set_Is_Leaf (101, False);
   Internal_Set_Is_Ordered (101, False);
   Internal_Set_Is_Read_Only (101, False);
   Internal_Set_Is_Unique (101, True);
   Internal_Set_Lower (101, (False, 0));
   Internal_Set_Name
    (101,
     (False, League.Strings.To_Universal_String ("bodyCondition")));
   Internal_Set_Upper (101, (False, (False, 1)));

   Internal_Set_Is_Leaf (583, False);
   Internal_Set_Is_Ordered (583, False);
   Internal_Set_Is_Query (583, True);
   Internal_Set_Is_Unique (583, True);
   Internal_Set_Lower (583, (False, 1));
   Internal_Set_Name
    (583,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (583, (False, (False, 1)));

   Internal_Set_Body
    (584,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false.")));

   Internal_Set_Name
    (585,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (587, Return_Direction);
   Internal_Set_Is_Ordered (587, False);
   Internal_Set_Is_Unique (587, True);
   Internal_Set_Lower (587, (False, 1));
   Internal_Set_Upper (587, (False, (False, 1)));

   Internal_Set_Is_Leaf (588, False);
   Internal_Set_Is_Ordered (588, False);
   Internal_Set_Is_Query (588, True);
   Internal_Set_Is_Unique (588, True);
   Internal_Set_Lower (588, (False, 1));
   Internal_Set_Name
    (588,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (588, (False, (False, 1)));

   Internal_Set_Body
    (589,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true.")));

   Internal_Set_Name
    (590,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (592, Return_Direction);
   Internal_Set_Is_Ordered (592, False);
   Internal_Set_Is_Unique (592, True);
   Internal_Set_Lower (592, (False, 1));
   Internal_Set_Upper (592, (False, (False, 1)));

   Internal_Set_Is_Leaf (593, False);
   Internal_Set_Is_Ordered (593, False);
   Internal_Set_Is_Query (593, True);
   Internal_Set_Is_Unique (593, True);
   Internal_Set_Lower (593, (False, 1));
   Internal_Set_Name
    (593,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (593, (False, (False, 1)));

   Internal_Set_Body
    (594,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower is not defined.")));

   Internal_Set_Name
    (595,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (597, Return_Direction);
   Internal_Set_Is_Ordered (597, False);
   Internal_Set_Is_Unique (597, True);
   Internal_Set_Lower (597, (False, 1));
   Internal_Set_Upper (597, (False, (False, 1)));

   Internal_Set_Is_Leaf (598, False);
   Internal_Set_Is_Ordered (598, False);
   Internal_Set_Is_Query (598, True);
   Internal_Set_Is_Unique (598, True);
   Internal_Set_Lower (598, (False, 1));
   Internal_Set_Name
    (598,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (598, (False, (False, 1)));

   Internal_Set_Body
    (599,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper is not defined.")));

   Internal_Set_Name
    (600,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (602, Return_Direction);
   Internal_Set_Is_Ordered (602, False);
   Internal_Set_Is_Unique (602, True);
   Internal_Set_Lower (602, (False, 1));
   Internal_Set_Upper (602, (False, (False, 1)));

   Internal_Set_Is_Leaf (603, False);
   Internal_Set_Is_Ordered (603, False);
   Internal_Set_Is_Query (603, True);
   Internal_Set_Is_Unique (603, True);
   Internal_Set_Lower (603, (False, 1));
   Internal_Set_Name
    (603,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (603, (False, (False, 1)));

   Internal_Set_Body
    (604,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type is not defined.")));

   Internal_Set_Name
    (605,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (607, Return_Direction);
   Internal_Set_Is_Ordered (607, False);
   Internal_Set_Is_Unique (607, True);
   Internal_Set_Lower (607, (False, 1));
   Internal_Set_Upper (607, (False, (False, 1)));

   Internal_Set_Is_Leaf (608, False);
   Internal_Set_Is_Ordered (608, False);
   Internal_Set_Is_Query (608, True);
   Internal_Set_Is_Unique (608, True);
   Internal_Set_Lower (608, (False, 1));
   Internal_Set_Name
    (608,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (608, (False, (False, 1)));

   Internal_Set_Body
    (609,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent in the sense of maintaining type covariance. Other senses of consistency may be required, for example to determine consistency in the sense of contravariance. Users may define alternative queries under names different from 'isConsistentWith()', as for example, users may define a query named 'isContravariantWith()'.")));



   Internal_Set_Name
    (612,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (614, Return_Direction);
   Internal_Set_Is_Ordered (614, False);
   Internal_Set_Is_Unique (614, True);
   Internal_Set_Lower (614, (False, 1));
   Internal_Set_Upper (614, (False, (False, 1)));

   Internal_Set_Direction (615, In_Direction);
   Internal_Set_Is_Ordered (615, False);
   Internal_Set_Is_Unique (615, True);
   Internal_Set_Lower (615, (False, 1));
   Internal_Set_Name
    (615,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (615, (False, (False, 1)));

   Internal_Set_Is_Leaf (616, False);
   Internal_Set_Is_Ordered (616, False);
   Internal_Set_Is_Query (616, True);
   Internal_Set_Is_Unique (616, True);
   Internal_Set_Lower (616, (False, 1));
   Internal_Set_Name
    (616,
     (False, League.Strings.To_Universal_String ("returnResult")));
   Internal_Set_Upper (616, (False, (False, 1)));

   Internal_Set_Name
    (617,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (619, Return_Direction);
   Internal_Set_Is_Ordered (619, False);
   Internal_Set_Is_Unique (619, True);
   Internal_Set_Lower (619, (False, 0));
   Internal_Set_Upper (619, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (24, False);
   Internal_Set_Is_Final_Specialization (24, False);
   Internal_Set_Name
    (24,
     (False, League.Strings.To_Universal_String ("Parameter")));

   Internal_Set_Body
    (620,
     (False, League.Strings.To_Universal_String ("A parameter is a specification of an argument used to pass information into or out of an invocation of a behavioral feature.")));

   Internal_Set_Is_Composite (117, False);
   Internal_Set_Is_Derived (117, False);
   Internal_Set_Is_Derived_Union (117, False);
   Internal_Set_Is_Leaf (117, False);
   Internal_Set_Is_Ordered (117, False);
   Internal_Set_Is_Read_Only (117, False);
   Internal_Set_Is_Unique (117, True);
   Internal_Set_Lower (117, (False, 0));
   Internal_Set_Name
    (117,
     (False, League.Strings.To_Universal_String ("default")));
   Internal_Set_Upper (117, (False, (False, 1)));

   Internal_Set_Body
    (621,
     (False, League.Strings.To_Universal_String ("Specifies a String that represents a value to be used when no argument is supplied for the Parameter.")));

   Internal_Set_Default
    (118,
     (False, League.Strings.To_Universal_String ("in")));
   Internal_Set_Is_Composite (118, False);
   Internal_Set_Is_Derived (118, False);
   Internal_Set_Is_Derived_Union (118, False);
   Internal_Set_Is_Leaf (118, False);
   Internal_Set_Is_Ordered (118, False);
   Internal_Set_Is_Read_Only (118, False);
   Internal_Set_Is_Unique (118, True);
   Internal_Set_Lower (118, (False, 1));
   Internal_Set_Name
    (118,
     (False, League.Strings.To_Universal_String ("direction")));
   Internal_Set_Upper (118, (False, (False, 1)));

   Internal_Set_Body
    (622,
     (False, League.Strings.To_Universal_String ("Indicates whether a parameter is being sent into or out of a behavioral element.")));

   Internal_Set_Is_Composite (119, False);
   Internal_Set_Is_Derived (119, False);
   Internal_Set_Is_Derived_Union (119, False);
   Internal_Set_Is_Leaf (119, False);
   Internal_Set_Is_Ordered (119, False);
   Internal_Set_Is_Read_Only (119, False);
   Internal_Set_Is_Unique (119, True);
   Internal_Set_Lower (119, (False, 0));
   Internal_Set_Name
    (119,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (119, (False, (False, 1)));

   Internal_Set_Body
    (623,
     (False, League.Strings.To_Universal_String ("References the Operation owning this parameter.")));

   Internal_Set_Is_Abstract (2, True);
   Internal_Set_Is_Final_Specialization (2, False);
   Internal_Set_Name
    (2,
     (False, League.Strings.To_Universal_String ("BehavioralFeature")));

   Internal_Set_Body
    (624,
     (False, League.Strings.To_Universal_String ("A behavioral feature is a feature of a classifier that specifies an aspect of the behavior of its instances.")));

   Internal_Set_Is_Composite (38, True);
   Internal_Set_Is_Derived (38, False);
   Internal_Set_Is_Derived_Union (38, False);
   Internal_Set_Is_Leaf (38, False);
   Internal_Set_Is_Ordered (38, True);
   Internal_Set_Is_Read_Only (38, False);
   Internal_Set_Is_Unique (38, True);
   Internal_Set_Lower (38, (False, 0));
   Internal_Set_Name
    (38,
     (False, League.Strings.To_Universal_String ("ownedParameter")));
   Internal_Set_Upper (38, (False, (Unlimited => True)));

   Internal_Set_Body
    (625,
     (False, League.Strings.To_Universal_String ("Specifies the ordered set of formal parameters of this BehavioralFeature.")));

   Internal_Set_Is_Composite (39, False);
   Internal_Set_Is_Derived (39, False);
   Internal_Set_Is_Derived_Union (39, False);
   Internal_Set_Is_Leaf (39, False);
   Internal_Set_Is_Ordered (39, False);
   Internal_Set_Is_Read_Only (39, False);
   Internal_Set_Is_Unique (39, True);
   Internal_Set_Lower (39, (False, 0));
   Internal_Set_Name
    (39,
     (False, League.Strings.To_Universal_String ("raisedException")));
   Internal_Set_Upper (39, (False, (Unlimited => True)));

   Internal_Set_Body
    (626,
     (False, League.Strings.To_Universal_String ("References the Types representing exceptions that may be raised during an invocation of this feature.")));

   Internal_Set_Is_Leaf (627, False);
   Internal_Set_Is_Ordered (627, False);
   Internal_Set_Is_Query (627, True);
   Internal_Set_Is_Unique (627, True);
   Internal_Set_Lower (627, (False, 1));
   Internal_Set_Name
    (627,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (627, (False, (False, 1)));

   Internal_Set_Body
    (628,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they have to have different signatures.")));

   Internal_Set_Name
    (629,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (631, Return_Direction);
   Internal_Set_Is_Ordered (631, False);
   Internal_Set_Is_Unique (631, True);
   Internal_Set_Lower (631, (False, 1));
   Internal_Set_Upper (631, (False, (False, 1)));

   Internal_Set_Direction (632, In_Direction);
   Internal_Set_Is_Ordered (632, False);
   Internal_Set_Is_Unique (632, True);
   Internal_Set_Lower (632, (False, 1));
   Internal_Set_Name
    (632,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (632, (False, (False, 1)));

   Internal_Set_Direction (633, In_Direction);
   Internal_Set_Is_Ordered (633, False);
   Internal_Set_Is_Unique (633, True);
   Internal_Set_Lower (633, (False, 1));
   Internal_Set_Name
    (633,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (633, (False, (False, 1)));

   Internal_Set_Is_Abstract (10, False);
   Internal_Set_Is_Final_Specialization (10, False);
   Internal_Set_Name
    (10,
     (False, League.Strings.To_Universal_String ("ElementImport")));

   Internal_Set_Body
    (634,
     (False, League.Strings.To_Universal_String ("An element import identifies an element in another package, and allows the element to be referenced using its name without a qualifier.")));

   Internal_Set_Name
    (635,
     (False, League.Strings.To_Universal_String ("visibility_public_or_private")));

   Internal_Set_Body
    (636,
     (False, League.Strings.To_Universal_String ("The visibility of an ElementImport is either public or private.")));


   Internal_Set_Name
    (638,
     (False, League.Strings.To_Universal_String ("imported_element_is_public")));

   Internal_Set_Body
    (639,
     (False, League.Strings.To_Universal_String ("An importedElement has either public visibility or no visibility at all.")));


   Internal_Set_Default
    (89,
     (False, League.Strings.To_Universal_String ("public")));
   Internal_Set_Is_Composite (89, False);
   Internal_Set_Is_Derived (89, False);
   Internal_Set_Is_Derived_Union (89, False);
   Internal_Set_Is_Leaf (89, False);
   Internal_Set_Is_Ordered (89, False);
   Internal_Set_Is_Read_Only (89, False);
   Internal_Set_Is_Unique (89, True);
   Internal_Set_Lower (89, (False, 1));
   Internal_Set_Name
    (89,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (89, (False, (False, 1)));

   Internal_Set_Body
    (641,
     (False, League.Strings.To_Universal_String ("Specifies the visibility of the imported PackageableElement within the importing Package. The default visibility is the same as that of the imported element. If the imported element does not have a visibility, it is possible to add visibility to the element import.")));

   Internal_Set_Is_Composite (86, False);
   Internal_Set_Is_Derived (86, False);
   Internal_Set_Is_Derived_Union (86, False);
   Internal_Set_Is_Leaf (86, False);
   Internal_Set_Is_Ordered (86, False);
   Internal_Set_Is_Read_Only (86, False);
   Internal_Set_Is_Unique (86, True);
   Internal_Set_Lower (86, (False, 0));
   Internal_Set_Name
    (86,
     (False, League.Strings.To_Universal_String ("alias")));
   Internal_Set_Upper (86, (False, (False, 1)));

   Internal_Set_Body
    (642,
     (False, League.Strings.To_Universal_String ("Specifies the name that should be added to the namespace of the importing package in lieu of the name of the imported packagable element. The aliased name must not clash with any other member name in the importing package. By default, no alias is used.")));

   Internal_Set_Is_Composite (87, False);
   Internal_Set_Is_Derived (87, False);
   Internal_Set_Is_Derived_Union (87, False);
   Internal_Set_Is_Leaf (87, False);
   Internal_Set_Is_Ordered (87, False);
   Internal_Set_Is_Read_Only (87, False);
   Internal_Set_Is_Unique (87, True);
   Internal_Set_Lower (87, (False, 1));
   Internal_Set_Name
    (87,
     (False, League.Strings.To_Universal_String ("importedElement")));
   Internal_Set_Upper (87, (False, (False, 1)));

   Internal_Set_Body
    (643,
     (False, League.Strings.To_Universal_String ("Specifies the PackageableElement whose name is to be added to a Namespace.")));

   Internal_Set_Is_Composite (88, False);
   Internal_Set_Is_Derived (88, False);
   Internal_Set_Is_Derived_Union (88, False);
   Internal_Set_Is_Leaf (88, False);
   Internal_Set_Is_Ordered (88, False);
   Internal_Set_Is_Read_Only (88, False);
   Internal_Set_Is_Unique (88, True);
   Internal_Set_Lower (88, (False, 1));
   Internal_Set_Name
    (88,
     (False, League.Strings.To_Universal_String ("importingNamespace")));
   Internal_Set_Upper (88, (False, (False, 1)));

   Internal_Set_Body
    (644,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports a PackageableElement from another Package.")));

   Internal_Set_Is_Leaf (645, False);
   Internal_Set_Is_Ordered (645, False);
   Internal_Set_Is_Query (645, True);
   Internal_Set_Is_Unique (645, True);
   Internal_Set_Lower (645, (False, 1));
   Internal_Set_Name
    (645,
     (False, League.Strings.To_Universal_String ("getName")));
   Internal_Set_Upper (645, (False, (False, 1)));

   Internal_Set_Body
    (646,
     (False, League.Strings.To_Universal_String ("The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace.")));

   Internal_Set_Name
    (647,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (649, Return_Direction);
   Internal_Set_Is_Ordered (649, False);
   Internal_Set_Is_Unique (649, True);
   Internal_Set_Lower (649, (False, 1));
   Internal_Set_Upper (649, (False, (False, 1)));

   Internal_Set_Is_Abstract (20, False);
   Internal_Set_Is_Final_Specialization (20, False);
   Internal_Set_Name
    (20,
     (False, League.Strings.To_Universal_String ("Package")));

   Internal_Set_Body
    (650,
     (False, League.Strings.To_Universal_String ("A package is used to group elements, and provides a namespace for the grouped elements.")));

   Internal_Set_Name
    (651,
     (False, League.Strings.To_Universal_String ("elements_public_or_private")));

   Internal_Set_Body
    (652,
     (False, League.Strings.To_Universal_String ("If an element that is owned by a package has visibility, it is public or private.")));


   Internal_Set_Is_Composite (72, True);
   Internal_Set_Is_Derived (72, False);
   Internal_Set_Is_Derived_Union (72, False);
   Internal_Set_Is_Leaf (72, False);
   Internal_Set_Is_Ordered (72, False);
   Internal_Set_Is_Read_Only (72, False);
   Internal_Set_Is_Unique (72, True);
   Internal_Set_Lower (72, (False, 0));
   Internal_Set_Name
    (72,
     (False, League.Strings.To_Universal_String ("packagedElement")));
   Internal_Set_Upper (72, (False, (Unlimited => True)));

   Internal_Set_Body
    (654,
     (False, League.Strings.To_Universal_String ("Specifies the packageable elements that are owned by this Package.")));

   Internal_Set_Is_Composite (70, True);
   Internal_Set_Is_Derived (70, True);
   Internal_Set_Is_Derived_Union (70, False);
   Internal_Set_Is_Leaf (70, False);
   Internal_Set_Is_Ordered (70, False);
   Internal_Set_Is_Read_Only (70, False);
   Internal_Set_Is_Unique (70, True);
   Internal_Set_Lower (70, (False, 0));
   Internal_Set_Name
    (70,
     (False, League.Strings.To_Universal_String ("ownedType")));
   Internal_Set_Upper (70, (False, (Unlimited => True)));

   Internal_Set_Body
    (655,
     (False, League.Strings.To_Universal_String ("References the packaged elements that are Types.")));

   Internal_Set_Is_Composite (69, True);
   Internal_Set_Is_Derived (69, True);
   Internal_Set_Is_Derived_Union (69, False);
   Internal_Set_Is_Leaf (69, False);
   Internal_Set_Is_Ordered (69, False);
   Internal_Set_Is_Read_Only (69, False);
   Internal_Set_Is_Unique (69, True);
   Internal_Set_Lower (69, (False, 0));
   Internal_Set_Name
    (69,
     (False, League.Strings.To_Universal_String ("nestedPackage")));
   Internal_Set_Upper (69, (False, (Unlimited => True)));

   Internal_Set_Body
    (656,
     (False, League.Strings.To_Universal_String ("References the packaged elements that are Packages.")));

   Internal_Set_Is_Composite (110, False);
   Internal_Set_Is_Derived (110, False);
   Internal_Set_Is_Derived_Union (110, False);
   Internal_Set_Is_Leaf (110, False);
   Internal_Set_Is_Ordered (110, False);
   Internal_Set_Is_Read_Only (110, False);
   Internal_Set_Is_Unique (110, True);
   Internal_Set_Lower (110, (False, 0));
   Internal_Set_Name
    (110,
     (False, League.Strings.To_Universal_String ("nestingPackage")));
   Internal_Set_Upper (110, (False, (False, 1)));

   Internal_Set_Body
    (657,
     (False, League.Strings.To_Universal_String ("References the Package that owns this Package.")));

   Internal_Set_Is_Composite (71, True);
   Internal_Set_Is_Derived (71, False);
   Internal_Set_Is_Derived_Union (71, False);
   Internal_Set_Is_Leaf (71, False);
   Internal_Set_Is_Ordered (71, False);
   Internal_Set_Is_Read_Only (71, False);
   Internal_Set_Is_Unique (71, True);
   Internal_Set_Lower (71, (False, 0));
   Internal_Set_Name
    (71,
     (False, League.Strings.To_Universal_String ("packageMerge")));
   Internal_Set_Upper (71, (False, (Unlimited => True)));

   Internal_Set_Body
    (658,
     (False, League.Strings.To_Universal_String ("References the PackageMerges that are owned by this Package.")));

   Internal_Set_Is_Composite (111, False);
   Internal_Set_Is_Derived (111, False);
   Internal_Set_Is_Derived_Union (111, False);
   Internal_Set_Is_Leaf (111, False);
   Internal_Set_Is_Ordered (111, False);
   Internal_Set_Is_Read_Only (111, False);
   Internal_Set_Is_Unique (111, True);
   Internal_Set_Lower (111, (False, 0));
   Internal_Set_Name
    (111,
     (False, League.Strings.To_Universal_String ("uri")));
   Internal_Set_Upper (111, (False, (False, 1)));

   Internal_Set_Body
    (659,
     (False, League.Strings.To_Universal_String ("Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt. UML 1.4 and MOF 1.4 were assigned URIs to their outermost package. The package URI appears in XMI files when instances of the package’s classes are serialized.")));

   Internal_Set_Is_Leaf (660, False);
   Internal_Set_Is_Ordered (660, False);
   Internal_Set_Is_Query (660, True);
   Internal_Set_Is_Unique (660, True);
   Internal_Set_Lower (660, (False, 1));
   Internal_Set_Name
    (660,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (660, (False, (False, 1)));

   Internal_Set_Body
    (661,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner.")));

   Internal_Set_Name
    (662,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (664, Return_Direction);
   Internal_Set_Is_Ordered (664, False);
   Internal_Set_Is_Unique (664, True);
   Internal_Set_Lower (664, (False, 1));
   Internal_Set_Upper (664, (False, (False, 1)));

   Internal_Set_Is_Leaf (665, False);
   Internal_Set_Is_Ordered (665, False);
   Internal_Set_Is_Query (665, True);
   Internal_Set_Is_Unique (665, True);
   Internal_Set_Lower (665, (False, 1));
   Internal_Set_Name
    (665,
     (False, League.Strings.To_Universal_String ("visibleMembers")));
   Internal_Set_Upper (665, (False, (False, 1)));

   Internal_Set_Body
    (666,
     (False, League.Strings.To_Universal_String ("The query visibleMembers() defines which members of a Package can be accessed outside it.")));

   Internal_Set_Name
    (667,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (669, Return_Direction);
   Internal_Set_Is_Ordered (669, False);
   Internal_Set_Is_Unique (669, True);
   Internal_Set_Lower (669, (False, 0));
   Internal_Set_Upper (669, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (670, False);
   Internal_Set_Is_Ordered (670, False);
   Internal_Set_Is_Query (670, True);
   Internal_Set_Is_Unique (670, True);
   Internal_Set_Lower (670, (False, 1));
   Internal_Set_Name
    (670,
     (False, League.Strings.To_Universal_String ("makesVisible")));
   Internal_Set_Upper (670, (False, (False, 1)));

   Internal_Set_Body
    (671,
     (False, League.Strings.To_Universal_String ("The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible.")));



   Internal_Set_Name
    (674,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (676, Return_Direction);
   Internal_Set_Is_Ordered (676, False);
   Internal_Set_Is_Unique (676, True);
   Internal_Set_Lower (676, (False, 1));
   Internal_Set_Upper (676, (False, (False, 1)));

   Internal_Set_Direction (677, In_Direction);
   Internal_Set_Is_Ordered (677, False);
   Internal_Set_Is_Unique (677, True);
   Internal_Set_Lower (677, (False, 1));
   Internal_Set_Name
    (677,
     (False, League.Strings.To_Universal_String ("el")));
   Internal_Set_Upper (677, (False, (False, 1)));

   Internal_Set_Is_Abstract (21, False);
   Internal_Set_Is_Final_Specialization (21, False);
   Internal_Set_Name
    (21,
     (False, League.Strings.To_Universal_String ("PackageImport")));

   Internal_Set_Body
    (678,
     (False, League.Strings.To_Universal_String ("A package import is a relationship that allows the use of unqualified names to refer to package members from other namespaces.")));

   Internal_Set_Name
    (679,
     (False, League.Strings.To_Universal_String ("public_or_private")));

   Internal_Set_Body
    (680,
     (False, League.Strings.To_Universal_String ("The visibility of a PackageImport is either public or private.")));


   Internal_Set_Default
    (114,
     (False, League.Strings.To_Universal_String ("public")));
   Internal_Set_Is_Composite (114, False);
   Internal_Set_Is_Derived (114, False);
   Internal_Set_Is_Derived_Union (114, False);
   Internal_Set_Is_Leaf (114, False);
   Internal_Set_Is_Ordered (114, False);
   Internal_Set_Is_Read_Only (114, False);
   Internal_Set_Is_Unique (114, True);
   Internal_Set_Lower (114, (False, 1));
   Internal_Set_Name
    (114,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (114, (False, (False, 1)));

   Internal_Set_Body
    (682,
     (False, League.Strings.To_Universal_String ("Specifies the visibility of the imported PackageableElements within the importing Namespace, i.e., whether imported elements will in turn be visible to other packages that use that importingPackage as an importedPackage. If the PackageImport is public, the imported elements will be visible outside the package, while if it is private they will not.")));

   Internal_Set_Is_Composite (112, False);
   Internal_Set_Is_Derived (112, False);
   Internal_Set_Is_Derived_Union (112, False);
   Internal_Set_Is_Leaf (112, False);
   Internal_Set_Is_Ordered (112, False);
   Internal_Set_Is_Read_Only (112, False);
   Internal_Set_Is_Unique (112, True);
   Internal_Set_Lower (112, (False, 1));
   Internal_Set_Name
    (112,
     (False, League.Strings.To_Universal_String ("importedPackage")));
   Internal_Set_Upper (112, (False, (False, 1)));

   Internal_Set_Body
    (683,
     (False, League.Strings.To_Universal_String ("Specifies the Package whose members are imported into a Namespace.")));

   Internal_Set_Is_Composite (113, False);
   Internal_Set_Is_Derived (113, False);
   Internal_Set_Is_Derived_Union (113, False);
   Internal_Set_Is_Leaf (113, False);
   Internal_Set_Is_Ordered (113, False);
   Internal_Set_Is_Read_Only (113, False);
   Internal_Set_Is_Unique (113, True);
   Internal_Set_Lower (113, (False, 1));
   Internal_Set_Name
    (113,
     (False, League.Strings.To_Universal_String ("importingNamespace")));
   Internal_Set_Upper (113, (False, (False, 1)));

   Internal_Set_Body
    (684,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports the members from a Package.")));

   Internal_Set_Is_Abstract (22, False);
   Internal_Set_Is_Final_Specialization (22, False);
   Internal_Set_Name
    (22,
     (False, League.Strings.To_Universal_String ("PackageMerge")));

   Internal_Set_Body
    (685,
     (False, League.Strings.To_Universal_String ("A package merge defines how the contents of one package are extended by the contents of another package.")));

   Internal_Set_Is_Composite (116, False);
   Internal_Set_Is_Derived (116, False);
   Internal_Set_Is_Derived_Union (116, False);
   Internal_Set_Is_Leaf (116, False);
   Internal_Set_Is_Ordered (116, False);
   Internal_Set_Is_Read_Only (116, False);
   Internal_Set_Is_Unique (116, True);
   Internal_Set_Lower (116, (False, 1));
   Internal_Set_Name
    (116,
     (False, League.Strings.To_Universal_String ("receivingPackage")));
   Internal_Set_Upper (116, (False, (False, 1)));

   Internal_Set_Body
    (686,
     (False, League.Strings.To_Universal_String ("References the Package that is being extended with the contents of the merged package of the PackageMerge.")));

   Internal_Set_Is_Composite (115, False);
   Internal_Set_Is_Derived (115, False);
   Internal_Set_Is_Derived_Union (115, False);
   Internal_Set_Is_Leaf (115, False);
   Internal_Set_Is_Ordered (115, False);
   Internal_Set_Is_Read_Only (115, False);
   Internal_Set_Is_Unique (115, True);
   Internal_Set_Lower (115, (False, 1));
   Internal_Set_Name
    (115,
     (False, League.Strings.To_Universal_String ("mergedPackage")));
   Internal_Set_Upper (115, (False, (False, 1)));

   Internal_Set_Body
    (687,
     (False, League.Strings.To_Universal_String ("References the Package that is to be merged with the receiving package of the PackageMerge.")));

   Internal_Set_Is_Abstract (31, True);
   Internal_Set_Is_Final_Specialization (31, False);
   Internal_Set_Name
    (31,
     (False, League.Strings.To_Universal_String ("Type")));

   Internal_Set_Body
    (688,
     (False, League.Strings.To_Universal_String ("A type is a named element that is used as the type for a typed element. A type can be contained in a package.")));

   Internal_Set_Is_Composite (134, False);
   Internal_Set_Is_Derived (134, False);
   Internal_Set_Is_Derived_Union (134, False);
   Internal_Set_Is_Leaf (134, False);
   Internal_Set_Is_Ordered (134, False);
   Internal_Set_Is_Read_Only (134, False);
   Internal_Set_Is_Unique (134, True);
   Internal_Set_Lower (134, (False, 0));
   Internal_Set_Name
    (134,
     (False, League.Strings.To_Universal_String ("package")));
   Internal_Set_Upper (134, (False, (False, 1)));

   Internal_Set_Body
    (689,
     (False, League.Strings.To_Universal_String ("Specifies the owning package of this classifier, if any.")));

   Internal_Set_Is_Leaf (690, False);
   Internal_Set_Is_Ordered (690, False);
   Internal_Set_Is_Query (690, True);
   Internal_Set_Is_Unique (690, True);
   Internal_Set_Lower (690, (False, 1));
   Internal_Set_Name
    (690,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (690, (False, (False, 1)));

   Internal_Set_Body
    (691,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a type that conforms to another. By default, two types do not conform to each other. This query is intended to be redefined for specific conformance situations.")));

   Internal_Set_Name
    (692,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (694, Return_Direction);
   Internal_Set_Is_Ordered (694, False);
   Internal_Set_Is_Unique (694, True);
   Internal_Set_Lower (694, (False, 1));
   Internal_Set_Upper (694, (False, (False, 1)));

   Internal_Set_Direction (695, In_Direction);
   Internal_Set_Is_Ordered (695, False);
   Internal_Set_Is_Unique (695, True);
   Internal_Set_Lower (695, (False, 1));
   Internal_Set_Name
    (695,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (695, (False, (False, 1)));

   Internal_Set_Is_Abstract (16, True);
   Internal_Set_Is_Final_Specialization (16, False);
   Internal_Set_Name
    (16,
     (False, League.Strings.To_Universal_String ("NamedElement")));

   Internal_Set_Body
    (696,
     (False, League.Strings.To_Universal_String ("A named element is an element in a model that may have a name.")));

   Internal_Set_Name
    (697,
     (False, League.Strings.To_Universal_String ("has_no_qualified_name")));

   Internal_Set_Body
    (698,
     (False, League.Strings.To_Universal_String ("If there is no name, or one of the containing namespaces has no name, there is no qualified name.")));


   Internal_Set_Name
    (700,
     (False, League.Strings.To_Universal_String ("has_qualified_name")));

   Internal_Set_Body
    (701,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));


   Internal_Set_Name
    (703,
     (False, League.Strings.To_Universal_String ("visibility_needs_ownership")));

   Internal_Set_Body
    (704,
     (False, League.Strings.To_Universal_String ("If a NamedElement is not owned by a Namespace, it does not have a visibility.")));


   Internal_Set_Is_Composite (95, False);
   Internal_Set_Is_Derived (95, False);
   Internal_Set_Is_Derived_Union (95, False);
   Internal_Set_Is_Leaf (95, False);
   Internal_Set_Is_Ordered (95, False);
   Internal_Set_Is_Read_Only (95, False);
   Internal_Set_Is_Unique (95, True);
   Internal_Set_Lower (95, (False, 0));
   Internal_Set_Name
    (95,
     (False, League.Strings.To_Universal_String ("name")));
   Internal_Set_Upper (95, (False, (False, 1)));

   Internal_Set_Body
    (706,
     (False, League.Strings.To_Universal_String ("The name of the NamedElement.")));

   Internal_Set_Is_Composite (98, False);
   Internal_Set_Is_Derived (98, False);
   Internal_Set_Is_Derived_Union (98, False);
   Internal_Set_Is_Leaf (98, False);
   Internal_Set_Is_Ordered (98, False);
   Internal_Set_Is_Read_Only (98, False);
   Internal_Set_Is_Unique (98, True);
   Internal_Set_Lower (98, (False, 0));
   Internal_Set_Name
    (98,
     (False, League.Strings.To_Universal_String ("visibility")));
   Internal_Set_Upper (98, (False, (False, 1)));

   Internal_Set_Body
    (707,
     (False, League.Strings.To_Universal_String ("Determines where the NamedElement appears within different Namespaces within the overall model, and its accessibility.")));

   Internal_Set_Is_Composite (96, False);
   Internal_Set_Is_Derived (96, True);
   Internal_Set_Is_Derived_Union (96, True);
   Internal_Set_Is_Leaf (96, False);
   Internal_Set_Is_Ordered (96, False);
   Internal_Set_Is_Read_Only (96, True);
   Internal_Set_Is_Unique (96, True);
   Internal_Set_Lower (96, (False, 0));
   Internal_Set_Name
    (96,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (96, (False, (False, 1)));

   Internal_Set_Body
    (708,
     (False, League.Strings.To_Universal_String ("Specifies the namespace that owns the NamedElement.")));

   Internal_Set_Is_Composite (97, False);
   Internal_Set_Is_Derived (97, True);
   Internal_Set_Is_Derived_Union (97, False);
   Internal_Set_Is_Leaf (97, False);
   Internal_Set_Is_Ordered (97, False);
   Internal_Set_Is_Read_Only (97, True);
   Internal_Set_Is_Unique (97, True);
   Internal_Set_Lower (97, (False, 0));
   Internal_Set_Name
    (97,
     (False, League.Strings.To_Universal_String ("qualifiedName")));
   Internal_Set_Upper (97, (False, (False, 1)));

   Internal_Set_Body
    (709,
     (False, League.Strings.To_Universal_String ("A name which allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself.")));

   Internal_Set_Is_Leaf (710, False);
   Internal_Set_Is_Ordered (710, False);
   Internal_Set_Is_Query (710, True);
   Internal_Set_Is_Unique (710, True);
   Internal_Set_Lower (710, (False, 1));
   Internal_Set_Name
    (710,
     (False, League.Strings.To_Universal_String ("allNamespaces")));
   Internal_Set_Upper (710, (False, (False, 1)));

   Internal_Set_Body
    (711,
     (False, League.Strings.To_Universal_String ("The query allNamespaces() gives the sequence of namespaces in which the NamedElement is nested, working outwards.")));

   Internal_Set_Name
    (712,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (714, Return_Direction);
   Internal_Set_Is_Ordered (714, True);
   Internal_Set_Is_Unique (714, True);
   Internal_Set_Lower (714, (False, 0));
   Internal_Set_Upper (714, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (715, False);
   Internal_Set_Is_Ordered (715, False);
   Internal_Set_Is_Query (715, True);
   Internal_Set_Is_Unique (715, True);
   Internal_Set_Lower (715, (False, 1));
   Internal_Set_Name
    (715,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (715, (False, (False, 1)));

   Internal_Set_Body
    (716,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have unrelated types or (b) they have related types but different names.")));

   Internal_Set_Name
    (717,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (719, Return_Direction);
   Internal_Set_Is_Ordered (719, False);
   Internal_Set_Is_Unique (719, True);
   Internal_Set_Lower (719, (False, 1));
   Internal_Set_Upper (719, (False, (False, 1)));

   Internal_Set_Direction (720, In_Direction);
   Internal_Set_Is_Ordered (720, False);
   Internal_Set_Is_Unique (720, True);
   Internal_Set_Lower (720, (False, 1));
   Internal_Set_Name
    (720,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (720, (False, (False, 1)));

   Internal_Set_Direction (721, In_Direction);
   Internal_Set_Is_Ordered (721, False);
   Internal_Set_Is_Unique (721, True);
   Internal_Set_Lower (721, (False, 1));
   Internal_Set_Name
    (721,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (721, (False, (False, 1)));

   Internal_Set_Is_Leaf (722, False);
   Internal_Set_Is_Ordered (722, False);
   Internal_Set_Is_Query (722, True);
   Internal_Set_Is_Unique (722, True);
   Internal_Set_Lower (722, (False, 1));
   Internal_Set_Name
    (722,
     (False, League.Strings.To_Universal_String ("separator")));
   Internal_Set_Upper (722, (False, (False, 1)));

   Internal_Set_Body
    (723,
     (False, League.Strings.To_Universal_String ("The query separator() gives the string that is used to separate names when constructing a qualified name.")));

   Internal_Set_Name
    (724,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (726, Return_Direction);
   Internal_Set_Is_Ordered (726, False);
   Internal_Set_Is_Unique (726, True);
   Internal_Set_Lower (726, (False, 1));
   Internal_Set_Upper (726, (False, (False, 1)));

   Internal_Set_Is_Leaf (727, False);
   Internal_Set_Is_Ordered (727, False);
   Internal_Set_Is_Query (727, True);
   Internal_Set_Is_Unique (727, True);
   Internal_Set_Lower (727, (False, 1));
   Internal_Set_Name
    (727,
     (False, League.Strings.To_Universal_String ("qualifiedName")));
   Internal_Set_Upper (727, (False, (False, 1)));

   Internal_Set_Body
    (728,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));

   Internal_Set_Name
    (729,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (731, Return_Direction);
   Internal_Set_Is_Ordered (731, False);
   Internal_Set_Is_Unique (731, True);
   Internal_Set_Lower (731, (False, 1));
   Internal_Set_Upper (731, (False, (False, 1)));

   Internal_Set_Is_Abstract (13, False);
   Internal_Set_Is_Final_Specialization (13, False);
   Internal_Set_Name
    (13,
     (False, League.Strings.To_Universal_String ("Expression")));

   Internal_Set_Body
    (732,
     (False, League.Strings.To_Universal_String ("An expression is a structured tree of symbols that denotes a (possibly empty) set of values when evaluated in a context.")));

   Internal_Set_Is_Composite (56, True);
   Internal_Set_Is_Derived (56, False);
   Internal_Set_Is_Derived_Union (56, False);
   Internal_Set_Is_Leaf (56, False);
   Internal_Set_Is_Ordered (56, True);
   Internal_Set_Is_Read_Only (56, False);
   Internal_Set_Is_Unique (56, True);
   Internal_Set_Lower (56, (False, 0));
   Internal_Set_Name
    (56,
     (False, League.Strings.To_Universal_String ("operand")));
   Internal_Set_Upper (56, (False, (Unlimited => True)));

   Internal_Set_Body
    (733,
     (False, League.Strings.To_Universal_String ("Specifies a sequence of operands.")));

   Internal_Set_Is_Abstract (5, False);
   Internal_Set_Is_Final_Specialization (5, False);
   Internal_Set_Name
    (5,
     (False, League.Strings.To_Universal_String ("Comment")));

   Internal_Set_Body
    (734,
     (False, League.Strings.To_Universal_String ("A comment is a textual annotation that can be attached to a set of elements.")));

   Internal_Set_Is_Composite (82, False);
   Internal_Set_Is_Derived (82, False);
   Internal_Set_Is_Derived_Union (82, False);
   Internal_Set_Is_Leaf (82, False);
   Internal_Set_Is_Ordered (82, False);
   Internal_Set_Is_Read_Only (82, False);
   Internal_Set_Is_Unique (82, True);
   Internal_Set_Lower (82, (False, 0));
   Internal_Set_Name
    (82,
     (False, League.Strings.To_Universal_String ("body")));
   Internal_Set_Upper (82, (False, (False, 1)));

   Internal_Set_Body
    (735,
     (False, League.Strings.To_Universal_String ("Specifies a string that is the comment.")));

   Internal_Set_Is_Composite (47, False);
   Internal_Set_Is_Derived (47, False);
   Internal_Set_Is_Derived_Union (47, False);
   Internal_Set_Is_Leaf (47, False);
   Internal_Set_Is_Ordered (47, False);
   Internal_Set_Is_Read_Only (47, False);
   Internal_Set_Is_Unique (47, True);
   Internal_Set_Lower (47, (False, 0));
   Internal_Set_Name
    (47,
     (False, League.Strings.To_Universal_String ("annotatedElement")));
   Internal_Set_Upper (47, (False, (Unlimited => True)));

   Internal_Set_Body
    (736,
     (False, League.Strings.To_Universal_String ("References the Element(s) being commented.")));

   Internal_Set_Is_Final_Specialization (737, False);
   Internal_Set_Name
    (737,
     (False, League.Strings.To_Universal_String ("ParameterDirectionKind")));

   Internal_Set_Body
    (738,
     (False, League.Strings.To_Universal_String ("Parameter direction kind is an enumeration type that defines literals used to specify direction of parameters.")));

   Internal_Set_Name
    (739,
     (False, League.Strings.To_Universal_String ("in")));

   Internal_Set_Body
    (740,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into the behavioral element by the caller.")));

   Internal_Set_Name
    (741,
     (False, League.Strings.To_Universal_String ("inout")));

   Internal_Set_Body
    (742,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into a behavioral element by the caller and then back out to the caller from the behavioral element.")));

   Internal_Set_Name
    (743,
     (False, League.Strings.To_Universal_String ("out")));

   Internal_Set_Body
    (744,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed from a behavioral element out to the caller.")));

   Internal_Set_Name
    (745,
     (False, League.Strings.To_Universal_String ("return")));

   Internal_Set_Body
    (746,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed as return values from a behavioral element back to the caller.")));

   Internal_Set_Is_Final_Specialization (747, False);
   Internal_Set_Name
    (747,
     (False, League.Strings.To_Universal_String ("VisibilityKind")));

   Internal_Set_Body
    (748,
     (False, League.Strings.To_Universal_String ("VisibilityKind is an enumeration type that defines literals to determine the visibility of elements in a model.")));

   Internal_Set_Is_Leaf (749, False);
   Internal_Set_Is_Ordered (749, False);
   Internal_Set_Is_Query (749, True);
   Internal_Set_Is_Unique (749, True);
   Internal_Set_Lower (749, (False, 1));
   Internal_Set_Name
    (749,
     (False, League.Strings.To_Universal_String ("bestVisibility")));
   Internal_Set_Upper (749, (False, (False, 1)));

   Internal_Set_Body
    (750,
     (False, League.Strings.To_Universal_String ("The query bestVisibility() examines a set of VisibilityKinds, and returns public as the preferred visibility.")));

   Internal_Set_Name
    (751,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (753, Return_Direction);
   Internal_Set_Is_Ordered (753, False);
   Internal_Set_Is_Unique (753, True);
   Internal_Set_Lower (753, (False, 1));
   Internal_Set_Upper (753, (False, (False, 1)));

   Internal_Set_Direction (754, In_Direction);
   Internal_Set_Is_Ordered (754, False);
   Internal_Set_Is_Unique (754, True);
   Internal_Set_Lower (754, (False, 0));
   Internal_Set_Name
    (754,
     (False, League.Strings.To_Universal_String ("vis")));
   Internal_Set_Upper (754, (False, (Unlimited => True)));

   Internal_Set_Name
    (755,
     (False, League.Strings.To_Universal_String ("public")));

   Internal_Set_Body
    (756,
     (False, League.Strings.To_Universal_String ("A public element is visible to all elements that can access the contents of the namespace that owns it.")));

   Internal_Set_Name
    (757,
     (False, League.Strings.To_Universal_String ("private")));

   Internal_Set_Body
    (758,
     (False, League.Strings.To_Universal_String ("A private element is only visible inside the namespace that owns it.")));

   Internal_Set_Name
    (759,
     (False, League.Strings.To_Universal_String ("protected")));

   Internal_Set_Body
    (760,
     (False, League.Strings.To_Universal_String ("A protected element is visible to elements that have a generalization relationship to the namespace that owns it.")));

   Internal_Set_Name
    (761,
     (False, League.Strings.To_Universal_String ("package")));

   Internal_Set_Body
    (762,
     (False, League.Strings.To_Universal_String ("A package element is owned by a namespace that is not a package, and is visible to elements that are in the same package as its owning namespace. Only named elements that are not owned by packages can be marked as having package visibility.  Any element marked as having package visibility is visible to all elements within the nearest enclosing package (given that other owning elements have proper visibility).  Outside the nearest enclosing package, an element marked as having package visibility is not visible.")));

   Internal_Set_Is_Derived (153, False);
   Internal_Set_Is_Final_Specialization (153, False);
   Internal_Set_Name
    (153,
     (False, League.Strings.To_Universal_String ("A_type_typedElement")));

   Internal_Set_Is_Composite (763, False);
   Internal_Set_Is_Derived (763, False);
   Internal_Set_Is_Derived_Union (763, False);
   Internal_Set_Is_Leaf (763, False);
   Internal_Set_Is_Ordered (763, False);
   Internal_Set_Is_Read_Only (763, False);
   Internal_Set_Is_Unique (763, True);
   Internal_Set_Lower (763, (False, 0));
   Internal_Set_Name
    (763,
     (False, League.Strings.To_Universal_String ("typedElement")));
   Internal_Set_Upper (763, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (155, False);
   Internal_Set_Is_Final_Specialization (155, False);
   Internal_Set_Name
    (155,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_class")));

   Internal_Set_Is_Derived (156, False);
   Internal_Set_Is_Final_Specialization (156, False);
   Internal_Set_Name
    (156,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_class")));

   Internal_Set_Is_Derived (158, False);
   Internal_Set_Is_Final_Specialization (158, False);
   Internal_Set_Name
    (158,
     (False, League.Strings.To_Universal_String ("A_ownedEnd_owningAssociation")));

   Internal_Set_Is_Derived (159, False);
   Internal_Set_Is_Final_Specialization (159, False);
   Internal_Set_Name
    (159,
     (False, League.Strings.To_Universal_String ("A_attribute_classifier")));

   Internal_Set_Is_Composite (764, False);
   Internal_Set_Is_Derived (764, False);
   Internal_Set_Is_Derived_Union (764, False);
   Internal_Set_Is_Leaf (764, False);
   Internal_Set_Is_Ordered (764, False);
   Internal_Set_Is_Read_Only (764, False);
   Internal_Set_Is_Unique (764, True);
   Internal_Set_Lower (764, (False, 0));
   Internal_Set_Name
    (764,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (764, (False, (False, 1)));

   Internal_Set_Is_Derived (162, False);
   Internal_Set_Is_Final_Specialization (162, False);
   Internal_Set_Name
    (162,
     (False, League.Strings.To_Universal_String ("A_redefinedProperty_property")));

   Internal_Set_Is_Composite (765, False);
   Internal_Set_Is_Derived (765, False);
   Internal_Set_Is_Derived_Union (765, False);
   Internal_Set_Is_Leaf (765, False);
   Internal_Set_Is_Ordered (765, False);
   Internal_Set_Is_Read_Only (765, False);
   Internal_Set_Is_Unique (765, True);
   Internal_Set_Lower (765, (False, 0));
   Internal_Set_Name
    (765,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (765, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (164, False);
   Internal_Set_Is_Final_Specialization (164, False);
   Internal_Set_Name
    (164,
     (False, League.Strings.To_Universal_String ("A_subsettedProperty_property")));

   Internal_Set_Is_Composite (766, False);
   Internal_Set_Is_Derived (766, False);
   Internal_Set_Is_Derived_Union (766, False);
   Internal_Set_Is_Leaf (766, False);
   Internal_Set_Is_Ordered (766, False);
   Internal_Set_Is_Read_Only (766, False);
   Internal_Set_Is_Unique (766, True);
   Internal_Set_Lower (766, (False, 0));
   Internal_Set_Name
    (766,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (766, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (166, False);
   Internal_Set_Is_Final_Specialization (166, False);
   Internal_Set_Name
    (166,
     (False, League.Strings.To_Universal_String ("A_opposite_property")));

   Internal_Set_Is_Composite (767, False);
   Internal_Set_Is_Derived (767, False);
   Internal_Set_Is_Derived_Union (767, False);
   Internal_Set_Is_Leaf (767, False);
   Internal_Set_Is_Ordered (767, False);
   Internal_Set_Is_Read_Only (767, False);
   Internal_Set_Is_Unique (767, True);
   Internal_Set_Lower (767, (False, 0));
   Internal_Set_Name
    (767,
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (767, (False, (False, 1)));

   Internal_Set_Is_Derived (168, False);
   Internal_Set_Is_Final_Specialization (168, False);
   Internal_Set_Name
    (168,
     (False, League.Strings.To_Universal_String ("A_superClass_class")));

   Internal_Set_Is_Composite (768, False);
   Internal_Set_Is_Derived (768, False);
   Internal_Set_Is_Derived_Union (768, False);
   Internal_Set_Is_Leaf (768, False);
   Internal_Set_Is_Ordered (768, False);
   Internal_Set_Is_Read_Only (768, False);
   Internal_Set_Is_Unique (768, True);
   Internal_Set_Lower (768, (False, 0));
   Internal_Set_Name
    (768,
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (768, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (170, False);
   Internal_Set_Is_Final_Specialization (170, False);
   Internal_Set_Name
    (170,
     (False, League.Strings.To_Universal_String ("A_endType_association")));

   Internal_Set_Is_Composite (769, False);
   Internal_Set_Is_Derived (769, False);
   Internal_Set_Is_Derived_Union (769, False);
   Internal_Set_Is_Leaf (769, False);
   Internal_Set_Is_Ordered (769, False);
   Internal_Set_Is_Read_Only (769, False);
   Internal_Set_Is_Unique (769, True);
   Internal_Set_Lower (769, (False, 0));
   Internal_Set_Name
    (769,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (769, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (172, False);
   Internal_Set_Is_Final_Specialization (172, False);
   Internal_Set_Name
    (172,
     (False, League.Strings.To_Universal_String ("A_ownedLiteral_enumeration")));

   Internal_Set_Is_Derived (174, False);
   Internal_Set_Is_Final_Specialization (174, False);
   Internal_Set_Name
    (174,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_datatype")));

   Internal_Set_Is_Derived (175, False);
   Internal_Set_Is_Final_Specialization (175, False);
   Internal_Set_Name
    (175,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_datatype")));

   Internal_Set_Is_Derived (177, False);
   Internal_Set_Is_Final_Specialization (177, False);
   Internal_Set_Name
    (177,
     (False, League.Strings.To_Universal_String ("A_raisedException_operation")));

   Internal_Set_Is_Composite (770, False);
   Internal_Set_Is_Derived (770, False);
   Internal_Set_Is_Derived_Union (770, False);
   Internal_Set_Is_Leaf (770, False);
   Internal_Set_Is_Ordered (770, False);
   Internal_Set_Is_Read_Only (770, False);
   Internal_Set_Is_Unique (770, True);
   Internal_Set_Lower (770, (False, 0));
   Internal_Set_Name
    (770,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (770, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (179, False);
   Internal_Set_Is_Final_Specialization (179, False);
   Internal_Set_Name
    (179,
     (False, League.Strings.To_Universal_String ("A_redefinedOperation_operation")));

   Internal_Set_Is_Composite (771, False);
   Internal_Set_Is_Derived (771, False);
   Internal_Set_Is_Derived_Union (771, False);
   Internal_Set_Is_Leaf (771, False);
   Internal_Set_Is_Ordered (771, False);
   Internal_Set_Is_Read_Only (771, False);
   Internal_Set_Is_Unique (771, True);
   Internal_Set_Lower (771, (False, 0));
   Internal_Set_Name
    (771,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (771, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (181, False);
   Internal_Set_Is_Final_Specialization (181, False);
   Internal_Set_Name
    (181,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_ownerFormalParam")));

   Internal_Set_Is_Composite (772, False);
   Internal_Set_Is_Derived (772, False);
   Internal_Set_Is_Derived_Union (772, False);
   Internal_Set_Is_Leaf (772, False);
   Internal_Set_Is_Ordered (772, False);
   Internal_Set_Is_Read_Only (772, False);
   Internal_Set_Is_Unique (772, True);
   Internal_Set_Lower (772, (False, 0));
   Internal_Set_Name
    (772,
     (False, League.Strings.To_Universal_String ("ownerFormalParam")));
   Internal_Set_Upper (772, (False, (False, 1)));

   Internal_Set_Is_Derived (183, False);
   Internal_Set_Is_Final_Specialization (183, False);
   Internal_Set_Name
    (183,
     (False, League.Strings.To_Universal_String ("A_raisedException_behavioralFeature")));

   Internal_Set_Is_Composite (773, False);
   Internal_Set_Is_Derived (773, False);
   Internal_Set_Is_Derived_Union (773, False);
   Internal_Set_Is_Leaf (773, False);
   Internal_Set_Is_Ordered (773, False);
   Internal_Set_Is_Read_Only (773, False);
   Internal_Set_Is_Unique (773, True);
   Internal_Set_Lower (773, (False, 0));
   Internal_Set_Name
    (773,
     (False, League.Strings.To_Universal_String ("behavioralFeature")));
   Internal_Set_Upper (773, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (185, False);
   Internal_Set_Is_Final_Specialization (185, False);
   Internal_Set_Name
    (185,
     (False, League.Strings.To_Universal_String ("A_importedMember_namespace")));

   Internal_Set_Is_Composite (774, False);
   Internal_Set_Is_Derived (774, False);
   Internal_Set_Is_Derived_Union (774, False);
   Internal_Set_Is_Leaf (774, False);
   Internal_Set_Is_Ordered (774, False);
   Internal_Set_Is_Read_Only (774, False);
   Internal_Set_Is_Unique (774, True);
   Internal_Set_Lower (774, (False, 0));
   Internal_Set_Name
    (774,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (774, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (187, False);
   Internal_Set_Is_Final_Specialization (187, False);
   Internal_Set_Name
    (187,
     (False, League.Strings.To_Universal_String ("A_importedPackage_packageImport")));

   Internal_Set_Is_Composite (775, False);
   Internal_Set_Is_Derived (775, False);
   Internal_Set_Is_Derived_Union (775, False);
   Internal_Set_Is_Leaf (775, False);
   Internal_Set_Is_Ordered (775, False);
   Internal_Set_Is_Read_Only (775, False);
   Internal_Set_Is_Unique (775, True);
   Internal_Set_Lower (775, (False, 0));
   Internal_Set_Name
    (775,
     (False, League.Strings.To_Universal_String ("packageImport")));
   Internal_Set_Upper (775, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (136, False);
   Internal_Set_Is_Final_Specialization (136, False);
   Internal_Set_Name
    (136,
     (False, League.Strings.To_Universal_String ("A_importedElement_elementImport")));

   Internal_Set_Is_Composite (776, False);
   Internal_Set_Is_Derived (776, False);
   Internal_Set_Is_Derived_Union (776, False);
   Internal_Set_Is_Leaf (776, False);
   Internal_Set_Is_Ordered (776, False);
   Internal_Set_Is_Read_Only (776, False);
   Internal_Set_Is_Unique (776, True);
   Internal_Set_Lower (776, (False, 0));
   Internal_Set_Name
    (776,
     (False, League.Strings.To_Universal_String ("elementImport")));
   Internal_Set_Upper (776, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (137, False);
   Internal_Set_Is_Final_Specialization (137, False);
   Internal_Set_Name
    (137,
     (False, League.Strings.To_Universal_String ("A_elementImport_importingNamespace")));

   Internal_Set_Is_Derived (138, False);
   Internal_Set_Is_Final_Specialization (138, False);
   Internal_Set_Name
    (138,
     (False, League.Strings.To_Universal_String ("A_packageImport_importingNamespace")));

   Internal_Set_Is_Derived (139, False);
   Internal_Set_Is_Final_Specialization (139, False);
   Internal_Set_Name
    (139,
     (False, League.Strings.To_Universal_String ("A_packagedElement_owningPackage")));

   Internal_Set_Is_Composite (777, False);
   Internal_Set_Is_Derived (777, False);
   Internal_Set_Is_Derived_Union (777, False);
   Internal_Set_Is_Leaf (777, False);
   Internal_Set_Is_Ordered (777, False);
   Internal_Set_Is_Read_Only (777, False);
   Internal_Set_Is_Unique (777, True);
   Internal_Set_Lower (777, (False, 0));
   Internal_Set_Name
    (777,
     (False, League.Strings.To_Universal_String ("owningPackage")));
   Internal_Set_Upper (777, (False, (False, 1)));

   Internal_Set_Is_Derived (141, False);
   Internal_Set_Is_Final_Specialization (141, False);
   Internal_Set_Name
    (141,
     (False, League.Strings.To_Universal_String ("A_ownedType_package")));

   Internal_Set_Is_Derived (143, False);
   Internal_Set_Is_Final_Specialization (143, False);
   Internal_Set_Name
    (143,
     (False, League.Strings.To_Universal_String ("A_memberEnd_association")));

   Internal_Set_Is_Derived (144, False);
   Internal_Set_Is_Final_Specialization (144, False);
   Internal_Set_Name
    (144,
     (False, League.Strings.To_Universal_String ("A_nestedPackage_nestingPackage")));

   Internal_Set_Is_Derived (145, False);
   Internal_Set_Is_Final_Specialization (145, False);
   Internal_Set_Name
    (145,
     (False, League.Strings.To_Universal_String ("A_type_operation")));

   Internal_Set_Is_Composite (778, False);
   Internal_Set_Is_Derived (778, False);
   Internal_Set_Is_Derived_Union (778, False);
   Internal_Set_Is_Leaf (778, False);
   Internal_Set_Is_Ordered (778, False);
   Internal_Set_Is_Read_Only (778, False);
   Internal_Set_Is_Unique (778, True);
   Internal_Set_Lower (778, (False, 0));
   Internal_Set_Name
    (778,
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (778, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (146, False);
   Internal_Set_Is_Final_Specialization (146, False);
   Internal_Set_Name
    (146,
     (False, League.Strings.To_Universal_String ("A_packageMerge_receivingPackage")));

   Internal_Set_Is_Derived (147, False);
   Internal_Set_Is_Final_Specialization (147, False);
   Internal_Set_Name
    (147,
     (False, League.Strings.To_Universal_String ("A_mergedPackage_packageMerge")));

   Internal_Set_Is_Composite (779, False);
   Internal_Set_Is_Derived (779, False);
   Internal_Set_Is_Derived_Union (779, False);
   Internal_Set_Is_Leaf (779, False);
   Internal_Set_Is_Ordered (779, False);
   Internal_Set_Is_Read_Only (779, False);
   Internal_Set_Is_Unique (779, True);
   Internal_Set_Lower (779, (False, 0));
   Internal_Set_Name
    (779,
     (False, League.Strings.To_Universal_String ("packageMerge")));
   Internal_Set_Upper (779, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (148, False);
   Internal_Set_Is_Final_Specialization (148, False);
   Internal_Set_Name
    (148,
     (False, League.Strings.To_Universal_String ("A_ownedElement_owner")));

   Internal_Set_Is_Derived (149, False);
   Internal_Set_Is_Final_Specialization (149, False);
   Internal_Set_Name
    (149,
     (False, League.Strings.To_Universal_String ("A_annotatedElement_comment")));

   Internal_Set_Is_Composite (780, False);
   Internal_Set_Is_Derived (780, False);
   Internal_Set_Is_Derived_Union (780, False);
   Internal_Set_Is_Leaf (780, False);
   Internal_Set_Is_Ordered (780, False);
   Internal_Set_Is_Read_Only (780, False);
   Internal_Set_Is_Unique (780, True);
   Internal_Set_Lower (780, (False, 0));
   Internal_Set_Name
    (780,
     (False, League.Strings.To_Universal_String ("comment")));
   Internal_Set_Upper (780, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (150, False);
   Internal_Set_Is_Final_Specialization (150, False);
   Internal_Set_Name
    (150,
     (False, League.Strings.To_Universal_String ("A_relatedElement_relationship")));

   Internal_Set_Is_Composite (781, False);
   Internal_Set_Is_Derived (781, False);
   Internal_Set_Is_Derived_Union (781, False);
   Internal_Set_Is_Leaf (781, False);
   Internal_Set_Is_Ordered (781, False);
   Internal_Set_Is_Read_Only (781, False);
   Internal_Set_Is_Unique (781, True);
   Internal_Set_Lower (781, (False, 0));
   Internal_Set_Name
    (781,
     (False, League.Strings.To_Universal_String ("relationship")));
   Internal_Set_Upper (781, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (151, False);
   Internal_Set_Is_Final_Specialization (151, False);
   Internal_Set_Name
    (151,
     (False, League.Strings.To_Universal_String ("A_source_directedRelationship")));

   Internal_Set_Is_Composite (782, False);
   Internal_Set_Is_Derived (782, False);
   Internal_Set_Is_Derived_Union (782, False);
   Internal_Set_Is_Leaf (782, False);
   Internal_Set_Is_Ordered (782, False);
   Internal_Set_Is_Read_Only (782, False);
   Internal_Set_Is_Unique (782, True);
   Internal_Set_Lower (782, (False, 0));
   Internal_Set_Name
    (782,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (782, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (152, False);
   Internal_Set_Is_Final_Specialization (152, False);
   Internal_Set_Name
    (152,
     (False, League.Strings.To_Universal_String ("A_target_directedRelationship")));

   Internal_Set_Is_Composite (783, False);
   Internal_Set_Is_Derived (783, False);
   Internal_Set_Is_Derived_Union (783, False);
   Internal_Set_Is_Leaf (783, False);
   Internal_Set_Is_Ordered (783, False);
   Internal_Set_Is_Read_Only (783, False);
   Internal_Set_Is_Unique (783, True);
   Internal_Set_Lower (783, (False, 0));
   Internal_Set_Name
    (783,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (783, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (154, False);
   Internal_Set_Is_Final_Specialization (154, False);
   Internal_Set_Name
    (154,
     (False, League.Strings.To_Universal_String ("A_redefinitionContext_redefinableElement")));

   Internal_Set_Is_Composite (784, False);
   Internal_Set_Is_Derived (784, False);
   Internal_Set_Is_Derived_Union (784, False);
   Internal_Set_Is_Leaf (784, False);
   Internal_Set_Is_Ordered (784, False);
   Internal_Set_Is_Read_Only (784, False);
   Internal_Set_Is_Unique (784, True);
   Internal_Set_Lower (784, (False, 0));
   Internal_Set_Name
    (784,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (784, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (157, False);
   Internal_Set_Is_Final_Specialization (157, False);
   Internal_Set_Name
    (157,
     (False, League.Strings.To_Universal_String ("A_redefinedElement_redefinableElement")));

   Internal_Set_Is_Composite (785, False);
   Internal_Set_Is_Derived (785, False);
   Internal_Set_Is_Derived_Union (785, False);
   Internal_Set_Is_Leaf (785, False);
   Internal_Set_Is_Ordered (785, False);
   Internal_Set_Is_Read_Only (785, False);
   Internal_Set_Is_Unique (785, True);
   Internal_Set_Lower (785, (False, 0));
   Internal_Set_Name
    (785,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (785, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (160, False);
   Internal_Set_Is_Final_Specialization (160, False);
   Internal_Set_Name
    (160,
     (False, League.Strings.To_Universal_String ("A_feature_featuringClassifier")));

   Internal_Set_Is_Derived (161, False);
   Internal_Set_Is_Final_Specialization (161, False);
   Internal_Set_Name
    (161,
     (False, League.Strings.To_Universal_String ("A_constrainedElement_constraint")));

   Internal_Set_Is_Composite (786, False);
   Internal_Set_Is_Derived (786, False);
   Internal_Set_Is_Derived_Union (786, False);
   Internal_Set_Is_Leaf (786, False);
   Internal_Set_Is_Ordered (786, False);
   Internal_Set_Is_Read_Only (786, False);
   Internal_Set_Is_Unique (786, True);
   Internal_Set_Lower (786, (False, 0));
   Internal_Set_Name
    (786,
     (False, League.Strings.To_Universal_String ("constraint")));
   Internal_Set_Upper (786, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (163, False);
   Internal_Set_Is_Final_Specialization (163, False);
   Internal_Set_Name
    (163,
     (False, League.Strings.To_Universal_String ("A_specification_owningConstraint")));

   Internal_Set_Is_Composite (787, False);
   Internal_Set_Is_Derived (787, False);
   Internal_Set_Is_Derived_Union (787, False);
   Internal_Set_Is_Leaf (787, False);
   Internal_Set_Is_Ordered (787, False);
   Internal_Set_Is_Read_Only (787, False);
   Internal_Set_Is_Unique (787, True);
   Internal_Set_Lower (787, (False, 0));
   Internal_Set_Name
    (787,
     (False, League.Strings.To_Universal_String ("owningConstraint")));
   Internal_Set_Upper (787, (False, (False, 1)));

   Internal_Set_Is_Derived (165, False);
   Internal_Set_Is_Final_Specialization (165, False);
   Internal_Set_Name
    (165,
     (False, League.Strings.To_Universal_String ("A_general_classifier")));

   Internal_Set_Is_Composite (788, False);
   Internal_Set_Is_Derived (788, False);
   Internal_Set_Is_Derived_Union (788, False);
   Internal_Set_Is_Leaf (788, False);
   Internal_Set_Is_Ordered (788, False);
   Internal_Set_Is_Read_Only (788, False);
   Internal_Set_Is_Unique (788, True);
   Internal_Set_Lower (788, (False, 0));
   Internal_Set_Name
    (788,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (788, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (167, False);
   Internal_Set_Is_Final_Specialization (167, False);
   Internal_Set_Name
    (167,
     (False, League.Strings.To_Universal_String ("A_ownedMember_namespace")));

   Internal_Set_Is_Derived (169, False);
   Internal_Set_Is_Final_Specialization (169, False);
   Internal_Set_Name
    (169,
     (False, League.Strings.To_Universal_String ("A_member_namespace")));

   Internal_Set_Is_Composite (789, False);
   Internal_Set_Is_Derived (789, False);
   Internal_Set_Is_Derived_Union (789, False);
   Internal_Set_Is_Leaf (789, False);
   Internal_Set_Is_Ordered (789, False);
   Internal_Set_Is_Read_Only (789, False);
   Internal_Set_Is_Unique (789, True);
   Internal_Set_Lower (789, (False, 0));
   Internal_Set_Name
    (789,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (789, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (171, False);
   Internal_Set_Is_Final_Specialization (171, False);
   Internal_Set_Name
    (171,
     (False, League.Strings.To_Universal_String ("A_operand_expression")));

   Internal_Set_Is_Composite (790, False);
   Internal_Set_Is_Derived (790, False);
   Internal_Set_Is_Derived_Union (790, False);
   Internal_Set_Is_Leaf (790, False);
   Internal_Set_Is_Ordered (790, False);
   Internal_Set_Is_Read_Only (790, False);
   Internal_Set_Is_Unique (790, True);
   Internal_Set_Lower (790, (False, 0));
   Internal_Set_Name
    (790,
     (False, League.Strings.To_Universal_String ("expression")));
   Internal_Set_Upper (790, (False, (False, 1)));

   Internal_Set_Is_Derived (173, False);
   Internal_Set_Is_Final_Specialization (173, False);
   Internal_Set_Name
    (173,
     (False, League.Strings.To_Universal_String ("A_navigableOwnedEnd_association")));

   Internal_Set_Is_Composite (791, False);
   Internal_Set_Is_Derived (791, False);
   Internal_Set_Is_Derived_Union (791, False);
   Internal_Set_Is_Leaf (791, False);
   Internal_Set_Is_Ordered (791, False);
   Internal_Set_Is_Read_Only (791, False);
   Internal_Set_Is_Unique (791, True);
   Internal_Set_Lower (791, (False, 0));
   Internal_Set_Name
    (791,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (791, (False, (False, 1)));

   Internal_Set_Is_Derived (176, False);
   Internal_Set_Is_Final_Specialization (176, False);
   Internal_Set_Name
    (176,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_operation")));

   Internal_Set_Is_Derived (178, False);
   Internal_Set_Is_Final_Specialization (178, False);
   Internal_Set_Name
    (178,
     (False, League.Strings.To_Universal_String ("A_ownedComment_owningElement")));

   Internal_Set_Is_Composite (792, False);
   Internal_Set_Is_Derived (792, False);
   Internal_Set_Is_Derived_Union (792, False);
   Internal_Set_Is_Leaf (792, False);
   Internal_Set_Is_Ordered (792, False);
   Internal_Set_Is_Read_Only (792, False);
   Internal_Set_Is_Unique (792, True);
   Internal_Set_Lower (792, (False, 0));
   Internal_Set_Name
    (792,
     (False, League.Strings.To_Universal_String ("owningElement")));
   Internal_Set_Upper (792, (False, (False, 1)));

   Internal_Set_Is_Derived (180, False);
   Internal_Set_Is_Final_Specialization (180, False);
   Internal_Set_Name
    (180,
     (False, League.Strings.To_Universal_String ("A_inheritedMember_classifier")));

   Internal_Set_Is_Composite (793, False);
   Internal_Set_Is_Derived (793, False);
   Internal_Set_Is_Derived_Union (793, False);
   Internal_Set_Is_Leaf (793, False);
   Internal_Set_Is_Ordered (793, False);
   Internal_Set_Is_Read_Only (793, False);
   Internal_Set_Is_Unique (793, True);
   Internal_Set_Lower (793, (False, 0));
   Internal_Set_Name
    (793,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (793, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (182, False);
   Internal_Set_Is_Final_Specialization (182, False);
   Internal_Set_Name
    (182,
     (False, League.Strings.To_Universal_String ("A_precondition_preContext")));

   Internal_Set_Is_Composite (794, False);
   Internal_Set_Is_Derived (794, False);
   Internal_Set_Is_Derived_Union (794, False);
   Internal_Set_Is_Leaf (794, False);
   Internal_Set_Is_Ordered (794, False);
   Internal_Set_Is_Read_Only (794, False);
   Internal_Set_Is_Unique (794, True);
   Internal_Set_Lower (794, (False, 0));
   Internal_Set_Name
    (794,
     (False, League.Strings.To_Universal_String ("preContext")));
   Internal_Set_Upper (794, (False, (False, 1)));

   Internal_Set_Is_Derived (184, False);
   Internal_Set_Is_Final_Specialization (184, False);
   Internal_Set_Name
    (184,
     (False, League.Strings.To_Universal_String ("A_postcondition_postContext")));

   Internal_Set_Is_Composite (795, False);
   Internal_Set_Is_Derived (795, False);
   Internal_Set_Is_Derived_Union (795, False);
   Internal_Set_Is_Leaf (795, False);
   Internal_Set_Is_Ordered (795, False);
   Internal_Set_Is_Read_Only (795, False);
   Internal_Set_Is_Unique (795, True);
   Internal_Set_Lower (795, (False, 0));
   Internal_Set_Name
    (795,
     (False, League.Strings.To_Universal_String ("postContext")));
   Internal_Set_Upper (795, (False, (False, 1)));

   Internal_Set_Is_Derived (186, False);
   Internal_Set_Is_Final_Specialization (186, False);
   Internal_Set_Name
    (186,
     (False, League.Strings.To_Universal_String ("A_bodyCondition_bodyContext")));

   Internal_Set_Is_Composite (796, False);
   Internal_Set_Is_Derived (796, False);
   Internal_Set_Is_Derived_Union (796, False);
   Internal_Set_Is_Leaf (796, False);
   Internal_Set_Is_Ordered (796, False);
   Internal_Set_Is_Read_Only (796, False);
   Internal_Set_Is_Unique (796, True);
   Internal_Set_Lower (796, (False, 0));
   Internal_Set_Name
    (796,
     (False, League.Strings.To_Universal_String ("bodyContext")));
   Internal_Set_Upper (796, (False, (False, 1)));

   Internal_Set_Is_Derived (188, False);
   Internal_Set_Is_Final_Specialization (188, False);
   Internal_Set_Name
    (188,
     (False, League.Strings.To_Universal_String ("A_ownedRule_context")));

   Internal_Set_Is_Abstract (30, False);
   Internal_Set_Is_Final_Specialization (30, False);
   Internal_Set_Name
    (30,
     (False, League.Strings.To_Universal_String ("Tag")));

   Internal_Set_Is_Composite (131, False);
   Internal_Set_Is_Derived (131, False);
   Internal_Set_Is_Derived_Union (131, False);
   Internal_Set_Is_Leaf (131, False);
   Internal_Set_Is_Ordered (131, False);
   Internal_Set_Is_Read_Only (131, False);
   Internal_Set_Is_Unique (131, True);
   Internal_Set_Lower (131, (False, 1));
   Internal_Set_Name
    (131,
     (False, League.Strings.To_Universal_String ("name")));
   Internal_Set_Upper (131, (False, (False, 1)));

   Internal_Set_Is_Composite (133, False);
   Internal_Set_Is_Derived (133, False);
   Internal_Set_Is_Derived_Union (133, False);
   Internal_Set_Is_Leaf (133, False);
   Internal_Set_Is_Ordered (133, False);
   Internal_Set_Is_Read_Only (133, False);
   Internal_Set_Is_Unique (133, True);
   Internal_Set_Lower (133, (False, 1));
   Internal_Set_Name
    (133,
     (False, League.Strings.To_Universal_String ("value")));
   Internal_Set_Upper (133, (False, (False, 1)));

   Internal_Set_Is_Composite (78, False);
   Internal_Set_Is_Derived (78, False);
   Internal_Set_Is_Derived_Union (78, False);
   Internal_Set_Is_Leaf (78, False);
   Internal_Set_Is_Ordered (78, False);
   Internal_Set_Is_Read_Only (78, False);
   Internal_Set_Is_Unique (78, True);
   Internal_Set_Lower (78, (False, 0));
   Internal_Set_Name
    (78,
     (False, League.Strings.To_Universal_String ("element")));
   Internal_Set_Upper (78, (False, (Unlimited => True)));

   Internal_Set_Is_Composite (132, False);
   Internal_Set_Is_Derived (132, False);
   Internal_Set_Is_Derived_Union (132, False);
   Internal_Set_Is_Leaf (132, False);
   Internal_Set_Is_Ordered (132, False);
   Internal_Set_Is_Read_Only (132, False);
   Internal_Set_Is_Unique (132, True);
   Internal_Set_Lower (132, (False, 0));
   Internal_Set_Name
    (132,
     (False, League.Strings.To_Universal_String ("tagOwner")));
   Internal_Set_Upper (132, (False, (False, 1)));

   Internal_Set_Is_Derived (140, False);
   Internal_Set_Is_Final_Specialization (140, False);
   Internal_Set_Name
    (140,
     (False, League.Strings.To_Universal_String ("A_element_tag")));

   Internal_Set_Is_Composite (797, False);
   Internal_Set_Is_Derived (797, False);
   Internal_Set_Is_Derived_Union (797, False);
   Internal_Set_Is_Leaf (797, False);
   Internal_Set_Is_Ordered (797, False);
   Internal_Set_Is_Read_Only (797, False);
   Internal_Set_Is_Unique (797, True);
   Internal_Set_Lower (797, (False, 1));
   Internal_Set_Name
    (797,
     (False, League.Strings.To_Universal_String ("tag")));
   Internal_Set_Upper (797, (False, (False, 1)));

   Internal_Set_Is_Derived (142, False);
   Internal_Set_Is_Final_Specialization (142, False);
   Internal_Set_Name
    (142,
     (False, League.Strings.To_Universal_String ("A_ownedTag_tagOwner")));

   Internal_Set_Is_Composite (798, True);
   Internal_Set_Is_Derived (798, False);
   Internal_Set_Is_Derived_Union (798, False);
   Internal_Set_Is_Leaf (798, False);
   Internal_Set_Is_Ordered (798, False);
   Internal_Set_Is_Read_Only (798, False);
   Internal_Set_Is_Unique (798, True);
   Internal_Set_Lower (798, (False, 0));
   Internal_Set_Name
    (798,
     (False, League.Strings.To_Universal_String ("ownedTag")));
   Internal_Set_Upper (798, (False, (Unlimited => True)));

   Internal_Set_Name
    (799,
     (League.Strings.To_Universal_String ("org.omg.xmi.nsPrefix")));
   Internal_Set_Value
    (799,
     (League.Strings.To_Universal_String ("cmof")));

   Internal_Set_Name
    (800,
     (League.Strings.To_Universal_String ("org.omg.xmi.nsURI")));
   Internal_Set_Value
    (800,
     (League.Strings.To_Universal_String ("http://schema.omg.org/spec/MOF/2.0/cmof.xml")));

   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     190,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     192,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     194,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     196,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     4,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     8,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     9,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     14,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     15,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     17,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     23,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     27,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     28,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     29,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     32,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     33,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     1,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     3,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     26,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     7,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     11,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     12,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     25,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     6,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     18,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     19,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     24,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     2,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     10,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     20,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     21,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     22,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     31,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     16,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     13,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     5,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     737,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     747,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     153,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     155,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     156,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     158,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     159,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     162,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     164,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     166,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     168,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     170,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     172,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     174,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     175,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     177,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     179,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     181,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     183,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     185,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     187,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     136,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     137,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     138,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     139,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     141,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     143,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     144,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     145,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     146,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     147,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     148,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     149,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     150,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     151,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     152,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     154,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     157,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     160,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     161,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     163,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     165,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     167,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     169,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     171,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     173,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     176,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     178,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     180,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     182,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     184,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     186,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     188,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     30,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     140,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     189,
     MP_CMOF_Package_Packaged_Element,
     142,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     190,
     MP_CMOF_Element_Owned_Comment,
     191,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     191,
     MP_CMOF_Comment_Annotated_Element,
     190,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     192,
     MP_CMOF_Element_Owned_Comment,
     193,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     193,
     MP_CMOF_Comment_Annotated_Element,
     192,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     194,
     MP_CMOF_Element_Owned_Comment,
     195,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     195,
     MP_CMOF_Comment_Annotated_Element,
     194,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     196,
     MP_CMOF_Element_Owned_Comment,
     197,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     197,
     MP_CMOF_Comment_Annotated_Element,
     196,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     4,
     MP_CMOF_Class_Owned_Attribute,
     43,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     4,
     MP_CMOF_Class_Owned_Attribute,
     44,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     4,
     MP_CMOF_Class_Owned_Attribute,
     45,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     4,
     MP_CMOF_Class_Owned_Attribute,
     46,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     4,
     MP_CMOF_Class_Owned_Attribute,
     81,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     4,
     MP_CMOF_Element_Owned_Comment,
     198,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     210,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     216,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     221,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     226,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     231,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     236,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     241,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     249,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     257,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     263,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     4,
     MP_CMOF_Namespace_Owned_Rule,
     199,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     4,
     MP_CMOF_Namespace_Owned_Rule,
     202,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     4,
     MP_CMOF_Class_Super_Class,
     17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     4,
     MP_CMOF_Class_Super_Class,
     31,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     198,
     MP_CMOF_Comment_Annotated_Element,
     4,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     199,
     MP_CMOF_Constraint_Constrained_Element,
     4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     199,
     MP_CMOF_Element_Owned_Comment,
     200,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     199,
     MP_CMOF_Constraint_Specification,
     201,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     200,
     MP_CMOF_Comment_Annotated_Element,
     199,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     202,
     MP_CMOF_Constraint_Constrained_Element,
     4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     202,
     MP_CMOF_Element_Owned_Comment,
     203,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     202,
     MP_CMOF_Constraint_Specification,
     204,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     203,
     MP_CMOF_Comment_Annotated_Element,
     202,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     43,
     MP_CMOF_Element_Owned_Comment,
     205,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     43,
     MP_CMOF_Property_Subsetted_Property,
     44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     43,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     205,
     MP_CMOF_Comment_Annotated_Element,
     43,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     44,
     MP_CMOF_Element_Owned_Comment,
     206,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     44,
     MP_CMOF_Property_Subsetted_Property,
     60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     44,
     MP_CMOF_Typed_Element_Type,
     14,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     206,
     MP_CMOF_Comment_Annotated_Element,
     44,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     45,
     MP_CMOF_Element_Owned_Comment,
     207,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     45,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     207,
     MP_CMOF_Comment_Annotated_Element,
     45,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     46,
     MP_CMOF_Element_Owned_Comment,
     208,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     46,
     MP_CMOF_Property_Subsetted_Property,
     60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     46,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     208,
     MP_CMOF_Comment_Annotated_Element,
     46,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     81,
     MP_CMOF_Element_Owned_Comment,
     209,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     81,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     209,
     MP_CMOF_Comment_Annotated_Element,
     81,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     210,
     MP_CMOF_Operation_Body_Condition,
     212,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     210,
     MP_CMOF_Element_Owned_Comment,
     211,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     210,
     MP_CMOF_Operation_Owned_Parameter,
     214,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     210,
     MP_CMOF_Operation_Owned_Parameter,
     215,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     210,
     MP_CMOF_Namespace_Owned_Rule,
     212,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     210,
     MP_CMOF_Operation_Redefined_Operation,
     690,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     211,
     MP_CMOF_Comment_Annotated_Element,
     210,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     212,
     MP_CMOF_Constraint_Constrained_Element,
     210,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     212,
     MP_CMOF_Constraint_Specification,
     213,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     214,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     215,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     216,
     MP_CMOF_Operation_Body_Condition,
     218,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     216,
     MP_CMOF_Element_Owned_Comment,
     217,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     216,
     MP_CMOF_Operation_Owned_Parameter,
     220,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     216,
     MP_CMOF_Namespace_Owned_Rule,
     218,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     217,
     MP_CMOF_Comment_Annotated_Element,
     216,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     218,
     MP_CMOF_Constraint_Constrained_Element,
     216,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     218,
     MP_CMOF_Constraint_Specification,
     219,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     220,
     MP_CMOF_Typed_Element_Type,
     14,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     221,
     MP_CMOF_Operation_Body_Condition,
     223,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     221,
     MP_CMOF_Element_Owned_Comment,
     222,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     221,
     MP_CMOF_Operation_Owned_Parameter,
     225,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     221,
     MP_CMOF_Namespace_Owned_Rule,
     223,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     222,
     MP_CMOF_Comment_Annotated_Element,
     221,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     223,
     MP_CMOF_Constraint_Constrained_Element,
     221,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     223,
     MP_CMOF_Constraint_Constrained_Element,
     45,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     223,
     MP_CMOF_Constraint_Specification,
     224,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     225,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     226,
     MP_CMOF_Operation_Body_Condition,
     228,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     226,
     MP_CMOF_Element_Owned_Comment,
     227,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     226,
     MP_CMOF_Operation_Owned_Parameter,
     230,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     226,
     MP_CMOF_Namespace_Owned_Rule,
     228,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     227,
     MP_CMOF_Comment_Annotated_Element,
     226,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     228,
     MP_CMOF_Constraint_Constrained_Element,
     226,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     228,
     MP_CMOF_Constraint_Specification,
     229,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     230,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     231,
     MP_CMOF_Operation_Body_Condition,
     233,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     231,
     MP_CMOF_Element_Owned_Comment,
     232,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     231,
     MP_CMOF_Operation_Owned_Parameter,
     235,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     231,
     MP_CMOF_Namespace_Owned_Rule,
     233,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     232,
     MP_CMOF_Comment_Annotated_Element,
     231,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     233,
     MP_CMOF_Constraint_Constrained_Element,
     231,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     233,
     MP_CMOF_Constraint_Constrained_Element,
     46,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     233,
     MP_CMOF_Constraint_Specification,
     234,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     235,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     236,
     MP_CMOF_Operation_Body_Condition,
     238,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     236,
     MP_CMOF_Element_Owned_Comment,
     237,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     236,
     MP_CMOF_Operation_Owned_Parameter,
     240,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     236,
     MP_CMOF_Namespace_Owned_Rule,
     238,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     237,
     MP_CMOF_Comment_Annotated_Element,
     236,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     238,
     MP_CMOF_Constraint_Constrained_Element,
     236,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     238,
     MP_CMOF_Constraint_Specification,
     239,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     240,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     241,
     MP_CMOF_Operation_Body_Condition,
     245,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     241,
     MP_CMOF_Element_Owned_Comment,
     242,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     241,
     MP_CMOF_Operation_Owned_Parameter,
     247,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     241,
     MP_CMOF_Operation_Owned_Parameter,
     248,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     241,
     MP_CMOF_Namespace_Owned_Rule,
     243,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     241,
     MP_CMOF_Namespace_Owned_Rule,
     245,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     241,
     MP_CMOF_Operation_Precondition,
     243,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     242,
     MP_CMOF_Comment_Annotated_Element,
     241,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     243,
     MP_CMOF_Constraint_Constrained_Element,
     241,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     243,
     MP_CMOF_Constraint_Specification,
     244,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     245,
     MP_CMOF_Constraint_Constrained_Element,
     241,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     245,
     MP_CMOF_Constraint_Specification,
     246,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     247,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     248,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     249,
     MP_CMOF_Operation_Body_Condition,
     253,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     249,
     MP_CMOF_Element_Owned_Comment,
     250,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     249,
     MP_CMOF_Operation_Owned_Parameter,
     255,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     249,
     MP_CMOF_Operation_Owned_Parameter,
     256,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     249,
     MP_CMOF_Namespace_Owned_Rule,
     251,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     249,
     MP_CMOF_Namespace_Owned_Rule,
     253,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     249,
     MP_CMOF_Operation_Precondition,
     251,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     250,
     MP_CMOF_Comment_Annotated_Element,
     249,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     251,
     MP_CMOF_Constraint_Constrained_Element,
     249,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     251,
     MP_CMOF_Constraint_Specification,
     252,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     253,
     MP_CMOF_Constraint_Constrained_Element,
     249,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     253,
     MP_CMOF_Constraint_Specification,
     254,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     255,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     256,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     257,
     MP_CMOF_Operation_Body_Condition,
     259,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     257,
     MP_CMOF_Element_Owned_Comment,
     258,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     257,
     MP_CMOF_Operation_Owned_Parameter,
     261,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     257,
     MP_CMOF_Operation_Owned_Parameter,
     262,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     257,
     MP_CMOF_Namespace_Owned_Rule,
     259,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     258,
     MP_CMOF_Comment_Annotated_Element,
     257,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     259,
     MP_CMOF_Constraint_Constrained_Element,
     257,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     259,
     MP_CMOF_Constraint_Specification,
     260,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     261,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     262,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     263,
     MP_CMOF_Operation_Body_Condition,
     265,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     263,
     MP_CMOF_Element_Owned_Comment,
     264,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     263,
     MP_CMOF_Operation_Owned_Parameter,
     267,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     263,
     MP_CMOF_Operation_Owned_Parameter,
     268,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     263,
     MP_CMOF_Namespace_Owned_Rule,
     265,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     264,
     MP_CMOF_Comment_Annotated_Element,
     263,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     265,
     MP_CMOF_Constraint_Constrained_Element,
     263,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     265,
     MP_CMOF_Constraint_Specification,
     266,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     267,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     268,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     8,
     MP_CMOF_Class_Owned_Attribute,
     51,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     8,
     MP_CMOF_Class_Owned_Attribute,
     52,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     8,
     MP_CMOF_Element_Owned_Comment,
     269,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     8,
     MP_CMOF_Class_Super_Class,
     28,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     269,
     MP_CMOF_Comment_Annotated_Element,
     8,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     51,
     MP_CMOF_Element_Owned_Comment,
     270,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     51,
     MP_CMOF_Property_Subsetted_Property,
     77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     51,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     270,
     MP_CMOF_Comment_Annotated_Element,
     51,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     52,
     MP_CMOF_Element_Owned_Comment,
     271,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     52,
     MP_CMOF_Property_Subsetted_Property,
     77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     52,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     271,
     MP_CMOF_Comment_Annotated_Element,
     52,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     9,
     MP_CMOF_Class_Owned_Attribute,
     54,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     9,
     MP_CMOF_Class_Owned_Attribute,
     85,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     9,
     MP_CMOF_Class_Owned_Attribute,
     53,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     9,
     MP_CMOF_Element_Owned_Comment,
     272,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     9,
     MP_CMOF_Class_Owned_Operation,
     282,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     9,
     MP_CMOF_Class_Owned_Operation,
     287,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     9,
     MP_CMOF_Namespace_Owned_Rule,
     273,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     9,
     MP_CMOF_Namespace_Owned_Rule,
     276,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     272,
     MP_CMOF_Comment_Annotated_Element,
     9,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     273,
     MP_CMOF_Constraint_Constrained_Element,
     9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     273,
     MP_CMOF_Element_Owned_Comment,
     274,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     273,
     MP_CMOF_Constraint_Specification,
     275,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     274,
     MP_CMOF_Comment_Annotated_Element,
     273,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     276,
     MP_CMOF_Constraint_Constrained_Element,
     9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     276,
     MP_CMOF_Element_Owned_Comment,
     277,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     276,
     MP_CMOF_Constraint_Specification,
     278,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     277,
     MP_CMOF_Comment_Annotated_Element,
     276,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     54,
     MP_CMOF_Element_Owned_Comment,
     279,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     54,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     279,
     MP_CMOF_Comment_Annotated_Element,
     54,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     85,
     MP_CMOF_Element_Owned_Comment,
     280,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     85,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     280,
     MP_CMOF_Comment_Annotated_Element,
     85,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     53,
     MP_CMOF_Element_Owned_Comment,
     281,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     53,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     53,
     MP_CMOF_Typed_Element_Type,
     5,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     281,
     MP_CMOF_Comment_Annotated_Element,
     53,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     282,
     MP_CMOF_Operation_Body_Condition,
     284,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     282,
     MP_CMOF_Element_Owned_Comment,
     283,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     282,
     MP_CMOF_Operation_Owned_Parameter,
     286,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     282,
     MP_CMOF_Namespace_Owned_Rule,
     284,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     283,
     MP_CMOF_Comment_Annotated_Element,
     282,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     284,
     MP_CMOF_Constraint_Constrained_Element,
     282,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     284,
     MP_CMOF_Constraint_Specification,
     285,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     286,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     287,
     MP_CMOF_Operation_Body_Condition,
     289,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     287,
     MP_CMOF_Element_Owned_Comment,
     288,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     287,
     MP_CMOF_Operation_Owned_Parameter,
     291,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     287,
     MP_CMOF_Namespace_Owned_Rule,
     289,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     288,
     MP_CMOF_Comment_Annotated_Element,
     287,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     289,
     MP_CMOF_Constraint_Constrained_Element,
     287,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     289,
     MP_CMOF_Constraint_Specification,
     290,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     291,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     14,
     MP_CMOF_Class_Owned_Attribute,
     57,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     14,
     MP_CMOF_Element_Owned_Comment,
     292,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     14,
     MP_CMOF_Class_Super_Class,
     27,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     292,
     MP_CMOF_Comment_Annotated_Element,
     14,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     57,
     MP_CMOF_Element_Owned_Comment,
     293,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     57,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     293,
     MP_CMOF_Comment_Annotated_Element,
     57,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     15,
     MP_CMOF_Class_Owned_Attribute,
     91,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     15,
     MP_CMOF_Class_Owned_Attribute,
     92,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     15,
     MP_CMOF_Class_Owned_Attribute,
     93,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     15,
     MP_CMOF_Class_Owned_Attribute,
     94,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     15,
     MP_CMOF_Element_Owned_Comment,
     294,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     305,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     312,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     320,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     328,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     333,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     15,
     MP_CMOF_Namespace_Owned_Rule,
     295,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     15,
     MP_CMOF_Namespace_Owned_Rule,
     298,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     15,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     294,
     MP_CMOF_Comment_Annotated_Element,
     15,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     295,
     MP_CMOF_Constraint_Constrained_Element,
     15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     295,
     MP_CMOF_Element_Owned_Comment,
     296,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     295,
     MP_CMOF_Constraint_Specification,
     297,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     296,
     MP_CMOF_Comment_Annotated_Element,
     295,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     298,
     MP_CMOF_Constraint_Constrained_Element,
     15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     298,
     MP_CMOF_Element_Owned_Comment,
     299,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     298,
     MP_CMOF_Constraint_Specification,
     300,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     299,
     MP_CMOF_Comment_Annotated_Element,
     298,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     91,
     MP_CMOF_Element_Owned_Comment,
     301,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     91,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     301,
     MP_CMOF_Comment_Annotated_Element,
     91,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     92,
     MP_CMOF_Element_Owned_Comment,
     302,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     92,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     302,
     MP_CMOF_Comment_Annotated_Element,
     92,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     93,
     MP_CMOF_Element_Owned_Comment,
     303,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     93,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     303,
     MP_CMOF_Comment_Annotated_Element,
     93,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     94,
     MP_CMOF_Element_Owned_Comment,
     304,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     94,
     MP_CMOF_Typed_Element_Type,
     196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     304,
     MP_CMOF_Comment_Annotated_Element,
     94,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     305,
     MP_CMOF_Operation_Body_Condition,
     309,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     305,
     MP_CMOF_Element_Owned_Comment,
     306,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     305,
     MP_CMOF_Operation_Owned_Parameter,
     311,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     305,
     MP_CMOF_Namespace_Owned_Rule,
     307,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     305,
     MP_CMOF_Namespace_Owned_Rule,
     309,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     305,
     MP_CMOF_Operation_Precondition,
     307,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     306,
     MP_CMOF_Comment_Annotated_Element,
     305,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     307,
     MP_CMOF_Constraint_Constrained_Element,
     305,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     307,
     MP_CMOF_Constraint_Specification,
     308,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     309,
     MP_CMOF_Constraint_Constrained_Element,
     305,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     309,
     MP_CMOF_Constraint_Specification,
     310,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     311,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     312,
     MP_CMOF_Operation_Body_Condition,
     316,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     312,
     MP_CMOF_Element_Owned_Comment,
     313,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     312,
     MP_CMOF_Operation_Owned_Parameter,
     318,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     312,
     MP_CMOF_Operation_Owned_Parameter,
     319,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     312,
     MP_CMOF_Namespace_Owned_Rule,
     314,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     312,
     MP_CMOF_Namespace_Owned_Rule,
     316,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     312,
     MP_CMOF_Operation_Precondition,
     314,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     313,
     MP_CMOF_Comment_Annotated_Element,
     312,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     314,
     MP_CMOF_Constraint_Constrained_Element,
     312,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     314,
     MP_CMOF_Constraint_Specification,
     315,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     316,
     MP_CMOF_Constraint_Constrained_Element,
     312,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     316,
     MP_CMOF_Constraint_Specification,
     317,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     318,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     319,
     MP_CMOF_Typed_Element_Type,
     15,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     320,
     MP_CMOF_Operation_Body_Condition,
     324,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     320,
     MP_CMOF_Element_Owned_Comment,
     321,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     320,
     MP_CMOF_Operation_Owned_Parameter,
     326,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     320,
     MP_CMOF_Operation_Owned_Parameter,
     327,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     320,
     MP_CMOF_Namespace_Owned_Rule,
     322,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     320,
     MP_CMOF_Namespace_Owned_Rule,
     324,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     320,
     MP_CMOF_Operation_Precondition,
     322,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     321,
     MP_CMOF_Comment_Annotated_Element,
     320,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     322,
     MP_CMOF_Constraint_Constrained_Element,
     320,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     322,
     MP_CMOF_Constraint_Specification,
     323,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     324,
     MP_CMOF_Constraint_Constrained_Element,
     320,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     324,
     MP_CMOF_Constraint_Specification,
     325,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     326,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     327,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     328,
     MP_CMOF_Operation_Body_Condition,
     330,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     328,
     MP_CMOF_Element_Owned_Comment,
     329,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     328,
     MP_CMOF_Operation_Owned_Parameter,
     332,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     328,
     MP_CMOF_Namespace_Owned_Rule,
     330,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     329,
     MP_CMOF_Comment_Annotated_Element,
     328,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     330,
     MP_CMOF_Constraint_Constrained_Element,
     328,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     330,
     MP_CMOF_Constraint_Specification,
     331,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     332,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     333,
     MP_CMOF_Operation_Body_Condition,
     335,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     333,
     MP_CMOF_Element_Owned_Comment,
     334,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     333,
     MP_CMOF_Operation_Owned_Parameter,
     337,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     333,
     MP_CMOF_Namespace_Owned_Rule,
     335,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     334,
     MP_CMOF_Comment_Annotated_Element,
     333,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     335,
     MP_CMOF_Constraint_Constrained_Element,
     333,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     335,
     MP_CMOF_Constraint_Specification,
     336,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     337,
     MP_CMOF_Typed_Element_Type,
     196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     59,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     58,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     63,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     61,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     60,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     17,
     MP_CMOF_Class_Owned_Attribute,
     62,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     17,
     MP_CMOF_Element_Owned_Comment,
     338,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     347,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     352,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     358,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     364,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     370,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     17,
     MP_CMOF_Namespace_Owned_Rule,
     339,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     17,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     338,
     MP_CMOF_Comment_Annotated_Element,
     17,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     339,
     MP_CMOF_Constraint_Constrained_Element,
     17,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     339,
     MP_CMOF_Element_Owned_Comment,
     340,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     339,
     MP_CMOF_Constraint_Specification,
     341,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     340,
     MP_CMOF_Comment_Annotated_Element,
     339,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     59,
     MP_CMOF_Element_Owned_Comment,
     342,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     59,
     MP_CMOF_Property_Subsetted_Property,
     60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     59,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     342,
     MP_CMOF_Comment_Annotated_Element,
     59,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     58,
     MP_CMOF_Element_Owned_Comment,
     343,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     58,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     58,
     MP_CMOF_Typed_Element_Type,
     10,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     343,
     MP_CMOF_Comment_Annotated_Element,
     58,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     63,
     MP_CMOF_Element_Owned_Comment,
     344,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     63,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     63,
     MP_CMOF_Typed_Element_Type,
     21,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     344,
     MP_CMOF_Comment_Annotated_Element,
     63,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     61,
     MP_CMOF_Element_Owned_Comment,
     345,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     61,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     61,
     MP_CMOF_Property_Subsetted_Property,
     60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     61,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     345,
     MP_CMOF_Comment_Annotated_Element,
     61,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     60,
     MP_CMOF_Element_Owned_Comment,
     346,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     60,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     346,
     MP_CMOF_Comment_Annotated_Element,
     60,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     62,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     62,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     347,
     MP_CMOF_Operation_Body_Condition,
     349,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     347,
     MP_CMOF_Element_Owned_Comment,
     348,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     347,
     MP_CMOF_Operation_Owned_Parameter,
     351,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     347,
     MP_CMOF_Namespace_Owned_Rule,
     349,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     348,
     MP_CMOF_Comment_Annotated_Element,
     347,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     349,
     MP_CMOF_Constraint_Constrained_Element,
     347,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     349,
     MP_CMOF_Constraint_Constrained_Element,
     59,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     349,
     MP_CMOF_Constraint_Specification,
     350,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     351,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     352,
     MP_CMOF_Operation_Body_Condition,
     354,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     352,
     MP_CMOF_Element_Owned_Comment,
     353,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     352,
     MP_CMOF_Operation_Owned_Parameter,
     356,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     352,
     MP_CMOF_Operation_Owned_Parameter,
     357,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     352,
     MP_CMOF_Namespace_Owned_Rule,
     354,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     353,
     MP_CMOF_Comment_Annotated_Element,
     352,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     354,
     MP_CMOF_Constraint_Constrained_Element,
     352,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     354,
     MP_CMOF_Constraint_Specification,
     355,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     356,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     357,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     358,
     MP_CMOF_Operation_Body_Condition,
     360,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     358,
     MP_CMOF_Element_Owned_Comment,
     359,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     358,
     MP_CMOF_Operation_Owned_Parameter,
     362,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     358,
     MP_CMOF_Operation_Owned_Parameter,
     363,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     358,
     MP_CMOF_Namespace_Owned_Rule,
     360,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     359,
     MP_CMOF_Comment_Annotated_Element,
     358,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     360,
     MP_CMOF_Constraint_Constrained_Element,
     358,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     360,
     MP_CMOF_Constraint_Specification,
     361,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     362,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     363,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     364,
     MP_CMOF_Operation_Body_Condition,
     366,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     364,
     MP_CMOF_Element_Owned_Comment,
     365,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     364,
     MP_CMOF_Operation_Owned_Parameter,
     368,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     364,
     MP_CMOF_Operation_Owned_Parameter,
     369,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     364,
     MP_CMOF_Namespace_Owned_Rule,
     366,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     365,
     MP_CMOF_Comment_Annotated_Element,
     364,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     366,
     MP_CMOF_Constraint_Constrained_Element,
     364,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     366,
     MP_CMOF_Constraint_Specification,
     367,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     368,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     369,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     370,
     MP_CMOF_Operation_Body_Condition,
     372,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     370,
     MP_CMOF_Element_Owned_Comment,
     371,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     370,
     MP_CMOF_Operation_Owned_Parameter,
     374,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     370,
     MP_CMOF_Namespace_Owned_Rule,
     372,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     371,
     MP_CMOF_Comment_Annotated_Element,
     370,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     372,
     MP_CMOF_Constraint_Constrained_Element,
     370,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     372,
     MP_CMOF_Constraint_Specification,
     373,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     374,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     23,
     MP_CMOF_Element_Owned_Comment,
     375,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     23,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     375,
     MP_CMOF_Comment_Annotated_Element,
     23,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     27,
     MP_CMOF_Class_Owned_Attribute,
     76,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     27,
     MP_CMOF_Class_Owned_Attribute,
     75,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     27,
     MP_CMOF_Class_Owned_Attribute,
     130,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     27,
     MP_CMOF_Element_Owned_Comment,
     376,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     27,
     MP_CMOF_Class_Owned_Operation,
     389,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     27,
     MP_CMOF_Class_Owned_Operation,
     397,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     377,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     380,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     383,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     27,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     376,
     MP_CMOF_Comment_Annotated_Element,
     27,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     377,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     377,
     MP_CMOF_Element_Owned_Comment,
     378,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     377,
     MP_CMOF_Constraint_Specification,
     379,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     378,
     MP_CMOF_Comment_Annotated_Element,
     377,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     380,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     380,
     MP_CMOF_Element_Owned_Comment,
     381,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     380,
     MP_CMOF_Constraint_Specification,
     382,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     381,
     MP_CMOF_Comment_Annotated_Element,
     380,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     383,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     383,
     MP_CMOF_Element_Owned_Comment,
     384,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     383,
     MP_CMOF_Constraint_Specification,
     385,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     384,
     MP_CMOF_Comment_Annotated_Element,
     383,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     76,
     MP_CMOF_Element_Owned_Comment,
     386,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     76,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     386,
     MP_CMOF_Comment_Annotated_Element,
     76,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     75,
     MP_CMOF_Element_Owned_Comment,
     387,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     75,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     387,
     MP_CMOF_Comment_Annotated_Element,
     75,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     130,
     MP_CMOF_Element_Owned_Comment,
     388,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     130,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     388,
     MP_CMOF_Comment_Annotated_Element,
     130,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     389,
     MP_CMOF_Operation_Body_Condition,
     391,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     389,
     MP_CMOF_Element_Owned_Comment,
     390,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     389,
     MP_CMOF_Operation_Owned_Parameter,
     395,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     389,
     MP_CMOF_Operation_Owned_Parameter,
     396,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     389,
     MP_CMOF_Namespace_Owned_Rule,
     391,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     389,
     MP_CMOF_Namespace_Owned_Rule,
     393,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     389,
     MP_CMOF_Operation_Precondition,
     393,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     390,
     MP_CMOF_Comment_Annotated_Element,
     389,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     391,
     MP_CMOF_Constraint_Constrained_Element,
     389,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     391,
     MP_CMOF_Constraint_Specification,
     392,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     393,
     MP_CMOF_Constraint_Constrained_Element,
     389,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     393,
     MP_CMOF_Constraint_Specification,
     394,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     395,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     396,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     397,
     MP_CMOF_Operation_Body_Condition,
     399,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     397,
     MP_CMOF_Element_Owned_Comment,
     398,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     397,
     MP_CMOF_Operation_Owned_Parameter,
     401,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     397,
     MP_CMOF_Operation_Owned_Parameter,
     402,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     397,
     MP_CMOF_Namespace_Owned_Rule,
     399,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     398,
     MP_CMOF_Comment_Annotated_Element,
     397,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     399,
     MP_CMOF_Constraint_Constrained_Element,
     397,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     399,
     MP_CMOF_Constraint_Specification,
     400,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     401,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     402,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     28,
     MP_CMOF_Class_Owned_Attribute,
     77,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     28,
     MP_CMOF_Element_Owned_Comment,
     403,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     28,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     403,
     MP_CMOF_Comment_Annotated_Element,
     28,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     77,
     MP_CMOF_Element_Owned_Comment,
     404,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     77,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     404,
     MP_CMOF_Comment_Annotated_Element,
     77,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     29,
     MP_CMOF_Element_Owned_Comment,
     405,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     29,
     MP_CMOF_Class_Super_Class,
     14,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     29,
     MP_CMOF_Class_Super_Class,
     15,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     29,
     MP_CMOF_Class_Super_Class,
     32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     405,
     MP_CMOF_Comment_Annotated_Element,
     29,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     32,
     MP_CMOF_Class_Owned_Attribute,
     135,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     32,
     MP_CMOF_Element_Owned_Comment,
     406,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     32,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     406,
     MP_CMOF_Comment_Annotated_Element,
     32,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     135,
     MP_CMOF_Element_Owned_Comment,
     407,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     135,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     407,
     MP_CMOF_Comment_Annotated_Element,
     135,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     33,
     MP_CMOF_Element_Owned_Comment,
     408,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     409,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     414,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     419,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     424,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     429,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     434,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     33,
     MP_CMOF_Class_Super_Class,
     32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     33,
     MP_CMOF_Class_Super_Class,
     23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     408,
     MP_CMOF_Comment_Annotated_Element,
     33,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     409,
     MP_CMOF_Operation_Body_Condition,
     411,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     409,
     MP_CMOF_Element_Owned_Comment,
     410,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     409,
     MP_CMOF_Operation_Owned_Parameter,
     413,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     409,
     MP_CMOF_Namespace_Owned_Rule,
     411,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     410,
     MP_CMOF_Comment_Annotated_Element,
     409,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     411,
     MP_CMOF_Constraint_Constrained_Element,
     409,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     411,
     MP_CMOF_Constraint_Specification,
     412,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     413,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     414,
     MP_CMOF_Operation_Body_Condition,
     416,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     414,
     MP_CMOF_Element_Owned_Comment,
     415,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     414,
     MP_CMOF_Operation_Owned_Parameter,
     418,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     414,
     MP_CMOF_Namespace_Owned_Rule,
     416,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     415,
     MP_CMOF_Comment_Annotated_Element,
     414,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     416,
     MP_CMOF_Constraint_Constrained_Element,
     414,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     416,
     MP_CMOF_Constraint_Specification,
     417,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     418,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     419,
     MP_CMOF_Operation_Body_Condition,
     421,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     419,
     MP_CMOF_Element_Owned_Comment,
     420,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     419,
     MP_CMOF_Operation_Owned_Parameter,
     423,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     419,
     MP_CMOF_Namespace_Owned_Rule,
     421,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     420,
     MP_CMOF_Comment_Annotated_Element,
     419,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     421,
     MP_CMOF_Constraint_Constrained_Element,
     419,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     421,
     MP_CMOF_Constraint_Specification,
     422,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     423,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     424,
     MP_CMOF_Operation_Body_Condition,
     426,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     424,
     MP_CMOF_Element_Owned_Comment,
     425,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     424,
     MP_CMOF_Operation_Owned_Parameter,
     428,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     424,
     MP_CMOF_Namespace_Owned_Rule,
     426,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     425,
     MP_CMOF_Comment_Annotated_Element,
     424,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     426,
     MP_CMOF_Constraint_Constrained_Element,
     424,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     426,
     MP_CMOF_Constraint_Specification,
     427,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     428,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     429,
     MP_CMOF_Operation_Body_Condition,
     431,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     429,
     MP_CMOF_Element_Owned_Comment,
     430,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     429,
     MP_CMOF_Operation_Owned_Parameter,
     433,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     429,
     MP_CMOF_Namespace_Owned_Rule,
     431,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     430,
     MP_CMOF_Comment_Annotated_Element,
     429,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     431,
     MP_CMOF_Constraint_Constrained_Element,
     429,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     431,
     MP_CMOF_Constraint_Specification,
     432,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     433,
     MP_CMOF_Typed_Element_Type,
     196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     434,
     MP_CMOF_Operation_Body_Condition,
     436,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     434,
     MP_CMOF_Element_Owned_Comment,
     435,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     434,
     MP_CMOF_Operation_Owned_Parameter,
     438,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     434,
     MP_CMOF_Namespace_Owned_Rule,
     436,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     435,
     MP_CMOF_Comment_Annotated_Element,
     434,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     436,
     MP_CMOF_Constraint_Constrained_Element,
     434,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     436,
     MP_CMOF_Constraint_Specification,
     437,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     438,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     1,
     MP_CMOF_Class_Owned_Attribute,
     79,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     1,
     MP_CMOF_Class_Owned_Attribute,
     37,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     1,
     MP_CMOF_Class_Owned_Attribute,
     34,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     1,
     MP_CMOF_Class_Owned_Attribute,
     35,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     1,
     MP_CMOF_Class_Owned_Attribute,
     36,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     1,
     MP_CMOF_Element_Owned_Comment,
     439,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     1,
     MP_CMOF_Class_Owned_Operation,
     457,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     440,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     443,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     446,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     449,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     1,
     MP_CMOF_Class_Super_Class,
     4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     1,
     MP_CMOF_Class_Super_Class,
     28,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     439,
     MP_CMOF_Comment_Annotated_Element,
     1,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     440,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     440,
     MP_CMOF_Element_Owned_Comment,
     441,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     440,
     MP_CMOF_Constraint_Specification,
     442,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     441,
     MP_CMOF_Comment_Annotated_Element,
     440,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     443,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     443,
     MP_CMOF_Element_Owned_Comment,
     444,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     443,
     MP_CMOF_Constraint_Specification,
     445,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     444,
     MP_CMOF_Comment_Annotated_Element,
     443,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     446,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     446,
     MP_CMOF_Element_Owned_Comment,
     447,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     446,
     MP_CMOF_Constraint_Specification,
     448,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     447,
     MP_CMOF_Comment_Annotated_Element,
     446,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     449,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     449,
     MP_CMOF_Element_Owned_Comment,
     450,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     449,
     MP_CMOF_Constraint_Specification,
     451,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     450,
     MP_CMOF_Comment_Annotated_Element,
     449,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     79,
     MP_CMOF_Element_Owned_Comment,
     452,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     79,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     452,
     MP_CMOF_Comment_Annotated_Element,
     79,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     37,
     MP_CMOF_Element_Owned_Comment,
     453,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     37,
     MP_CMOF_Property_Subsetted_Property,
     44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     37,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     37,
     MP_CMOF_Property_Subsetted_Property,
     35,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     37,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     453,
     MP_CMOF_Comment_Annotated_Element,
     37,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     34,
     MP_CMOF_Element_Owned_Comment,
     454,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     34,
     MP_CMOF_Property_Subsetted_Property,
     77,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     34,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     454,
     MP_CMOF_Comment_Annotated_Element,
     34,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     35,
     MP_CMOF_Element_Owned_Comment,
     455,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     35,
     MP_CMOF_Property_Subsetted_Property,
     60,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     35,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     455,
     MP_CMOF_Comment_Annotated_Element,
     35,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     36,
     MP_CMOF_Element_Owned_Comment,
     456,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     36,
     MP_CMOF_Property_Subsetted_Property,
     37,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     36,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     456,
     MP_CMOF_Comment_Annotated_Element,
     36,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     457,
     MP_CMOF_Operation_Body_Condition,
     459,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     457,
     MP_CMOF_Element_Owned_Comment,
     458,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     457,
     MP_CMOF_Operation_Owned_Parameter,
     461,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     457,
     MP_CMOF_Namespace_Owned_Rule,
     459,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     458,
     MP_CMOF_Comment_Annotated_Element,
     457,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     459,
     MP_CMOF_Constraint_Constrained_Element,
     457,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     459,
     MP_CMOF_Constraint_Constrained_Element,
     34,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     459,
     MP_CMOF_Constraint_Specification,
     460,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     461,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     3,
     MP_CMOF_Class_Owned_Attribute,
     80,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     3,
     MP_CMOF_Class_Owned_Attribute,
     40,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     3,
     MP_CMOF_Class_Owned_Attribute,
     41,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     3,
     MP_CMOF_Class_Owned_Attribute,
     42,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     3,
     MP_CMOF_Element_Owned_Comment,
     462,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     3,
     MP_CMOF_Class_Owned_Operation,
     467,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     3,
     MP_CMOF_Class_Super_Class,
     4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     462,
     MP_CMOF_Comment_Annotated_Element,
     3,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     80,
     MP_CMOF_Element_Owned_Comment,
     463,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     80,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     463,
     MP_CMOF_Comment_Annotated_Element,
     80,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     40,
     MP_CMOF_Element_Owned_Comment,
     464,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     40,
     MP_CMOF_Property_Subsetted_Property,
     43,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     40,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     40,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     464,
     MP_CMOF_Comment_Annotated_Element,
     40,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     41,
     MP_CMOF_Element_Owned_Comment,
     465,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     41,
     MP_CMOF_Property_Subsetted_Property,
     44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     41,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     41,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     465,
     MP_CMOF_Comment_Annotated_Element,
     41,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     42,
     MP_CMOF_Element_Owned_Comment,
     466,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     42,
     MP_CMOF_Property_Redefined_Property,
     45,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     42,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     466,
     MP_CMOF_Comment_Annotated_Element,
     42,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     467,
     MP_CMOF_Operation_Body_Condition,
     469,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     467,
     MP_CMOF_Element_Owned_Comment,
     468,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     467,
     MP_CMOF_Operation_Owned_Parameter,
     471,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     467,
     MP_CMOF_Operation_Owned_Parameter,
     472,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     467,
     MP_CMOF_Namespace_Owned_Rule,
     469,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     467,
     MP_CMOF_Operation_Redefined_Operation,
     257,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     468,
     MP_CMOF_Comment_Annotated_Element,
     467,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     469,
     MP_CMOF_Constraint_Constrained_Element,
     467,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     469,
     MP_CMOF_Constraint_Specification,
     470,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     471,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     472,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     127,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     123,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     124,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     125,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     126,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     121,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     129,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     73,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     74,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     128,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     122,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     26,
     MP_CMOF_Class_Owned_Attribute,
     120,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     26,
     MP_CMOF_Element_Owned_Comment,
     473,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     507,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     512,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     520,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     525,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     530,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     474,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     477,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     480,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     483,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     486,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     489,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     492,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     26,
     MP_CMOF_Class_Super_Class,
     29,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     473,
     MP_CMOF_Comment_Annotated_Element,
     26,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     474,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     474,
     MP_CMOF_Element_Owned_Comment,
     475,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     474,
     MP_CMOF_Constraint_Specification,
     476,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     475,
     MP_CMOF_Comment_Annotated_Element,
     474,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     477,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     477,
     MP_CMOF_Element_Owned_Comment,
     478,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     477,
     MP_CMOF_Constraint_Specification,
     479,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     478,
     MP_CMOF_Comment_Annotated_Element,
     477,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     480,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     480,
     MP_CMOF_Element_Owned_Comment,
     481,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     480,
     MP_CMOF_Constraint_Specification,
     482,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     481,
     MP_CMOF_Comment_Annotated_Element,
     480,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     483,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     483,
     MP_CMOF_Element_Owned_Comment,
     484,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     483,
     MP_CMOF_Constraint_Specification,
     485,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     484,
     MP_CMOF_Comment_Annotated_Element,
     483,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     486,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     486,
     MP_CMOF_Element_Owned_Comment,
     487,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     486,
     MP_CMOF_Constraint_Specification,
     488,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     487,
     MP_CMOF_Comment_Annotated_Element,
     486,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     489,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     489,
     MP_CMOF_Element_Owned_Comment,
     490,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     489,
     MP_CMOF_Constraint_Specification,
     491,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     490,
     MP_CMOF_Comment_Annotated_Element,
     489,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     492,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     492,
     MP_CMOF_Element_Owned_Comment,
     493,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     492,
     MP_CMOF_Constraint_Specification,
     494,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     493,
     MP_CMOF_Comment_Annotated_Element,
     492,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     127,
     MP_CMOF_Element_Owned_Comment,
     495,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     127,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     495,
     MP_CMOF_Comment_Annotated_Element,
     127,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     123,
     MP_CMOF_Element_Owned_Comment,
     496,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     123,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     496,
     MP_CMOF_Comment_Annotated_Element,
     123,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     124,
     MP_CMOF_Element_Owned_Comment,
     497,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     124,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     497,
     MP_CMOF_Comment_Annotated_Element,
     124,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     125,
     MP_CMOF_Element_Owned_Comment,
     498,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     125,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     498,
     MP_CMOF_Comment_Annotated_Element,
     125,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     126,
     MP_CMOF_Element_Owned_Comment,
     499,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     126,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     499,
     MP_CMOF_Comment_Annotated_Element,
     126,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     121,
     MP_CMOF_Element_Owned_Comment,
     500,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     121,
     MP_CMOF_Property_Subsetted_Property,
     57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     121,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     121,
     MP_CMOF_Property_Subsetted_Property,
     764,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     121,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     500,
     MP_CMOF_Comment_Annotated_Element,
     121,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     129,
     MP_CMOF_Element_Owned_Comment,
     501,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     129,
     MP_CMOF_Property_Subsetted_Property,
     57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     129,
     MP_CMOF_Property_Subsetted_Property,
     120,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     129,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     129,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     501,
     MP_CMOF_Comment_Annotated_Element,
     129,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     73,
     MP_CMOF_Element_Owned_Comment,
     502,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     73,
     MP_CMOF_Property_Subsetted_Property,
     75,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     73,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     502,
     MP_CMOF_Comment_Annotated_Element,
     73,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     74,
     MP_CMOF_Element_Owned_Comment,
     503,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     74,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     503,
     MP_CMOF_Comment_Annotated_Element,
     74,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     128,
     MP_CMOF_Element_Owned_Comment,
     504,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     128,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     504,
     MP_CMOF_Comment_Annotated_Element,
     128,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     122,
     MP_CMOF_Element_Owned_Comment,
     505,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     122,
     MP_CMOF_Property_Subsetted_Property,
     57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     122,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     122,
     MP_CMOF_Property_Subsetted_Property,
     764,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     122,
     MP_CMOF_Typed_Element_Type,
     7,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     505,
     MP_CMOF_Comment_Annotated_Element,
     122,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     120,
     MP_CMOF_Element_Owned_Comment,
     506,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     120,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     506,
     MP_CMOF_Comment_Annotated_Element,
     120,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     507,
     MP_CMOF_Operation_Body_Condition,
     509,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     507,
     MP_CMOF_Element_Owned_Comment,
     508,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     507,
     MP_CMOF_Operation_Owned_Parameter,
     511,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     507,
     MP_CMOF_Namespace_Owned_Rule,
     509,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     508,
     MP_CMOF_Comment_Annotated_Element,
     507,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     509,
     MP_CMOF_Constraint_Constrained_Element,
     507,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     509,
     MP_CMOF_Constraint_Constrained_Element,
     128,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     509,
     MP_CMOF_Constraint_Specification,
     510,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     511,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     512,
     MP_CMOF_Operation_Body_Condition,
     516,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     512,
     MP_CMOF_Element_Owned_Comment,
     513,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     512,
     MP_CMOF_Operation_Owned_Parameter,
     518,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     512,
     MP_CMOF_Operation_Owned_Parameter,
     519,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     512,
     MP_CMOF_Namespace_Owned_Rule,
     514,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     512,
     MP_CMOF_Namespace_Owned_Rule,
     516,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     512,
     MP_CMOF_Operation_Precondition,
     514,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     512,
     MP_CMOF_Operation_Redefined_Operation,
     389,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     513,
     MP_CMOF_Comment_Annotated_Element,
     512,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     514,
     MP_CMOF_Constraint_Constrained_Element,
     512,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     514,
     MP_CMOF_Constraint_Specification,
     515,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     516,
     MP_CMOF_Constraint_Constrained_Element,
     512,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     516,
     MP_CMOF_Constraint_Specification,
     517,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     518,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     519,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     520,
     MP_CMOF_Operation_Body_Condition,
     522,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     520,
     MP_CMOF_Element_Owned_Comment,
     521,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     520,
     MP_CMOF_Operation_Owned_Parameter,
     524,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     520,
     MP_CMOF_Namespace_Owned_Rule,
     522,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     521,
     MP_CMOF_Comment_Annotated_Element,
     520,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     522,
     MP_CMOF_Constraint_Constrained_Element,
     520,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     522,
     MP_CMOF_Constraint_Specification,
     523,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     524,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     525,
     MP_CMOF_Operation_Body_Condition,
     527,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     525,
     MP_CMOF_Element_Owned_Comment,
     526,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     525,
     MP_CMOF_Operation_Owned_Parameter,
     529,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     525,
     MP_CMOF_Namespace_Owned_Rule,
     527,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     526,
     MP_CMOF_Comment_Annotated_Element,
     525,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     527,
     MP_CMOF_Constraint_Constrained_Element,
     525,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     527,
     MP_CMOF_Constraint_Specification,
     528,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     529,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     530,
     MP_CMOF_Operation_Body_Condition,
     532,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     530,
     MP_CMOF_Element_Owned_Comment,
     531,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     530,
     MP_CMOF_Operation_Owned_Parameter,
     534,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     530,
     MP_CMOF_Operation_Owned_Parameter,
     535,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     530,
     MP_CMOF_Namespace_Owned_Rule,
     532,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     531,
     MP_CMOF_Comment_Annotated_Element,
     530,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     532,
     MP_CMOF_Constraint_Constrained_Element,
     530,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     532,
     MP_CMOF_Constraint_Specification,
     533,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     534,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     535,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     7,
     MP_CMOF_Class_Owned_Attribute,
     49,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     7,
     MP_CMOF_Class_Owned_Attribute,
     50,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     7,
     MP_CMOF_Element_Owned_Comment,
     536,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     7,
     MP_CMOF_Class_Owned_Operation,
     539,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     7,
     MP_CMOF_Class_Super_Class,
     4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     536,
     MP_CMOF_Comment_Annotated_Element,
     7,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     49,
     MP_CMOF_Element_Owned_Comment,
     537,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     49,
     MP_CMOF_Property_Subsetted_Property,
     43,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     49,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     49,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     537,
     MP_CMOF_Comment_Annotated_Element,
     49,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     50,
     MP_CMOF_Element_Owned_Comment,
     538,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     50,
     MP_CMOF_Property_Subsetted_Property,
     44,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     50,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     50,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     538,
     MP_CMOF_Comment_Annotated_Element,
     50,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     539,
     MP_CMOF_Operation_Body_Condition,
     541,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     539,
     MP_CMOF_Element_Owned_Comment,
     540,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     539,
     MP_CMOF_Operation_Owned_Parameter,
     543,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     539,
     MP_CMOF_Operation_Owned_Parameter,
     544,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     539,
     MP_CMOF_Namespace_Owned_Rule,
     541,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     539,
     MP_CMOF_Operation_Redefined_Operation,
     257,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     540,
     MP_CMOF_Comment_Annotated_Element,
     539,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     541,
     MP_CMOF_Constraint_Constrained_Element,
     539,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     541,
     MP_CMOF_Constraint_Specification,
     542,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     543,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     544,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     11,
     MP_CMOF_Class_Owned_Attribute,
     55,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     11,
     MP_CMOF_Element_Owned_Comment,
     545,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     11,
     MP_CMOF_Class_Super_Class,
     7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     545,
     MP_CMOF_Comment_Annotated_Element,
     11,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     55,
     MP_CMOF_Element_Owned_Comment,
     546,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     55,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     55,
     MP_CMOF_Typed_Element_Type,
     12,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     546,
     MP_CMOF_Comment_Annotated_Element,
     55,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     12,
     MP_CMOF_Class_Owned_Attribute,
     90,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     12,
     MP_CMOF_Element_Owned_Comment,
     547,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     12,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     547,
     MP_CMOF_Comment_Annotated_Element,
     12,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     90,
     MP_CMOF_Element_Owned_Comment,
     548,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     90,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     90,
     MP_CMOF_Typed_Element_Type,
     11,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     548,
     MP_CMOF_Comment_Annotated_Element,
     90,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     25,
     MP_CMOF_Element_Owned_Comment,
     549,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     25,
     MP_CMOF_Class_Super_Class,
     7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     549,
     MP_CMOF_Comment_Annotated_Element,
     25,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     6,
     MP_CMOF_Class_Owned_Attribute,
     48,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     6,
     MP_CMOF_Class_Owned_Attribute,
     84,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     6,
     MP_CMOF_Class_Owned_Attribute,
     83,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     6,
     MP_CMOF_Element_Owned_Comment,
     550,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     6,
     MP_CMOF_Namespace_Owned_Rule,
     551,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     6,
     MP_CMOF_Namespace_Owned_Rule,
     554,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     6,
     MP_CMOF_Class_Super_Class,
     23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     550,
     MP_CMOF_Comment_Annotated_Element,
     6,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     551,
     MP_CMOF_Constraint_Constrained_Element,
     6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     551,
     MP_CMOF_Element_Owned_Comment,
     552,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     551,
     MP_CMOF_Constraint_Specification,
     553,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     552,
     MP_CMOF_Comment_Annotated_Element,
     551,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     554,
     MP_CMOF_Constraint_Constrained_Element,
     6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     554,
     MP_CMOF_Element_Owned_Comment,
     555,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     554,
     MP_CMOF_Constraint_Specification,
     556,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     555,
     MP_CMOF_Comment_Annotated_Element,
     554,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     48,
     MP_CMOF_Element_Owned_Comment,
     557,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     48,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     557,
     MP_CMOF_Comment_Annotated_Element,
     48,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     84,
     MP_CMOF_Element_Owned_Comment,
     558,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     84,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     84,
     MP_CMOF_Typed_Element_Type,
     33,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     558,
     MP_CMOF_Comment_Annotated_Element,
     84,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     83,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     83,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     18,
     MP_CMOF_Class_Owned_Attribute,
     99,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     18,
     MP_CMOF_Class_Owned_Attribute,
     100,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     18,
     MP_CMOF_Element_Owned_Comment,
     559,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     18,
     MP_CMOF_Namespace_Owned_Rule,
     560,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     18,
     MP_CMOF_Class_Super_Class,
     33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     559,
     MP_CMOF_Comment_Annotated_Element,
     18,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     560,
     MP_CMOF_Constraint_Constrained_Element,
     18,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     560,
     MP_CMOF_Element_Owned_Comment,
     561,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     560,
     MP_CMOF_Constraint_Specification,
     562,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     561,
     MP_CMOF_Comment_Annotated_Element,
     560,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     99,
     MP_CMOF_Element_Owned_Comment,
     563,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     99,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     563,
     MP_CMOF_Comment_Annotated_Element,
     99,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     100,
     MP_CMOF_Element_Owned_Comment,
     564,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     100,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     564,
     MP_CMOF_Comment_Annotated_Element,
     100,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     105,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     104,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     106,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     107,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     109,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     102,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     103,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     67,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     68,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     108,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     64,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     66,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     65,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     19,
     MP_CMOF_Class_Owned_Attribute,
     101,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     19,
     MP_CMOF_Element_Owned_Comment,
     565,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     583,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     588,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     593,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     598,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     603,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     608,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     616,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     19,
     MP_CMOF_Namespace_Owned_Rule,
     566,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     19,
     MP_CMOF_Namespace_Owned_Rule,
     569,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     19,
     MP_CMOF_Class_Super_Class,
     2,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     565,
     MP_CMOF_Comment_Annotated_Element,
     19,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     566,
     MP_CMOF_Constraint_Constrained_Element,
     19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     566,
     MP_CMOF_Element_Owned_Comment,
     567,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     566,
     MP_CMOF_Constraint_Specification,
     568,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     567,
     MP_CMOF_Comment_Annotated_Element,
     566,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     569,
     MP_CMOF_Constraint_Constrained_Element,
     19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     569,
     MP_CMOF_Element_Owned_Comment,
     570,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     569,
     MP_CMOF_Constraint_Specification,
     571,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     570,
     MP_CMOF_Comment_Annotated_Element,
     569,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     105,
     MP_CMOF_Element_Owned_Comment,
     572,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     105,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     572,
     MP_CMOF_Comment_Annotated_Element,
     105,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     104,
     MP_CMOF_Element_Owned_Comment,
     573,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     104,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     573,
     MP_CMOF_Comment_Annotated_Element,
     104,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     106,
     MP_CMOF_Element_Owned_Comment,
     574,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     106,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     574,
     MP_CMOF_Comment_Annotated_Element,
     106,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     107,
     MP_CMOF_Element_Owned_Comment,
     575,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     107,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     575,
     MP_CMOF_Comment_Annotated_Element,
     107,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     109,
     MP_CMOF_Element_Owned_Comment,
     576,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     109,
     MP_CMOF_Typed_Element_Type,
     196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     576,
     MP_CMOF_Comment_Annotated_Element,
     109,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     102,
     MP_CMOF_Element_Owned_Comment,
     577,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     102,
     MP_CMOF_Property_Subsetted_Property,
     76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     102,
     MP_CMOF_Property_Subsetted_Property,
     57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     102,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     102,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     577,
     MP_CMOF_Comment_Annotated_Element,
     102,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     103,
     MP_CMOF_Element_Owned_Comment,
     578,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     103,
     MP_CMOF_Property_Subsetted_Property,
     76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     103,
     MP_CMOF_Property_Subsetted_Property,
     57,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     103,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     103,
     MP_CMOF_Typed_Element_Type,
     7,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     578,
     MP_CMOF_Comment_Annotated_Element,
     103,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     67,
     MP_CMOF_Element_Owned_Comment,
     579,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     67,
     MP_CMOF_Property_Redefined_Property,
     39,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     67,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     579,
     MP_CMOF_Comment_Annotated_Element,
     67,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     68,
     MP_CMOF_Element_Owned_Comment,
     580,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     68,
     MP_CMOF_Property_Subsetted_Property,
     75,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     68,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     580,
     MP_CMOF_Comment_Annotated_Element,
     68,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     108,
     MP_CMOF_Element_Owned_Comment,
     581,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     108,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     581,
     MP_CMOF_Comment_Annotated_Element,
     108,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     64,
     MP_CMOF_Element_Owned_Comment,
     582,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Redefined_Property_Property,
     64,
     MP_CMOF_Property_Redefined_Property,
     38,
     MP_CMOF_Redefined_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     64,
     MP_CMOF_Typed_Element_Type,
     24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     582,
     MP_CMOF_Comment_Annotated_Element,
     64,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     66,
     MP_CMOF_Property_Subsetted_Property,
     62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     66,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     65,
     MP_CMOF_Property_Subsetted_Property,
     62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     65,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     101,
     MP_CMOF_Property_Subsetted_Property,
     62,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     101,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     583,
     MP_CMOF_Operation_Body_Condition,
     585,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     583,
     MP_CMOF_Element_Owned_Comment,
     584,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     583,
     MP_CMOF_Operation_Owned_Parameter,
     587,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     583,
     MP_CMOF_Namespace_Owned_Rule,
     585,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     584,
     MP_CMOF_Comment_Annotated_Element,
     583,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     585,
     MP_CMOF_Constraint_Constrained_Element,
     583,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     585,
     MP_CMOF_Constraint_Constrained_Element,
     104,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     585,
     MP_CMOF_Constraint_Specification,
     586,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     587,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     588,
     MP_CMOF_Operation_Body_Condition,
     590,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     588,
     MP_CMOF_Element_Owned_Comment,
     589,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     588,
     MP_CMOF_Operation_Owned_Parameter,
     592,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     588,
     MP_CMOF_Namespace_Owned_Rule,
     590,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     589,
     MP_CMOF_Comment_Annotated_Element,
     588,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     590,
     MP_CMOF_Constraint_Constrained_Element,
     588,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     590,
     MP_CMOF_Constraint_Constrained_Element,
     106,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     590,
     MP_CMOF_Constraint_Specification,
     591,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     592,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     593,
     MP_CMOF_Operation_Body_Condition,
     595,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     593,
     MP_CMOF_Element_Owned_Comment,
     594,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     593,
     MP_CMOF_Operation_Owned_Parameter,
     597,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     593,
     MP_CMOF_Namespace_Owned_Rule,
     595,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     594,
     MP_CMOF_Comment_Annotated_Element,
     593,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     595,
     MP_CMOF_Constraint_Constrained_Element,
     593,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     595,
     MP_CMOF_Constraint_Constrained_Element,
     107,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     595,
     MP_CMOF_Constraint_Specification,
     596,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     597,
     MP_CMOF_Typed_Element_Type,
     190,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     598,
     MP_CMOF_Operation_Body_Condition,
     600,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     598,
     MP_CMOF_Element_Owned_Comment,
     599,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     598,
     MP_CMOF_Operation_Owned_Parameter,
     602,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     598,
     MP_CMOF_Namespace_Owned_Rule,
     600,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     599,
     MP_CMOF_Comment_Annotated_Element,
     598,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     600,
     MP_CMOF_Constraint_Constrained_Element,
     598,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     600,
     MP_CMOF_Constraint_Constrained_Element,
     109,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     600,
     MP_CMOF_Constraint_Specification,
     601,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     602,
     MP_CMOF_Typed_Element_Type,
     196,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     603,
     MP_CMOF_Operation_Body_Condition,
     605,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     603,
     MP_CMOF_Element_Owned_Comment,
     604,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     603,
     MP_CMOF_Operation_Owned_Parameter,
     607,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     603,
     MP_CMOF_Namespace_Owned_Rule,
     605,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     604,
     MP_CMOF_Comment_Annotated_Element,
     603,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     605,
     MP_CMOF_Constraint_Constrained_Element,
     603,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     605,
     MP_CMOF_Constraint_Constrained_Element,
     108,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     605,
     MP_CMOF_Constraint_Specification,
     606,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     607,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     608,
     MP_CMOF_Operation_Body_Condition,
     612,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     608,
     MP_CMOF_Element_Owned_Comment,
     609,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     608,
     MP_CMOF_Operation_Owned_Parameter,
     614,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     608,
     MP_CMOF_Operation_Owned_Parameter,
     615,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     608,
     MP_CMOF_Namespace_Owned_Rule,
     610,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     608,
     MP_CMOF_Namespace_Owned_Rule,
     612,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     608,
     MP_CMOF_Operation_Precondition,
     610,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     608,
     MP_CMOF_Operation_Redefined_Operation,
     389,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     609,
     MP_CMOF_Comment_Annotated_Element,
     608,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     610,
     MP_CMOF_Constraint_Constrained_Element,
     608,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     610,
     MP_CMOF_Constraint_Specification,
     611,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     612,
     MP_CMOF_Constraint_Constrained_Element,
     608,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     612,
     MP_CMOF_Constraint_Specification,
     613,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     614,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     615,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     616,
     MP_CMOF_Operation_Body_Condition,
     617,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     616,
     MP_CMOF_Operation_Owned_Parameter,
     619,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     616,
     MP_CMOF_Namespace_Owned_Rule,
     617,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     617,
     MP_CMOF_Constraint_Constrained_Element,
     616,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     617,
     MP_CMOF_Constraint_Specification,
     618,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     619,
     MP_CMOF_Typed_Element_Type,
     24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     24,
     MP_CMOF_Class_Owned_Attribute,
     117,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     24,
     MP_CMOF_Class_Owned_Attribute,
     118,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     24,
     MP_CMOF_Class_Owned_Attribute,
     119,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     24,
     MP_CMOF_Element_Owned_Comment,
     620,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     24,
     MP_CMOF_Class_Super_Class,
     32,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     24,
     MP_CMOF_Class_Super_Class,
     15,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     620,
     MP_CMOF_Comment_Annotated_Element,
     24,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     117,
     MP_CMOF_Element_Owned_Comment,
     621,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     117,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     621,
     MP_CMOF_Comment_Annotated_Element,
     117,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     118,
     MP_CMOF_Element_Owned_Comment,
     622,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     118,
     MP_CMOF_Typed_Element_Type,
     737,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     622,
     MP_CMOF_Comment_Annotated_Element,
     118,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     119,
     MP_CMOF_Element_Owned_Comment,
     623,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     119,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     119,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     623,
     MP_CMOF_Comment_Annotated_Element,
     119,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     2,
     MP_CMOF_Class_Owned_Attribute,
     38,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     2,
     MP_CMOF_Class_Owned_Attribute,
     39,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     2,
     MP_CMOF_Element_Owned_Comment,
     624,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     2,
     MP_CMOF_Class_Owned_Operation,
     627,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     2,
     MP_CMOF_Class_Super_Class,
     14,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     2,
     MP_CMOF_Class_Super_Class,
     17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     624,
     MP_CMOF_Comment_Annotated_Element,
     2,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     38,
     MP_CMOF_Element_Owned_Comment,
     625,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     38,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     38,
     MP_CMOF_Typed_Element_Type,
     24,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     625,
     MP_CMOF_Comment_Annotated_Element,
     38,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     39,
     MP_CMOF_Element_Owned_Comment,
     626,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     39,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     626,
     MP_CMOF_Comment_Annotated_Element,
     39,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     627,
     MP_CMOF_Operation_Body_Condition,
     629,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     627,
     MP_CMOF_Element_Owned_Comment,
     628,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     627,
     MP_CMOF_Operation_Owned_Parameter,
     631,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     627,
     MP_CMOF_Operation_Owned_Parameter,
     632,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     627,
     MP_CMOF_Operation_Owned_Parameter,
     633,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     627,
     MP_CMOF_Namespace_Owned_Rule,
     629,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     627,
     MP_CMOF_Operation_Redefined_Operation,
     715,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     628,
     MP_CMOF_Comment_Annotated_Element,
     627,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     629,
     MP_CMOF_Constraint_Constrained_Element,
     627,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     629,
     MP_CMOF_Constraint_Specification,
     630,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     631,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     632,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     633,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     10,
     MP_CMOF_Class_Owned_Attribute,
     89,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     10,
     MP_CMOF_Class_Owned_Attribute,
     86,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     10,
     MP_CMOF_Class_Owned_Attribute,
     87,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     10,
     MP_CMOF_Class_Owned_Attribute,
     88,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     10,
     MP_CMOF_Element_Owned_Comment,
     634,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     10,
     MP_CMOF_Class_Owned_Operation,
     645,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     10,
     MP_CMOF_Namespace_Owned_Rule,
     635,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     10,
     MP_CMOF_Namespace_Owned_Rule,
     638,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     10,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     634,
     MP_CMOF_Comment_Annotated_Element,
     10,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     635,
     MP_CMOF_Constraint_Constrained_Element,
     10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     635,
     MP_CMOF_Element_Owned_Comment,
     636,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     635,
     MP_CMOF_Constraint_Specification,
     637,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     636,
     MP_CMOF_Comment_Annotated_Element,
     635,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     638,
     MP_CMOF_Constraint_Constrained_Element,
     10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     638,
     MP_CMOF_Element_Owned_Comment,
     639,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     638,
     MP_CMOF_Constraint_Specification,
     640,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     639,
     MP_CMOF_Comment_Annotated_Element,
     638,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     89,
     MP_CMOF_Element_Owned_Comment,
     641,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     89,
     MP_CMOF_Typed_Element_Type,
     747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     641,
     MP_CMOF_Comment_Annotated_Element,
     89,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     86,
     MP_CMOF_Element_Owned_Comment,
     642,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     86,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     642,
     MP_CMOF_Comment_Annotated_Element,
     86,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     87,
     MP_CMOF_Element_Owned_Comment,
     643,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     87,
     MP_CMOF_Property_Subsetted_Property,
     52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     87,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     643,
     MP_CMOF_Comment_Annotated_Element,
     87,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     88,
     MP_CMOF_Element_Owned_Comment,
     644,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     88,
     MP_CMOF_Property_Subsetted_Property,
     51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     88,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     88,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     644,
     MP_CMOF_Comment_Annotated_Element,
     88,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     645,
     MP_CMOF_Operation_Body_Condition,
     647,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     645,
     MP_CMOF_Element_Owned_Comment,
     646,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     645,
     MP_CMOF_Operation_Owned_Parameter,
     649,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     645,
     MP_CMOF_Namespace_Owned_Rule,
     647,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     646,
     MP_CMOF_Comment_Annotated_Element,
     645,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     647,
     MP_CMOF_Constraint_Constrained_Element,
     645,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     647,
     MP_CMOF_Constraint_Specification,
     648,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     649,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     72,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     70,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     69,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     110,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     71,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     20,
     MP_CMOF_Class_Owned_Attribute,
     111,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     20,
     MP_CMOF_Element_Owned_Comment,
     650,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     660,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     665,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     670,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     20,
     MP_CMOF_Namespace_Owned_Rule,
     651,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     20,
     MP_CMOF_Class_Super_Class,
     23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     20,
     MP_CMOF_Class_Super_Class,
     17,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     650,
     MP_CMOF_Comment_Annotated_Element,
     20,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     651,
     MP_CMOF_Constraint_Constrained_Element,
     20,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     651,
     MP_CMOF_Element_Owned_Comment,
     652,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     651,
     MP_CMOF_Constraint_Specification,
     653,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     652,
     MP_CMOF_Comment_Annotated_Element,
     651,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     72,
     MP_CMOF_Element_Owned_Comment,
     654,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     72,
     MP_CMOF_Property_Subsetted_Property,
     61,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     72,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     654,
     MP_CMOF_Comment_Annotated_Element,
     72,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     70,
     MP_CMOF_Element_Owned_Comment,
     655,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     70,
     MP_CMOF_Property_Subsetted_Property,
     72,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     70,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     655,
     MP_CMOF_Comment_Annotated_Element,
     70,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     69,
     MP_CMOF_Element_Owned_Comment,
     656,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     69,
     MP_CMOF_Property_Subsetted_Property,
     72,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     69,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     656,
     MP_CMOF_Comment_Annotated_Element,
     69,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     110,
     MP_CMOF_Element_Owned_Comment,
     657,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     110,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     110,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     657,
     MP_CMOF_Comment_Annotated_Element,
     110,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     71,
     MP_CMOF_Element_Owned_Comment,
     658,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     71,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     71,
     MP_CMOF_Typed_Element_Type,
     22,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     658,
     MP_CMOF_Comment_Annotated_Element,
     71,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     111,
     MP_CMOF_Element_Owned_Comment,
     659,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     111,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     659,
     MP_CMOF_Comment_Annotated_Element,
     111,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     660,
     MP_CMOF_Operation_Body_Condition,
     662,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     660,
     MP_CMOF_Element_Owned_Comment,
     661,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     660,
     MP_CMOF_Operation_Owned_Parameter,
     664,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     660,
     MP_CMOF_Namespace_Owned_Rule,
     662,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     660,
     MP_CMOF_Operation_Redefined_Operation,
     287,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     661,
     MP_CMOF_Comment_Annotated_Element,
     660,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     662,
     MP_CMOF_Constraint_Constrained_Element,
     660,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     662,
     MP_CMOF_Constraint_Specification,
     663,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     664,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     665,
     MP_CMOF_Operation_Body_Condition,
     667,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     665,
     MP_CMOF_Element_Owned_Comment,
     666,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     665,
     MP_CMOF_Operation_Owned_Parameter,
     669,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     665,
     MP_CMOF_Namespace_Owned_Rule,
     667,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     666,
     MP_CMOF_Comment_Annotated_Element,
     665,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     667,
     MP_CMOF_Constraint_Constrained_Element,
     665,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     667,
     MP_CMOF_Constraint_Specification,
     668,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     669,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     670,
     MP_CMOF_Operation_Body_Condition,
     674,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     670,
     MP_CMOF_Element_Owned_Comment,
     671,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     670,
     MP_CMOF_Operation_Owned_Parameter,
     676,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     670,
     MP_CMOF_Operation_Owned_Parameter,
     677,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     670,
     MP_CMOF_Namespace_Owned_Rule,
     672,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     670,
     MP_CMOF_Namespace_Owned_Rule,
     674,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     670,
     MP_CMOF_Operation_Precondition,
     672,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     671,
     MP_CMOF_Comment_Annotated_Element,
     670,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     672,
     MP_CMOF_Constraint_Constrained_Element,
     670,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     672,
     MP_CMOF_Constraint_Specification,
     673,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     674,
     MP_CMOF_Constraint_Constrained_Element,
     670,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     674,
     MP_CMOF_Constraint_Specification,
     675,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     676,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     677,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     21,
     MP_CMOF_Class_Owned_Attribute,
     114,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     21,
     MP_CMOF_Class_Owned_Attribute,
     112,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     21,
     MP_CMOF_Class_Owned_Attribute,
     113,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     21,
     MP_CMOF_Element_Owned_Comment,
     678,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     21,
     MP_CMOF_Namespace_Owned_Rule,
     679,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     21,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     678,
     MP_CMOF_Comment_Annotated_Element,
     21,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     679,
     MP_CMOF_Constraint_Constrained_Element,
     21,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     679,
     MP_CMOF_Element_Owned_Comment,
     680,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     679,
     MP_CMOF_Constraint_Specification,
     681,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     680,
     MP_CMOF_Comment_Annotated_Element,
     679,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     114,
     MP_CMOF_Element_Owned_Comment,
     682,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     114,
     MP_CMOF_Typed_Element_Type,
     747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     682,
     MP_CMOF_Comment_Annotated_Element,
     114,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     112,
     MP_CMOF_Element_Owned_Comment,
     683,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     112,
     MP_CMOF_Property_Subsetted_Property,
     52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     112,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     683,
     MP_CMOF_Comment_Annotated_Element,
     112,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     113,
     MP_CMOF_Element_Owned_Comment,
     684,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     113,
     MP_CMOF_Property_Subsetted_Property,
     51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     113,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     113,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     684,
     MP_CMOF_Comment_Annotated_Element,
     113,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     22,
     MP_CMOF_Class_Owned_Attribute,
     116,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     22,
     MP_CMOF_Class_Owned_Attribute,
     115,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     22,
     MP_CMOF_Element_Owned_Comment,
     685,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     22,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     685,
     MP_CMOF_Comment_Annotated_Element,
     22,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     116,
     MP_CMOF_Element_Owned_Comment,
     686,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     116,
     MP_CMOF_Property_Subsetted_Property,
     51,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     116,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     116,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     686,
     MP_CMOF_Comment_Annotated_Element,
     116,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     115,
     MP_CMOF_Element_Owned_Comment,
     687,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     115,
     MP_CMOF_Property_Subsetted_Property,
     52,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     115,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     687,
     MP_CMOF_Comment_Annotated_Element,
     115,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     31,
     MP_CMOF_Class_Owned_Attribute,
     134,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     31,
     MP_CMOF_Element_Owned_Comment,
     688,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     31,
     MP_CMOF_Class_Owned_Operation,
     690,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     31,
     MP_CMOF_Class_Super_Class,
     23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     31,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     688,
     MP_CMOF_Comment_Annotated_Element,
     31,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     134,
     MP_CMOF_Element_Owned_Comment,
     689,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     134,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     134,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     689,
     MP_CMOF_Comment_Annotated_Element,
     134,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     690,
     MP_CMOF_Operation_Body_Condition,
     692,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     690,
     MP_CMOF_Element_Owned_Comment,
     691,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     690,
     MP_CMOF_Operation_Owned_Parameter,
     694,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     690,
     MP_CMOF_Operation_Owned_Parameter,
     695,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     690,
     MP_CMOF_Namespace_Owned_Rule,
     692,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     691,
     MP_CMOF_Comment_Annotated_Element,
     690,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     692,
     MP_CMOF_Constraint_Constrained_Element,
     690,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     692,
     MP_CMOF_Constraint_Specification,
     693,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     694,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     695,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     16,
     MP_CMOF_Class_Owned_Attribute,
     95,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     16,
     MP_CMOF_Class_Owned_Attribute,
     98,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     16,
     MP_CMOF_Class_Owned_Attribute,
     96,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     16,
     MP_CMOF_Class_Owned_Attribute,
     97,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     16,
     MP_CMOF_Element_Owned_Comment,
     696,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     710,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     715,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     722,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     727,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     697,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     700,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     703,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     16,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     696,
     MP_CMOF_Comment_Annotated_Element,
     16,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     697,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     697,
     MP_CMOF_Element_Owned_Comment,
     698,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     697,
     MP_CMOF_Constraint_Specification,
     699,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     698,
     MP_CMOF_Comment_Annotated_Element,
     697,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     700,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     700,
     MP_CMOF_Element_Owned_Comment,
     701,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     700,
     MP_CMOF_Constraint_Specification,
     702,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     701,
     MP_CMOF_Comment_Annotated_Element,
     700,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     703,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     703,
     MP_CMOF_Element_Owned_Comment,
     704,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     703,
     MP_CMOF_Constraint_Specification,
     705,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     704,
     MP_CMOF_Comment_Annotated_Element,
     703,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     95,
     MP_CMOF_Element_Owned_Comment,
     706,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     95,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     706,
     MP_CMOF_Comment_Annotated_Element,
     95,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     98,
     MP_CMOF_Element_Owned_Comment,
     707,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     98,
     MP_CMOF_Typed_Element_Type,
     747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     707,
     MP_CMOF_Comment_Annotated_Element,
     98,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     96,
     MP_CMOF_Element_Owned_Comment,
     708,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     96,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     96,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     708,
     MP_CMOF_Comment_Annotated_Element,
     96,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     97,
     MP_CMOF_Element_Owned_Comment,
     709,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     97,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     709,
     MP_CMOF_Comment_Annotated_Element,
     97,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     710,
     MP_CMOF_Operation_Body_Condition,
     712,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     710,
     MP_CMOF_Element_Owned_Comment,
     711,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     710,
     MP_CMOF_Operation_Owned_Parameter,
     714,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     710,
     MP_CMOF_Namespace_Owned_Rule,
     712,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     711,
     MP_CMOF_Comment_Annotated_Element,
     710,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     712,
     MP_CMOF_Constraint_Constrained_Element,
     710,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     712,
     MP_CMOF_Constraint_Specification,
     713,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     714,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     715,
     MP_CMOF_Operation_Body_Condition,
     717,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     715,
     MP_CMOF_Element_Owned_Comment,
     716,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     715,
     MP_CMOF_Operation_Owned_Parameter,
     719,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     715,
     MP_CMOF_Operation_Owned_Parameter,
     720,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     715,
     MP_CMOF_Operation_Owned_Parameter,
     721,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     715,
     MP_CMOF_Namespace_Owned_Rule,
     717,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     716,
     MP_CMOF_Comment_Annotated_Element,
     715,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     717,
     MP_CMOF_Constraint_Constrained_Element,
     715,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     717,
     MP_CMOF_Constraint_Specification,
     718,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     719,
     MP_CMOF_Typed_Element_Type,
     192,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     720,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     721,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     722,
     MP_CMOF_Operation_Body_Condition,
     724,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     722,
     MP_CMOF_Element_Owned_Comment,
     723,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     722,
     MP_CMOF_Operation_Owned_Parameter,
     726,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     722,
     MP_CMOF_Namespace_Owned_Rule,
     724,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     723,
     MP_CMOF_Comment_Annotated_Element,
     722,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     724,
     MP_CMOF_Constraint_Constrained_Element,
     722,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     724,
     MP_CMOF_Constraint_Specification,
     725,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     726,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     727,
     MP_CMOF_Operation_Body_Condition,
     729,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     727,
     MP_CMOF_Element_Owned_Comment,
     728,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     727,
     MP_CMOF_Operation_Owned_Parameter,
     731,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     727,
     MP_CMOF_Namespace_Owned_Rule,
     729,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     728,
     MP_CMOF_Comment_Annotated_Element,
     727,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     729,
     MP_CMOF_Constraint_Constrained_Element,
     727,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     729,
     MP_CMOF_Constraint_Specification,
     730,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     731,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     13,
     MP_CMOF_Class_Owned_Attribute,
     56,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     13,
     MP_CMOF_Element_Owned_Comment,
     732,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     13,
     MP_CMOF_Class_Super_Class,
     33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     732,
     MP_CMOF_Comment_Annotated_Element,
     13,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     56,
     MP_CMOF_Element_Owned_Comment,
     733,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     56,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     56,
     MP_CMOF_Typed_Element_Type,
     33,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     733,
     MP_CMOF_Comment_Annotated_Element,
     56,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     5,
     MP_CMOF_Class_Owned_Attribute,
     82,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     5,
     MP_CMOF_Class_Owned_Attribute,
     47,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     5,
     MP_CMOF_Element_Owned_Comment,
     734,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     5,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     734,
     MP_CMOF_Comment_Annotated_Element,
     5,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     82,
     MP_CMOF_Element_Owned_Comment,
     735,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     82,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     735,
     MP_CMOF_Comment_Annotated_Element,
     82,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     47,
     MP_CMOF_Element_Owned_Comment,
     736,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     47,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     736,
     MP_CMOF_Comment_Annotated_Element,
     47,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     737,
     MP_CMOF_Element_Owned_Comment,
     738,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     737,
     MP_CMOF_Enumeration_Owned_Literal,
     739,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     737,
     MP_CMOF_Enumeration_Owned_Literal,
     741,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     737,
     MP_CMOF_Enumeration_Owned_Literal,
     743,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     737,
     MP_CMOF_Enumeration_Owned_Literal,
     745,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     738,
     MP_CMOF_Comment_Annotated_Element,
     737,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     739,
     MP_CMOF_Element_Owned_Comment,
     740,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     740,
     MP_CMOF_Comment_Annotated_Element,
     739,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     741,
     MP_CMOF_Element_Owned_Comment,
     742,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     742,
     MP_CMOF_Comment_Annotated_Element,
     741,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     743,
     MP_CMOF_Element_Owned_Comment,
     744,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     744,
     MP_CMOF_Comment_Annotated_Element,
     743,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     745,
     MP_CMOF_Element_Owned_Comment,
     746,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     746,
     MP_CMOF_Comment_Annotated_Element,
     745,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     747,
     MP_CMOF_Element_Owned_Comment,
     748,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     747,
     MP_CMOF_Enumeration_Owned_Literal,
     755,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     747,
     MP_CMOF_Enumeration_Owned_Literal,
     757,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     747,
     MP_CMOF_Enumeration_Owned_Literal,
     759,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     747,
     MP_CMOF_Enumeration_Owned_Literal,
     761,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Datatype,
     747,
     MP_CMOF_Data_Type_Owned_Operation,
     749,
     MP_CMOF_Operation_Datatype);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     748,
     MP_CMOF_Comment_Annotated_Element,
     747,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     749,
     MP_CMOF_Operation_Body_Condition,
     751,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     749,
     MP_CMOF_Element_Owned_Comment,
     750,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     749,
     MP_CMOF_Operation_Owned_Parameter,
     753,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     749,
     MP_CMOF_Operation_Owned_Parameter,
     754,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     749,
     MP_CMOF_Namespace_Owned_Rule,
     751,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     750,
     MP_CMOF_Comment_Annotated_Element,
     749,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     751,
     MP_CMOF_Constraint_Constrained_Element,
     749,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     751,
     MP_CMOF_Constraint_Specification,
     752,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     753,
     MP_CMOF_Typed_Element_Type,
     747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     754,
     MP_CMOF_Typed_Element_Type,
     747,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     755,
     MP_CMOF_Element_Owned_Comment,
     756,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     756,
     MP_CMOF_Comment_Annotated_Element,
     755,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     757,
     MP_CMOF_Element_Owned_Comment,
     758,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     758,
     MP_CMOF_Comment_Annotated_Element,
     757,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     759,
     MP_CMOF_Element_Owned_Comment,
     760,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     760,
     MP_CMOF_Comment_Annotated_Element,
     759,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     761,
     MP_CMOF_Element_Owned_Comment,
     762,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     762,
     MP_CMOF_Comment_Annotated_Element,
     761,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     153,
     MP_CMOF_Association_Member_End,
     135,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     153,
     MP_CMOF_Association_Member_End,
     763,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     153,
     MP_CMOF_Association_Owned_End,
     763,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     763,
     MP_CMOF_Typed_Element_Type,
     32,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     155,
     MP_CMOF_Association_Member_End,
     40,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     155,
     MP_CMOF_Association_Member_End,
     121,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     156,
     MP_CMOF_Association_Member_End,
     41,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     156,
     MP_CMOF_Association_Member_End,
     102,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     158,
     MP_CMOF_Association_Member_End,
     37,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     158,
     MP_CMOF_Association_Member_End,
     129,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     159,
     MP_CMOF_Association_Member_End,
     43,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     159,
     MP_CMOF_Association_Member_End,
     764,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     159,
     MP_CMOF_Association_Owned_End,
     764,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     764,
     MP_CMOF_Property_Subsetted_Property,
     76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     764,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     162,
     MP_CMOF_Association_Member_End,
     73,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     162,
     MP_CMOF_Association_Member_End,
     765,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     162,
     MP_CMOF_Association_Owned_End,
     765,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     765,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     164,
     MP_CMOF_Association_Member_End,
     74,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     164,
     MP_CMOF_Association_Member_End,
     766,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     164,
     MP_CMOF_Association_Owned_End,
     766,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     766,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     166,
     MP_CMOF_Association_Member_End,
     128,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     166,
     MP_CMOF_Association_Member_End,
     767,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     166,
     MP_CMOF_Association_Owned_End,
     767,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     767,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     168,
     MP_CMOF_Association_Member_End,
     42,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     168,
     MP_CMOF_Association_Member_End,
     768,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     168,
     MP_CMOF_Association_Owned_End,
     768,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     768,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     170,
     MP_CMOF_Association_Member_End,
     34,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     170,
     MP_CMOF_Association_Member_End,
     769,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     170,
     MP_CMOF_Association_Owned_End,
     769,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     769,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     172,
     MP_CMOF_Association_Member_End,
     55,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     172,
     MP_CMOF_Association_Member_End,
     90,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     174,
     MP_CMOF_Association_Member_End,
     49,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     174,
     MP_CMOF_Association_Member_End,
     122,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     175,
     MP_CMOF_Association_Member_End,
     50,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     175,
     MP_CMOF_Association_Member_End,
     103,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     177,
     MP_CMOF_Association_Member_End,
     67,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     177,
     MP_CMOF_Association_Member_End,
     770,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     177,
     MP_CMOF_Association_Owned_End,
     770,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     770,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     179,
     MP_CMOF_Association_Member_End,
     68,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     179,
     MP_CMOF_Association_Member_End,
     771,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     179,
     MP_CMOF_Association_Owned_End,
     771,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     771,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     181,
     MP_CMOF_Association_Member_End,
     38,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     181,
     MP_CMOF_Association_Member_End,
     772,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     181,
     MP_CMOF_Association_Owned_End,
     772,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     772,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     772,
     MP_CMOF_Typed_Element_Type,
     2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     183,
     MP_CMOF_Association_Member_End,
     39,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     183,
     MP_CMOF_Association_Member_End,
     773,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     183,
     MP_CMOF_Association_Owned_End,
     773,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     773,
     MP_CMOF_Typed_Element_Type,
     2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     185,
     MP_CMOF_Association_Member_End,
     59,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     185,
     MP_CMOF_Association_Member_End,
     774,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     185,
     MP_CMOF_Association_Owned_End,
     774,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     774,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     187,
     MP_CMOF_Association_Member_End,
     112,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     187,
     MP_CMOF_Association_Member_End,
     775,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     187,
     MP_CMOF_Association_Owned_End,
     775,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     775,
     MP_CMOF_Typed_Element_Type,
     21,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     136,
     MP_CMOF_Association_Member_End,
     87,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     136,
     MP_CMOF_Association_Member_End,
     776,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     136,
     MP_CMOF_Association_Owned_End,
     776,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     776,
     MP_CMOF_Typed_Element_Type,
     10,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     137,
     MP_CMOF_Association_Member_End,
     58,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     137,
     MP_CMOF_Association_Member_End,
     88,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     138,
     MP_CMOF_Association_Member_End,
     63,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     138,
     MP_CMOF_Association_Member_End,
     113,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     139,
     MP_CMOF_Association_Member_End,
     72,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     139,
     MP_CMOF_Association_Member_End,
     777,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     139,
     MP_CMOF_Association_Owned_End,
     777,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     777,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     777,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     141,
     MP_CMOF_Association_Member_End,
     70,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     141,
     MP_CMOF_Association_Member_End,
     134,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     143,
     MP_CMOF_Association_Member_End,
     35,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     143,
     MP_CMOF_Association_Member_End,
     120,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     144,
     MP_CMOF_Association_Member_End,
     69,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     144,
     MP_CMOF_Association_Member_End,
     110,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     145,
     MP_CMOF_Association_Member_End,
     108,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     145,
     MP_CMOF_Association_Member_End,
     778,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     145,
     MP_CMOF_Association_Owned_End,
     778,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     778,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     146,
     MP_CMOF_Association_Member_End,
     71,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     146,
     MP_CMOF_Association_Member_End,
     116,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     147,
     MP_CMOF_Association_Member_End,
     115,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     147,
     MP_CMOF_Association_Member_End,
     779,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     147,
     MP_CMOF_Association_Owned_End,
     779,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     779,
     MP_CMOF_Typed_Element_Type,
     22,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     148,
     MP_CMOF_Association_Member_End,
     54,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     148,
     MP_CMOF_Association_Member_End,
     85,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     149,
     MP_CMOF_Association_Member_End,
     47,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     149,
     MP_CMOF_Association_Member_End,
     780,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     149,
     MP_CMOF_Association_Owned_End,
     780,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     780,
     MP_CMOF_Typed_Element_Type,
     5,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     150,
     MP_CMOF_Association_Member_End,
     77,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     150,
     MP_CMOF_Association_Member_End,
     781,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     150,
     MP_CMOF_Association_Owned_End,
     781,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     781,
     MP_CMOF_Typed_Element_Type,
     28,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     151,
     MP_CMOF_Association_Member_End,
     51,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     151,
     MP_CMOF_Association_Member_End,
     782,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     151,
     MP_CMOF_Association_Owned_End,
     782,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     782,
     MP_CMOF_Typed_Element_Type,
     8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     152,
     MP_CMOF_Association_Member_End,
     52,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     152,
     MP_CMOF_Association_Member_End,
     783,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     152,
     MP_CMOF_Association_Owned_End,
     783,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     783,
     MP_CMOF_Typed_Element_Type,
     8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     154,
     MP_CMOF_Association_Member_End,
     76,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     154,
     MP_CMOF_Association_Member_End,
     784,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     154,
     MP_CMOF_Association_Owned_End,
     784,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     784,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     157,
     MP_CMOF_Association_Member_End,
     75,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     157,
     MP_CMOF_Association_Member_End,
     785,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     157,
     MP_CMOF_Association_Owned_End,
     785,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     785,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     160,
     MP_CMOF_Association_Member_End,
     44,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     160,
     MP_CMOF_Association_Member_End,
     57,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     161,
     MP_CMOF_Association_Member_End,
     48,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     161,
     MP_CMOF_Association_Member_End,
     786,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     161,
     MP_CMOF_Association_Owned_End,
     786,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     786,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     163,
     MP_CMOF_Association_Member_End,
     84,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     163,
     MP_CMOF_Association_Member_End,
     787,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     163,
     MP_CMOF_Association_Owned_End,
     787,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     787,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     787,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     165,
     MP_CMOF_Association_Member_End,
     45,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     165,
     MP_CMOF_Association_Member_End,
     788,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     165,
     MP_CMOF_Association_Owned_End,
     788,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     788,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     167,
     MP_CMOF_Association_Member_End,
     61,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     167,
     MP_CMOF_Association_Member_End,
     96,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     169,
     MP_CMOF_Association_Member_End,
     60,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     169,
     MP_CMOF_Association_Member_End,
     789,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     169,
     MP_CMOF_Association_Owned_End,
     789,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     789,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     171,
     MP_CMOF_Association_Member_End,
     56,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     171,
     MP_CMOF_Association_Member_End,
     790,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     171,
     MP_CMOF_Association_Owned_End,
     790,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     790,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     790,
     MP_CMOF_Typed_Element_Type,
     13,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     173,
     MP_CMOF_Association_Member_End,
     36,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     173,
     MP_CMOF_Association_Member_End,
     791,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     173,
     MP_CMOF_Association_Owned_End,
     791,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     791,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     176,
     MP_CMOF_Association_Member_End,
     64,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     176,
     MP_CMOF_Association_Member_End,
     119,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     178,
     MP_CMOF_Association_Member_End,
     53,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     178,
     MP_CMOF_Association_Member_End,
     792,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     178,
     MP_CMOF_Association_Owned_End,
     792,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     792,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     792,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     180,
     MP_CMOF_Association_Member_End,
     46,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     180,
     MP_CMOF_Association_Member_End,
     793,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     180,
     MP_CMOF_Association_Owned_End,
     793,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     793,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     182,
     MP_CMOF_Association_Member_End,
     66,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     182,
     MP_CMOF_Association_Member_End,
     794,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     182,
     MP_CMOF_Association_Owned_End,
     794,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     794,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     794,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     184,
     MP_CMOF_Association_Member_End,
     65,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     184,
     MP_CMOF_Association_Member_End,
     795,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     184,
     MP_CMOF_Association_Owned_End,
     795,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     795,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     795,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     186,
     MP_CMOF_Association_Member_End,
     101,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     186,
     MP_CMOF_Association_Member_End,
     796,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     186,
     MP_CMOF_Association_Owned_End,
     796,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     796,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     796,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     188,
     MP_CMOF_Association_Member_End,
     62,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     188,
     MP_CMOF_Association_Member_End,
     83,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     30,
     MP_CMOF_Class_Owned_Attribute,
     131,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     30,
     MP_CMOF_Class_Owned_Attribute,
     133,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     30,
     MP_CMOF_Class_Owned_Attribute,
     78,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     30,
     MP_CMOF_Class_Owned_Attribute,
     132,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     30,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     131,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     133,
     MP_CMOF_Typed_Element_Type,
     194,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     78,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     132,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     132,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     140,
     MP_CMOF_Association_Member_End,
     78,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     140,
     MP_CMOF_Association_Member_End,
     797,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     140,
     MP_CMOF_Association_Owned_End,
     797,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     797,
     MP_CMOF_Typed_Element_Type,
     30,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     142,
     MP_CMOF_Association_Member_End,
     132,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     142,
     MP_CMOF_Association_Member_End,
     798,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     142,
     MP_CMOF_Association_Owned_End,
     798,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     798,
     MP_CMOF_Property_Subsetted_Property,
     54,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     798,
     MP_CMOF_Typed_Element_Type,
     30,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Element_Tag,
     799,
     MP_CMOF_Tag_Element,
     189,
     MP_CMOF_Element_Tag);
   Internal_Create_Link
    (MA_CMOF_Element_Tag,
     800,
     MP_CMOF_Tag_Element,
     189,
     MP_CMOF_Element_Tag);

end AMF.Internals.Tables.CMOF_Setup;
