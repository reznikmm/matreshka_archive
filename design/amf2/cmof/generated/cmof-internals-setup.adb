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

with AMF.Internals.Links;
with CMOF.Internals.Attributes;
with CMOF.Internals.Constructors;
with CMOF.Internals.Extents;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Tables;

package body CMOF.Internals.Setup is

   use AMF.Internals.Links;
   use CMOF.Internals.Attributes;
   use CMOF.Internals.Constructors;
   use CMOF.Internals.Extents;
   use CMOF.Internals.Metamodel;

   Extent : constant CMOF_Extent := CMOF_Metamodel_Extent;

begin
   Tables.Elements.Set_Last (795);
   Initialize_CMOF_Metamodel_Extent;

   Initialize_Association (139, Extent);
   Initialize_Association (140, Extent);
   Initialize_Property (187, Extent);
   Initialize_Association (141, Extent);
   Initialize_Association (142, Extent);
   Initialize_Property (188, Extent);
   Initialize_Association (143, Extent);
   Initialize_Property (189, Extent);
   Initialize_Association (144, Extent);
   Initialize_Property (190, Extent);
   Initialize_Association (146, Extent);
   Initialize_Property (191, Extent);
   Initialize_Association (148, Extent);
   Initialize_Property (192, Extent);
   Initialize_Association (151, Extent);
   Initialize_Property (193, Extent);
   Initialize_Association (153, Extent);
   Initialize_Association (155, Extent);
   Initialize_Property (194, Extent);
   Initialize_Association (157, Extent);
   Initialize_Property (195, Extent);
   Initialize_Association (159, Extent);
   Initialize_Property (196, Extent);
   Initialize_Association (161, Extent);
   Initialize_Association (162, Extent);
   Initialize_Property (197, Extent);
   Initialize_Association (164, Extent);
   Initialize_Property (198, Extent);
   Initialize_Association (167, Extent);
   Initialize_Property (199, Extent);
   Initialize_Association (170, Extent);
   Initialize_Association (171, Extent);
   Initialize_Property (200, Extent);
   Initialize_Association (173, Extent);
   Initialize_Property (201, Extent);
   Initialize_Association (175, Extent);
   Initialize_Property (202, Extent);
   Initialize_Association (177, Extent);
   Initialize_Property (203, Extent);
   Initialize_Association (179, Extent);
   Initialize_Property (204, Extent);
   Initialize_Association (181, Extent);
   Initialize_Class (30, Extent);
   Initialize_Property (131, Extent);
   Initialize_Property (132, Extent);
   Initialize_Property (78, Extent);
   Initialize_Association (186, Extent);
   Initialize_Property (205, Extent);
   Initialize_Package (206, Extent);
   Initialize_Primitive_Type (207, Extent);
   Initialize_Comment (208, Extent);
   Initialize_Primitive_Type (209, Extent);
   Initialize_Comment (210, Extent);
   Initialize_Primitive_Type (211, Extent);
   Initialize_Comment (212, Extent);
   Initialize_Primitive_Type (213, Extent);
   Initialize_Comment (214, Extent);
   Initialize_Class (4, Extent);
   Initialize_Comment (215, Extent);
   Initialize_Constraint (216, Extent);
   Initialize_Comment (217, Extent);
   Initialize_Opaque_Expression (218, Extent);
   Initialize_Constraint (219, Extent);
   Initialize_Comment (220, Extent);
   Initialize_Opaque_Expression (221, Extent);
   Initialize_Property (43, Extent);
   Initialize_Comment (222, Extent);
   Initialize_Property (44, Extent);
   Initialize_Comment (223, Extent);
   Initialize_Property (45, Extent);
   Initialize_Comment (224, Extent);
   Initialize_Property (46, Extent);
   Initialize_Comment (225, Extent);
   Initialize_Property (81, Extent);
   Initialize_Comment (226, Extent);
   Initialize_Operation (227, Extent);
   Initialize_Comment (228, Extent);
   Initialize_Constraint (229, Extent);
   Initialize_Opaque_Expression (230, Extent);
   Initialize_Parameter (231, Extent);
   Initialize_Parameter (232, Extent);
   Initialize_Operation (233, Extent);
   Initialize_Comment (234, Extent);
   Initialize_Constraint (235, Extent);
   Initialize_Opaque_Expression (236, Extent);
   Initialize_Parameter (237, Extent);
   Initialize_Operation (238, Extent);
   Initialize_Comment (239, Extent);
   Initialize_Constraint (240, Extent);
   Initialize_Opaque_Expression (241, Extent);
   Initialize_Parameter (242, Extent);
   Initialize_Operation (243, Extent);
   Initialize_Comment (244, Extent);
   Initialize_Constraint (245, Extent);
   Initialize_Opaque_Expression (246, Extent);
   Initialize_Parameter (247, Extent);
   Initialize_Operation (248, Extent);
   Initialize_Comment (249, Extent);
   Initialize_Constraint (250, Extent);
   Initialize_Opaque_Expression (251, Extent);
   Initialize_Parameter (252, Extent);
   Initialize_Operation (253, Extent);
   Initialize_Comment (254, Extent);
   Initialize_Constraint (255, Extent);
   Initialize_Opaque_Expression (256, Extent);
   Initialize_Parameter (257, Extent);
   Initialize_Operation (258, Extent);
   Initialize_Comment (259, Extent);
   Initialize_Constraint (260, Extent);
   Initialize_Opaque_Expression (261, Extent);
   Initialize_Constraint (262, Extent);
   Initialize_Opaque_Expression (263, Extent);
   Initialize_Parameter (264, Extent);
   Initialize_Parameter (265, Extent);
   Initialize_Operation (266, Extent);
   Initialize_Comment (267, Extent);
   Initialize_Constraint (268, Extent);
   Initialize_Opaque_Expression (269, Extent);
   Initialize_Constraint (270, Extent);
   Initialize_Opaque_Expression (271, Extent);
   Initialize_Parameter (272, Extent);
   Initialize_Parameter (273, Extent);
   Initialize_Operation (274, Extent);
   Initialize_Comment (275, Extent);
   Initialize_Constraint (276, Extent);
   Initialize_Opaque_Expression (277, Extent);
   Initialize_Parameter (278, Extent);
   Initialize_Parameter (279, Extent);
   Initialize_Operation (280, Extent);
   Initialize_Comment (281, Extent);
   Initialize_Constraint (282, Extent);
   Initialize_Opaque_Expression (283, Extent);
   Initialize_Parameter (284, Extent);
   Initialize_Parameter (285, Extent);
   Initialize_Class (8, Extent);
   Initialize_Comment (286, Extent);
   Initialize_Property (51, Extent);
   Initialize_Comment (287, Extent);
   Initialize_Property (52, Extent);
   Initialize_Comment (288, Extent);
   Initialize_Class (9, Extent);
   Initialize_Comment (289, Extent);
   Initialize_Constraint (290, Extent);
   Initialize_Comment (291, Extent);
   Initialize_Opaque_Expression (292, Extent);
   Initialize_Constraint (293, Extent);
   Initialize_Comment (294, Extent);
   Initialize_Opaque_Expression (295, Extent);
   Initialize_Property (54, Extent);
   Initialize_Comment (296, Extent);
   Initialize_Property (85, Extent);
   Initialize_Comment (297, Extent);
   Initialize_Property (53, Extent);
   Initialize_Comment (298, Extent);
   Initialize_Operation (299, Extent);
   Initialize_Comment (300, Extent);
   Initialize_Constraint (301, Extent);
   Initialize_Opaque_Expression (302, Extent);
   Initialize_Parameter (303, Extent);
   Initialize_Operation (304, Extent);
   Initialize_Comment (305, Extent);
   Initialize_Constraint (306, Extent);
   Initialize_Opaque_Expression (307, Extent);
   Initialize_Parameter (308, Extent);
   Initialize_Class (14, Extent);
   Initialize_Comment (309, Extent);
   Initialize_Property (57, Extent);
   Initialize_Comment (310, Extent);
   Initialize_Class (15, Extent);
   Initialize_Comment (311, Extent);
   Initialize_Constraint (312, Extent);
   Initialize_Comment (313, Extent);
   Initialize_Opaque_Expression (314, Extent);
   Initialize_Constraint (315, Extent);
   Initialize_Comment (316, Extent);
   Initialize_Opaque_Expression (317, Extent);
   Initialize_Property (91, Extent);
   Initialize_Comment (318, Extent);
   Initialize_Property (92, Extent);
   Initialize_Comment (319, Extent);
   Initialize_Property (93, Extent);
   Initialize_Comment (320, Extent);
   Initialize_Property (94, Extent);
   Initialize_Comment (321, Extent);
   Initialize_Operation (322, Extent);
   Initialize_Comment (323, Extent);
   Initialize_Constraint (324, Extent);
   Initialize_Opaque_Expression (325, Extent);
   Initialize_Constraint (326, Extent);
   Initialize_Opaque_Expression (327, Extent);
   Initialize_Parameter (328, Extent);
   Initialize_Operation (329, Extent);
   Initialize_Comment (330, Extent);
   Initialize_Constraint (331, Extent);
   Initialize_Opaque_Expression (332, Extent);
   Initialize_Constraint (333, Extent);
   Initialize_Opaque_Expression (334, Extent);
   Initialize_Parameter (335, Extent);
   Initialize_Parameter (336, Extent);
   Initialize_Operation (337, Extent);
   Initialize_Comment (338, Extent);
   Initialize_Constraint (339, Extent);
   Initialize_Opaque_Expression (340, Extent);
   Initialize_Constraint (341, Extent);
   Initialize_Opaque_Expression (342, Extent);
   Initialize_Parameter (343, Extent);
   Initialize_Parameter (344, Extent);
   Initialize_Operation (345, Extent);
   Initialize_Comment (346, Extent);
   Initialize_Constraint (347, Extent);
   Initialize_Opaque_Expression (348, Extent);
   Initialize_Parameter (349, Extent);
   Initialize_Operation (350, Extent);
   Initialize_Comment (351, Extent);
   Initialize_Constraint (352, Extent);
   Initialize_Opaque_Expression (353, Extent);
   Initialize_Parameter (354, Extent);
   Initialize_Class (17, Extent);
   Initialize_Comment (355, Extent);
   Initialize_Constraint (356, Extent);
   Initialize_Comment (357, Extent);
   Initialize_Opaque_Expression (358, Extent);
   Initialize_Property (59, Extent);
   Initialize_Comment (359, Extent);
   Initialize_Property (58, Extent);
   Initialize_Comment (360, Extent);
   Initialize_Property (63, Extent);
   Initialize_Comment (361, Extent);
   Initialize_Property (61, Extent);
   Initialize_Comment (362, Extent);
   Initialize_Property (60, Extent);
   Initialize_Comment (363, Extent);
   Initialize_Property (62, Extent);
   Initialize_Operation (364, Extent);
   Initialize_Comment (365, Extent);
   Initialize_Constraint (366, Extent);
   Initialize_Opaque_Expression (367, Extent);
   Initialize_Parameter (368, Extent);
   Initialize_Operation (369, Extent);
   Initialize_Comment (370, Extent);
   Initialize_Constraint (371, Extent);
   Initialize_Opaque_Expression (372, Extent);
   Initialize_Parameter (373, Extent);
   Initialize_Parameter (374, Extent);
   Initialize_Operation (375, Extent);
   Initialize_Comment (376, Extent);
   Initialize_Constraint (377, Extent);
   Initialize_Opaque_Expression (378, Extent);
   Initialize_Parameter (379, Extent);
   Initialize_Parameter (380, Extent);
   Initialize_Operation (381, Extent);
   Initialize_Comment (382, Extent);
   Initialize_Constraint (383, Extent);
   Initialize_Opaque_Expression (384, Extent);
   Initialize_Parameter (385, Extent);
   Initialize_Parameter (386, Extent);
   Initialize_Operation (387, Extent);
   Initialize_Comment (388, Extent);
   Initialize_Constraint (389, Extent);
   Initialize_Opaque_Expression (390, Extent);
   Initialize_Parameter (391, Extent);
   Initialize_Class (23, Extent);
   Initialize_Comment (392, Extent);
   Initialize_Class (27, Extent);
   Initialize_Comment (393, Extent);
   Initialize_Constraint (394, Extent);
   Initialize_Comment (395, Extent);
   Initialize_Opaque_Expression (396, Extent);
   Initialize_Constraint (397, Extent);
   Initialize_Comment (398, Extent);
   Initialize_Opaque_Expression (399, Extent);
   Initialize_Constraint (400, Extent);
   Initialize_Comment (401, Extent);
   Initialize_Opaque_Expression (402, Extent);
   Initialize_Property (76, Extent);
   Initialize_Comment (403, Extent);
   Initialize_Property (75, Extent);
   Initialize_Comment (404, Extent);
   Initialize_Property (130, Extent);
   Initialize_Comment (405, Extent);
   Initialize_Operation (406, Extent);
   Initialize_Comment (407, Extent);
   Initialize_Constraint (408, Extent);
   Initialize_Opaque_Expression (409, Extent);
   Initialize_Constraint (410, Extent);
   Initialize_Opaque_Expression (411, Extent);
   Initialize_Parameter (412, Extent);
   Initialize_Parameter (413, Extent);
   Initialize_Operation (414, Extent);
   Initialize_Comment (415, Extent);
   Initialize_Constraint (416, Extent);
   Initialize_Opaque_Expression (417, Extent);
   Initialize_Parameter (418, Extent);
   Initialize_Parameter (419, Extent);
   Initialize_Class (28, Extent);
   Initialize_Comment (420, Extent);
   Initialize_Property (77, Extent);
   Initialize_Comment (421, Extent);
   Initialize_Class (29, Extent);
   Initialize_Comment (422, Extent);
   Initialize_Class (32, Extent);
   Initialize_Comment (423, Extent);
   Initialize_Property (134, Extent);
   Initialize_Comment (424, Extent);
   Initialize_Class (33, Extent);
   Initialize_Comment (425, Extent);
   Initialize_Operation (426, Extent);
   Initialize_Comment (427, Extent);
   Initialize_Constraint (428, Extent);
   Initialize_Opaque_Expression (429, Extent);
   Initialize_Parameter (430, Extent);
   Initialize_Operation (431, Extent);
   Initialize_Comment (432, Extent);
   Initialize_Constraint (433, Extent);
   Initialize_Opaque_Expression (434, Extent);
   Initialize_Parameter (435, Extent);
   Initialize_Operation (436, Extent);
   Initialize_Comment (437, Extent);
   Initialize_Constraint (438, Extent);
   Initialize_Opaque_Expression (439, Extent);
   Initialize_Parameter (440, Extent);
   Initialize_Operation (441, Extent);
   Initialize_Comment (442, Extent);
   Initialize_Constraint (443, Extent);
   Initialize_Opaque_Expression (444, Extent);
   Initialize_Parameter (445, Extent);
   Initialize_Operation (446, Extent);
   Initialize_Comment (447, Extent);
   Initialize_Constraint (448, Extent);
   Initialize_Opaque_Expression (449, Extent);
   Initialize_Parameter (450, Extent);
   Initialize_Operation (451, Extent);
   Initialize_Comment (452, Extent);
   Initialize_Constraint (453, Extent);
   Initialize_Opaque_Expression (454, Extent);
   Initialize_Parameter (455, Extent);
   Initialize_Class (1, Extent);
   Initialize_Comment (456, Extent);
   Initialize_Constraint (457, Extent);
   Initialize_Comment (458, Extent);
   Initialize_Opaque_Expression (459, Extent);
   Initialize_Constraint (460, Extent);
   Initialize_Comment (461, Extent);
   Initialize_Opaque_Expression (462, Extent);
   Initialize_Constraint (463, Extent);
   Initialize_Comment (464, Extent);
   Initialize_Opaque_Expression (465, Extent);
   Initialize_Constraint (466, Extent);
   Initialize_Comment (467, Extent);
   Initialize_Opaque_Expression (468, Extent);
   Initialize_Property (79, Extent);
   Initialize_Comment (469, Extent);
   Initialize_Property (37, Extent);
   Initialize_Comment (470, Extent);
   Initialize_Property (34, Extent);
   Initialize_Comment (471, Extent);
   Initialize_Property (35, Extent);
   Initialize_Comment (472, Extent);
   Initialize_Property (36, Extent);
   Initialize_Comment (473, Extent);
   Initialize_Operation (474, Extent);
   Initialize_Comment (475, Extent);
   Initialize_Constraint (476, Extent);
   Initialize_Opaque_Expression (477, Extent);
   Initialize_Parameter (478, Extent);
   Initialize_Class (3, Extent);
   Initialize_Comment (479, Extent);
   Initialize_Property (80, Extent);
   Initialize_Comment (480, Extent);
   Initialize_Property (40, Extent);
   Initialize_Comment (481, Extent);
   Initialize_Property (41, Extent);
   Initialize_Comment (482, Extent);
   Initialize_Property (42, Extent);
   Initialize_Comment (483, Extent);
   Initialize_Operation (484, Extent);
   Initialize_Comment (485, Extent);
   Initialize_Constraint (486, Extent);
   Initialize_Opaque_Expression (487, Extent);
   Initialize_Parameter (488, Extent);
   Initialize_Parameter (489, Extent);
   Initialize_Class (26, Extent);
   Initialize_Comment (490, Extent);
   Initialize_Constraint (491, Extent);
   Initialize_Comment (492, Extent);
   Initialize_Opaque_Expression (493, Extent);
   Initialize_Constraint (494, Extent);
   Initialize_Comment (495, Extent);
   Initialize_Opaque_Expression (496, Extent);
   Initialize_Constraint (497, Extent);
   Initialize_Comment (498, Extent);
   Initialize_Opaque_Expression (499, Extent);
   Initialize_Constraint (500, Extent);
   Initialize_Comment (501, Extent);
   Initialize_Opaque_Expression (502, Extent);
   Initialize_Constraint (503, Extent);
   Initialize_Comment (504, Extent);
   Initialize_Opaque_Expression (505, Extent);
   Initialize_Constraint (506, Extent);
   Initialize_Comment (507, Extent);
   Initialize_Opaque_Expression (508, Extent);
   Initialize_Constraint (509, Extent);
   Initialize_Comment (510, Extent);
   Initialize_Opaque_Expression (511, Extent);
   Initialize_Property (127, Extent);
   Initialize_Comment (512, Extent);
   Initialize_Property (123, Extent);
   Initialize_Comment (513, Extent);
   Initialize_Property (124, Extent);
   Initialize_Comment (514, Extent);
   Initialize_Property (125, Extent);
   Initialize_Comment (515, Extent);
   Initialize_Property (126, Extent);
   Initialize_Comment (516, Extent);
   Initialize_Property (121, Extent);
   Initialize_Comment (517, Extent);
   Initialize_Property (129, Extent);
   Initialize_Comment (518, Extent);
   Initialize_Property (73, Extent);
   Initialize_Comment (519, Extent);
   Initialize_Property (74, Extent);
   Initialize_Comment (520, Extent);
   Initialize_Property (128, Extent);
   Initialize_Comment (521, Extent);
   Initialize_Property (122, Extent);
   Initialize_Comment (522, Extent);
   Initialize_Property (120, Extent);
   Initialize_Comment (523, Extent);
   Initialize_Operation (524, Extent);
   Initialize_Comment (525, Extent);
   Initialize_Constraint (526, Extent);
   Initialize_Opaque_Expression (527, Extent);
   Initialize_Parameter (528, Extent);
   Initialize_Operation (529, Extent);
   Initialize_Comment (530, Extent);
   Initialize_Constraint (531, Extent);
   Initialize_Opaque_Expression (532, Extent);
   Initialize_Constraint (533, Extent);
   Initialize_Opaque_Expression (534, Extent);
   Initialize_Parameter (535, Extent);
   Initialize_Parameter (536, Extent);
   Initialize_Operation (537, Extent);
   Initialize_Comment (538, Extent);
   Initialize_Constraint (539, Extent);
   Initialize_Opaque_Expression (540, Extent);
   Initialize_Parameter (541, Extent);
   Initialize_Operation (542, Extent);
   Initialize_Comment (543, Extent);
   Initialize_Constraint (544, Extent);
   Initialize_Opaque_Expression (545, Extent);
   Initialize_Parameter (546, Extent);
   Initialize_Operation (547, Extent);
   Initialize_Comment (548, Extent);
   Initialize_Constraint (549, Extent);
   Initialize_Opaque_Expression (550, Extent);
   Initialize_Parameter (551, Extent);
   Initialize_Parameter (552, Extent);
   Initialize_Class (7, Extent);
   Initialize_Comment (553, Extent);
   Initialize_Property (49, Extent);
   Initialize_Comment (554, Extent);
   Initialize_Property (50, Extent);
   Initialize_Comment (555, Extent);
   Initialize_Operation (556, Extent);
   Initialize_Comment (557, Extent);
   Initialize_Constraint (558, Extent);
   Initialize_Opaque_Expression (559, Extent);
   Initialize_Parameter (560, Extent);
   Initialize_Parameter (561, Extent);
   Initialize_Class (11, Extent);
   Initialize_Comment (562, Extent);
   Initialize_Property (55, Extent);
   Initialize_Comment (563, Extent);
   Initialize_Class (12, Extent);
   Initialize_Comment (564, Extent);
   Initialize_Property (90, Extent);
   Initialize_Comment (565, Extent);
   Initialize_Class (25, Extent);
   Initialize_Comment (566, Extent);
   Initialize_Class (6, Extent);
   Initialize_Comment (567, Extent);
   Initialize_Constraint (568, Extent);
   Initialize_Comment (569, Extent);
   Initialize_Opaque_Expression (570, Extent);
   Initialize_Constraint (571, Extent);
   Initialize_Comment (572, Extent);
   Initialize_Opaque_Expression (573, Extent);
   Initialize_Property (48, Extent);
   Initialize_Comment (574, Extent);
   Initialize_Property (84, Extent);
   Initialize_Comment (575, Extent);
   Initialize_Property (83, Extent);
   Initialize_Class (18, Extent);
   Initialize_Comment (576, Extent);
   Initialize_Constraint (577, Extent);
   Initialize_Comment (578, Extent);
   Initialize_Opaque_Expression (579, Extent);
   Initialize_Property (99, Extent);
   Initialize_Comment (580, Extent);
   Initialize_Property (100, Extent);
   Initialize_Comment (581, Extent);
   Initialize_Class (19, Extent);
   Initialize_Comment (582, Extent);
   Initialize_Constraint (583, Extent);
   Initialize_Comment (584, Extent);
   Initialize_Opaque_Expression (585, Extent);
   Initialize_Constraint (586, Extent);
   Initialize_Comment (587, Extent);
   Initialize_Opaque_Expression (588, Extent);
   Initialize_Property (105, Extent);
   Initialize_Comment (589, Extent);
   Initialize_Property (104, Extent);
   Initialize_Comment (590, Extent);
   Initialize_Property (106, Extent);
   Initialize_Comment (591, Extent);
   Initialize_Property (107, Extent);
   Initialize_Comment (592, Extent);
   Initialize_Property (109, Extent);
   Initialize_Comment (593, Extent);
   Initialize_Property (102, Extent);
   Initialize_Comment (594, Extent);
   Initialize_Property (103, Extent);
   Initialize_Comment (595, Extent);
   Initialize_Property (67, Extent);
   Initialize_Comment (596, Extent);
   Initialize_Property (68, Extent);
   Initialize_Comment (597, Extent);
   Initialize_Property (108, Extent);
   Initialize_Comment (598, Extent);
   Initialize_Property (64, Extent);
   Initialize_Comment (599, Extent);
   Initialize_Property (66, Extent);
   Initialize_Property (65, Extent);
   Initialize_Property (101, Extent);
   Initialize_Operation (600, Extent);
   Initialize_Comment (601, Extent);
   Initialize_Constraint (602, Extent);
   Initialize_Opaque_Expression (603, Extent);
   Initialize_Parameter (604, Extent);
   Initialize_Operation (605, Extent);
   Initialize_Comment (606, Extent);
   Initialize_Constraint (607, Extent);
   Initialize_Opaque_Expression (608, Extent);
   Initialize_Parameter (609, Extent);
   Initialize_Operation (610, Extent);
   Initialize_Comment (611, Extent);
   Initialize_Constraint (612, Extent);
   Initialize_Opaque_Expression (613, Extent);
   Initialize_Parameter (614, Extent);
   Initialize_Operation (615, Extent);
   Initialize_Comment (616, Extent);
   Initialize_Constraint (617, Extent);
   Initialize_Opaque_Expression (618, Extent);
   Initialize_Parameter (619, Extent);
   Initialize_Operation (620, Extent);
   Initialize_Comment (621, Extent);
   Initialize_Constraint (622, Extent);
   Initialize_Opaque_Expression (623, Extent);
   Initialize_Parameter (624, Extent);
   Initialize_Operation (625, Extent);
   Initialize_Comment (626, Extent);
   Initialize_Constraint (627, Extent);
   Initialize_Opaque_Expression (628, Extent);
   Initialize_Constraint (629, Extent);
   Initialize_Opaque_Expression (630, Extent);
   Initialize_Parameter (631, Extent);
   Initialize_Parameter (632, Extent);
   Initialize_Operation (633, Extent);
   Initialize_Constraint (634, Extent);
   Initialize_Opaque_Expression (635, Extent);
   Initialize_Parameter (636, Extent);
   Initialize_Class (24, Extent);
   Initialize_Comment (637, Extent);
   Initialize_Property (117, Extent);
   Initialize_Comment (638, Extent);
   Initialize_Property (118, Extent);
   Initialize_Comment (639, Extent);
   Initialize_Property (119, Extent);
   Initialize_Comment (640, Extent);
   Initialize_Class (2, Extent);
   Initialize_Comment (641, Extent);
   Initialize_Property (38, Extent);
   Initialize_Comment (642, Extent);
   Initialize_Property (39, Extent);
   Initialize_Comment (643, Extent);
   Initialize_Operation (644, Extent);
   Initialize_Comment (645, Extent);
   Initialize_Constraint (646, Extent);
   Initialize_Opaque_Expression (647, Extent);
   Initialize_Parameter (648, Extent);
   Initialize_Parameter (649, Extent);
   Initialize_Parameter (650, Extent);
   Initialize_Class (10, Extent);
   Initialize_Comment (651, Extent);
   Initialize_Constraint (652, Extent);
   Initialize_Comment (653, Extent);
   Initialize_Opaque_Expression (654, Extent);
   Initialize_Constraint (655, Extent);
   Initialize_Comment (656, Extent);
   Initialize_Opaque_Expression (657, Extent);
   Initialize_Property (89, Extent);
   Initialize_Comment (658, Extent);
   Initialize_Property (86, Extent);
   Initialize_Comment (659, Extent);
   Initialize_Property (87, Extent);
   Initialize_Comment (660, Extent);
   Initialize_Property (88, Extent);
   Initialize_Comment (661, Extent);
   Initialize_Operation (662, Extent);
   Initialize_Comment (663, Extent);
   Initialize_Constraint (664, Extent);
   Initialize_Opaque_Expression (665, Extent);
   Initialize_Parameter (666, Extent);
   Initialize_Class (20, Extent);
   Initialize_Comment (667, Extent);
   Initialize_Constraint (668, Extent);
   Initialize_Comment (669, Extent);
   Initialize_Opaque_Expression (670, Extent);
   Initialize_Property (72, Extent);
   Initialize_Comment (671, Extent);
   Initialize_Property (70, Extent);
   Initialize_Comment (672, Extent);
   Initialize_Property (69, Extent);
   Initialize_Comment (673, Extent);
   Initialize_Property (110, Extent);
   Initialize_Comment (674, Extent);
   Initialize_Property (71, Extent);
   Initialize_Comment (675, Extent);
   Initialize_Property (111, Extent);
   Initialize_Comment (676, Extent);
   Initialize_Operation (677, Extent);
   Initialize_Comment (678, Extent);
   Initialize_Constraint (679, Extent);
   Initialize_Opaque_Expression (680, Extent);
   Initialize_Parameter (681, Extent);
   Initialize_Operation (682, Extent);
   Initialize_Comment (683, Extent);
   Initialize_Constraint (684, Extent);
   Initialize_Opaque_Expression (685, Extent);
   Initialize_Parameter (686, Extent);
   Initialize_Operation (687, Extent);
   Initialize_Comment (688, Extent);
   Initialize_Constraint (689, Extent);
   Initialize_Opaque_Expression (690, Extent);
   Initialize_Constraint (691, Extent);
   Initialize_Opaque_Expression (692, Extent);
   Initialize_Parameter (693, Extent);
   Initialize_Parameter (694, Extent);
   Initialize_Class (21, Extent);
   Initialize_Comment (695, Extent);
   Initialize_Constraint (696, Extent);
   Initialize_Comment (697, Extent);
   Initialize_Opaque_Expression (698, Extent);
   Initialize_Property (114, Extent);
   Initialize_Comment (699, Extent);
   Initialize_Property (112, Extent);
   Initialize_Comment (700, Extent);
   Initialize_Property (113, Extent);
   Initialize_Comment (701, Extent);
   Initialize_Class (22, Extent);
   Initialize_Comment (702, Extent);
   Initialize_Property (116, Extent);
   Initialize_Comment (703, Extent);
   Initialize_Property (115, Extent);
   Initialize_Comment (704, Extent);
   Initialize_Class (31, Extent);
   Initialize_Comment (705, Extent);
   Initialize_Property (133, Extent);
   Initialize_Comment (706, Extent);
   Initialize_Operation (707, Extent);
   Initialize_Comment (708, Extent);
   Initialize_Constraint (709, Extent);
   Initialize_Opaque_Expression (710, Extent);
   Initialize_Parameter (711, Extent);
   Initialize_Parameter (712, Extent);
   Initialize_Class (16, Extent);
   Initialize_Comment (713, Extent);
   Initialize_Constraint (714, Extent);
   Initialize_Comment (715, Extent);
   Initialize_Opaque_Expression (716, Extent);
   Initialize_Constraint (717, Extent);
   Initialize_Comment (718, Extent);
   Initialize_Opaque_Expression (719, Extent);
   Initialize_Constraint (720, Extent);
   Initialize_Comment (721, Extent);
   Initialize_Opaque_Expression (722, Extent);
   Initialize_Property (95, Extent);
   Initialize_Comment (723, Extent);
   Initialize_Property (98, Extent);
   Initialize_Comment (724, Extent);
   Initialize_Property (96, Extent);
   Initialize_Comment (725, Extent);
   Initialize_Property (97, Extent);
   Initialize_Comment (726, Extent);
   Initialize_Operation (727, Extent);
   Initialize_Comment (728, Extent);
   Initialize_Constraint (729, Extent);
   Initialize_Opaque_Expression (730, Extent);
   Initialize_Parameter (731, Extent);
   Initialize_Operation (732, Extent);
   Initialize_Comment (733, Extent);
   Initialize_Constraint (734, Extent);
   Initialize_Opaque_Expression (735, Extent);
   Initialize_Parameter (736, Extent);
   Initialize_Parameter (737, Extent);
   Initialize_Parameter (738, Extent);
   Initialize_Operation (739, Extent);
   Initialize_Comment (740, Extent);
   Initialize_Constraint (741, Extent);
   Initialize_Opaque_Expression (742, Extent);
   Initialize_Parameter (743, Extent);
   Initialize_Operation (744, Extent);
   Initialize_Comment (745, Extent);
   Initialize_Constraint (746, Extent);
   Initialize_Opaque_Expression (747, Extent);
   Initialize_Parameter (748, Extent);
   Initialize_Class (13, Extent);
   Initialize_Comment (749, Extent);
   Initialize_Property (56, Extent);
   Initialize_Comment (750, Extent);
   Initialize_Class (5, Extent);
   Initialize_Comment (751, Extent);
   Initialize_Property (82, Extent);
   Initialize_Comment (752, Extent);
   Initialize_Property (47, Extent);
   Initialize_Comment (753, Extent);
   Initialize_Enumeration (754, Extent);
   Initialize_Comment (755, Extent);
   Initialize_Enumeration_Literal (756, Extent);
   Initialize_Comment (757, Extent);
   Initialize_Enumeration_Literal (758, Extent);
   Initialize_Comment (759, Extent);
   Initialize_Enumeration_Literal (760, Extent);
   Initialize_Comment (761, Extent);
   Initialize_Enumeration_Literal (762, Extent);
   Initialize_Comment (763, Extent);
   Initialize_Enumeration (764, Extent);
   Initialize_Comment (765, Extent);
   Initialize_Operation (766, Extent);
   Initialize_Comment (767, Extent);
   Initialize_Constraint (768, Extent);
   Initialize_Opaque_Expression (769, Extent);
   Initialize_Parameter (770, Extent);
   Initialize_Parameter (771, Extent);
   Initialize_Enumeration_Literal (772, Extent);
   Initialize_Comment (773, Extent);
   Initialize_Enumeration_Literal (774, Extent);
   Initialize_Comment (775, Extent);
   Initialize_Enumeration_Literal (776, Extent);
   Initialize_Comment (777, Extent);
   Initialize_Enumeration_Literal (778, Extent);
   Initialize_Comment (779, Extent);
   Initialize_Association (145, Extent);
   Initialize_Property (780, Extent);
   Initialize_Association (147, Extent);
   Initialize_Association (149, Extent);
   Initialize_Association (150, Extent);
   Initialize_Association (152, Extent);
   Initialize_Property (781, Extent);
   Initialize_Association (154, Extent);
   Initialize_Property (782, Extent);
   Initialize_Association (156, Extent);
   Initialize_Property (783, Extent);
   Initialize_Association (158, Extent);
   Initialize_Property (784, Extent);
   Initialize_Association (160, Extent);
   Initialize_Property (785, Extent);
   Initialize_Association (163, Extent);
   Initialize_Property (786, Extent);
   Initialize_Association (165, Extent);
   Initialize_Association (166, Extent);
   Initialize_Association (168, Extent);
   Initialize_Association (169, Extent);
   Initialize_Property (787, Extent);
   Initialize_Association (172, Extent);
   Initialize_Property (788, Extent);
   Initialize_Association (174, Extent);
   Initialize_Property (789, Extent);
   Initialize_Association (176, Extent);
   Initialize_Property (790, Extent);
   Initialize_Association (178, Extent);
   Initialize_Property (791, Extent);
   Initialize_Association (180, Extent);
   Initialize_Property (792, Extent);
   Initialize_Association (182, Extent);
   Initialize_Property (793, Extent);
   Initialize_Association (183, Extent);
   Initialize_Association (184, Extent);
   Initialize_Association (185, Extent);
   Initialize_Property (794, Extent);
   Initialize_Association (135, Extent);
   Initialize_Association (136, Extent);
   Initialize_Association (137, Extent);
   Initialize_Association (138, Extent);
   Initialize_Property (795, Extent);

   Internal_Set_Is_Derived (139, False);
   Internal_Set_Is_Final_Specialization (139, False);
   Internal_Set_Name
    (139,
     (False, League.Strings.To_Universal_String ("A_packageMerge_receivingPackage")));

   Internal_Set_Is_Derived (140, False);
   Internal_Set_Is_Final_Specialization (140, False);
   Internal_Set_Name
    (140,
     (False, League.Strings.To_Universal_String ("A_mergedPackage_packageMerge")));

   Internal_Set_Is_Composite (187, False);
   Internal_Set_Is_Derived (187, False);
   Internal_Set_Is_Derived_Union (187, False);
   Internal_Set_Is_Leaf (187, False);
   Internal_Set_Is_Ordered (187, False);
   Internal_Set_Is_Read_Only (187, False);
   Internal_Set_Is_Unique (187, True);
   Internal_Set_Lower (187, (False, 0));
   Internal_Set_Name
    (187,
     (False, League.Strings.To_Universal_String ("packageMerge")));
   Internal_Set_Upper (187, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (141, False);
   Internal_Set_Is_Final_Specialization (141, False);
   Internal_Set_Name
    (141,
     (False, League.Strings.To_Universal_String ("A_ownedElement_owner")));

   Internal_Set_Is_Derived (142, False);
   Internal_Set_Is_Final_Specialization (142, False);
   Internal_Set_Name
    (142,
     (False, League.Strings.To_Universal_String ("A_annotatedElement_comment")));

   Internal_Set_Is_Composite (188, False);
   Internal_Set_Is_Derived (188, False);
   Internal_Set_Is_Derived_Union (188, False);
   Internal_Set_Is_Leaf (188, False);
   Internal_Set_Is_Ordered (188, False);
   Internal_Set_Is_Read_Only (188, False);
   Internal_Set_Is_Unique (188, True);
   Internal_Set_Lower (188, (False, 0));
   Internal_Set_Name
    (188,
     (False, League.Strings.To_Universal_String ("comment")));
   Internal_Set_Upper (188, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (143, False);
   Internal_Set_Is_Final_Specialization (143, False);
   Internal_Set_Name
    (143,
     (False, League.Strings.To_Universal_String ("A_relatedElement_relationship")));

   Internal_Set_Is_Composite (189, False);
   Internal_Set_Is_Derived (189, False);
   Internal_Set_Is_Derived_Union (189, False);
   Internal_Set_Is_Leaf (189, False);
   Internal_Set_Is_Ordered (189, False);
   Internal_Set_Is_Read_Only (189, False);
   Internal_Set_Is_Unique (189, True);
   Internal_Set_Lower (189, (False, 0));
   Internal_Set_Name
    (189,
     (False, League.Strings.To_Universal_String ("relationship")));
   Internal_Set_Upper (189, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (144, False);
   Internal_Set_Is_Final_Specialization (144, False);
   Internal_Set_Name
    (144,
     (False, League.Strings.To_Universal_String ("A_source_directedRelationship")));

   Internal_Set_Is_Composite (190, False);
   Internal_Set_Is_Derived (190, False);
   Internal_Set_Is_Derived_Union (190, False);
   Internal_Set_Is_Leaf (190, False);
   Internal_Set_Is_Ordered (190, False);
   Internal_Set_Is_Read_Only (190, False);
   Internal_Set_Is_Unique (190, True);
   Internal_Set_Lower (190, (False, 0));
   Internal_Set_Name
    (190,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (190, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (146, False);
   Internal_Set_Is_Final_Specialization (146, False);
   Internal_Set_Name
    (146,
     (False, League.Strings.To_Universal_String ("A_target_directedRelationship")));

   Internal_Set_Is_Composite (191, False);
   Internal_Set_Is_Derived (191, False);
   Internal_Set_Is_Derived_Union (191, False);
   Internal_Set_Is_Leaf (191, False);
   Internal_Set_Is_Ordered (191, False);
   Internal_Set_Is_Read_Only (191, False);
   Internal_Set_Is_Unique (191, True);
   Internal_Set_Lower (191, (False, 0));
   Internal_Set_Name
    (191,
     (False, League.Strings.To_Universal_String ("directedRelationship")));
   Internal_Set_Upper (191, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (148, False);
   Internal_Set_Is_Final_Specialization (148, False);
   Internal_Set_Name
    (148,
     (False, League.Strings.To_Universal_String ("A_redefinitionContext_redefinableElement")));

   Internal_Set_Is_Composite (192, False);
   Internal_Set_Is_Derived (192, False);
   Internal_Set_Is_Derived_Union (192, False);
   Internal_Set_Is_Leaf (192, False);
   Internal_Set_Is_Ordered (192, False);
   Internal_Set_Is_Read_Only (192, False);
   Internal_Set_Is_Unique (192, True);
   Internal_Set_Lower (192, (False, 0));
   Internal_Set_Name
    (192,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (192, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (151, False);
   Internal_Set_Is_Final_Specialization (151, False);
   Internal_Set_Name
    (151,
     (False, League.Strings.To_Universal_String ("A_redefinedElement_redefinableElement")));

   Internal_Set_Is_Composite (193, False);
   Internal_Set_Is_Derived (193, False);
   Internal_Set_Is_Derived_Union (193, False);
   Internal_Set_Is_Leaf (193, False);
   Internal_Set_Is_Ordered (193, False);
   Internal_Set_Is_Read_Only (193, False);
   Internal_Set_Is_Unique (193, True);
   Internal_Set_Lower (193, (False, 0));
   Internal_Set_Name
    (193,
     (False, League.Strings.To_Universal_String ("redefinableElement")));
   Internal_Set_Upper (193, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (153, False);
   Internal_Set_Is_Final_Specialization (153, False);
   Internal_Set_Name
    (153,
     (False, League.Strings.To_Universal_String ("A_feature_featuringClassifier")));

   Internal_Set_Is_Derived (155, False);
   Internal_Set_Is_Final_Specialization (155, False);
   Internal_Set_Name
    (155,
     (False, League.Strings.To_Universal_String ("A_constrainedElement_constraint")));

   Internal_Set_Is_Composite (194, False);
   Internal_Set_Is_Derived (194, False);
   Internal_Set_Is_Derived_Union (194, False);
   Internal_Set_Is_Leaf (194, False);
   Internal_Set_Is_Ordered (194, False);
   Internal_Set_Is_Read_Only (194, False);
   Internal_Set_Is_Unique (194, True);
   Internal_Set_Lower (194, (False, 0));
   Internal_Set_Name
    (194,
     (False, League.Strings.To_Universal_String ("constraint")));
   Internal_Set_Upper (194, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (157, False);
   Internal_Set_Is_Final_Specialization (157, False);
   Internal_Set_Name
    (157,
     (False, League.Strings.To_Universal_String ("A_specification_owningConstraint")));

   Internal_Set_Is_Composite (195, False);
   Internal_Set_Is_Derived (195, False);
   Internal_Set_Is_Derived_Union (195, False);
   Internal_Set_Is_Leaf (195, False);
   Internal_Set_Is_Ordered (195, False);
   Internal_Set_Is_Read_Only (195, False);
   Internal_Set_Is_Unique (195, True);
   Internal_Set_Lower (195, (False, 0));
   Internal_Set_Name
    (195,
     (False, League.Strings.To_Universal_String ("owningConstraint")));
   Internal_Set_Upper (195, (False, (False, 1)));

   Internal_Set_Is_Derived (159, False);
   Internal_Set_Is_Final_Specialization (159, False);
   Internal_Set_Name
    (159,
     (False, League.Strings.To_Universal_String ("A_general_classifier")));

   Internal_Set_Is_Composite (196, False);
   Internal_Set_Is_Derived (196, False);
   Internal_Set_Is_Derived_Union (196, False);
   Internal_Set_Is_Leaf (196, False);
   Internal_Set_Is_Ordered (196, False);
   Internal_Set_Is_Read_Only (196, False);
   Internal_Set_Is_Unique (196, True);
   Internal_Set_Lower (196, (False, 0));
   Internal_Set_Name
    (196,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (196, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (161, False);
   Internal_Set_Is_Final_Specialization (161, False);
   Internal_Set_Name
    (161,
     (False, League.Strings.To_Universal_String ("A_ownedMember_namespace")));

   Internal_Set_Is_Derived (162, False);
   Internal_Set_Is_Final_Specialization (162, False);
   Internal_Set_Name
    (162,
     (False, League.Strings.To_Universal_String ("A_member_namespace")));

   Internal_Set_Is_Composite (197, False);
   Internal_Set_Is_Derived (197, False);
   Internal_Set_Is_Derived_Union (197, False);
   Internal_Set_Is_Leaf (197, False);
   Internal_Set_Is_Ordered (197, False);
   Internal_Set_Is_Read_Only (197, False);
   Internal_Set_Is_Unique (197, True);
   Internal_Set_Lower (197, (False, 0));
   Internal_Set_Name
    (197,
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (197, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (164, False);
   Internal_Set_Is_Final_Specialization (164, False);
   Internal_Set_Name
    (164,
     (False, League.Strings.To_Universal_String ("A_operand_expression")));

   Internal_Set_Is_Composite (198, False);
   Internal_Set_Is_Derived (198, False);
   Internal_Set_Is_Derived_Union (198, False);
   Internal_Set_Is_Leaf (198, False);
   Internal_Set_Is_Ordered (198, False);
   Internal_Set_Is_Read_Only (198, False);
   Internal_Set_Is_Unique (198, True);
   Internal_Set_Lower (198, (False, 0));
   Internal_Set_Name
    (198,
     (False, League.Strings.To_Universal_String ("expression")));
   Internal_Set_Upper (198, (False, (False, 1)));

   Internal_Set_Is_Derived (167, False);
   Internal_Set_Is_Final_Specialization (167, False);
   Internal_Set_Name
    (167,
     (False, League.Strings.To_Universal_String ("A_navigableOwnedEnd_association")));

   Internal_Set_Is_Composite (199, False);
   Internal_Set_Is_Derived (199, False);
   Internal_Set_Is_Derived_Union (199, False);
   Internal_Set_Is_Leaf (199, False);
   Internal_Set_Is_Ordered (199, False);
   Internal_Set_Is_Read_Only (199, False);
   Internal_Set_Is_Unique (199, True);
   Internal_Set_Lower (199, (False, 0));
   Internal_Set_Name
    (199,
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (199, (False, (False, 1)));

   Internal_Set_Is_Derived (170, False);
   Internal_Set_Is_Final_Specialization (170, False);
   Internal_Set_Name
    (170,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_operation")));

   Internal_Set_Is_Derived (171, False);
   Internal_Set_Is_Final_Specialization (171, False);
   Internal_Set_Name
    (171,
     (False, League.Strings.To_Universal_String ("A_ownedComment_owningElement")));

   Internal_Set_Is_Composite (200, False);
   Internal_Set_Is_Derived (200, False);
   Internal_Set_Is_Derived_Union (200, False);
   Internal_Set_Is_Leaf (200, False);
   Internal_Set_Is_Ordered (200, False);
   Internal_Set_Is_Read_Only (200, False);
   Internal_Set_Is_Unique (200, True);
   Internal_Set_Lower (200, (False, 0));
   Internal_Set_Name
    (200,
     (False, League.Strings.To_Universal_String ("owningElement")));
   Internal_Set_Upper (200, (False, (False, 1)));

   Internal_Set_Is_Derived (173, False);
   Internal_Set_Is_Final_Specialization (173, False);
   Internal_Set_Name
    (173,
     (False, League.Strings.To_Universal_String ("A_inheritedMember_classifier")));

   Internal_Set_Is_Composite (201, False);
   Internal_Set_Is_Derived (201, False);
   Internal_Set_Is_Derived_Union (201, False);
   Internal_Set_Is_Leaf (201, False);
   Internal_Set_Is_Ordered (201, False);
   Internal_Set_Is_Read_Only (201, False);
   Internal_Set_Is_Unique (201, True);
   Internal_Set_Lower (201, (False, 0));
   Internal_Set_Name
    (201,
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (201, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (175, False);
   Internal_Set_Is_Final_Specialization (175, False);
   Internal_Set_Name
    (175,
     (False, League.Strings.To_Universal_String ("A_precondition_preContext")));

   Internal_Set_Is_Composite (202, False);
   Internal_Set_Is_Derived (202, False);
   Internal_Set_Is_Derived_Union (202, False);
   Internal_Set_Is_Leaf (202, False);
   Internal_Set_Is_Ordered (202, False);
   Internal_Set_Is_Read_Only (202, False);
   Internal_Set_Is_Unique (202, True);
   Internal_Set_Lower (202, (False, 0));
   Internal_Set_Name
    (202,
     (False, League.Strings.To_Universal_String ("preContext")));
   Internal_Set_Upper (202, (False, (False, 1)));

   Internal_Set_Is_Derived (177, False);
   Internal_Set_Is_Final_Specialization (177, False);
   Internal_Set_Name
    (177,
     (False, League.Strings.To_Universal_String ("A_postcondition_postContext")));

   Internal_Set_Is_Composite (203, False);
   Internal_Set_Is_Derived (203, False);
   Internal_Set_Is_Derived_Union (203, False);
   Internal_Set_Is_Leaf (203, False);
   Internal_Set_Is_Ordered (203, False);
   Internal_Set_Is_Read_Only (203, False);
   Internal_Set_Is_Unique (203, True);
   Internal_Set_Lower (203, (False, 0));
   Internal_Set_Name
    (203,
     (False, League.Strings.To_Universal_String ("postContext")));
   Internal_Set_Upper (203, (False, (False, 1)));

   Internal_Set_Is_Derived (179, False);
   Internal_Set_Is_Final_Specialization (179, False);
   Internal_Set_Name
    (179,
     (False, League.Strings.To_Universal_String ("A_bodyCondition_bodyContext")));

   Internal_Set_Is_Composite (204, False);
   Internal_Set_Is_Derived (204, False);
   Internal_Set_Is_Derived_Union (204, False);
   Internal_Set_Is_Leaf (204, False);
   Internal_Set_Is_Ordered (204, False);
   Internal_Set_Is_Read_Only (204, False);
   Internal_Set_Is_Unique (204, True);
   Internal_Set_Lower (204, (False, 0));
   Internal_Set_Name
    (204,
     (False, League.Strings.To_Universal_String ("bodyContext")));
   Internal_Set_Upper (204, (False, (False, 1)));

   Internal_Set_Is_Derived (181, False);
   Internal_Set_Is_Final_Specialization (181, False);
   Internal_Set_Name
    (181,
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

   Internal_Set_Is_Composite (132, False);
   Internal_Set_Is_Derived (132, False);
   Internal_Set_Is_Derived_Union (132, False);
   Internal_Set_Is_Leaf (132, False);
   Internal_Set_Is_Ordered (132, False);
   Internal_Set_Is_Read_Only (132, False);
   Internal_Set_Is_Unique (132, True);
   Internal_Set_Lower (132, (False, 1));
   Internal_Set_Name
    (132,
     (False, League.Strings.To_Universal_String ("value")));
   Internal_Set_Upper (132, (False, (False, 1)));

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

   Internal_Set_Is_Derived (186, False);
   Internal_Set_Is_Final_Specialization (186, False);
   Internal_Set_Name
    (186,
     (False, League.Strings.To_Universal_String ("A_element_tag")));

   Internal_Set_Is_Composite (205, False);
   Internal_Set_Is_Derived (205, False);
   Internal_Set_Is_Derived_Union (205, False);
   Internal_Set_Is_Leaf (205, False);
   Internal_Set_Is_Ordered (205, False);
   Internal_Set_Is_Read_Only (205, False);
   Internal_Set_Is_Unique (205, True);
   Internal_Set_Lower (205, (False, 1));
   Internal_Set_Name
    (205,
     (False, League.Strings.To_Universal_String ("tag")));
   Internal_Set_Upper (205, (False, (False, 1)));

   Internal_Set_Name
    (206,
     (False, League.Strings.To_Universal_String ("CMOF")));
   Internal_Set_Uri
    (206,
     (False, League.Strings.To_Universal_String ("http://schema.omg.org/spec/MOF/2.0/cmof.xml")));

   Internal_Set_Is_Final_Specialization (207, False);
   Internal_Set_Name
    (207,
     (False, League.Strings.To_Universal_String ("Integer")));

   Internal_Set_Body
    (208,
     (False, League.Strings.To_Universal_String ("An integer is a primitive type representing integer values.")));

   Internal_Set_Is_Final_Specialization (209, False);
   Internal_Set_Name
    (209,
     (False, League.Strings.To_Universal_String ("Boolean")));

   Internal_Set_Body
    (210,
     (False, League.Strings.To_Universal_String ("A Boolean type is used for logical expression, consisting of the predefined values true and false.")));

   Internal_Set_Is_Final_Specialization (211, False);
   Internal_Set_Name
    (211,
     (False, League.Strings.To_Universal_String ("String")));

   Internal_Set_Body
    (212,
     (False, League.Strings.To_Universal_String ("A string is a sequence of characters in some suitable character set used to display information about the model. Character sets may include non-Roman alphabets and characters.")));

   Internal_Set_Is_Final_Specialization (213, False);
   Internal_Set_Name
    (213,
     (False, League.Strings.To_Universal_String ("UnlimitedNatural")));

   Internal_Set_Body
    (214,
     (False, League.Strings.To_Universal_String ("An unlimited natural is a primitive type representing unlimited natural values.")));

   Internal_Set_Is_Abstract (4, True);
   Internal_Set_Is_Final_Specialization (4, False);
   Internal_Set_Name
    (4,
     (False, League.Strings.To_Universal_String ("Classifier")));

   Internal_Set_Body
    (215,
     (False, League.Strings.To_Universal_String ("A classifier is a classification of instances - it describes a set of instances that have features in common. A classifier can specify a generalization hierarchy by referencing its general classifiers.")));

   Internal_Set_Name
    (216,
     (False, League.Strings.To_Universal_String ("no_cycles_in_generalization")));

   Internal_Set_Body
    (217,
     (False, League.Strings.To_Universal_String ("Generalization hierarchies must be directed and acyclical. A classifier can not be both a transitively general and transitively specific classifier of the same classifier.")));


   Internal_Set_Name
    (219,
     (False, League.Strings.To_Universal_String ("specialize_type")));

   Internal_Set_Body
    (220,
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
    (222,
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
    (223,
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
    (224,
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
    (225,
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
    (226,
     (False, League.Strings.To_Universal_String ("If true, the Classifier cannot be specialized by generalization. Note that this property is preserved through package merge operations; that is, the capability to specialize a Classifier (i.e., isFinalSpecialization =false) must be preserved in the resulting Classifier of a package merge operation where a Classifier with isFinalSpecialization =false is merged with a matching Classifier with isFinalSpecialization =true: the resulting Classifier will have isFinalSpecialization =false.")));

   Internal_Set_Is_Leaf (227, False);
   Internal_Set_Is_Ordered (227, False);
   Internal_Set_Is_Query (227, True);
   Internal_Set_Is_Unique (227, True);
   Internal_Set_Lower (227, (False, 1));
   Internal_Set_Name
    (227,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (227, (False, (False, 1)));

   Internal_Set_Body
    (228,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a classifier that defines a type that conforms to another. This is used, for example, in the specification of signature conformance for operations.")));

   Internal_Set_Name
    (229,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (231, Return_Direction);
   Internal_Set_Is_Ordered (231, False);
   Internal_Set_Is_Unique (231, True);
   Internal_Set_Lower (231, (False, 1));
   Internal_Set_Upper (231, (False, (False, 1)));

   Internal_Set_Direction (232, In_Direction);
   Internal_Set_Is_Ordered (232, False);
   Internal_Set_Is_Unique (232, True);
   Internal_Set_Lower (232, (False, 1));
   Internal_Set_Name
    (232,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (232, (False, (False, 1)));

   Internal_Set_Is_Leaf (233, False);
   Internal_Set_Is_Ordered (233, False);
   Internal_Set_Is_Query (233, True);
   Internal_Set_Is_Unique (233, True);
   Internal_Set_Lower (233, (False, 1));
   Internal_Set_Name
    (233,
     (False, League.Strings.To_Universal_String ("allFeatures")));
   Internal_Set_Upper (233, (False, (False, 1)));

   Internal_Set_Body
    (234,
     (False, League.Strings.To_Universal_String ("The query allFeatures() gives all of the features in the namespace of the classifier. In general, through mechanisms such as inheritance, this will be a larger set than feature.")));

   Internal_Set_Name
    (235,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (237, Return_Direction);
   Internal_Set_Is_Ordered (237, False);
   Internal_Set_Is_Unique (237, True);
   Internal_Set_Lower (237, (False, 0));
   Internal_Set_Upper (237, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (238, False);
   Internal_Set_Is_Ordered (238, False);
   Internal_Set_Is_Query (238, True);
   Internal_Set_Is_Unique (238, True);
   Internal_Set_Lower (238, (False, 1));
   Internal_Set_Name
    (238,
     (False, League.Strings.To_Universal_String ("general")));
   Internal_Set_Upper (238, (False, (False, 1)));

   Internal_Set_Body
    (239,
     (False, League.Strings.To_Universal_String ("The general classifiers are the classifiers referenced by the generalization relationships.")));

   Internal_Set_Name
    (240,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (242, Return_Direction);
   Internal_Set_Is_Ordered (242, False);
   Internal_Set_Is_Unique (242, True);
   Internal_Set_Lower (242, (False, 0));
   Internal_Set_Upper (242, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (243, False);
   Internal_Set_Is_Ordered (243, False);
   Internal_Set_Is_Query (243, True);
   Internal_Set_Is_Unique (243, True);
   Internal_Set_Lower (243, (False, 1));
   Internal_Set_Name
    (243,
     (False, League.Strings.To_Universal_String ("parents")));
   Internal_Set_Upper (243, (False, (False, 1)));

   Internal_Set_Body
    (244,
     (False, League.Strings.To_Universal_String ("The query parents() gives all of the immediate ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (245,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (247, Return_Direction);
   Internal_Set_Is_Ordered (247, False);
   Internal_Set_Is_Unique (247, True);
   Internal_Set_Lower (247, (False, 0));
   Internal_Set_Upper (247, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (248, False);
   Internal_Set_Is_Ordered (248, False);
   Internal_Set_Is_Query (248, True);
   Internal_Set_Is_Unique (248, True);
   Internal_Set_Lower (248, (False, 1));
   Internal_Set_Name
    (248,
     (False, League.Strings.To_Universal_String ("inheritedMember")));
   Internal_Set_Upper (248, (False, (False, 1)));

   Internal_Set_Body
    (249,
     (False, League.Strings.To_Universal_String ("The inheritedMember association is derived by inheriting the inheritable members of the parents.")));

   Internal_Set_Name
    (250,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (252, Return_Direction);
   Internal_Set_Is_Ordered (252, False);
   Internal_Set_Is_Unique (252, True);
   Internal_Set_Lower (252, (False, 0));
   Internal_Set_Upper (252, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (253, False);
   Internal_Set_Is_Ordered (253, False);
   Internal_Set_Is_Query (253, True);
   Internal_Set_Is_Unique (253, True);
   Internal_Set_Lower (253, (False, 1));
   Internal_Set_Name
    (253,
     (False, League.Strings.To_Universal_String ("allParents")));
   Internal_Set_Upper (253, (False, (False, 1)));

   Internal_Set_Body
    (254,
     (False, League.Strings.To_Universal_String ("The query allParents() gives all of the direct and indirect ancestors of a generalized Classifier.")));

   Internal_Set_Name
    (255,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (257, Return_Direction);
   Internal_Set_Is_Ordered (257, False);
   Internal_Set_Is_Unique (257, True);
   Internal_Set_Lower (257, (False, 0));
   Internal_Set_Upper (257, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (258, False);
   Internal_Set_Is_Ordered (258, False);
   Internal_Set_Is_Query (258, True);
   Internal_Set_Is_Unique (258, True);
   Internal_Set_Lower (258, (False, 1));
   Internal_Set_Name
    (258,
     (False, League.Strings.To_Universal_String ("inheritableMembers")));
   Internal_Set_Upper (258, (False, (False, 1)));

   Internal_Set_Body
    (259,
     (False, League.Strings.To_Universal_String ("The query inheritableMembers() gives all of the members of a classifier that may be inherited in one of its descendants, subject to whatever visibility restrictions apply.")));



   Internal_Set_Name
    (262,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (264, Return_Direction);
   Internal_Set_Is_Ordered (264, False);
   Internal_Set_Is_Unique (264, True);
   Internal_Set_Lower (264, (False, 0));
   Internal_Set_Upper (264, (False, (Unlimited => True)));

   Internal_Set_Direction (265, In_Direction);
   Internal_Set_Is_Ordered (265, False);
   Internal_Set_Is_Unique (265, True);
   Internal_Set_Lower (265, (False, 1));
   Internal_Set_Name
    (265,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (265, (False, (False, 1)));

   Internal_Set_Is_Leaf (266, False);
   Internal_Set_Is_Ordered (266, False);
   Internal_Set_Is_Query (266, True);
   Internal_Set_Is_Unique (266, True);
   Internal_Set_Lower (266, (False, 1));
   Internal_Set_Name
    (266,
     (False, League.Strings.To_Universal_String ("hasVisibilityOf")));
   Internal_Set_Upper (266, (False, (False, 1)));

   Internal_Set_Body
    (267,
     (False, League.Strings.To_Universal_String ("The query hasVisibilityOf() determines whether a named element is visible in the classifier. By default all are visible. It is only called when the argument is something owned by a parent.")));



   Internal_Set_Name
    (270,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (272, Return_Direction);
   Internal_Set_Is_Ordered (272, False);
   Internal_Set_Is_Unique (272, True);
   Internal_Set_Lower (272, (False, 1));
   Internal_Set_Upper (272, (False, (False, 1)));

   Internal_Set_Direction (273, In_Direction);
   Internal_Set_Is_Ordered (273, False);
   Internal_Set_Is_Unique (273, True);
   Internal_Set_Lower (273, (False, 1));
   Internal_Set_Name
    (273,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (273, (False, (False, 1)));

   Internal_Set_Is_Leaf (274, False);
   Internal_Set_Is_Ordered (274, False);
   Internal_Set_Is_Query (274, True);
   Internal_Set_Is_Unique (274, True);
   Internal_Set_Lower (274, (False, 1));
   Internal_Set_Name
    (274,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (274, (False, (False, 1)));

   Internal_Set_Body
    (275,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (276,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (278, Return_Direction);
   Internal_Set_Is_Ordered (278, False);
   Internal_Set_Is_Unique (278, True);
   Internal_Set_Lower (278, (False, 0));
   Internal_Set_Upper (278, (False, (Unlimited => True)));

   Internal_Set_Direction (279, In_Direction);
   Internal_Set_Is_Ordered (279, False);
   Internal_Set_Is_Unique (279, True);
   Internal_Set_Lower (279, (False, 0));
   Internal_Set_Name
    (279,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (279, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (280, False);
   Internal_Set_Is_Ordered (280, False);
   Internal_Set_Is_Query (280, True);
   Internal_Set_Is_Unique (280, True);
   Internal_Set_Lower (280, (False, 1));
   Internal_Set_Name
    (280,
     (False, League.Strings.To_Universal_String ("maySpecializeType")));
   Internal_Set_Upper (280, (False, (False, 1)));

   Internal_Set_Body
    (281,
     (False, League.Strings.To_Universal_String ("The query maySpecializeType() determines whether this classifier may have a generalization relationship to classifiers of the specified type. By default a classifier may specialize classifiers of the same or a more general type. It is intended to be redefined by classifiers that have different specialization constraints.")));

   Internal_Set_Name
    (282,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (284, Return_Direction);
   Internal_Set_Is_Ordered (284, False);
   Internal_Set_Is_Unique (284, True);
   Internal_Set_Lower (284, (False, 1));
   Internal_Set_Upper (284, (False, (False, 1)));

   Internal_Set_Direction (285, In_Direction);
   Internal_Set_Is_Ordered (285, False);
   Internal_Set_Is_Unique (285, True);
   Internal_Set_Lower (285, (False, 1));
   Internal_Set_Name
    (285,
     (False, League.Strings.To_Universal_String ("c")));
   Internal_Set_Upper (285, (False, (False, 1)));

   Internal_Set_Is_Abstract (8, True);
   Internal_Set_Is_Final_Specialization (8, False);
   Internal_Set_Name
    (8,
     (False, League.Strings.To_Universal_String ("DirectedRelationship")));

   Internal_Set_Body
    (286,
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
    (287,
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
    (288,
     (False, League.Strings.To_Universal_String ("Specifies the targets of the DirectedRelationship.")));

   Internal_Set_Is_Abstract (9, True);
   Internal_Set_Is_Final_Specialization (9, False);
   Internal_Set_Name
    (9,
     (False, League.Strings.To_Universal_String ("Element")));

   Internal_Set_Body
    (289,
     (False, League.Strings.To_Universal_String ("An element is a constituent of a model. As such, it has the capability of owning other elements.")));

   Internal_Set_Name
    (290,
     (False, League.Strings.To_Universal_String ("not_own_self")));

   Internal_Set_Body
    (291,
     (False, League.Strings.To_Universal_String ("An element may not directly or indirectly own itself.")));


   Internal_Set_Name
    (293,
     (False, League.Strings.To_Universal_String ("has_owner")));

   Internal_Set_Body
    (294,
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
    (296,
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
    (297,
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
    (298,
     (False, League.Strings.To_Universal_String ("The Comments owned by this element.")));

   Internal_Set_Is_Leaf (299, False);
   Internal_Set_Is_Ordered (299, False);
   Internal_Set_Is_Query (299, True);
   Internal_Set_Is_Unique (299, True);
   Internal_Set_Lower (299, (False, 1));
   Internal_Set_Name
    (299,
     (False, League.Strings.To_Universal_String ("allOwnedElements")));
   Internal_Set_Upper (299, (False, (False, 1)));

   Internal_Set_Body
    (300,
     (False, League.Strings.To_Universal_String ("The query allOwnedElements() gives all of the direct and indirect owned elements of an element.")));

   Internal_Set_Name
    (301,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (303, Return_Direction);
   Internal_Set_Is_Ordered (303, False);
   Internal_Set_Is_Unique (303, True);
   Internal_Set_Lower (303, (False, 0));
   Internal_Set_Upper (303, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (304, False);
   Internal_Set_Is_Ordered (304, False);
   Internal_Set_Is_Query (304, True);
   Internal_Set_Is_Unique (304, True);
   Internal_Set_Lower (304, (False, 1));
   Internal_Set_Name
    (304,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (304, (False, (False, 1)));

   Internal_Set_Body
    (305,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner. Subclasses of Element that do not require an owner must override this operation.")));

   Internal_Set_Name
    (306,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (308, Return_Direction);
   Internal_Set_Is_Ordered (308, False);
   Internal_Set_Is_Unique (308, True);
   Internal_Set_Lower (308, (False, 1));
   Internal_Set_Upper (308, (False, (False, 1)));

   Internal_Set_Is_Abstract (14, True);
   Internal_Set_Is_Final_Specialization (14, False);
   Internal_Set_Name
    (14,
     (False, League.Strings.To_Universal_String ("Feature")));

   Internal_Set_Body
    (309,
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
    (310,
     (False, League.Strings.To_Universal_String ("The Classifiers that have this Feature as a feature.")));

   Internal_Set_Is_Abstract (15, True);
   Internal_Set_Is_Final_Specialization (15, False);
   Internal_Set_Name
    (15,
     (False, League.Strings.To_Universal_String ("MultiplicityElement")));

   Internal_Set_Body
    (311,
     (False, League.Strings.To_Universal_String ("A multiplicity is a definition of an inclusive interval of non-negative integers beginning with a lower bound and ending with a (possibly infinite) upper bound. A multiplicity element embeds this information to specify the allowable cardinalities for an instantiation of this element.")));

   Internal_Set_Name
    (312,
     (False, League.Strings.To_Universal_String ("upper_ge_lower")));

   Internal_Set_Body
    (313,
     (False, League.Strings.To_Universal_String ("The upper bound must be greater than or equal to the lower bound.")));


   Internal_Set_Name
    (315,
     (False, League.Strings.To_Universal_String ("lower_ge_0")));

   Internal_Set_Body
    (316,
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
    (318,
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
    (319,
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
    (320,
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
    (321,
     (False, League.Strings.To_Universal_String ("Specifies the upper bound of the multiplicity interval.")));

   Internal_Set_Is_Leaf (322, False);
   Internal_Set_Is_Ordered (322, False);
   Internal_Set_Is_Query (322, True);
   Internal_Set_Is_Unique (322, True);
   Internal_Set_Lower (322, (False, 1));
   Internal_Set_Name
    (322,
     (False, League.Strings.To_Universal_String ("isMultivalued")));
   Internal_Set_Upper (322, (False, (False, 1)));

   Internal_Set_Body
    (323,
     (False, League.Strings.To_Universal_String ("The query isMultivalued() checks whether this multiplicity has an upper bound greater than one.")));



   Internal_Set_Name
    (326,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (328, Return_Direction);
   Internal_Set_Is_Ordered (328, False);
   Internal_Set_Is_Unique (328, True);
   Internal_Set_Lower (328, (False, 1));
   Internal_Set_Upper (328, (False, (False, 1)));

   Internal_Set_Is_Leaf (329, False);
   Internal_Set_Is_Ordered (329, False);
   Internal_Set_Is_Query (329, True);
   Internal_Set_Is_Unique (329, True);
   Internal_Set_Lower (329, (False, 1));
   Internal_Set_Name
    (329,
     (False, League.Strings.To_Universal_String ("includesMultiplicity")));
   Internal_Set_Upper (329, (False, (False, 1)));

   Internal_Set_Body
    (330,
     (False, League.Strings.To_Universal_String ("The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity.")));



   Internal_Set_Name
    (333,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (335, Return_Direction);
   Internal_Set_Is_Ordered (335, False);
   Internal_Set_Is_Unique (335, True);
   Internal_Set_Lower (335, (False, 1));
   Internal_Set_Upper (335, (False, (False, 1)));

   Internal_Set_Direction (336, In_Direction);
   Internal_Set_Is_Ordered (336, False);
   Internal_Set_Is_Unique (336, True);
   Internal_Set_Lower (336, (False, 1));
   Internal_Set_Name
    (336,
     (False, League.Strings.To_Universal_String ("M")));
   Internal_Set_Upper (336, (False, (False, 1)));

   Internal_Set_Is_Leaf (337, False);
   Internal_Set_Is_Ordered (337, False);
   Internal_Set_Is_Query (337, True);
   Internal_Set_Is_Unique (337, True);
   Internal_Set_Lower (337, (False, 1));
   Internal_Set_Name
    (337,
     (False, League.Strings.To_Universal_String ("includesCardinality")));
   Internal_Set_Upper (337, (False, (False, 1)));

   Internal_Set_Body
    (338,
     (False, League.Strings.To_Universal_String ("The query includesCardinality() checks whether the specified cardinality is valid for this multiplicity.")));



   Internal_Set_Name
    (341,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (343, Return_Direction);
   Internal_Set_Is_Ordered (343, False);
   Internal_Set_Is_Unique (343, True);
   Internal_Set_Lower (343, (False, 1));
   Internal_Set_Upper (343, (False, (False, 1)));

   Internal_Set_Direction (344, In_Direction);
   Internal_Set_Is_Ordered (344, False);
   Internal_Set_Is_Unique (344, True);
   Internal_Set_Lower (344, (False, 1));
   Internal_Set_Name
    (344,
     (False, League.Strings.To_Universal_String ("C")));
   Internal_Set_Upper (344, (False, (False, 1)));

   Internal_Set_Is_Leaf (345, False);
   Internal_Set_Is_Ordered (345, False);
   Internal_Set_Is_Query (345, True);
   Internal_Set_Is_Unique (345, True);
   Internal_Set_Lower (345, (False, 1));
   Internal_Set_Name
    (345,
     (False, League.Strings.To_Universal_String ("lowerBound")));
   Internal_Set_Upper (345, (False, (False, 1)));

   Internal_Set_Body
    (346,
     (False, League.Strings.To_Universal_String ("The query lowerBound() returns the lower bound of the multiplicity as an integer.")));

   Internal_Set_Name
    (347,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (349, Return_Direction);
   Internal_Set_Is_Ordered (349, False);
   Internal_Set_Is_Unique (349, True);
   Internal_Set_Lower (349, (False, 1));
   Internal_Set_Upper (349, (False, (False, 1)));

   Internal_Set_Is_Leaf (350, False);
   Internal_Set_Is_Ordered (350, False);
   Internal_Set_Is_Query (350, True);
   Internal_Set_Is_Unique (350, True);
   Internal_Set_Lower (350, (False, 1));
   Internal_Set_Name
    (350,
     (False, League.Strings.To_Universal_String ("upperBound")));
   Internal_Set_Upper (350, (False, (False, 1)));

   Internal_Set_Body
    (351,
     (False, League.Strings.To_Universal_String ("The query upperBound() returns the upper bound of the multiplicity for a bounded multiplicity as an unlimited natural.")));

   Internal_Set_Name
    (352,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (354, Return_Direction);
   Internal_Set_Is_Ordered (354, False);
   Internal_Set_Is_Unique (354, True);
   Internal_Set_Lower (354, (False, 1));
   Internal_Set_Upper (354, (False, (False, 1)));

   Internal_Set_Is_Abstract (17, True);
   Internal_Set_Is_Final_Specialization (17, False);
   Internal_Set_Name
    (17,
     (False, League.Strings.To_Universal_String ("Namespace")));

   Internal_Set_Body
    (355,
     (False, League.Strings.To_Universal_String ("A namespace is an element in a model that contains a set of named elements that can be identified by name.")));

   Internal_Set_Name
    (356,
     (False, League.Strings.To_Universal_String ("members_distinguishable")));

   Internal_Set_Body
    (357,
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
    (359,
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
    (360,
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
    (361,
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
    (362,
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
    (363,
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

   Internal_Set_Is_Leaf (364, False);
   Internal_Set_Is_Ordered (364, False);
   Internal_Set_Is_Query (364, True);
   Internal_Set_Is_Unique (364, True);
   Internal_Set_Lower (364, (False, 1));
   Internal_Set_Name
    (364,
     (False, League.Strings.To_Universal_String ("importedMember")));
   Internal_Set_Upper (364, (False, (False, 1)));

   Internal_Set_Body
    (365,
     (False, League.Strings.To_Universal_String ("The importedMember property is derived from the ElementImports and the PackageImports. References the PackageableElements that are members of this Namespace as a result of either PackageImports or ElementImports.")));

   Internal_Set_Name
    (366,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (368, Return_Direction);
   Internal_Set_Is_Ordered (368, False);
   Internal_Set_Is_Unique (368, True);
   Internal_Set_Lower (368, (False, 0));
   Internal_Set_Upper (368, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (369, False);
   Internal_Set_Is_Ordered (369, False);
   Internal_Set_Is_Query (369, True);
   Internal_Set_Is_Unique (369, True);
   Internal_Set_Lower (369, (False, 1));
   Internal_Set_Name
    (369,
     (False, League.Strings.To_Universal_String ("getNamesOfMember")));
   Internal_Set_Upper (369, (False, (False, 1)));

   Internal_Set_Body
    (370,
     (False, League.Strings.To_Universal_String ("The query getNamesOfMember() takes importing into account. It gives back the set of names that an element would have in an importing namespace, either because it is owned, or if not owned then imported individually, or if not individually then from a package.")));

   Internal_Set_Name
    (371,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (373, Return_Direction);
   Internal_Set_Is_Ordered (373, False);
   Internal_Set_Is_Unique (373, True);
   Internal_Set_Lower (373, (False, 0));
   Internal_Set_Upper (373, (False, (Unlimited => True)));

   Internal_Set_Direction (374, In_Direction);
   Internal_Set_Is_Ordered (374, False);
   Internal_Set_Is_Unique (374, True);
   Internal_Set_Lower (374, (False, 1));
   Internal_Set_Name
    (374,
     (False, League.Strings.To_Universal_String ("element")));
   Internal_Set_Upper (374, (False, (False, 1)));

   Internal_Set_Is_Leaf (375, False);
   Internal_Set_Is_Ordered (375, False);
   Internal_Set_Is_Query (375, True);
   Internal_Set_Is_Unique (375, True);
   Internal_Set_Lower (375, (False, 1));
   Internal_Set_Name
    (375,
     (False, League.Strings.To_Universal_String ("importMembers")));
   Internal_Set_Upper (375, (False, (False, 1)));

   Internal_Set_Body
    (376,
     (False, League.Strings.To_Universal_String ("The query importMembers() defines which of a set of PackageableElements are actually imported into the namespace. This excludes hidden ones, i.e., those which have names that conflict with names of owned members, and also excludes elements which would have the same name when imported.")));

   Internal_Set_Name
    (377,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (379, Return_Direction);
   Internal_Set_Is_Ordered (379, False);
   Internal_Set_Is_Unique (379, True);
   Internal_Set_Lower (379, (False, 0));
   Internal_Set_Upper (379, (False, (Unlimited => True)));

   Internal_Set_Direction (380, In_Direction);
   Internal_Set_Is_Ordered (380, False);
   Internal_Set_Is_Unique (380, True);
   Internal_Set_Lower (380, (False, 0));
   Internal_Set_Name
    (380,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (380, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (381, False);
   Internal_Set_Is_Ordered (381, False);
   Internal_Set_Is_Query (381, True);
   Internal_Set_Is_Unique (381, True);
   Internal_Set_Lower (381, (False, 1));
   Internal_Set_Name
    (381,
     (False, League.Strings.To_Universal_String ("excludeCollisions")));
   Internal_Set_Upper (381, (False, (False, 1)));

   Internal_Set_Body
    (382,
     (False, League.Strings.To_Universal_String ("The query excludeCollisions() excludes from a set of PackageableElements any that would not be distinguishable from each other in this namespace.")));

   Internal_Set_Name
    (383,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (385, Return_Direction);
   Internal_Set_Is_Ordered (385, False);
   Internal_Set_Is_Unique (385, True);
   Internal_Set_Lower (385, (False, 0));
   Internal_Set_Upper (385, (False, (Unlimited => True)));

   Internal_Set_Direction (386, In_Direction);
   Internal_Set_Is_Ordered (386, False);
   Internal_Set_Is_Unique (386, True);
   Internal_Set_Lower (386, (False, 0));
   Internal_Set_Name
    (386,
     (False, League.Strings.To_Universal_String ("imps")));
   Internal_Set_Upper (386, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (387, False);
   Internal_Set_Is_Ordered (387, False);
   Internal_Set_Is_Query (387, True);
   Internal_Set_Is_Unique (387, True);
   Internal_Set_Lower (387, (False, 1));
   Internal_Set_Name
    (387,
     (False, League.Strings.To_Universal_String ("membersAreDistinguishable")));
   Internal_Set_Upper (387, (False, (False, 1)));

   Internal_Set_Body
    (388,
     (False, League.Strings.To_Universal_String ("The Boolean query membersAreDistinguishable() determines whether all of the namespace's members are distinguishable within it.")));

   Internal_Set_Name
    (389,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (391, Return_Direction);
   Internal_Set_Is_Ordered (391, False);
   Internal_Set_Is_Unique (391, True);
   Internal_Set_Lower (391, (False, 1));
   Internal_Set_Upper (391, (False, (False, 1)));

   Internal_Set_Is_Abstract (23, True);
   Internal_Set_Is_Final_Specialization (23, False);
   Internal_Set_Name
    (23,
     (False, League.Strings.To_Universal_String ("PackageableElement")));

   Internal_Set_Body
    (392,
     (False, League.Strings.To_Universal_String ("A packageable element indicates a named element that may be owned directly by a package.")));

   Internal_Set_Is_Abstract (27, True);
   Internal_Set_Is_Final_Specialization (27, False);
   Internal_Set_Name
    (27,
     (False, League.Strings.To_Universal_String ("RedefinableElement")));

   Internal_Set_Body
    (393,
     (False, League.Strings.To_Universal_String ("A redefinable element is an element that, when defined in the context of a classifier, can be redefined more specifically or differently in the context of another classifier that specializes (directly or indirectly) the context classifier.")));

   Internal_Set_Name
    (394,
     (False, League.Strings.To_Universal_String ("redefinition_context_valid")));

   Internal_Set_Body
    (395,
     (False, League.Strings.To_Universal_String ("At least one of the redefinition contexts of the redefining element must be a specialization of at least one of the redefinition contexts for each redefined element.")));


   Internal_Set_Name
    (397,
     (False, League.Strings.To_Universal_String ("redefinition_consistent")));

   Internal_Set_Body
    (398,
     (False, League.Strings.To_Universal_String ("A redefining element must be consistent with each redefined element.")));


   Internal_Set_Name
    (400,
     (False, League.Strings.To_Universal_String ("non_leaf_redefinition")));

   Internal_Set_Body
    (401,
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
    (403,
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
    (404,
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
    (405,
     (False, League.Strings.To_Universal_String ("Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement. Note that this property is preserved through package merge operations; that is, the capability to redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in the resulting RedefinableElement of a package merge operation where a RedefinableElement with isLeaf=false is merged with a matching RedefinableElement with isLeaf=true: the resulting RedefinableElement will have isLeaf=false. Default value is false.")));

   Internal_Set_Is_Leaf (406, False);
   Internal_Set_Is_Ordered (406, False);
   Internal_Set_Is_Query (406, True);
   Internal_Set_Is_Unique (406, True);
   Internal_Set_Lower (406, (False, 1));
   Internal_Set_Name
    (406,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (406, (False, (False, 1)));

   Internal_Set_Body
    (407,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two RedefinableElements in a context in which redefinition is possible, whether redefinition would be logically consistent. By default, this is false; this operation must be overridden for subclasses of RedefinableElement to define the consistency conditions.")));

   Internal_Set_Name
    (408,
     (False, League.Strings.To_Universal_String ("spec")));




   Internal_Set_Direction (412, Return_Direction);
   Internal_Set_Is_Ordered (412, False);
   Internal_Set_Is_Unique (412, True);
   Internal_Set_Lower (412, (False, 1));
   Internal_Set_Upper (412, (False, (False, 1)));

   Internal_Set_Direction (413, In_Direction);
   Internal_Set_Is_Ordered (413, False);
   Internal_Set_Is_Unique (413, True);
   Internal_Set_Lower (413, (False, 1));
   Internal_Set_Name
    (413,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (413, (False, (False, 1)));

   Internal_Set_Is_Leaf (414, False);
   Internal_Set_Is_Ordered (414, False);
   Internal_Set_Is_Query (414, True);
   Internal_Set_Is_Unique (414, True);
   Internal_Set_Lower (414, (False, 1));
   Internal_Set_Name
    (414,
     (False, League.Strings.To_Universal_String ("isRedefinitionContextValid")));
   Internal_Set_Upper (414, (False, (False, 1)));

   Internal_Set_Body
    (415,
     (False, League.Strings.To_Universal_String ("The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element.")));

   Internal_Set_Name
    (416,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (418, Return_Direction);
   Internal_Set_Is_Ordered (418, False);
   Internal_Set_Is_Unique (418, True);
   Internal_Set_Lower (418, (False, 1));
   Internal_Set_Upper (418, (False, (False, 1)));

   Internal_Set_Direction (419, In_Direction);
   Internal_Set_Is_Ordered (419, False);
   Internal_Set_Is_Unique (419, True);
   Internal_Set_Lower (419, (False, 1));
   Internal_Set_Name
    (419,
     (False, League.Strings.To_Universal_String ("redefined")));
   Internal_Set_Upper (419, (False, (False, 1)));

   Internal_Set_Is_Abstract (28, True);
   Internal_Set_Is_Final_Specialization (28, False);
   Internal_Set_Name
    (28,
     (False, League.Strings.To_Universal_String ("Relationship")));

   Internal_Set_Body
    (420,
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
    (421,
     (False, League.Strings.To_Universal_String ("Specifies the elements related by the Relationship.")));

   Internal_Set_Is_Abstract (29, True);
   Internal_Set_Is_Final_Specialization (29, False);
   Internal_Set_Name
    (29,
     (False, League.Strings.To_Universal_String ("StructuralFeature")));

   Internal_Set_Body
    (422,
     (False, League.Strings.To_Universal_String ("A structural feature is a typed feature of a classifier that specifies the structure of instances of the classifier.")));

   Internal_Set_Is_Abstract (32, True);
   Internal_Set_Is_Final_Specialization (32, False);
   Internal_Set_Name
    (32,
     (False, League.Strings.To_Universal_String ("TypedElement")));

   Internal_Set_Body
    (423,
     (False, League.Strings.To_Universal_String ("A typed element is a kind of named element that represents an element with a type.")));

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
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (134, (False, (False, 1)));

   Internal_Set_Body
    (424,
     (False, League.Strings.To_Universal_String ("This information is derived from the return result for this Operation.")));

   Internal_Set_Is_Abstract (33, True);
   Internal_Set_Is_Final_Specialization (33, False);
   Internal_Set_Name
    (33,
     (False, League.Strings.To_Universal_String ("ValueSpecification")));

   Internal_Set_Body
    (425,
     (False, League.Strings.To_Universal_String ("A value specification is the specification of a (possibly empty) set of instances, including both objects and data values.")));

   Internal_Set_Is_Leaf (426, False);
   Internal_Set_Is_Ordered (426, False);
   Internal_Set_Is_Query (426, True);
   Internal_Set_Is_Unique (426, True);
   Internal_Set_Lower (426, (False, 1));
   Internal_Set_Name
    (426,
     (False, League.Strings.To_Universal_String ("isComputable")));
   Internal_Set_Upper (426, (False, (False, 1)));

   Internal_Set_Body
    (427,
     (False, League.Strings.To_Universal_String ("The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all value specifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute the value of all literals.")));

   Internal_Set_Name
    (428,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (430, Return_Direction);
   Internal_Set_Is_Ordered (430, False);
   Internal_Set_Is_Unique (430, True);
   Internal_Set_Lower (430, (False, 1));
   Internal_Set_Upper (430, (False, (False, 1)));

   Internal_Set_Is_Leaf (431, False);
   Internal_Set_Is_Ordered (431, False);
   Internal_Set_Is_Query (431, True);
   Internal_Set_Is_Unique (431, True);
   Internal_Set_Lower (431, (False, 1));
   Internal_Set_Name
    (431,
     (False, League.Strings.To_Universal_String ("integerValue")));
   Internal_Set_Upper (431, (False, (False, 1)));

   Internal_Set_Body
    (432,
     (False, League.Strings.To_Universal_String ("The query integerValue() gives a single Integer value when one can be computed.")));

   Internal_Set_Name
    (433,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (435, Return_Direction);
   Internal_Set_Is_Ordered (435, False);
   Internal_Set_Is_Unique (435, True);
   Internal_Set_Lower (435, (False, 1));
   Internal_Set_Upper (435, (False, (False, 1)));

   Internal_Set_Is_Leaf (436, False);
   Internal_Set_Is_Ordered (436, False);
   Internal_Set_Is_Query (436, True);
   Internal_Set_Is_Unique (436, True);
   Internal_Set_Lower (436, (False, 1));
   Internal_Set_Name
    (436,
     (False, League.Strings.To_Universal_String ("booleanValue")));
   Internal_Set_Upper (436, (False, (False, 1)));

   Internal_Set_Body
    (437,
     (False, League.Strings.To_Universal_String ("The query booleanValue() gives a single Boolean value when one can be computed.")));

   Internal_Set_Name
    (438,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (440, Return_Direction);
   Internal_Set_Is_Ordered (440, False);
   Internal_Set_Is_Unique (440, True);
   Internal_Set_Lower (440, (False, 1));
   Internal_Set_Upper (440, (False, (False, 1)));

   Internal_Set_Is_Leaf (441, False);
   Internal_Set_Is_Ordered (441, False);
   Internal_Set_Is_Query (441, True);
   Internal_Set_Is_Unique (441, True);
   Internal_Set_Lower (441, (False, 1));
   Internal_Set_Name
    (441,
     (False, League.Strings.To_Universal_String ("stringValue")));
   Internal_Set_Upper (441, (False, (False, 1)));

   Internal_Set_Body
    (442,
     (False, League.Strings.To_Universal_String ("The query stringValue() gives a single String value when one can be computed.")));

   Internal_Set_Name
    (443,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (445, Return_Direction);
   Internal_Set_Is_Ordered (445, False);
   Internal_Set_Is_Unique (445, True);
   Internal_Set_Lower (445, (False, 1));
   Internal_Set_Upper (445, (False, (False, 1)));

   Internal_Set_Is_Leaf (446, False);
   Internal_Set_Is_Ordered (446, False);
   Internal_Set_Is_Query (446, True);
   Internal_Set_Is_Unique (446, True);
   Internal_Set_Lower (446, (False, 1));
   Internal_Set_Name
    (446,
     (False, League.Strings.To_Universal_String ("unlimitedValue")));
   Internal_Set_Upper (446, (False, (False, 1)));

   Internal_Set_Body
    (447,
     (False, League.Strings.To_Universal_String ("The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed.")));

   Internal_Set_Name
    (448,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (450, Return_Direction);
   Internal_Set_Is_Ordered (450, False);
   Internal_Set_Is_Unique (450, True);
   Internal_Set_Lower (450, (False, 1));
   Internal_Set_Upper (450, (False, (False, 1)));

   Internal_Set_Is_Leaf (451, False);
   Internal_Set_Is_Ordered (451, False);
   Internal_Set_Is_Query (451, True);
   Internal_Set_Is_Unique (451, True);
   Internal_Set_Lower (451, (False, 1));
   Internal_Set_Name
    (451,
     (False, League.Strings.To_Universal_String ("isNull")));
   Internal_Set_Upper (451, (False, (False, 1)));

   Internal_Set_Body
    (452,
     (False, League.Strings.To_Universal_String ("The query isNull() returns true when it can be computed that the value is null.")));

   Internal_Set_Name
    (453,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (455, Return_Direction);
   Internal_Set_Is_Ordered (455, False);
   Internal_Set_Is_Unique (455, True);
   Internal_Set_Lower (455, (False, 1));
   Internal_Set_Upper (455, (False, (False, 1)));

   Internal_Set_Is_Abstract (1, False);
   Internal_Set_Is_Final_Specialization (1, False);
   Internal_Set_Name
    (1,
     (False, League.Strings.To_Universal_String ("Association")));

   Internal_Set_Body
    (456,
     (False, League.Strings.To_Universal_String ("An association describes a set of tuples whose values refer to typed instances. An instance of an association is called a link.A link is a tuple with one value for each end of the association, where each value is an instance of the type of the end.")));

   Internal_Set_Name
    (457,
     (False, League.Strings.To_Universal_String ("association_ends")));

   Internal_Set_Body
    (458,
     (False, League.Strings.To_Universal_String ("Association ends of associations with more than two ends must be owned by the association.")));


   Internal_Set_Name
    (460,
     (False, League.Strings.To_Universal_String ("binary_associations")));

   Internal_Set_Body
    (461,
     (False, League.Strings.To_Universal_String ("Only binary associations can be aggregations.")));


   Internal_Set_Name
    (463,
     (False, League.Strings.To_Universal_String ("specialized_end_number")));

   Internal_Set_Body
    (464,
     (False, League.Strings.To_Universal_String ("An association specializing another association has the same number of ends as the other association.")));


   Internal_Set_Name
    (466,
     (False, League.Strings.To_Universal_String ("specialized_end_types")));

   Internal_Set_Body
    (467,
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
    (469,
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
    (470,
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
    (471,
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
    (472,
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
    (473,
     (False, League.Strings.To_Universal_String ("The navigable ends that are owned by the association itself.")));

   Internal_Set_Is_Leaf (474, False);
   Internal_Set_Is_Ordered (474, False);
   Internal_Set_Is_Query (474, True);
   Internal_Set_Is_Unique (474, True);
   Internal_Set_Lower (474, (False, 1));
   Internal_Set_Name
    (474,
     (False, League.Strings.To_Universal_String ("endType")));
   Internal_Set_Upper (474, (False, (False, 1)));

   Internal_Set_Body
    (475,
     (False, League.Strings.To_Universal_String ("endType is derived from the types of the member ends.")));

   Internal_Set_Name
    (476,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (478, Return_Direction);
   Internal_Set_Is_Ordered (478, True);
   Internal_Set_Is_Unique (478, True);
   Internal_Set_Lower (478, (False, 0));
   Internal_Set_Upper (478, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (3, False);
   Internal_Set_Is_Final_Specialization (3, False);
   Internal_Set_Name
    (3,
     (False, League.Strings.To_Universal_String ("Class")));

   Internal_Set_Body
    (479,
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
    (480,
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
    (481,
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
    (482,
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
    (483,
     (False, League.Strings.To_Universal_String ("This gives the superclasses of a class.")));

   Internal_Set_Is_Leaf (484, False);
   Internal_Set_Is_Ordered (484, False);
   Internal_Set_Is_Query (484, True);
   Internal_Set_Is_Unique (484, True);
   Internal_Set_Lower (484, (False, 1));
   Internal_Set_Name
    (484,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (484, (False, (False, 1)));

   Internal_Set_Body
    (485,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (486,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (488, Return_Direction);
   Internal_Set_Is_Ordered (488, False);
   Internal_Set_Is_Unique (488, True);
   Internal_Set_Lower (488, (False, 0));
   Internal_Set_Upper (488, (False, (Unlimited => True)));

   Internal_Set_Direction (489, In_Direction);
   Internal_Set_Is_Ordered (489, False);
   Internal_Set_Is_Unique (489, True);
   Internal_Set_Lower (489, (False, 0));
   Internal_Set_Name
    (489,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (489, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (26, False);
   Internal_Set_Is_Final_Specialization (26, False);
   Internal_Set_Name
    (26,
     (False, League.Strings.To_Universal_String ("Property")));

   Internal_Set_Body
    (490,
     (False, League.Strings.To_Universal_String ("A property is a structural feature of a classifier that characterizes instances of the classifier. A property related by ownedAttribute to a classifier (other than an association) represents an attribute and might also represent an association end. It relates an instance of the class to a value or set of values of the type of the attribute. A property related by memberEnd or its specializations to an association represents an end of the association. The type of the property is the type of the end of the association.")));

   Internal_Set_Name
    (491,
     (False, League.Strings.To_Universal_String ("multiplicity_of_composite")));

   Internal_Set_Body
    (492,
     (False, League.Strings.To_Universal_String ("A multiplicity of a composite aggregation must not have an upper bound greater than 1.")));


   Internal_Set_Name
    (494,
     (False, League.Strings.To_Universal_String ("subsetting_context_conforms")));

   Internal_Set_Body
    (495,
     (False, League.Strings.To_Universal_String ("Subsetting may only occur when the context of the subsetting property conforms to the context of the subsetted property.")));


   Internal_Set_Name
    (497,
     (False, League.Strings.To_Universal_String ("redefined_property_inherited")));

   Internal_Set_Body
    (498,
     (False, League.Strings.To_Universal_String ("A redefined property must be inherited from a more general classifier containing the redefining property.")));


   Internal_Set_Name
    (500,
     (False, League.Strings.To_Universal_String ("subsetting_rules")));

   Internal_Set_Body
    (501,
     (False, League.Strings.To_Universal_String ("A subsetting property may strengthen the type of the subsetted property, and its upper bound may be less.")));


   Internal_Set_Name
    (503,
     (False, League.Strings.To_Universal_String ("navigable_readonly")));

   Internal_Set_Body
    (504,
     (False, League.Strings.To_Universal_String ("Only a navigable property can be marked as readOnly.")));


   Internal_Set_Name
    (506,
     (False, League.Strings.To_Universal_String ("derived_union_is_derived")));

   Internal_Set_Body
    (507,
     (False, League.Strings.To_Universal_String ("A derived union is derived.")));


   Internal_Set_Name
    (509,
     (False, League.Strings.To_Universal_String ("subsetted_property_names")));

   Internal_Set_Body
    (510,
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
    (512,
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
    (513,
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
    (514,
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
    (515,
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
    (516,
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
    (517,
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
    (518,
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
    (519,
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
    (520,
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
    (521,
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
    (522,
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
    (523,
     (False, League.Strings.To_Universal_String ("References the association of which this property is a member, if any.")));

   Internal_Set_Is_Leaf (524, False);
   Internal_Set_Is_Ordered (524, False);
   Internal_Set_Is_Query (524, True);
   Internal_Set_Is_Unique (524, True);
   Internal_Set_Lower (524, (False, 1));
   Internal_Set_Name
    (524,
     (False, League.Strings.To_Universal_String ("opposite")));
   Internal_Set_Upper (524, (False, (False, 1)));

   Internal_Set_Body
    (525,
     (False, League.Strings.To_Universal_String ("If this property is owned by a class, associated with a binary association, and the other end of the association is also owned by a class, then opposite gives the other end.")));

   Internal_Set_Name
    (526,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (528, Return_Direction);
   Internal_Set_Is_Ordered (528, False);
   Internal_Set_Is_Unique (528, True);
   Internal_Set_Lower (528, (False, 1));
   Internal_Set_Upper (528, (False, (False, 1)));

   Internal_Set_Is_Leaf (529, False);
   Internal_Set_Is_Ordered (529, False);
   Internal_Set_Is_Query (529, True);
   Internal_Set_Is_Unique (529, True);
   Internal_Set_Lower (529, (False, 1));
   Internal_Set_Name
    (529,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (529, (False, (False, 1)));

   Internal_Set_Body
    (530,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Properties in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining property is consistent with a redefined property if the type of the redefining property conforms to the type of the redefined property, the multiplicity of the redefining property (if specified) is contained in the multiplicity of the redefined property, and the redefining property is derived if the redefined property is derived.")));



   Internal_Set_Name
    (533,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (535, Return_Direction);
   Internal_Set_Is_Ordered (535, False);
   Internal_Set_Is_Unique (535, True);
   Internal_Set_Lower (535, (False, 1));
   Internal_Set_Upper (535, (False, (False, 1)));

   Internal_Set_Direction (536, In_Direction);
   Internal_Set_Is_Ordered (536, False);
   Internal_Set_Is_Unique (536, True);
   Internal_Set_Lower (536, (False, 1));
   Internal_Set_Name
    (536,
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (536, (False, (False, 1)));

   Internal_Set_Is_Leaf (537, False);
   Internal_Set_Is_Ordered (537, False);
   Internal_Set_Is_Query (537, True);
   Internal_Set_Is_Unique (537, True);
   Internal_Set_Lower (537, (False, 1));
   Internal_Set_Name
    (537,
     (False, League.Strings.To_Universal_String ("subsettingContext")));
   Internal_Set_Upper (537, (False, (False, 1)));

   Internal_Set_Body
    (538,
     (False, League.Strings.To_Universal_String ("The query subsettingContext() gives the context for subsetting a property. It consists, in the case of an attribute, of the corresponding classifier, and in the case of an association end, all of the classifiers at the other ends.")));

   Internal_Set_Name
    (539,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (541, Return_Direction);
   Internal_Set_Is_Ordered (541, False);
   Internal_Set_Is_Unique (541, True);
   Internal_Set_Lower (541, (False, 0));
   Internal_Set_Upper (541, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (542, False);
   Internal_Set_Is_Ordered (542, False);
   Internal_Set_Is_Query (542, True);
   Internal_Set_Is_Unique (542, True);
   Internal_Set_Lower (542, (False, 1));
   Internal_Set_Name
    (542,
     (False, League.Strings.To_Universal_String ("isNavigable")));
   Internal_Set_Upper (542, (False, (False, 1)));

   Internal_Set_Body
    (543,
     (False, League.Strings.To_Universal_String ("The query isNavigable() indicates whether it is possible to navigate across the property.")));

   Internal_Set_Name
    (544,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (546, Return_Direction);
   Internal_Set_Is_Ordered (546, False);
   Internal_Set_Is_Unique (546, True);
   Internal_Set_Lower (546, (False, 1));
   Internal_Set_Upper (546, (False, (False, 1)));

   Internal_Set_Is_Leaf (547, False);
   Internal_Set_Is_Ordered (547, False);
   Internal_Set_Is_Query (547, True);
   Internal_Set_Is_Unique (547, True);
   Internal_Set_Lower (547, (False, 1));
   Internal_Set_Name
    (547,
     (False, League.Strings.To_Universal_String ("isAttribute")));
   Internal_Set_Upper (547, (False, (False, 1)));

   Internal_Set_Body
    (548,
     (False, League.Strings.To_Universal_String ("The query isAttribute() is true if the Property is defined as an attribute of some classifier.")));

   Internal_Set_Name
    (549,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (551, Return_Direction);
   Internal_Set_Is_Ordered (551, False);
   Internal_Set_Is_Unique (551, True);
   Internal_Set_Lower (551, (False, 1));
   Internal_Set_Upper (551, (False, (False, 1)));

   Internal_Set_Direction (552, In_Direction);
   Internal_Set_Is_Ordered (552, False);
   Internal_Set_Is_Unique (552, True);
   Internal_Set_Lower (552, (False, 1));
   Internal_Set_Name
    (552,
     (False, League.Strings.To_Universal_String ("p")));
   Internal_Set_Upper (552, (False, (False, 1)));

   Internal_Set_Is_Abstract (7, False);
   Internal_Set_Is_Final_Specialization (7, False);
   Internal_Set_Name
    (7,
     (False, League.Strings.To_Universal_String ("DataType")));

   Internal_Set_Body
    (553,
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
    (554,
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
    (555,
     (False, League.Strings.To_Universal_String ("The Operations owned by the DataType.")));

   Internal_Set_Is_Leaf (556, False);
   Internal_Set_Is_Ordered (556, False);
   Internal_Set_Is_Query (556, True);
   Internal_Set_Is_Unique (556, True);
   Internal_Set_Lower (556, (False, 1));
   Internal_Set_Name
    (556,
     (False, League.Strings.To_Universal_String ("inherit")));
   Internal_Set_Upper (556, (False, (False, 1)));

   Internal_Set_Body
    (557,
     (False, League.Strings.To_Universal_String ("The inherit operation is overridden to exclude redefined properties.")));

   Internal_Set_Name
    (558,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (560, Return_Direction);
   Internal_Set_Is_Ordered (560, False);
   Internal_Set_Is_Unique (560, True);
   Internal_Set_Lower (560, (False, 0));
   Internal_Set_Upper (560, (False, (Unlimited => True)));

   Internal_Set_Direction (561, In_Direction);
   Internal_Set_Is_Ordered (561, False);
   Internal_Set_Is_Unique (561, True);
   Internal_Set_Lower (561, (False, 0));
   Internal_Set_Name
    (561,
     (False, League.Strings.To_Universal_String ("inhs")));
   Internal_Set_Upper (561, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (11, False);
   Internal_Set_Is_Final_Specialization (11, False);
   Internal_Set_Name
    (11,
     (False, League.Strings.To_Universal_String ("Enumeration")));

   Internal_Set_Body
    (562,
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
    (563,
     (False, League.Strings.To_Universal_String ("The ordered set of literals for this Enumeration.")));

   Internal_Set_Is_Abstract (12, False);
   Internal_Set_Is_Final_Specialization (12, False);
   Internal_Set_Name
    (12,
     (False, League.Strings.To_Universal_String ("EnumerationLiteral")));

   Internal_Set_Body
    (564,
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
    (565,
     (False, League.Strings.To_Universal_String ("The Enumeration that this EnumerationLiteral is a member of.")));

   Internal_Set_Is_Abstract (25, False);
   Internal_Set_Is_Final_Specialization (25, False);
   Internal_Set_Name
    (25,
     (False, League.Strings.To_Universal_String ("PrimitiveType")));

   Internal_Set_Body
    (566,
     (False, League.Strings.To_Universal_String ("A primitive type defines a predefined data type, without any relevant substructure (i.e., it has no parts in the context of UML). A primitive datatype may have an algebra and operations defined outside of UML, for example, mathematically.")));

   Internal_Set_Is_Abstract (6, False);
   Internal_Set_Is_Final_Specialization (6, False);
   Internal_Set_Name
    (6,
     (False, League.Strings.To_Universal_String ("Constraint")));

   Internal_Set_Body
    (567,
     (False, League.Strings.To_Universal_String ("A constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an element.")));

   Internal_Set_Name
    (568,
     (False, League.Strings.To_Universal_String ("not_apply_to_self")));

   Internal_Set_Body
    (569,
     (False, League.Strings.To_Universal_String ("A constraint cannot be applied to itself.")));


   Internal_Set_Name
    (571,
     (False, League.Strings.To_Universal_String ("value_specification_boolean")));

   Internal_Set_Body
    (572,
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
    (574,
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
    (575,
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
    (576,
     (False, League.Strings.To_Universal_String ("An opaque expression is an uninterpreted textual statement that denotes a (possibly empty) set of values when evaluated in a context.")));

   Internal_Set_Name
    (577,
     (False, League.Strings.To_Universal_String ("language_body_size")));

   Internal_Set_Body
    (578,
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
    (580,
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
    (581,
     (False, League.Strings.To_Universal_String ("Specifies the languages in which the expression is stated. The interpretation of the expression body depends on the languages. If the languages are unspecified, they might be implicit from the expression body or the context. Languages are matched to body strings by order.")));

   Internal_Set_Is_Abstract (19, False);
   Internal_Set_Is_Final_Specialization (19, False);
   Internal_Set_Name
    (19,
     (False, League.Strings.To_Universal_String ("Operation")));

   Internal_Set_Body
    (582,
     (False, League.Strings.To_Universal_String ("An operation is a behavioral feature of a classifier that specifies the name, type, parameters, and constraints for invoking an associated behavior.")));

   Internal_Set_Name
    (583,
     (False, League.Strings.To_Universal_String ("only_body_for_query")));

   Internal_Set_Body
    (584,
     (False, League.Strings.To_Universal_String ("A bodyCondition can only be specified for a query operation.")));


   Internal_Set_Name
    (586,
     (False, League.Strings.To_Universal_String ("at_most_one_return")));

   Internal_Set_Body
    (587,
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
    (589,
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
    (590,
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
    (591,
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
    (592,
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
    (593,
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
    (594,
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
    (595,
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
    (596,
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
    (597,
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
    (598,
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
    (599,
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

   Internal_Set_Is_Leaf (600, False);
   Internal_Set_Is_Ordered (600, False);
   Internal_Set_Is_Query (600, True);
   Internal_Set_Is_Unique (600, True);
   Internal_Set_Lower (600, (False, 1));
   Internal_Set_Name
    (600,
     (False, League.Strings.To_Universal_String ("isOrdered")));
   Internal_Set_Upper (600, (False, (False, 1)));

   Internal_Set_Body
    (601,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false.")));

   Internal_Set_Name
    (602,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (604, Return_Direction);
   Internal_Set_Is_Ordered (604, False);
   Internal_Set_Is_Unique (604, True);
   Internal_Set_Lower (604, (False, 1));
   Internal_Set_Upper (604, (False, (False, 1)));

   Internal_Set_Is_Leaf (605, False);
   Internal_Set_Is_Ordered (605, False);
   Internal_Set_Is_Query (605, True);
   Internal_Set_Is_Unique (605, True);
   Internal_Set_Lower (605, (False, 1));
   Internal_Set_Name
    (605,
     (False, League.Strings.To_Universal_String ("isUnique")));
   Internal_Set_Upper (605, (False, (False, 1)));

   Internal_Set_Body
    (606,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true.")));

   Internal_Set_Name
    (607,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (609, Return_Direction);
   Internal_Set_Is_Ordered (609, False);
   Internal_Set_Is_Unique (609, True);
   Internal_Set_Lower (609, (False, 1));
   Internal_Set_Upper (609, (False, (False, 1)));

   Internal_Set_Is_Leaf (610, False);
   Internal_Set_Is_Ordered (610, False);
   Internal_Set_Is_Query (610, True);
   Internal_Set_Is_Unique (610, True);
   Internal_Set_Lower (610, (False, 1));
   Internal_Set_Name
    (610,
     (False, League.Strings.To_Universal_String ("lower")));
   Internal_Set_Upper (610, (False, (False, 1)));

   Internal_Set_Body
    (611,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower is not defined.")));

   Internal_Set_Name
    (612,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (614, Return_Direction);
   Internal_Set_Is_Ordered (614, False);
   Internal_Set_Is_Unique (614, True);
   Internal_Set_Lower (614, (False, 1));
   Internal_Set_Upper (614, (False, (False, 1)));

   Internal_Set_Is_Leaf (615, False);
   Internal_Set_Is_Ordered (615, False);
   Internal_Set_Is_Query (615, True);
   Internal_Set_Is_Unique (615, True);
   Internal_Set_Lower (615, (False, 1));
   Internal_Set_Name
    (615,
     (False, League.Strings.To_Universal_String ("upper")));
   Internal_Set_Upper (615, (False, (False, 1)));

   Internal_Set_Body
    (616,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper is not defined.")));

   Internal_Set_Name
    (617,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (619, Return_Direction);
   Internal_Set_Is_Ordered (619, False);
   Internal_Set_Is_Unique (619, True);
   Internal_Set_Lower (619, (False, 1));
   Internal_Set_Upper (619, (False, (False, 1)));

   Internal_Set_Is_Leaf (620, False);
   Internal_Set_Is_Ordered (620, False);
   Internal_Set_Is_Query (620, True);
   Internal_Set_Is_Unique (620, True);
   Internal_Set_Lower (620, (False, 1));
   Internal_Set_Name
    (620,
     (False, League.Strings.To_Universal_String ("type")));
   Internal_Set_Upper (620, (False, (False, 1)));

   Internal_Set_Body
    (621,
     (False, League.Strings.To_Universal_String ("If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type is not defined.")));

   Internal_Set_Name
    (622,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (624, Return_Direction);
   Internal_Set_Is_Ordered (624, False);
   Internal_Set_Is_Unique (624, True);
   Internal_Set_Lower (624, (False, 1));
   Internal_Set_Upper (624, (False, (False, 1)));

   Internal_Set_Is_Leaf (625, False);
   Internal_Set_Is_Ordered (625, False);
   Internal_Set_Is_Query (625, True);
   Internal_Set_Is_Unique (625, True);
   Internal_Set_Lower (625, (False, 1));
   Internal_Set_Name
    (625,
     (False, League.Strings.To_Universal_String ("isConsistentWith")));
   Internal_Set_Upper (625, (False, (False, 1)));

   Internal_Set_Body
    (626,
     (False, League.Strings.To_Universal_String ("The query isConsistentWith() specifies, for any two Operations in a context in which redefinition is possible, whether redefinition would be consistent in the sense of maintaining type covariance. Other senses of consistency may be required, for example to determine consistency in the sense of contravariance. Users may define alternative queries under names different from 'isConsistentWith()', as for example, users may define a query named 'isContravariantWith()'.")));



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
     (False, League.Strings.To_Universal_String ("redefinee")));
   Internal_Set_Upper (632, (False, (False, 1)));

   Internal_Set_Is_Leaf (633, False);
   Internal_Set_Is_Ordered (633, False);
   Internal_Set_Is_Query (633, True);
   Internal_Set_Is_Unique (633, True);
   Internal_Set_Lower (633, (False, 1));
   Internal_Set_Name
    (633,
     (False, League.Strings.To_Universal_String ("returnResult")));
   Internal_Set_Upper (633, (False, (False, 1)));

   Internal_Set_Name
    (634,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (636, Return_Direction);
   Internal_Set_Is_Ordered (636, False);
   Internal_Set_Is_Unique (636, True);
   Internal_Set_Lower (636, (False, 0));
   Internal_Set_Upper (636, (False, (Unlimited => True)));

   Internal_Set_Is_Abstract (24, False);
   Internal_Set_Is_Final_Specialization (24, False);
   Internal_Set_Name
    (24,
     (False, League.Strings.To_Universal_String ("Parameter")));

   Internal_Set_Body
    (637,
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
    (638,
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
    (639,
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
    (640,
     (False, League.Strings.To_Universal_String ("References the Operation owning this parameter.")));

   Internal_Set_Is_Abstract (2, True);
   Internal_Set_Is_Final_Specialization (2, False);
   Internal_Set_Name
    (2,
     (False, League.Strings.To_Universal_String ("BehavioralFeature")));

   Internal_Set_Body
    (641,
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
    (642,
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
    (643,
     (False, League.Strings.To_Universal_String ("References the Types representing exceptions that may be raised during an invocation of this feature.")));

   Internal_Set_Is_Leaf (644, False);
   Internal_Set_Is_Ordered (644, False);
   Internal_Set_Is_Query (644, True);
   Internal_Set_Is_Unique (644, True);
   Internal_Set_Lower (644, (False, 1));
   Internal_Set_Name
    (644,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (644, (False, (False, 1)));

   Internal_Set_Body
    (645,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two BehavioralFeatures may coexist in the same Namespace. It specifies that they have to have different signatures.")));

   Internal_Set_Name
    (646,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (648, Return_Direction);
   Internal_Set_Is_Ordered (648, False);
   Internal_Set_Is_Unique (648, True);
   Internal_Set_Lower (648, (False, 1));
   Internal_Set_Upper (648, (False, (False, 1)));

   Internal_Set_Direction (649, In_Direction);
   Internal_Set_Is_Ordered (649, False);
   Internal_Set_Is_Unique (649, True);
   Internal_Set_Lower (649, (False, 1));
   Internal_Set_Name
    (649,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (649, (False, (False, 1)));

   Internal_Set_Direction (650, In_Direction);
   Internal_Set_Is_Ordered (650, False);
   Internal_Set_Is_Unique (650, True);
   Internal_Set_Lower (650, (False, 1));
   Internal_Set_Name
    (650,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (650, (False, (False, 1)));

   Internal_Set_Is_Abstract (10, False);
   Internal_Set_Is_Final_Specialization (10, False);
   Internal_Set_Name
    (10,
     (False, League.Strings.To_Universal_String ("ElementImport")));

   Internal_Set_Body
    (651,
     (False, League.Strings.To_Universal_String ("An element import identifies an element in another package, and allows the element to be referenced using its name without a qualifier.")));

   Internal_Set_Name
    (652,
     (False, League.Strings.To_Universal_String ("visibility_public_or_private")));

   Internal_Set_Body
    (653,
     (False, League.Strings.To_Universal_String ("The visibility of an ElementImport is either public or private.")));


   Internal_Set_Name
    (655,
     (False, League.Strings.To_Universal_String ("imported_element_is_public")));

   Internal_Set_Body
    (656,
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
    (658,
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
    (659,
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
    (660,
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
    (661,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports a PackageableElement from another Package.")));

   Internal_Set_Is_Leaf (662, False);
   Internal_Set_Is_Ordered (662, False);
   Internal_Set_Is_Query (662, True);
   Internal_Set_Is_Unique (662, True);
   Internal_Set_Lower (662, (False, 1));
   Internal_Set_Name
    (662,
     (False, League.Strings.To_Universal_String ("getName")));
   Internal_Set_Upper (662, (False, (False, 1)));

   Internal_Set_Body
    (663,
     (False, League.Strings.To_Universal_String ("The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace.")));

   Internal_Set_Name
    (664,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (666, Return_Direction);
   Internal_Set_Is_Ordered (666, False);
   Internal_Set_Is_Unique (666, True);
   Internal_Set_Lower (666, (False, 1));
   Internal_Set_Upper (666, (False, (False, 1)));

   Internal_Set_Is_Abstract (20, False);
   Internal_Set_Is_Final_Specialization (20, False);
   Internal_Set_Name
    (20,
     (False, League.Strings.To_Universal_String ("Package")));

   Internal_Set_Body
    (667,
     (False, League.Strings.To_Universal_String ("A package is used to group elements, and provides a namespace for the grouped elements.")));

   Internal_Set_Name
    (668,
     (False, League.Strings.To_Universal_String ("elements_public_or_private")));

   Internal_Set_Body
    (669,
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
    (671,
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
    (672,
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
    (673,
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
    (674,
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
    (675,
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
    (676,
     (False, League.Strings.To_Universal_String ("Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt. UML 1.4 and MOF 1.4 were assigned URIs to their outermost package. The package URI appears in XMI files when instances of the package’s classes are serialized.")));

   Internal_Set_Is_Leaf (677, False);
   Internal_Set_Is_Ordered (677, False);
   Internal_Set_Is_Query (677, True);
   Internal_Set_Is_Unique (677, True);
   Internal_Set_Lower (677, (False, 1));
   Internal_Set_Name
    (677,
     (False, League.Strings.To_Universal_String ("mustBeOwned")));
   Internal_Set_Upper (677, (False, (False, 1)));

   Internal_Set_Body
    (678,
     (False, League.Strings.To_Universal_String ("The query mustBeOwned() indicates whether elements of this type must have an owner.")));

   Internal_Set_Name
    (679,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (681, Return_Direction);
   Internal_Set_Is_Ordered (681, False);
   Internal_Set_Is_Unique (681, True);
   Internal_Set_Lower (681, (False, 1));
   Internal_Set_Upper (681, (False, (False, 1)));

   Internal_Set_Is_Leaf (682, False);
   Internal_Set_Is_Ordered (682, False);
   Internal_Set_Is_Query (682, True);
   Internal_Set_Is_Unique (682, True);
   Internal_Set_Lower (682, (False, 1));
   Internal_Set_Name
    (682,
     (False, League.Strings.To_Universal_String ("visibleMembers")));
   Internal_Set_Upper (682, (False, (False, 1)));

   Internal_Set_Body
    (683,
     (False, League.Strings.To_Universal_String ("The query visibleMembers() defines which members of a Package can be accessed outside it.")));

   Internal_Set_Name
    (684,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (686, Return_Direction);
   Internal_Set_Is_Ordered (686, False);
   Internal_Set_Is_Unique (686, True);
   Internal_Set_Lower (686, (False, 0));
   Internal_Set_Upper (686, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (687, False);
   Internal_Set_Is_Ordered (687, False);
   Internal_Set_Is_Query (687, True);
   Internal_Set_Is_Unique (687, True);
   Internal_Set_Lower (687, (False, 1));
   Internal_Set_Name
    (687,
     (False, League.Strings.To_Universal_String ("makesVisible")));
   Internal_Set_Upper (687, (False, (False, 1)));

   Internal_Set_Body
    (688,
     (False, League.Strings.To_Universal_String ("The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible.")));



   Internal_Set_Name
    (691,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (693, Return_Direction);
   Internal_Set_Is_Ordered (693, False);
   Internal_Set_Is_Unique (693, True);
   Internal_Set_Lower (693, (False, 1));
   Internal_Set_Upper (693, (False, (False, 1)));

   Internal_Set_Direction (694, In_Direction);
   Internal_Set_Is_Ordered (694, False);
   Internal_Set_Is_Unique (694, True);
   Internal_Set_Lower (694, (False, 1));
   Internal_Set_Name
    (694,
     (False, League.Strings.To_Universal_String ("el")));
   Internal_Set_Upper (694, (False, (False, 1)));

   Internal_Set_Is_Abstract (21, False);
   Internal_Set_Is_Final_Specialization (21, False);
   Internal_Set_Name
    (21,
     (False, League.Strings.To_Universal_String ("PackageImport")));

   Internal_Set_Body
    (695,
     (False, League.Strings.To_Universal_String ("A package import is a relationship that allows the use of unqualified names to refer to package members from other namespaces.")));

   Internal_Set_Name
    (696,
     (False, League.Strings.To_Universal_String ("public_or_private")));

   Internal_Set_Body
    (697,
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
    (699,
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
    (700,
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
    (701,
     (False, League.Strings.To_Universal_String ("Specifies the Namespace that imports the members from a Package.")));

   Internal_Set_Is_Abstract (22, False);
   Internal_Set_Is_Final_Specialization (22, False);
   Internal_Set_Name
    (22,
     (False, League.Strings.To_Universal_String ("PackageMerge")));

   Internal_Set_Body
    (702,
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
    (703,
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
    (704,
     (False, League.Strings.To_Universal_String ("References the Package that is to be merged with the receiving package of the PackageMerge.")));

   Internal_Set_Is_Abstract (31, True);
   Internal_Set_Is_Final_Specialization (31, False);
   Internal_Set_Name
    (31,
     (False, League.Strings.To_Universal_String ("Type")));

   Internal_Set_Body
    (705,
     (False, League.Strings.To_Universal_String ("A type is a named element that is used as the type for a typed element. A type can be contained in a package.")));

   Internal_Set_Is_Composite (133, False);
   Internal_Set_Is_Derived (133, False);
   Internal_Set_Is_Derived_Union (133, False);
   Internal_Set_Is_Leaf (133, False);
   Internal_Set_Is_Ordered (133, False);
   Internal_Set_Is_Read_Only (133, False);
   Internal_Set_Is_Unique (133, True);
   Internal_Set_Lower (133, (False, 0));
   Internal_Set_Name
    (133,
     (False, League.Strings.To_Universal_String ("package")));
   Internal_Set_Upper (133, (False, (False, 1)));

   Internal_Set_Body
    (706,
     (False, League.Strings.To_Universal_String ("Specifies the owning package of this classifier, if any.")));

   Internal_Set_Is_Leaf (707, False);
   Internal_Set_Is_Ordered (707, False);
   Internal_Set_Is_Query (707, True);
   Internal_Set_Is_Unique (707, True);
   Internal_Set_Lower (707, (False, 1));
   Internal_Set_Name
    (707,
     (False, League.Strings.To_Universal_String ("conformsTo")));
   Internal_Set_Upper (707, (False, (False, 1)));

   Internal_Set_Body
    (708,
     (False, League.Strings.To_Universal_String ("The query conformsTo() gives true for a type that conforms to another. By default, two types do not conform to each other. This query is intended to be redefined for specific conformance situations.")));

   Internal_Set_Name
    (709,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (711, Return_Direction);
   Internal_Set_Is_Ordered (711, False);
   Internal_Set_Is_Unique (711, True);
   Internal_Set_Lower (711, (False, 1));
   Internal_Set_Upper (711, (False, (False, 1)));

   Internal_Set_Direction (712, In_Direction);
   Internal_Set_Is_Ordered (712, False);
   Internal_Set_Is_Unique (712, True);
   Internal_Set_Lower (712, (False, 1));
   Internal_Set_Name
    (712,
     (False, League.Strings.To_Universal_String ("other")));
   Internal_Set_Upper (712, (False, (False, 1)));

   Internal_Set_Is_Abstract (16, True);
   Internal_Set_Is_Final_Specialization (16, False);
   Internal_Set_Name
    (16,
     (False, League.Strings.To_Universal_String ("NamedElement")));

   Internal_Set_Body
    (713,
     (False, League.Strings.To_Universal_String ("A named element is an element in a model that may have a name.")));

   Internal_Set_Name
    (714,
     (False, League.Strings.To_Universal_String ("has_no_qualified_name")));

   Internal_Set_Body
    (715,
     (False, League.Strings.To_Universal_String ("If there is no name, or one of the containing namespaces has no name, there is no qualified name.")));


   Internal_Set_Name
    (717,
     (False, League.Strings.To_Universal_String ("has_qualified_name")));

   Internal_Set_Body
    (718,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));


   Internal_Set_Name
    (720,
     (False, League.Strings.To_Universal_String ("visibility_needs_ownership")));

   Internal_Set_Body
    (721,
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
    (723,
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
    (724,
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
    (725,
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
    (726,
     (False, League.Strings.To_Universal_String ("A name which allows the NamedElement to be identified within a hierarchy of nested Namespaces. It is constructed from the names of the containing namespaces starting at the root of the hierarchy and ending with the name of the NamedElement itself.")));

   Internal_Set_Is_Leaf (727, False);
   Internal_Set_Is_Ordered (727, False);
   Internal_Set_Is_Query (727, True);
   Internal_Set_Is_Unique (727, True);
   Internal_Set_Lower (727, (False, 1));
   Internal_Set_Name
    (727,
     (False, League.Strings.To_Universal_String ("allNamespaces")));
   Internal_Set_Upper (727, (False, (False, 1)));

   Internal_Set_Body
    (728,
     (False, League.Strings.To_Universal_String ("The query allNamespaces() gives the sequence of namespaces in which the NamedElement is nested, working outwards.")));

   Internal_Set_Name
    (729,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (731, Return_Direction);
   Internal_Set_Is_Ordered (731, True);
   Internal_Set_Is_Unique (731, True);
   Internal_Set_Lower (731, (False, 0));
   Internal_Set_Upper (731, (False, (Unlimited => True)));

   Internal_Set_Is_Leaf (732, False);
   Internal_Set_Is_Ordered (732, False);
   Internal_Set_Is_Query (732, True);
   Internal_Set_Is_Unique (732, True);
   Internal_Set_Lower (732, (False, 1));
   Internal_Set_Name
    (732,
     (False, League.Strings.To_Universal_String ("isDistinguishableFrom")));
   Internal_Set_Upper (732, (False, (False, 1)));

   Internal_Set_Body
    (733,
     (False, League.Strings.To_Universal_String ("The query isDistinguishableFrom() determines whether two NamedElements may logically co-exist within a Namespace. By default, two named elements are distinguishable if (a) they have unrelated types or (b) they have related types but different names.")));

   Internal_Set_Name
    (734,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (736, Return_Direction);
   Internal_Set_Is_Ordered (736, False);
   Internal_Set_Is_Unique (736, True);
   Internal_Set_Lower (736, (False, 1));
   Internal_Set_Upper (736, (False, (False, 1)));

   Internal_Set_Direction (737, In_Direction);
   Internal_Set_Is_Ordered (737, False);
   Internal_Set_Is_Unique (737, True);
   Internal_Set_Lower (737, (False, 1));
   Internal_Set_Name
    (737,
     (False, League.Strings.To_Universal_String ("n")));
   Internal_Set_Upper (737, (False, (False, 1)));

   Internal_Set_Direction (738, In_Direction);
   Internal_Set_Is_Ordered (738, False);
   Internal_Set_Is_Unique (738, True);
   Internal_Set_Lower (738, (False, 1));
   Internal_Set_Name
    (738,
     (False, League.Strings.To_Universal_String ("ns")));
   Internal_Set_Upper (738, (False, (False, 1)));

   Internal_Set_Is_Leaf (739, False);
   Internal_Set_Is_Ordered (739, False);
   Internal_Set_Is_Query (739, True);
   Internal_Set_Is_Unique (739, True);
   Internal_Set_Lower (739, (False, 1));
   Internal_Set_Name
    (739,
     (False, League.Strings.To_Universal_String ("separator")));
   Internal_Set_Upper (739, (False, (False, 1)));

   Internal_Set_Body
    (740,
     (False, League.Strings.To_Universal_String ("The query separator() gives the string that is used to separate names when constructing a qualified name.")));

   Internal_Set_Name
    (741,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (743, Return_Direction);
   Internal_Set_Is_Ordered (743, False);
   Internal_Set_Is_Unique (743, True);
   Internal_Set_Lower (743, (False, 1));
   Internal_Set_Upper (743, (False, (False, 1)));

   Internal_Set_Is_Leaf (744, False);
   Internal_Set_Is_Ordered (744, False);
   Internal_Set_Is_Query (744, True);
   Internal_Set_Is_Unique (744, True);
   Internal_Set_Lower (744, (False, 1));
   Internal_Set_Name
    (744,
     (False, League.Strings.To_Universal_String ("qualifiedName")));
   Internal_Set_Upper (744, (False, (False, 1)));

   Internal_Set_Body
    (745,
     (False, League.Strings.To_Universal_String ("When there is a name, and all of the containing namespaces have a name, the qualified name is constructed from the names of the containing namespaces.")));

   Internal_Set_Name
    (746,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (748, Return_Direction);
   Internal_Set_Is_Ordered (748, False);
   Internal_Set_Is_Unique (748, True);
   Internal_Set_Lower (748, (False, 1));
   Internal_Set_Upper (748, (False, (False, 1)));

   Internal_Set_Is_Abstract (13, False);
   Internal_Set_Is_Final_Specialization (13, False);
   Internal_Set_Name
    (13,
     (False, League.Strings.To_Universal_String ("Expression")));

   Internal_Set_Body
    (749,
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
    (750,
     (False, League.Strings.To_Universal_String ("Specifies a sequence of operands.")));

   Internal_Set_Is_Abstract (5, False);
   Internal_Set_Is_Final_Specialization (5, False);
   Internal_Set_Name
    (5,
     (False, League.Strings.To_Universal_String ("Comment")));

   Internal_Set_Body
    (751,
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
    (752,
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
    (753,
     (False, League.Strings.To_Universal_String ("References the Element(s) being commented.")));

   Internal_Set_Is_Final_Specialization (754, False);
   Internal_Set_Name
    (754,
     (False, League.Strings.To_Universal_String ("ParameterDirectionKind")));

   Internal_Set_Body
    (755,
     (False, League.Strings.To_Universal_String ("Parameter direction kind is an enumeration type that defines literals used to specify direction of parameters.")));

   Internal_Set_Name
    (756,
     (False, League.Strings.To_Universal_String ("in")));

   Internal_Set_Body
    (757,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into the behavioral element by the caller.")));

   Internal_Set_Name
    (758,
     (False, League.Strings.To_Universal_String ("inout")));

   Internal_Set_Body
    (759,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed into a behavioral element by the caller and then back out to the caller from the behavioral element.")));

   Internal_Set_Name
    (760,
     (False, League.Strings.To_Universal_String ("out")));

   Internal_Set_Body
    (761,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed from a behavioral element out to the caller.")));

   Internal_Set_Name
    (762,
     (False, League.Strings.To_Universal_String ("return")));

   Internal_Set_Body
    (763,
     (False, League.Strings.To_Universal_String ("Indicates that parameter values are passed as return values from a behavioral element back to the caller.")));

   Internal_Set_Is_Final_Specialization (764, False);
   Internal_Set_Name
    (764,
     (False, League.Strings.To_Universal_String ("VisibilityKind")));

   Internal_Set_Body
    (765,
     (False, League.Strings.To_Universal_String ("VisibilityKind is an enumeration type that defines literals to determine the visibility of elements in a model.")));

   Internal_Set_Is_Leaf (766, False);
   Internal_Set_Is_Ordered (766, False);
   Internal_Set_Is_Query (766, True);
   Internal_Set_Is_Unique (766, True);
   Internal_Set_Lower (766, (False, 1));
   Internal_Set_Name
    (766,
     (False, League.Strings.To_Universal_String ("bestVisibility")));
   Internal_Set_Upper (766, (False, (False, 1)));

   Internal_Set_Body
    (767,
     (False, League.Strings.To_Universal_String ("The query bestVisibility() examines a set of VisibilityKinds, and returns public as the preferred visibility.")));

   Internal_Set_Name
    (768,
     (False, League.Strings.To_Universal_String ("spec")));


   Internal_Set_Direction (770, Return_Direction);
   Internal_Set_Is_Ordered (770, False);
   Internal_Set_Is_Unique (770, True);
   Internal_Set_Lower (770, (False, 1));
   Internal_Set_Upper (770, (False, (False, 1)));

   Internal_Set_Direction (771, In_Direction);
   Internal_Set_Is_Ordered (771, False);
   Internal_Set_Is_Unique (771, True);
   Internal_Set_Lower (771, (False, 0));
   Internal_Set_Name
    (771,
     (False, League.Strings.To_Universal_String ("vis")));
   Internal_Set_Upper (771, (False, (Unlimited => True)));

   Internal_Set_Name
    (772,
     (False, League.Strings.To_Universal_String ("public")));

   Internal_Set_Body
    (773,
     (False, League.Strings.To_Universal_String ("A public element is visible to all elements that can access the contents of the namespace that owns it.")));

   Internal_Set_Name
    (774,
     (False, League.Strings.To_Universal_String ("private")));

   Internal_Set_Body
    (775,
     (False, League.Strings.To_Universal_String ("A private element is only visible inside the namespace that owns it.")));

   Internal_Set_Name
    (776,
     (False, League.Strings.To_Universal_String ("protected")));

   Internal_Set_Body
    (777,
     (False, League.Strings.To_Universal_String ("A protected element is visible to elements that have a generalization relationship to the namespace that owns it.")));

   Internal_Set_Name
    (778,
     (False, League.Strings.To_Universal_String ("package")));

   Internal_Set_Body
    (779,
     (False, League.Strings.To_Universal_String ("A package element is owned by a namespace that is not a package, and is visible to elements that are in the same package as its owning namespace. Only named elements that are not owned by packages can be marked as having package visibility.  Any element marked as having package visibility is visible to all elements within the nearest enclosing package (given that other owning elements have proper visibility).  Outside the nearest enclosing package, an element marked as having package visibility is not visible.")));

   Internal_Set_Is_Derived (145, False);
   Internal_Set_Is_Final_Specialization (145, False);
   Internal_Set_Name
    (145,
     (False, League.Strings.To_Universal_String ("A_type_typedElement")));

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
     (False, League.Strings.To_Universal_String ("typedElement")));
   Internal_Set_Upper (780, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (147, False);
   Internal_Set_Is_Final_Specialization (147, False);
   Internal_Set_Name
    (147,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_class")));

   Internal_Set_Is_Derived (149, False);
   Internal_Set_Is_Final_Specialization (149, False);
   Internal_Set_Name
    (149,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_class")));

   Internal_Set_Is_Derived (150, False);
   Internal_Set_Is_Final_Specialization (150, False);
   Internal_Set_Name
    (150,
     (False, League.Strings.To_Universal_String ("A_ownedEnd_owningAssociation")));

   Internal_Set_Is_Derived (152, False);
   Internal_Set_Is_Final_Specialization (152, False);
   Internal_Set_Name
    (152,
     (False, League.Strings.To_Universal_String ("A_attribute_classifier")));

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
     (False, League.Strings.To_Universal_String ("classifier")));
   Internal_Set_Upper (781, (False, (False, 1)));

   Internal_Set_Is_Derived (154, False);
   Internal_Set_Is_Final_Specialization (154, False);
   Internal_Set_Name
    (154,
     (False, League.Strings.To_Universal_String ("A_redefinedProperty_property")));

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
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (782, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (156, False);
   Internal_Set_Is_Final_Specialization (156, False);
   Internal_Set_Name
    (156,
     (False, League.Strings.To_Universal_String ("A_subsettedProperty_property")));

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
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (783, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (158, False);
   Internal_Set_Is_Final_Specialization (158, False);
   Internal_Set_Name
    (158,
     (False, League.Strings.To_Universal_String ("A_opposite_property")));

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
     (False, League.Strings.To_Universal_String ("property")));
   Internal_Set_Upper (784, (False, (False, 1)));

   Internal_Set_Is_Derived (160, False);
   Internal_Set_Is_Final_Specialization (160, False);
   Internal_Set_Name
    (160,
     (False, League.Strings.To_Universal_String ("A_superClass_class")));

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
     (False, League.Strings.To_Universal_String ("class")));
   Internal_Set_Upper (785, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (163, False);
   Internal_Set_Is_Final_Specialization (163, False);
   Internal_Set_Name
    (163,
     (False, League.Strings.To_Universal_String ("A_endType_association")));

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
     (False, League.Strings.To_Universal_String ("association")));
   Internal_Set_Upper (786, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (165, False);
   Internal_Set_Is_Final_Specialization (165, False);
   Internal_Set_Name
    (165,
     (False, League.Strings.To_Universal_String ("A_ownedLiteral_enumeration")));

   Internal_Set_Is_Derived (166, False);
   Internal_Set_Is_Final_Specialization (166, False);
   Internal_Set_Name
    (166,
     (False, League.Strings.To_Universal_String ("A_ownedAttribute_datatype")));

   Internal_Set_Is_Derived (168, False);
   Internal_Set_Is_Final_Specialization (168, False);
   Internal_Set_Name
    (168,
     (False, League.Strings.To_Universal_String ("A_ownedOperation_datatype")));

   Internal_Set_Is_Derived (169, False);
   Internal_Set_Is_Final_Specialization (169, False);
   Internal_Set_Name
    (169,
     (False, League.Strings.To_Universal_String ("A_raisedException_operation")));

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
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (787, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (172, False);
   Internal_Set_Is_Final_Specialization (172, False);
   Internal_Set_Name
    (172,
     (False, League.Strings.To_Universal_String ("A_redefinedOperation_operation")));

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
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (788, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (174, False);
   Internal_Set_Is_Final_Specialization (174, False);
   Internal_Set_Name
    (174,
     (False, League.Strings.To_Universal_String ("A_ownedParameter_ownerFormalParam")));

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
     (False, League.Strings.To_Universal_String ("ownerFormalParam")));
   Internal_Set_Upper (789, (False, (False, 1)));

   Internal_Set_Is_Derived (176, False);
   Internal_Set_Is_Final_Specialization (176, False);
   Internal_Set_Name
    (176,
     (False, League.Strings.To_Universal_String ("A_raisedException_behavioralFeature")));

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
     (False, League.Strings.To_Universal_String ("behavioralFeature")));
   Internal_Set_Upper (790, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (178, False);
   Internal_Set_Is_Final_Specialization (178, False);
   Internal_Set_Name
    (178,
     (False, League.Strings.To_Universal_String ("A_importedMember_namespace")));

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
     (False, League.Strings.To_Universal_String ("namespace")));
   Internal_Set_Upper (791, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (180, False);
   Internal_Set_Is_Final_Specialization (180, False);
   Internal_Set_Name
    (180,
     (False, League.Strings.To_Universal_String ("A_importedPackage_packageImport")));

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
     (False, League.Strings.To_Universal_String ("packageImport")));
   Internal_Set_Upper (792, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (182, False);
   Internal_Set_Is_Final_Specialization (182, False);
   Internal_Set_Name
    (182,
     (False, League.Strings.To_Universal_String ("A_importedElement_elementImport")));

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
     (False, League.Strings.To_Universal_String ("elementImport")));
   Internal_Set_Upper (793, (False, (Unlimited => True)));

   Internal_Set_Is_Derived (183, False);
   Internal_Set_Is_Final_Specialization (183, False);
   Internal_Set_Name
    (183,
     (False, League.Strings.To_Universal_String ("A_elementImport_importingNamespace")));

   Internal_Set_Is_Derived (184, False);
   Internal_Set_Is_Final_Specialization (184, False);
   Internal_Set_Name
    (184,
     (False, League.Strings.To_Universal_String ("A_packageImport_importingNamespace")));

   Internal_Set_Is_Derived (185, False);
   Internal_Set_Is_Final_Specialization (185, False);
   Internal_Set_Name
    (185,
     (False, League.Strings.To_Universal_String ("A_packagedElement_owningPackage")));

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
     (False, League.Strings.To_Universal_String ("owningPackage")));
   Internal_Set_Upper (794, (False, (False, 1)));

   Internal_Set_Is_Derived (135, False);
   Internal_Set_Is_Final_Specialization (135, False);
   Internal_Set_Name
    (135,
     (False, League.Strings.To_Universal_String ("A_ownedType_package")));

   Internal_Set_Is_Derived (136, False);
   Internal_Set_Is_Final_Specialization (136, False);
   Internal_Set_Name
    (136,
     (False, League.Strings.To_Universal_String ("A_memberEnd_association")));

   Internal_Set_Is_Derived (137, False);
   Internal_Set_Is_Final_Specialization (137, False);
   Internal_Set_Name
    (137,
     (False, League.Strings.To_Universal_String ("A_nestedPackage_nestingPackage")));

   Internal_Set_Is_Derived (138, False);
   Internal_Set_Is_Final_Specialization (138, False);
   Internal_Set_Name
    (138,
     (False, League.Strings.To_Universal_String ("A_type_operation")));

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
     (False, League.Strings.To_Universal_String ("operation")));
   Internal_Set_Upper (795, (False, (Unlimited => True)));

   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     139,
     MP_CMOF_Association_Member_End,
     71,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     139,
     MP_CMOF_Association_Member_End,
     116,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     140,
     MP_CMOF_Association_Member_End,
     115,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     140,
     MP_CMOF_Association_Member_End,
     187,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     140,
     MP_CMOF_Association_Owned_End,
     187,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     187,
     MP_CMOF_Typed_Element_Type,
     22,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     141,
     MP_CMOF_Association_Member_End,
     54,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     141,
     MP_CMOF_Association_Member_End,
     85,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     142,
     MP_CMOF_Association_Member_End,
     47,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     142,
     MP_CMOF_Association_Member_End,
     188,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     142,
     MP_CMOF_Association_Owned_End,
     188,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     188,
     MP_CMOF_Typed_Element_Type,
     5,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     143,
     MP_CMOF_Association_Member_End,
     77,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     143,
     MP_CMOF_Association_Member_End,
     189,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     143,
     MP_CMOF_Association_Owned_End,
     189,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     189,
     MP_CMOF_Typed_Element_Type,
     28,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     144,
     MP_CMOF_Association_Member_End,
     51,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     144,
     MP_CMOF_Association_Member_End,
     190,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     144,
     MP_CMOF_Association_Owned_End,
     190,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     190,
     MP_CMOF_Typed_Element_Type,
     8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     146,
     MP_CMOF_Association_Member_End,
     52,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     146,
     MP_CMOF_Association_Member_End,
     191,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     146,
     MP_CMOF_Association_Owned_End,
     191,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     191,
     MP_CMOF_Typed_Element_Type,
     8,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     148,
     MP_CMOF_Association_Member_End,
     76,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     148,
     MP_CMOF_Association_Member_End,
     192,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     148,
     MP_CMOF_Association_Owned_End,
     192,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     192,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     151,
     MP_CMOF_Association_Member_End,
     75,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     151,
     MP_CMOF_Association_Member_End,
     193,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     151,
     MP_CMOF_Association_Owned_End,
     193,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     193,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     153,
     MP_CMOF_Association_Member_End,
     44,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     153,
     MP_CMOF_Association_Member_End,
     57,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     155,
     MP_CMOF_Association_Member_End,
     48,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     155,
     MP_CMOF_Association_Member_End,
     194,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     155,
     MP_CMOF_Association_Owned_End,
     194,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     194,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     157,
     MP_CMOF_Association_Member_End,
     84,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     157,
     MP_CMOF_Association_Member_End,
     195,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     157,
     MP_CMOF_Association_Owned_End,
     195,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     195,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     195,
     MP_CMOF_Typed_Element_Type,
     6,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     159,
     MP_CMOF_Association_Member_End,
     45,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     159,
     MP_CMOF_Association_Member_End,
     196,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     159,
     MP_CMOF_Association_Owned_End,
     196,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     196,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     161,
     MP_CMOF_Association_Member_End,
     61,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     161,
     MP_CMOF_Association_Member_End,
     96,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     162,
     MP_CMOF_Association_Member_End,
     60,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     162,
     MP_CMOF_Association_Member_End,
     197,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     162,
     MP_CMOF_Association_Owned_End,
     197,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     197,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     164,
     MP_CMOF_Association_Member_End,
     56,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     164,
     MP_CMOF_Association_Member_End,
     198,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     164,
     MP_CMOF_Association_Owned_End,
     198,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     198,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     198,
     MP_CMOF_Typed_Element_Type,
     13,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     167,
     MP_CMOF_Association_Member_End,
     36,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     167,
     MP_CMOF_Association_Member_End,
     199,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     167,
     MP_CMOF_Association_Owned_End,
     199,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     199,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     170,
     MP_CMOF_Association_Member_End,
     64,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     170,
     MP_CMOF_Association_Member_End,
     119,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     171,
     MP_CMOF_Association_Member_End,
     53,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     171,
     MP_CMOF_Association_Member_End,
     200,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     171,
     MP_CMOF_Association_Owned_End,
     200,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     200,
     MP_CMOF_Property_Subsetted_Property,
     85,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     200,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     173,
     MP_CMOF_Association_Member_End,
     46,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     173,
     MP_CMOF_Association_Member_End,
     201,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     173,
     MP_CMOF_Association_Owned_End,
     201,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     201,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     175,
     MP_CMOF_Association_Member_End,
     66,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     175,
     MP_CMOF_Association_Member_End,
     202,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     175,
     MP_CMOF_Association_Owned_End,
     202,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     202,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     202,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     177,
     MP_CMOF_Association_Member_End,
     65,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     177,
     MP_CMOF_Association_Member_End,
     203,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     177,
     MP_CMOF_Association_Owned_End,
     203,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     203,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     203,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     179,
     MP_CMOF_Association_Member_End,
     101,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     179,
     MP_CMOF_Association_Member_End,
     204,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     179,
     MP_CMOF_Association_Owned_End,
     204,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     204,
     MP_CMOF_Property_Subsetted_Property,
     83,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     204,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     181,
     MP_CMOF_Association_Member_End,
     62,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     181,
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
     132,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     30,
     MP_CMOF_Class_Owned_Attribute,
     78,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     131,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     132,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     78,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     186,
     MP_CMOF_Association_Member_End,
     78,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     186,
     MP_CMOF_Association_Member_End,
     205,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     186,
     MP_CMOF_Association_Owned_End,
     205,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     205,
     MP_CMOF_Typed_Element_Type,
     30,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     207,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     209,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     211,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     213,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     4,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     8,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     9,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     14,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     15,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     17,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     23,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     27,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     28,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     29,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     32,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     33,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     1,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     3,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     26,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     7,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     11,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     12,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     25,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     6,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     18,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     19,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     24,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     2,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     10,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     20,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     21,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     22,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     31,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     16,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     13,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     5,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     754,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     764,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     145,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     147,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     149,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     150,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     152,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     154,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     156,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     158,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     160,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     163,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     165,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     166,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     168,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     169,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     172,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     174,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     176,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     178,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     180,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     182,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     183,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     184,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     185,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     135,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     136,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     137,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     138,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     139,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     140,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     141,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     142,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     143,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     144,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     146,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     148,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     151,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     153,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     155,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     157,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     159,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     161,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     162,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     164,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     167,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     170,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     171,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     173,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     175,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     177,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     179,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     181,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     30,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Packaged_Element_Owning_Package,
     206,
     MP_CMOF_Package_Packaged_Element,
     186,
     MP_CMOF_Packaged_Element_Owning_Package);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     207,
     MP_CMOF_Element_Owned_Comment,
     208,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     208,
     MP_CMOF_Comment_Annotated_Element,
     207,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     209,
     MP_CMOF_Element_Owned_Comment,
     210,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     210,
     MP_CMOF_Comment_Annotated_Element,
     209,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     211,
     MP_CMOF_Element_Owned_Comment,
     212,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     212,
     MP_CMOF_Comment_Annotated_Element,
     211,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     213,
     MP_CMOF_Element_Owned_Comment,
     214,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     214,
     MP_CMOF_Comment_Annotated_Element,
     213,
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
     215,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     227,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     233,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     238,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     243,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     248,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     253,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     258,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     266,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     274,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     4,
     MP_CMOF_Class_Owned_Operation,
     280,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     4,
     MP_CMOF_Namespace_Owned_Rule,
     216,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     4,
     MP_CMOF_Namespace_Owned_Rule,
     219,
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
     215,
     MP_CMOF_Comment_Annotated_Element,
     4,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     216,
     MP_CMOF_Constraint_Constrained_Element,
     4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     216,
     MP_CMOF_Element_Owned_Comment,
     217,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     216,
     MP_CMOF_Constraint_Specification,
     218,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     217,
     MP_CMOF_Comment_Annotated_Element,
     216,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     219,
     MP_CMOF_Constraint_Constrained_Element,
     4,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     219,
     MP_CMOF_Element_Owned_Comment,
     220,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     219,
     MP_CMOF_Constraint_Specification,
     221,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     220,
     MP_CMOF_Comment_Annotated_Element,
     219,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     43,
     MP_CMOF_Element_Owned_Comment,
     222,
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
     222,
     MP_CMOF_Comment_Annotated_Element,
     43,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     44,
     MP_CMOF_Element_Owned_Comment,
     223,
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
     223,
     MP_CMOF_Comment_Annotated_Element,
     44,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     45,
     MP_CMOF_Element_Owned_Comment,
     224,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     45,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     224,
     MP_CMOF_Comment_Annotated_Element,
     45,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     46,
     MP_CMOF_Element_Owned_Comment,
     225,
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
     225,
     MP_CMOF_Comment_Annotated_Element,
     46,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     81,
     MP_CMOF_Element_Owned_Comment,
     226,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     81,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     226,
     MP_CMOF_Comment_Annotated_Element,
     81,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     227,
     MP_CMOF_Operation_Body_Condition,
     229,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     227,
     MP_CMOF_Element_Owned_Comment,
     228,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     227,
     MP_CMOF_Operation_Owned_Parameter,
     231,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     227,
     MP_CMOF_Operation_Owned_Parameter,
     232,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     227,
     MP_CMOF_Namespace_Owned_Rule,
     229,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     227,
     MP_CMOF_Operation_Redefined_Operation,
     707,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     228,
     MP_CMOF_Comment_Annotated_Element,
     227,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     229,
     MP_CMOF_Constraint_Constrained_Element,
     227,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     229,
     MP_CMOF_Constraint_Specification,
     230,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     231,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     232,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     233,
     MP_CMOF_Operation_Body_Condition,
     235,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     233,
     MP_CMOF_Element_Owned_Comment,
     234,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     233,
     MP_CMOF_Operation_Owned_Parameter,
     237,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     233,
     MP_CMOF_Namespace_Owned_Rule,
     235,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     234,
     MP_CMOF_Comment_Annotated_Element,
     233,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     235,
     MP_CMOF_Constraint_Constrained_Element,
     233,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     235,
     MP_CMOF_Constraint_Specification,
     236,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     237,
     MP_CMOF_Typed_Element_Type,
     14,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     238,
     MP_CMOF_Operation_Body_Condition,
     240,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     238,
     MP_CMOF_Element_Owned_Comment,
     239,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     238,
     MP_CMOF_Operation_Owned_Parameter,
     242,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     238,
     MP_CMOF_Namespace_Owned_Rule,
     240,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     239,
     MP_CMOF_Comment_Annotated_Element,
     238,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     240,
     MP_CMOF_Constraint_Constrained_Element,
     238,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     240,
     MP_CMOF_Constraint_Constrained_Element,
     45,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     240,
     MP_CMOF_Constraint_Specification,
     241,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     242,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     243,
     MP_CMOF_Operation_Body_Condition,
     245,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     243,
     MP_CMOF_Element_Owned_Comment,
     244,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     243,
     MP_CMOF_Operation_Owned_Parameter,
     247,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     243,
     MP_CMOF_Namespace_Owned_Rule,
     245,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     244,
     MP_CMOF_Comment_Annotated_Element,
     243,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     245,
     MP_CMOF_Constraint_Constrained_Element,
     243,
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
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     248,
     MP_CMOF_Operation_Body_Condition,
     250,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     248,
     MP_CMOF_Element_Owned_Comment,
     249,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     248,
     MP_CMOF_Operation_Owned_Parameter,
     252,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     248,
     MP_CMOF_Namespace_Owned_Rule,
     250,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     249,
     MP_CMOF_Comment_Annotated_Element,
     248,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     250,
     MP_CMOF_Constraint_Constrained_Element,
     248,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     250,
     MP_CMOF_Constraint_Constrained_Element,
     46,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     250,
     MP_CMOF_Constraint_Specification,
     251,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     252,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     253,
     MP_CMOF_Operation_Body_Condition,
     255,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     253,
     MP_CMOF_Element_Owned_Comment,
     254,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     253,
     MP_CMOF_Operation_Owned_Parameter,
     257,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     253,
     MP_CMOF_Namespace_Owned_Rule,
     255,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     254,
     MP_CMOF_Comment_Annotated_Element,
     253,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     255,
     MP_CMOF_Constraint_Constrained_Element,
     253,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     255,
     MP_CMOF_Constraint_Specification,
     256,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     257,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     258,
     MP_CMOF_Operation_Body_Condition,
     262,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     258,
     MP_CMOF_Element_Owned_Comment,
     259,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     258,
     MP_CMOF_Operation_Owned_Parameter,
     264,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     258,
     MP_CMOF_Operation_Owned_Parameter,
     265,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     258,
     MP_CMOF_Namespace_Owned_Rule,
     260,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     258,
     MP_CMOF_Namespace_Owned_Rule,
     262,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     258,
     MP_CMOF_Operation_Precondition,
     260,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     259,
     MP_CMOF_Comment_Annotated_Element,
     258,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     260,
     MP_CMOF_Constraint_Constrained_Element,
     258,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     260,
     MP_CMOF_Constraint_Specification,
     261,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     262,
     MP_CMOF_Constraint_Constrained_Element,
     258,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     262,
     MP_CMOF_Constraint_Specification,
     263,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     264,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     265,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     266,
     MP_CMOF_Operation_Body_Condition,
     270,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     266,
     MP_CMOF_Element_Owned_Comment,
     267,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     266,
     MP_CMOF_Operation_Owned_Parameter,
     272,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     266,
     MP_CMOF_Operation_Owned_Parameter,
     273,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     266,
     MP_CMOF_Namespace_Owned_Rule,
     268,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     266,
     MP_CMOF_Namespace_Owned_Rule,
     270,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     266,
     MP_CMOF_Operation_Precondition,
     268,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     267,
     MP_CMOF_Comment_Annotated_Element,
     266,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     268,
     MP_CMOF_Constraint_Constrained_Element,
     266,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     268,
     MP_CMOF_Constraint_Specification,
     269,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     270,
     MP_CMOF_Constraint_Constrained_Element,
     266,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     270,
     MP_CMOF_Constraint_Specification,
     271,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     272,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     273,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     274,
     MP_CMOF_Operation_Body_Condition,
     276,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     274,
     MP_CMOF_Element_Owned_Comment,
     275,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     274,
     MP_CMOF_Operation_Owned_Parameter,
     278,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     274,
     MP_CMOF_Operation_Owned_Parameter,
     279,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     274,
     MP_CMOF_Namespace_Owned_Rule,
     276,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     275,
     MP_CMOF_Comment_Annotated_Element,
     274,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     276,
     MP_CMOF_Constraint_Constrained_Element,
     274,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     276,
     MP_CMOF_Constraint_Specification,
     277,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     278,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     279,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     280,
     MP_CMOF_Operation_Body_Condition,
     282,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     280,
     MP_CMOF_Element_Owned_Comment,
     281,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     280,
     MP_CMOF_Operation_Owned_Parameter,
     284,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     280,
     MP_CMOF_Operation_Owned_Parameter,
     285,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     280,
     MP_CMOF_Namespace_Owned_Rule,
     282,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     281,
     MP_CMOF_Comment_Annotated_Element,
     280,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     282,
     MP_CMOF_Constraint_Constrained_Element,
     280,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     282,
     MP_CMOF_Constraint_Specification,
     283,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     284,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     285,
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
     286,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     8,
     MP_CMOF_Class_Super_Class,
     28,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     286,
     MP_CMOF_Comment_Annotated_Element,
     8,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     51,
     MP_CMOF_Element_Owned_Comment,
     287,
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
     287,
     MP_CMOF_Comment_Annotated_Element,
     51,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     52,
     MP_CMOF_Element_Owned_Comment,
     288,
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
     288,
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
     289,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     9,
     MP_CMOF_Class_Owned_Operation,
     299,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     9,
     MP_CMOF_Class_Owned_Operation,
     304,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     9,
     MP_CMOF_Namespace_Owned_Rule,
     290,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     9,
     MP_CMOF_Namespace_Owned_Rule,
     293,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     289,
     MP_CMOF_Comment_Annotated_Element,
     9,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     290,
     MP_CMOF_Constraint_Constrained_Element,
     9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     290,
     MP_CMOF_Element_Owned_Comment,
     291,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     290,
     MP_CMOF_Constraint_Specification,
     292,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     291,
     MP_CMOF_Comment_Annotated_Element,
     290,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     293,
     MP_CMOF_Constraint_Constrained_Element,
     9,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     293,
     MP_CMOF_Element_Owned_Comment,
     294,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     293,
     MP_CMOF_Constraint_Specification,
     295,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     294,
     MP_CMOF_Comment_Annotated_Element,
     293,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     54,
     MP_CMOF_Element_Owned_Comment,
     296,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     54,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     296,
     MP_CMOF_Comment_Annotated_Element,
     54,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     85,
     MP_CMOF_Element_Owned_Comment,
     297,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     85,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     297,
     MP_CMOF_Comment_Annotated_Element,
     85,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     53,
     MP_CMOF_Element_Owned_Comment,
     298,
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
     298,
     MP_CMOF_Comment_Annotated_Element,
     53,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     299,
     MP_CMOF_Operation_Body_Condition,
     301,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     299,
     MP_CMOF_Element_Owned_Comment,
     300,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     299,
     MP_CMOF_Operation_Owned_Parameter,
     303,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     299,
     MP_CMOF_Namespace_Owned_Rule,
     301,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     300,
     MP_CMOF_Comment_Annotated_Element,
     299,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     301,
     MP_CMOF_Constraint_Constrained_Element,
     299,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     301,
     MP_CMOF_Constraint_Specification,
     302,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     303,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     304,
     MP_CMOF_Operation_Body_Condition,
     306,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     304,
     MP_CMOF_Element_Owned_Comment,
     305,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     304,
     MP_CMOF_Operation_Owned_Parameter,
     308,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     304,
     MP_CMOF_Namespace_Owned_Rule,
     306,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     305,
     MP_CMOF_Comment_Annotated_Element,
     304,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     306,
     MP_CMOF_Constraint_Constrained_Element,
     304,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     306,
     MP_CMOF_Constraint_Specification,
     307,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     308,
     MP_CMOF_Typed_Element_Type,
     209,
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
     309,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     14,
     MP_CMOF_Class_Super_Class,
     27,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     309,
     MP_CMOF_Comment_Annotated_Element,
     14,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     57,
     MP_CMOF_Element_Owned_Comment,
     310,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     57,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     310,
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
     311,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     322,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     329,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     337,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     345,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     15,
     MP_CMOF_Class_Owned_Operation,
     350,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     15,
     MP_CMOF_Namespace_Owned_Rule,
     312,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     15,
     MP_CMOF_Namespace_Owned_Rule,
     315,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     15,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     311,
     MP_CMOF_Comment_Annotated_Element,
     15,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     312,
     MP_CMOF_Constraint_Constrained_Element,
     15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     312,
     MP_CMOF_Element_Owned_Comment,
     313,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     312,
     MP_CMOF_Constraint_Specification,
     314,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     313,
     MP_CMOF_Comment_Annotated_Element,
     312,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     315,
     MP_CMOF_Constraint_Constrained_Element,
     15,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     315,
     MP_CMOF_Element_Owned_Comment,
     316,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     315,
     MP_CMOF_Constraint_Specification,
     317,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     316,
     MP_CMOF_Comment_Annotated_Element,
     315,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     91,
     MP_CMOF_Element_Owned_Comment,
     318,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     91,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     318,
     MP_CMOF_Comment_Annotated_Element,
     91,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     92,
     MP_CMOF_Element_Owned_Comment,
     319,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     92,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     319,
     MP_CMOF_Comment_Annotated_Element,
     92,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     93,
     MP_CMOF_Element_Owned_Comment,
     320,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     93,
     MP_CMOF_Typed_Element_Type,
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     320,
     MP_CMOF_Comment_Annotated_Element,
     93,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     94,
     MP_CMOF_Element_Owned_Comment,
     321,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     94,
     MP_CMOF_Typed_Element_Type,
     213,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     321,
     MP_CMOF_Comment_Annotated_Element,
     94,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     322,
     MP_CMOF_Operation_Body_Condition,
     326,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     322,
     MP_CMOF_Element_Owned_Comment,
     323,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     322,
     MP_CMOF_Operation_Owned_Parameter,
     328,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     322,
     MP_CMOF_Namespace_Owned_Rule,
     324,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     322,
     MP_CMOF_Namespace_Owned_Rule,
     326,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     322,
     MP_CMOF_Operation_Precondition,
     324,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     323,
     MP_CMOF_Comment_Annotated_Element,
     322,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     324,
     MP_CMOF_Constraint_Constrained_Element,
     322,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     324,
     MP_CMOF_Constraint_Specification,
     325,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     326,
     MP_CMOF_Constraint_Constrained_Element,
     322,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     326,
     MP_CMOF_Constraint_Specification,
     327,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     328,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     329,
     MP_CMOF_Operation_Body_Condition,
     333,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     329,
     MP_CMOF_Element_Owned_Comment,
     330,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     329,
     MP_CMOF_Operation_Owned_Parameter,
     335,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     329,
     MP_CMOF_Operation_Owned_Parameter,
     336,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     329,
     MP_CMOF_Namespace_Owned_Rule,
     331,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     329,
     MP_CMOF_Namespace_Owned_Rule,
     333,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     329,
     MP_CMOF_Operation_Precondition,
     331,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     330,
     MP_CMOF_Comment_Annotated_Element,
     329,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     331,
     MP_CMOF_Constraint_Constrained_Element,
     329,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     331,
     MP_CMOF_Constraint_Specification,
     332,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     333,
     MP_CMOF_Constraint_Constrained_Element,
     329,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     333,
     MP_CMOF_Constraint_Specification,
     334,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     335,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     336,
     MP_CMOF_Typed_Element_Type,
     15,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     337,
     MP_CMOF_Operation_Body_Condition,
     341,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     337,
     MP_CMOF_Element_Owned_Comment,
     338,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     337,
     MP_CMOF_Operation_Owned_Parameter,
     343,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     337,
     MP_CMOF_Operation_Owned_Parameter,
     344,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     337,
     MP_CMOF_Namespace_Owned_Rule,
     339,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     337,
     MP_CMOF_Namespace_Owned_Rule,
     341,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     337,
     MP_CMOF_Operation_Precondition,
     339,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     338,
     MP_CMOF_Comment_Annotated_Element,
     337,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     339,
     MP_CMOF_Constraint_Constrained_Element,
     337,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     339,
     MP_CMOF_Constraint_Specification,
     340,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     341,
     MP_CMOF_Constraint_Constrained_Element,
     337,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     341,
     MP_CMOF_Constraint_Specification,
     342,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     343,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     344,
     MP_CMOF_Typed_Element_Type,
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     345,
     MP_CMOF_Operation_Body_Condition,
     347,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     345,
     MP_CMOF_Element_Owned_Comment,
     346,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     345,
     MP_CMOF_Operation_Owned_Parameter,
     349,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     345,
     MP_CMOF_Namespace_Owned_Rule,
     347,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     346,
     MP_CMOF_Comment_Annotated_Element,
     345,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     347,
     MP_CMOF_Constraint_Constrained_Element,
     345,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     347,
     MP_CMOF_Constraint_Specification,
     348,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     349,
     MP_CMOF_Typed_Element_Type,
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     350,
     MP_CMOF_Operation_Body_Condition,
     352,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     350,
     MP_CMOF_Element_Owned_Comment,
     351,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     350,
     MP_CMOF_Operation_Owned_Parameter,
     354,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     350,
     MP_CMOF_Namespace_Owned_Rule,
     352,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     351,
     MP_CMOF_Comment_Annotated_Element,
     350,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     352,
     MP_CMOF_Constraint_Constrained_Element,
     350,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     352,
     MP_CMOF_Constraint_Specification,
     353,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     354,
     MP_CMOF_Typed_Element_Type,
     213,
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
     355,
     MP_CMOF_Owned_Comment_Owning_Element);
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
     369,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     375,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     381,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     17,
     MP_CMOF_Class_Owned_Operation,
     387,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     17,
     MP_CMOF_Namespace_Owned_Rule,
     356,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     17,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     355,
     MP_CMOF_Comment_Annotated_Element,
     17,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     356,
     MP_CMOF_Constraint_Constrained_Element,
     17,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     356,
     MP_CMOF_Element_Owned_Comment,
     357,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     356,
     MP_CMOF_Constraint_Specification,
     358,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     357,
     MP_CMOF_Comment_Annotated_Element,
     356,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     59,
     MP_CMOF_Element_Owned_Comment,
     359,
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
     359,
     MP_CMOF_Comment_Annotated_Element,
     59,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     58,
     MP_CMOF_Element_Owned_Comment,
     360,
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
     360,
     MP_CMOF_Comment_Annotated_Element,
     58,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     63,
     MP_CMOF_Element_Owned_Comment,
     361,
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
     361,
     MP_CMOF_Comment_Annotated_Element,
     63,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     61,
     MP_CMOF_Element_Owned_Comment,
     362,
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
     362,
     MP_CMOF_Comment_Annotated_Element,
     61,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     60,
     MP_CMOF_Element_Owned_Comment,
     363,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     60,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     363,
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
    (MA_CMOF_Constrained_Element_Constraint,
     366,
     MP_CMOF_Constraint_Constrained_Element,
     59,
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
    (MA_CMOF_Body_Condition_Body_Context,
     369,
     MP_CMOF_Operation_Body_Condition,
     371,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     369,
     MP_CMOF_Element_Owned_Comment,
     370,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     369,
     MP_CMOF_Operation_Owned_Parameter,
     373,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     369,
     MP_CMOF_Operation_Owned_Parameter,
     374,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     369,
     MP_CMOF_Namespace_Owned_Rule,
     371,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     370,
     MP_CMOF_Comment_Annotated_Element,
     369,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     371,
     MP_CMOF_Constraint_Constrained_Element,
     369,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     371,
     MP_CMOF_Constraint_Specification,
     372,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     373,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     374,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     375,
     MP_CMOF_Operation_Body_Condition,
     377,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     375,
     MP_CMOF_Element_Owned_Comment,
     376,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     375,
     MP_CMOF_Operation_Owned_Parameter,
     379,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     375,
     MP_CMOF_Operation_Owned_Parameter,
     380,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     375,
     MP_CMOF_Namespace_Owned_Rule,
     377,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     376,
     MP_CMOF_Comment_Annotated_Element,
     375,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     377,
     MP_CMOF_Constraint_Constrained_Element,
     375,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     377,
     MP_CMOF_Constraint_Specification,
     378,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     379,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     380,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     381,
     MP_CMOF_Operation_Body_Condition,
     383,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     381,
     MP_CMOF_Element_Owned_Comment,
     382,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     381,
     MP_CMOF_Operation_Owned_Parameter,
     385,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     381,
     MP_CMOF_Operation_Owned_Parameter,
     386,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     381,
     MP_CMOF_Namespace_Owned_Rule,
     383,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     382,
     MP_CMOF_Comment_Annotated_Element,
     381,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     383,
     MP_CMOF_Constraint_Constrained_Element,
     381,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     383,
     MP_CMOF_Constraint_Specification,
     384,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     385,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     386,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     387,
     MP_CMOF_Operation_Body_Condition,
     389,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     387,
     MP_CMOF_Element_Owned_Comment,
     388,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     387,
     MP_CMOF_Operation_Owned_Parameter,
     391,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     387,
     MP_CMOF_Namespace_Owned_Rule,
     389,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     388,
     MP_CMOF_Comment_Annotated_Element,
     387,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     389,
     MP_CMOF_Constraint_Constrained_Element,
     387,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     389,
     MP_CMOF_Constraint_Specification,
     390,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     391,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     23,
     MP_CMOF_Element_Owned_Comment,
     392,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     23,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     392,
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
     393,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     27,
     MP_CMOF_Class_Owned_Operation,
     406,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     27,
     MP_CMOF_Class_Owned_Operation,
     414,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     394,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     397,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     27,
     MP_CMOF_Namespace_Owned_Rule,
     400,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     27,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     393,
     MP_CMOF_Comment_Annotated_Element,
     27,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     394,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     394,
     MP_CMOF_Element_Owned_Comment,
     395,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     394,
     MP_CMOF_Constraint_Specification,
     396,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     395,
     MP_CMOF_Comment_Annotated_Element,
     394,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     397,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     397,
     MP_CMOF_Element_Owned_Comment,
     398,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     397,
     MP_CMOF_Constraint_Specification,
     399,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     398,
     MP_CMOF_Comment_Annotated_Element,
     397,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     400,
     MP_CMOF_Constraint_Constrained_Element,
     27,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     400,
     MP_CMOF_Element_Owned_Comment,
     401,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     400,
     MP_CMOF_Constraint_Specification,
     402,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     401,
     MP_CMOF_Comment_Annotated_Element,
     400,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     76,
     MP_CMOF_Element_Owned_Comment,
     403,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     76,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     403,
     MP_CMOF_Comment_Annotated_Element,
     76,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     75,
     MP_CMOF_Element_Owned_Comment,
     404,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     75,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     404,
     MP_CMOF_Comment_Annotated_Element,
     75,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     130,
     MP_CMOF_Element_Owned_Comment,
     405,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     130,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     405,
     MP_CMOF_Comment_Annotated_Element,
     130,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     406,
     MP_CMOF_Operation_Body_Condition,
     408,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     406,
     MP_CMOF_Element_Owned_Comment,
     407,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     406,
     MP_CMOF_Operation_Owned_Parameter,
     412,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     406,
     MP_CMOF_Operation_Owned_Parameter,
     413,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     406,
     MP_CMOF_Namespace_Owned_Rule,
     408,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     406,
     MP_CMOF_Namespace_Owned_Rule,
     410,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     406,
     MP_CMOF_Operation_Precondition,
     410,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     407,
     MP_CMOF_Comment_Annotated_Element,
     406,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     408,
     MP_CMOF_Constraint_Constrained_Element,
     406,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     408,
     MP_CMOF_Constraint_Specification,
     409,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     410,
     MP_CMOF_Constraint_Constrained_Element,
     406,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     410,
     MP_CMOF_Constraint_Specification,
     411,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     412,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     413,
     MP_CMOF_Typed_Element_Type,
     27,
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
    (MA_CMOF_Owned_Parameter_Operation,
     414,
     MP_CMOF_Operation_Owned_Parameter,
     419,
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
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     419,
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
     420,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     28,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     420,
     MP_CMOF_Comment_Annotated_Element,
     28,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     77,
     MP_CMOF_Element_Owned_Comment,
     421,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     77,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     421,
     MP_CMOF_Comment_Annotated_Element,
     77,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     29,
     MP_CMOF_Element_Owned_Comment,
     422,
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
     422,
     MP_CMOF_Comment_Annotated_Element,
     29,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     32,
     MP_CMOF_Class_Owned_Attribute,
     134,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     32,
     MP_CMOF_Element_Owned_Comment,
     423,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     32,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     423,
     MP_CMOF_Comment_Annotated_Element,
     32,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     134,
     MP_CMOF_Element_Owned_Comment,
     424,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     134,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     424,
     MP_CMOF_Comment_Annotated_Element,
     134,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     33,
     MP_CMOF_Element_Owned_Comment,
     425,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     426,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     431,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     436,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     441,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     446,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     33,
     MP_CMOF_Class_Owned_Operation,
     451,
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
     425,
     MP_CMOF_Comment_Annotated_Element,
     33,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     426,
     MP_CMOF_Operation_Body_Condition,
     428,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     426,
     MP_CMOF_Element_Owned_Comment,
     427,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     426,
     MP_CMOF_Operation_Owned_Parameter,
     430,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     426,
     MP_CMOF_Namespace_Owned_Rule,
     428,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     427,
     MP_CMOF_Comment_Annotated_Element,
     426,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     428,
     MP_CMOF_Constraint_Constrained_Element,
     426,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     428,
     MP_CMOF_Constraint_Specification,
     429,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     430,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     431,
     MP_CMOF_Operation_Body_Condition,
     433,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     431,
     MP_CMOF_Element_Owned_Comment,
     432,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     431,
     MP_CMOF_Operation_Owned_Parameter,
     435,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     431,
     MP_CMOF_Namespace_Owned_Rule,
     433,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     432,
     MP_CMOF_Comment_Annotated_Element,
     431,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     433,
     MP_CMOF_Constraint_Constrained_Element,
     431,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     433,
     MP_CMOF_Constraint_Specification,
     434,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     435,
     MP_CMOF_Typed_Element_Type,
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     436,
     MP_CMOF_Operation_Body_Condition,
     438,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     436,
     MP_CMOF_Element_Owned_Comment,
     437,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     436,
     MP_CMOF_Operation_Owned_Parameter,
     440,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     436,
     MP_CMOF_Namespace_Owned_Rule,
     438,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     437,
     MP_CMOF_Comment_Annotated_Element,
     436,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     438,
     MP_CMOF_Constraint_Constrained_Element,
     436,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     438,
     MP_CMOF_Constraint_Specification,
     439,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     440,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     441,
     MP_CMOF_Operation_Body_Condition,
     443,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     441,
     MP_CMOF_Element_Owned_Comment,
     442,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     441,
     MP_CMOF_Operation_Owned_Parameter,
     445,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     441,
     MP_CMOF_Namespace_Owned_Rule,
     443,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     442,
     MP_CMOF_Comment_Annotated_Element,
     441,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     443,
     MP_CMOF_Constraint_Constrained_Element,
     441,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     443,
     MP_CMOF_Constraint_Specification,
     444,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     445,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     446,
     MP_CMOF_Operation_Body_Condition,
     448,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     446,
     MP_CMOF_Element_Owned_Comment,
     447,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     446,
     MP_CMOF_Operation_Owned_Parameter,
     450,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     446,
     MP_CMOF_Namespace_Owned_Rule,
     448,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     447,
     MP_CMOF_Comment_Annotated_Element,
     446,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     448,
     MP_CMOF_Constraint_Constrained_Element,
     446,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     448,
     MP_CMOF_Constraint_Specification,
     449,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     450,
     MP_CMOF_Typed_Element_Type,
     213,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     451,
     MP_CMOF_Operation_Body_Condition,
     453,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     451,
     MP_CMOF_Element_Owned_Comment,
     452,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     451,
     MP_CMOF_Operation_Owned_Parameter,
     455,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     451,
     MP_CMOF_Namespace_Owned_Rule,
     453,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     452,
     MP_CMOF_Comment_Annotated_Element,
     451,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     453,
     MP_CMOF_Constraint_Constrained_Element,
     451,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     453,
     MP_CMOF_Constraint_Specification,
     454,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     455,
     MP_CMOF_Typed_Element_Type,
     209,
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
     456,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     1,
     MP_CMOF_Class_Owned_Operation,
     474,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     457,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     460,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     463,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     1,
     MP_CMOF_Namespace_Owned_Rule,
     466,
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
     456,
     MP_CMOF_Comment_Annotated_Element,
     1,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     457,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     457,
     MP_CMOF_Element_Owned_Comment,
     458,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     457,
     MP_CMOF_Constraint_Specification,
     459,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     458,
     MP_CMOF_Comment_Annotated_Element,
     457,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     460,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     460,
     MP_CMOF_Element_Owned_Comment,
     461,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     460,
     MP_CMOF_Constraint_Specification,
     462,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     461,
     MP_CMOF_Comment_Annotated_Element,
     460,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     463,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     463,
     MP_CMOF_Element_Owned_Comment,
     464,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     463,
     MP_CMOF_Constraint_Specification,
     465,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     464,
     MP_CMOF_Comment_Annotated_Element,
     463,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     466,
     MP_CMOF_Constraint_Constrained_Element,
     1,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     466,
     MP_CMOF_Element_Owned_Comment,
     467,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     466,
     MP_CMOF_Constraint_Specification,
     468,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     467,
     MP_CMOF_Comment_Annotated_Element,
     466,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     79,
     MP_CMOF_Element_Owned_Comment,
     469,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     79,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     469,
     MP_CMOF_Comment_Annotated_Element,
     79,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     37,
     MP_CMOF_Element_Owned_Comment,
     470,
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
     470,
     MP_CMOF_Comment_Annotated_Element,
     37,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     34,
     MP_CMOF_Element_Owned_Comment,
     471,
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
     471,
     MP_CMOF_Comment_Annotated_Element,
     34,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     35,
     MP_CMOF_Element_Owned_Comment,
     472,
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
     472,
     MP_CMOF_Comment_Annotated_Element,
     35,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     36,
     MP_CMOF_Element_Owned_Comment,
     473,
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
     473,
     MP_CMOF_Comment_Annotated_Element,
     36,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     474,
     MP_CMOF_Operation_Body_Condition,
     476,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     474,
     MP_CMOF_Element_Owned_Comment,
     475,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     474,
     MP_CMOF_Operation_Owned_Parameter,
     478,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     474,
     MP_CMOF_Namespace_Owned_Rule,
     476,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     475,
     MP_CMOF_Comment_Annotated_Element,
     474,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     476,
     MP_CMOF_Constraint_Constrained_Element,
     474,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     476,
     MP_CMOF_Constraint_Constrained_Element,
     34,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     476,
     MP_CMOF_Constraint_Specification,
     477,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     478,
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
     479,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     3,
     MP_CMOF_Class_Owned_Operation,
     484,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     3,
     MP_CMOF_Class_Super_Class,
     4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     479,
     MP_CMOF_Comment_Annotated_Element,
     3,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     80,
     MP_CMOF_Element_Owned_Comment,
     480,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     80,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     480,
     MP_CMOF_Comment_Annotated_Element,
     80,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     40,
     MP_CMOF_Element_Owned_Comment,
     481,
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
     481,
     MP_CMOF_Comment_Annotated_Element,
     40,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     41,
     MP_CMOF_Element_Owned_Comment,
     482,
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
     482,
     MP_CMOF_Comment_Annotated_Element,
     41,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     42,
     MP_CMOF_Element_Owned_Comment,
     483,
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
     483,
     MP_CMOF_Comment_Annotated_Element,
     42,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     484,
     MP_CMOF_Operation_Body_Condition,
     486,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     484,
     MP_CMOF_Element_Owned_Comment,
     485,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     484,
     MP_CMOF_Operation_Owned_Parameter,
     488,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     484,
     MP_CMOF_Operation_Owned_Parameter,
     489,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     484,
     MP_CMOF_Namespace_Owned_Rule,
     486,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     484,
     MP_CMOF_Operation_Redefined_Operation,
     274,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     485,
     MP_CMOF_Comment_Annotated_Element,
     484,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     486,
     MP_CMOF_Constraint_Constrained_Element,
     484,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     486,
     MP_CMOF_Constraint_Specification,
     487,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     488,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     489,
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
     490,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     524,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     529,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     537,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     542,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     26,
     MP_CMOF_Class_Owned_Operation,
     547,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     491,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     494,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     497,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     500,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     503,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     506,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     26,
     MP_CMOF_Namespace_Owned_Rule,
     509,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     26,
     MP_CMOF_Class_Super_Class,
     29,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     490,
     MP_CMOF_Comment_Annotated_Element,
     26,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     491,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     491,
     MP_CMOF_Element_Owned_Comment,
     492,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     491,
     MP_CMOF_Constraint_Specification,
     493,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     492,
     MP_CMOF_Comment_Annotated_Element,
     491,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     494,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     494,
     MP_CMOF_Element_Owned_Comment,
     495,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     494,
     MP_CMOF_Constraint_Specification,
     496,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     495,
     MP_CMOF_Comment_Annotated_Element,
     494,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     497,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     497,
     MP_CMOF_Element_Owned_Comment,
     498,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     497,
     MP_CMOF_Constraint_Specification,
     499,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     498,
     MP_CMOF_Comment_Annotated_Element,
     497,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     500,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     500,
     MP_CMOF_Element_Owned_Comment,
     501,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     500,
     MP_CMOF_Constraint_Specification,
     502,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     501,
     MP_CMOF_Comment_Annotated_Element,
     500,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     503,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     503,
     MP_CMOF_Element_Owned_Comment,
     504,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     503,
     MP_CMOF_Constraint_Specification,
     505,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     504,
     MP_CMOF_Comment_Annotated_Element,
     503,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     506,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     506,
     MP_CMOF_Element_Owned_Comment,
     507,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     506,
     MP_CMOF_Constraint_Specification,
     508,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     507,
     MP_CMOF_Comment_Annotated_Element,
     506,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     509,
     MP_CMOF_Constraint_Constrained_Element,
     26,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     509,
     MP_CMOF_Element_Owned_Comment,
     510,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     509,
     MP_CMOF_Constraint_Specification,
     511,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     510,
     MP_CMOF_Comment_Annotated_Element,
     509,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     127,
     MP_CMOF_Element_Owned_Comment,
     512,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     127,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     512,
     MP_CMOF_Comment_Annotated_Element,
     127,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     123,
     MP_CMOF_Element_Owned_Comment,
     513,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     123,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     513,
     MP_CMOF_Comment_Annotated_Element,
     123,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     124,
     MP_CMOF_Element_Owned_Comment,
     514,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     124,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     514,
     MP_CMOF_Comment_Annotated_Element,
     124,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     125,
     MP_CMOF_Element_Owned_Comment,
     515,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     125,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     515,
     MP_CMOF_Comment_Annotated_Element,
     125,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     126,
     MP_CMOF_Element_Owned_Comment,
     516,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     126,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     516,
     MP_CMOF_Comment_Annotated_Element,
     126,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     121,
     MP_CMOF_Element_Owned_Comment,
     517,
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
     781,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     121,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     517,
     MP_CMOF_Comment_Annotated_Element,
     121,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     129,
     MP_CMOF_Element_Owned_Comment,
     518,
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
     518,
     MP_CMOF_Comment_Annotated_Element,
     129,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     73,
     MP_CMOF_Element_Owned_Comment,
     519,
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
     519,
     MP_CMOF_Comment_Annotated_Element,
     73,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     74,
     MP_CMOF_Element_Owned_Comment,
     520,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     74,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     520,
     MP_CMOF_Comment_Annotated_Element,
     74,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     128,
     MP_CMOF_Element_Owned_Comment,
     521,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     128,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     521,
     MP_CMOF_Comment_Annotated_Element,
     128,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     122,
     MP_CMOF_Element_Owned_Comment,
     522,
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
     781,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     122,
     MP_CMOF_Typed_Element_Type,
     7,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     522,
     MP_CMOF_Comment_Annotated_Element,
     122,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     120,
     MP_CMOF_Element_Owned_Comment,
     523,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     120,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     523,
     MP_CMOF_Comment_Annotated_Element,
     120,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     524,
     MP_CMOF_Operation_Body_Condition,
     526,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     524,
     MP_CMOF_Element_Owned_Comment,
     525,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     524,
     MP_CMOF_Operation_Owned_Parameter,
     528,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     524,
     MP_CMOF_Namespace_Owned_Rule,
     526,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     525,
     MP_CMOF_Comment_Annotated_Element,
     524,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     526,
     MP_CMOF_Constraint_Constrained_Element,
     524,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     526,
     MP_CMOF_Constraint_Constrained_Element,
     128,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     526,
     MP_CMOF_Constraint_Specification,
     527,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     528,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     529,
     MP_CMOF_Operation_Body_Condition,
     533,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     529,
     MP_CMOF_Element_Owned_Comment,
     530,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     529,
     MP_CMOF_Operation_Owned_Parameter,
     535,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     529,
     MP_CMOF_Operation_Owned_Parameter,
     536,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     529,
     MP_CMOF_Namespace_Owned_Rule,
     531,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     529,
     MP_CMOF_Namespace_Owned_Rule,
     533,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     529,
     MP_CMOF_Operation_Precondition,
     531,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     529,
     MP_CMOF_Operation_Redefined_Operation,
     406,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     530,
     MP_CMOF_Comment_Annotated_Element,
     529,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     531,
     MP_CMOF_Constraint_Constrained_Element,
     529,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     531,
     MP_CMOF_Constraint_Specification,
     532,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     533,
     MP_CMOF_Constraint_Constrained_Element,
     529,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     533,
     MP_CMOF_Constraint_Specification,
     534,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     535,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     536,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     537,
     MP_CMOF_Operation_Body_Condition,
     539,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     537,
     MP_CMOF_Element_Owned_Comment,
     538,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     537,
     MP_CMOF_Operation_Owned_Parameter,
     541,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     537,
     MP_CMOF_Namespace_Owned_Rule,
     539,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     538,
     MP_CMOF_Comment_Annotated_Element,
     537,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     539,
     MP_CMOF_Constraint_Constrained_Element,
     537,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     539,
     MP_CMOF_Constraint_Specification,
     540,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     541,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     542,
     MP_CMOF_Operation_Body_Condition,
     544,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     542,
     MP_CMOF_Element_Owned_Comment,
     543,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     542,
     MP_CMOF_Operation_Owned_Parameter,
     546,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     542,
     MP_CMOF_Namespace_Owned_Rule,
     544,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     543,
     MP_CMOF_Comment_Annotated_Element,
     542,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     544,
     MP_CMOF_Constraint_Constrained_Element,
     542,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     544,
     MP_CMOF_Constraint_Specification,
     545,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     546,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     547,
     MP_CMOF_Operation_Body_Condition,
     549,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     547,
     MP_CMOF_Element_Owned_Comment,
     548,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     547,
     MP_CMOF_Operation_Owned_Parameter,
     551,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     547,
     MP_CMOF_Operation_Owned_Parameter,
     552,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     547,
     MP_CMOF_Namespace_Owned_Rule,
     549,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     548,
     MP_CMOF_Comment_Annotated_Element,
     547,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     549,
     MP_CMOF_Constraint_Constrained_Element,
     547,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     549,
     MP_CMOF_Constraint_Specification,
     550,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     551,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     552,
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
     553,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     7,
     MP_CMOF_Class_Owned_Operation,
     556,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     7,
     MP_CMOF_Class_Super_Class,
     4,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     553,
     MP_CMOF_Comment_Annotated_Element,
     7,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     49,
     MP_CMOF_Element_Owned_Comment,
     554,
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
     554,
     MP_CMOF_Comment_Annotated_Element,
     49,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     50,
     MP_CMOF_Element_Owned_Comment,
     555,
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
     555,
     MP_CMOF_Comment_Annotated_Element,
     50,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     556,
     MP_CMOF_Operation_Body_Condition,
     558,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     556,
     MP_CMOF_Element_Owned_Comment,
     557,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     556,
     MP_CMOF_Operation_Owned_Parameter,
     560,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     556,
     MP_CMOF_Operation_Owned_Parameter,
     561,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     556,
     MP_CMOF_Namespace_Owned_Rule,
     558,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     556,
     MP_CMOF_Operation_Redefined_Operation,
     274,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     557,
     MP_CMOF_Comment_Annotated_Element,
     556,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     558,
     MP_CMOF_Constraint_Constrained_Element,
     556,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     558,
     MP_CMOF_Constraint_Specification,
     559,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     560,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     561,
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
     562,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     11,
     MP_CMOF_Class_Super_Class,
     7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     562,
     MP_CMOF_Comment_Annotated_Element,
     11,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     55,
     MP_CMOF_Element_Owned_Comment,
     563,
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
     563,
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
     564,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     12,
     MP_CMOF_Class_Super_Class,
     16,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     564,
     MP_CMOF_Comment_Annotated_Element,
     12,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     90,
     MP_CMOF_Element_Owned_Comment,
     565,
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
     565,
     MP_CMOF_Comment_Annotated_Element,
     90,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     25,
     MP_CMOF_Element_Owned_Comment,
     566,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     25,
     MP_CMOF_Class_Super_Class,
     7,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     566,
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
     567,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     6,
     MP_CMOF_Namespace_Owned_Rule,
     568,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     6,
     MP_CMOF_Namespace_Owned_Rule,
     571,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     6,
     MP_CMOF_Class_Super_Class,
     23,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     567,
     MP_CMOF_Comment_Annotated_Element,
     6,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     568,
     MP_CMOF_Constraint_Constrained_Element,
     6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     568,
     MP_CMOF_Element_Owned_Comment,
     569,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     568,
     MP_CMOF_Constraint_Specification,
     570,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     569,
     MP_CMOF_Comment_Annotated_Element,
     568,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     571,
     MP_CMOF_Constraint_Constrained_Element,
     6,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     571,
     MP_CMOF_Element_Owned_Comment,
     572,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     571,
     MP_CMOF_Constraint_Specification,
     573,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     572,
     MP_CMOF_Comment_Annotated_Element,
     571,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     48,
     MP_CMOF_Element_Owned_Comment,
     574,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     48,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     574,
     MP_CMOF_Comment_Annotated_Element,
     48,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     84,
     MP_CMOF_Element_Owned_Comment,
     575,
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
     575,
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
     576,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     18,
     MP_CMOF_Namespace_Owned_Rule,
     577,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     18,
     MP_CMOF_Class_Super_Class,
     33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     576,
     MP_CMOF_Comment_Annotated_Element,
     18,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     577,
     MP_CMOF_Constraint_Constrained_Element,
     18,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     577,
     MP_CMOF_Element_Owned_Comment,
     578,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     577,
     MP_CMOF_Constraint_Specification,
     579,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     578,
     MP_CMOF_Comment_Annotated_Element,
     577,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     99,
     MP_CMOF_Element_Owned_Comment,
     580,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     99,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     580,
     MP_CMOF_Comment_Annotated_Element,
     99,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     100,
     MP_CMOF_Element_Owned_Comment,
     581,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     100,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     581,
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
     582,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     600,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     605,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     610,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     615,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     620,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     625,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     19,
     MP_CMOF_Class_Owned_Operation,
     633,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     19,
     MP_CMOF_Namespace_Owned_Rule,
     583,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     19,
     MP_CMOF_Namespace_Owned_Rule,
     586,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     19,
     MP_CMOF_Class_Super_Class,
     2,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     582,
     MP_CMOF_Comment_Annotated_Element,
     19,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     583,
     MP_CMOF_Constraint_Constrained_Element,
     19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     583,
     MP_CMOF_Element_Owned_Comment,
     584,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     583,
     MP_CMOF_Constraint_Specification,
     585,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     584,
     MP_CMOF_Comment_Annotated_Element,
     583,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     586,
     MP_CMOF_Constraint_Constrained_Element,
     19,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     586,
     MP_CMOF_Element_Owned_Comment,
     587,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     586,
     MP_CMOF_Constraint_Specification,
     588,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     587,
     MP_CMOF_Comment_Annotated_Element,
     586,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     105,
     MP_CMOF_Element_Owned_Comment,
     589,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     105,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     589,
     MP_CMOF_Comment_Annotated_Element,
     105,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     104,
     MP_CMOF_Element_Owned_Comment,
     590,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     104,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     590,
     MP_CMOF_Comment_Annotated_Element,
     104,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     106,
     MP_CMOF_Element_Owned_Comment,
     591,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     106,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     591,
     MP_CMOF_Comment_Annotated_Element,
     106,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     107,
     MP_CMOF_Element_Owned_Comment,
     592,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     107,
     MP_CMOF_Typed_Element_Type,
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     592,
     MP_CMOF_Comment_Annotated_Element,
     107,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     109,
     MP_CMOF_Element_Owned_Comment,
     593,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     109,
     MP_CMOF_Typed_Element_Type,
     213,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     593,
     MP_CMOF_Comment_Annotated_Element,
     109,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     102,
     MP_CMOF_Element_Owned_Comment,
     594,
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
     594,
     MP_CMOF_Comment_Annotated_Element,
     102,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     103,
     MP_CMOF_Element_Owned_Comment,
     595,
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
     595,
     MP_CMOF_Comment_Annotated_Element,
     103,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     67,
     MP_CMOF_Element_Owned_Comment,
     596,
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
     596,
     MP_CMOF_Comment_Annotated_Element,
     67,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     68,
     MP_CMOF_Element_Owned_Comment,
     597,
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
     597,
     MP_CMOF_Comment_Annotated_Element,
     68,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     108,
     MP_CMOF_Element_Owned_Comment,
     598,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     108,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     598,
     MP_CMOF_Comment_Annotated_Element,
     108,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     64,
     MP_CMOF_Element_Owned_Comment,
     599,
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
     599,
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
     600,
     MP_CMOF_Operation_Body_Condition,
     602,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     600,
     MP_CMOF_Element_Owned_Comment,
     601,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     600,
     MP_CMOF_Operation_Owned_Parameter,
     604,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     600,
     MP_CMOF_Namespace_Owned_Rule,
     602,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     601,
     MP_CMOF_Comment_Annotated_Element,
     600,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     602,
     MP_CMOF_Constraint_Constrained_Element,
     600,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     602,
     MP_CMOF_Constraint_Constrained_Element,
     104,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     602,
     MP_CMOF_Constraint_Specification,
     603,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     604,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     605,
     MP_CMOF_Operation_Body_Condition,
     607,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     605,
     MP_CMOF_Element_Owned_Comment,
     606,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     605,
     MP_CMOF_Operation_Owned_Parameter,
     609,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     605,
     MP_CMOF_Namespace_Owned_Rule,
     607,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     606,
     MP_CMOF_Comment_Annotated_Element,
     605,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     607,
     MP_CMOF_Constraint_Constrained_Element,
     605,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     607,
     MP_CMOF_Constraint_Constrained_Element,
     106,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     607,
     MP_CMOF_Constraint_Specification,
     608,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     609,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     610,
     MP_CMOF_Operation_Body_Condition,
     612,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     610,
     MP_CMOF_Element_Owned_Comment,
     611,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     610,
     MP_CMOF_Operation_Owned_Parameter,
     614,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     610,
     MP_CMOF_Namespace_Owned_Rule,
     612,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     611,
     MP_CMOF_Comment_Annotated_Element,
     610,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     612,
     MP_CMOF_Constraint_Constrained_Element,
     610,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     612,
     MP_CMOF_Constraint_Constrained_Element,
     107,
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
     207,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     615,
     MP_CMOF_Operation_Body_Condition,
     617,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     615,
     MP_CMOF_Element_Owned_Comment,
     616,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     615,
     MP_CMOF_Operation_Owned_Parameter,
     619,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     615,
     MP_CMOF_Namespace_Owned_Rule,
     617,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     616,
     MP_CMOF_Comment_Annotated_Element,
     615,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     617,
     MP_CMOF_Constraint_Constrained_Element,
     615,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     617,
     MP_CMOF_Constraint_Constrained_Element,
     109,
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
     213,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     620,
     MP_CMOF_Operation_Body_Condition,
     622,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     620,
     MP_CMOF_Element_Owned_Comment,
     621,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     620,
     MP_CMOF_Operation_Owned_Parameter,
     624,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     620,
     MP_CMOF_Namespace_Owned_Rule,
     622,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     621,
     MP_CMOF_Comment_Annotated_Element,
     620,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     622,
     MP_CMOF_Constraint_Constrained_Element,
     620,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     622,
     MP_CMOF_Constraint_Constrained_Element,
     108,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     622,
     MP_CMOF_Constraint_Specification,
     623,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     624,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     625,
     MP_CMOF_Operation_Body_Condition,
     629,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     625,
     MP_CMOF_Element_Owned_Comment,
     626,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     625,
     MP_CMOF_Operation_Owned_Parameter,
     631,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     625,
     MP_CMOF_Operation_Owned_Parameter,
     632,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     625,
     MP_CMOF_Namespace_Owned_Rule,
     627,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     625,
     MP_CMOF_Namespace_Owned_Rule,
     629,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     625,
     MP_CMOF_Operation_Precondition,
     627,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     625,
     MP_CMOF_Operation_Redefined_Operation,
     406,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     626,
     MP_CMOF_Comment_Annotated_Element,
     625,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     627,
     MP_CMOF_Constraint_Constrained_Element,
     625,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     627,
     MP_CMOF_Constraint_Specification,
     628,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     629,
     MP_CMOF_Constraint_Constrained_Element,
     625,
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
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     632,
     MP_CMOF_Typed_Element_Type,
     27,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     633,
     MP_CMOF_Operation_Body_Condition,
     634,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     633,
     MP_CMOF_Operation_Owned_Parameter,
     636,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     633,
     MP_CMOF_Namespace_Owned_Rule,
     634,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     634,
     MP_CMOF_Constraint_Constrained_Element,
     633,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     634,
     MP_CMOF_Constraint_Specification,
     635,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     636,
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
     637,
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
     637,
     MP_CMOF_Comment_Annotated_Element,
     24,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     117,
     MP_CMOF_Element_Owned_Comment,
     638,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     117,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     638,
     MP_CMOF_Comment_Annotated_Element,
     117,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     118,
     MP_CMOF_Element_Owned_Comment,
     639,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     118,
     MP_CMOF_Typed_Element_Type,
     754,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     639,
     MP_CMOF_Comment_Annotated_Element,
     118,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     119,
     MP_CMOF_Element_Owned_Comment,
     640,
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
     640,
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
     641,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     2,
     MP_CMOF_Class_Owned_Operation,
     644,
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
     641,
     MP_CMOF_Comment_Annotated_Element,
     2,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     38,
     MP_CMOF_Element_Owned_Comment,
     642,
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
     642,
     MP_CMOF_Comment_Annotated_Element,
     38,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     39,
     MP_CMOF_Element_Owned_Comment,
     643,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     39,
     MP_CMOF_Typed_Element_Type,
     31,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     643,
     MP_CMOF_Comment_Annotated_Element,
     39,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     644,
     MP_CMOF_Operation_Body_Condition,
     646,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     644,
     MP_CMOF_Element_Owned_Comment,
     645,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     644,
     MP_CMOF_Operation_Owned_Parameter,
     648,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     644,
     MP_CMOF_Operation_Owned_Parameter,
     649,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     644,
     MP_CMOF_Operation_Owned_Parameter,
     650,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     644,
     MP_CMOF_Namespace_Owned_Rule,
     646,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     644,
     MP_CMOF_Operation_Redefined_Operation,
     732,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     645,
     MP_CMOF_Comment_Annotated_Element,
     644,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     646,
     MP_CMOF_Constraint_Constrained_Element,
     644,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     646,
     MP_CMOF_Constraint_Specification,
     647,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     648,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     649,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     650,
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
     651,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     10,
     MP_CMOF_Class_Owned_Operation,
     662,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     10,
     MP_CMOF_Namespace_Owned_Rule,
     652,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     10,
     MP_CMOF_Namespace_Owned_Rule,
     655,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     10,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     651,
     MP_CMOF_Comment_Annotated_Element,
     10,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     652,
     MP_CMOF_Constraint_Constrained_Element,
     10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     652,
     MP_CMOF_Element_Owned_Comment,
     653,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     652,
     MP_CMOF_Constraint_Specification,
     654,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     653,
     MP_CMOF_Comment_Annotated_Element,
     652,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     655,
     MP_CMOF_Constraint_Constrained_Element,
     10,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     655,
     MP_CMOF_Element_Owned_Comment,
     656,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     655,
     MP_CMOF_Constraint_Specification,
     657,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     656,
     MP_CMOF_Comment_Annotated_Element,
     655,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     89,
     MP_CMOF_Element_Owned_Comment,
     658,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     89,
     MP_CMOF_Typed_Element_Type,
     764,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     658,
     MP_CMOF_Comment_Annotated_Element,
     89,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     86,
     MP_CMOF_Element_Owned_Comment,
     659,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     86,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     659,
     MP_CMOF_Comment_Annotated_Element,
     86,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     87,
     MP_CMOF_Element_Owned_Comment,
     660,
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
     660,
     MP_CMOF_Comment_Annotated_Element,
     87,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     88,
     MP_CMOF_Element_Owned_Comment,
     661,
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
     661,
     MP_CMOF_Comment_Annotated_Element,
     88,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     662,
     MP_CMOF_Operation_Body_Condition,
     664,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     662,
     MP_CMOF_Element_Owned_Comment,
     663,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     662,
     MP_CMOF_Operation_Owned_Parameter,
     666,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     662,
     MP_CMOF_Namespace_Owned_Rule,
     664,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     663,
     MP_CMOF_Comment_Annotated_Element,
     662,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     664,
     MP_CMOF_Constraint_Constrained_Element,
     662,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     664,
     MP_CMOF_Constraint_Specification,
     665,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     666,
     MP_CMOF_Typed_Element_Type,
     211,
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
     667,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     677,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     682,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     20,
     MP_CMOF_Class_Owned_Operation,
     687,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     20,
     MP_CMOF_Namespace_Owned_Rule,
     668,
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
     667,
     MP_CMOF_Comment_Annotated_Element,
     20,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     668,
     MP_CMOF_Constraint_Constrained_Element,
     20,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     668,
     MP_CMOF_Element_Owned_Comment,
     669,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     668,
     MP_CMOF_Constraint_Specification,
     670,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     669,
     MP_CMOF_Comment_Annotated_Element,
     668,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     72,
     MP_CMOF_Element_Owned_Comment,
     671,
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
     671,
     MP_CMOF_Comment_Annotated_Element,
     72,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     70,
     MP_CMOF_Element_Owned_Comment,
     672,
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
     672,
     MP_CMOF_Comment_Annotated_Element,
     70,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     69,
     MP_CMOF_Element_Owned_Comment,
     673,
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
     673,
     MP_CMOF_Comment_Annotated_Element,
     69,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     110,
     MP_CMOF_Element_Owned_Comment,
     674,
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
     674,
     MP_CMOF_Comment_Annotated_Element,
     110,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     71,
     MP_CMOF_Element_Owned_Comment,
     675,
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
     675,
     MP_CMOF_Comment_Annotated_Element,
     71,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     111,
     MP_CMOF_Element_Owned_Comment,
     676,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     111,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     676,
     MP_CMOF_Comment_Annotated_Element,
     111,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     677,
     MP_CMOF_Operation_Body_Condition,
     679,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     677,
     MP_CMOF_Element_Owned_Comment,
     678,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     677,
     MP_CMOF_Operation_Owned_Parameter,
     681,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     677,
     MP_CMOF_Namespace_Owned_Rule,
     679,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Redefined_Operation_Operation,
     677,
     MP_CMOF_Operation_Redefined_Operation,
     304,
     MP_CMOF_Redefined_Operation_Operation);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     678,
     MP_CMOF_Comment_Annotated_Element,
     677,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     679,
     MP_CMOF_Constraint_Constrained_Element,
     677,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     679,
     MP_CMOF_Constraint_Specification,
     680,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     681,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     682,
     MP_CMOF_Operation_Body_Condition,
     684,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     682,
     MP_CMOF_Element_Owned_Comment,
     683,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     682,
     MP_CMOF_Operation_Owned_Parameter,
     686,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     682,
     MP_CMOF_Namespace_Owned_Rule,
     684,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     683,
     MP_CMOF_Comment_Annotated_Element,
     682,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     684,
     MP_CMOF_Constraint_Constrained_Element,
     682,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     684,
     MP_CMOF_Constraint_Specification,
     685,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     686,
     MP_CMOF_Typed_Element_Type,
     23,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     687,
     MP_CMOF_Operation_Body_Condition,
     691,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     687,
     MP_CMOF_Element_Owned_Comment,
     688,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     687,
     MP_CMOF_Operation_Owned_Parameter,
     693,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     687,
     MP_CMOF_Operation_Owned_Parameter,
     694,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     687,
     MP_CMOF_Namespace_Owned_Rule,
     689,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     687,
     MP_CMOF_Namespace_Owned_Rule,
     691,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Precondition_Pre_Context,
     687,
     MP_CMOF_Operation_Precondition,
     689,
     MP_CMOF_Precondition_Pre_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     688,
     MP_CMOF_Comment_Annotated_Element,
     687,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     689,
     MP_CMOF_Constraint_Constrained_Element,
     687,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     689,
     MP_CMOF_Constraint_Specification,
     690,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     691,
     MP_CMOF_Constraint_Constrained_Element,
     687,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     691,
     MP_CMOF_Constraint_Specification,
     692,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     693,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     694,
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
     695,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     21,
     MP_CMOF_Namespace_Owned_Rule,
     696,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     21,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     695,
     MP_CMOF_Comment_Annotated_Element,
     21,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     696,
     MP_CMOF_Constraint_Constrained_Element,
     21,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     696,
     MP_CMOF_Element_Owned_Comment,
     697,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     696,
     MP_CMOF_Constraint_Specification,
     698,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     697,
     MP_CMOF_Comment_Annotated_Element,
     696,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     114,
     MP_CMOF_Element_Owned_Comment,
     699,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     114,
     MP_CMOF_Typed_Element_Type,
     764,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     699,
     MP_CMOF_Comment_Annotated_Element,
     114,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     112,
     MP_CMOF_Element_Owned_Comment,
     700,
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
     700,
     MP_CMOF_Comment_Annotated_Element,
     112,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     113,
     MP_CMOF_Element_Owned_Comment,
     701,
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
     701,
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
     702,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     22,
     MP_CMOF_Class_Super_Class,
     8,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     702,
     MP_CMOF_Comment_Annotated_Element,
     22,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     116,
     MP_CMOF_Element_Owned_Comment,
     703,
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
     703,
     MP_CMOF_Comment_Annotated_Element,
     116,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     115,
     MP_CMOF_Element_Owned_Comment,
     704,
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
     704,
     MP_CMOF_Comment_Annotated_Element,
     115,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Attribute_Class,
     31,
     MP_CMOF_Class_Owned_Attribute,
     133,
     MP_CMOF_Property_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     31,
     MP_CMOF_Element_Owned_Comment,
     705,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     31,
     MP_CMOF_Class_Owned_Operation,
     707,
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
     705,
     MP_CMOF_Comment_Annotated_Element,
     31,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     133,
     MP_CMOF_Element_Owned_Comment,
     706,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     133,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     133,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     706,
     MP_CMOF_Comment_Annotated_Element,
     133,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     707,
     MP_CMOF_Operation_Body_Condition,
     709,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     707,
     MP_CMOF_Element_Owned_Comment,
     708,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     707,
     MP_CMOF_Operation_Owned_Parameter,
     711,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     707,
     MP_CMOF_Operation_Owned_Parameter,
     712,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     707,
     MP_CMOF_Namespace_Owned_Rule,
     709,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     708,
     MP_CMOF_Comment_Annotated_Element,
     707,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     709,
     MP_CMOF_Constraint_Constrained_Element,
     707,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     709,
     MP_CMOF_Constraint_Specification,
     710,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     711,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     712,
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
     713,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     727,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     732,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     739,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Class,
     16,
     MP_CMOF_Class_Owned_Operation,
     744,
     MP_CMOF_Operation_Class);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     714,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     717,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     16,
     MP_CMOF_Namespace_Owned_Rule,
     720,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     16,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     713,
     MP_CMOF_Comment_Annotated_Element,
     16,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     714,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     714,
     MP_CMOF_Element_Owned_Comment,
     715,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     714,
     MP_CMOF_Constraint_Specification,
     716,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     715,
     MP_CMOF_Comment_Annotated_Element,
     714,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     717,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     717,
     MP_CMOF_Element_Owned_Comment,
     718,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     717,
     MP_CMOF_Constraint_Specification,
     719,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     718,
     MP_CMOF_Comment_Annotated_Element,
     717,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     720,
     MP_CMOF_Constraint_Constrained_Element,
     16,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     720,
     MP_CMOF_Element_Owned_Comment,
     721,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     720,
     MP_CMOF_Constraint_Specification,
     722,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     721,
     MP_CMOF_Comment_Annotated_Element,
     720,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     95,
     MP_CMOF_Element_Owned_Comment,
     723,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     95,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     723,
     MP_CMOF_Comment_Annotated_Element,
     95,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     98,
     MP_CMOF_Element_Owned_Comment,
     724,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     98,
     MP_CMOF_Typed_Element_Type,
     764,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     724,
     MP_CMOF_Comment_Annotated_Element,
     98,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     96,
     MP_CMOF_Element_Owned_Comment,
     725,
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
     725,
     MP_CMOF_Comment_Annotated_Element,
     96,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     97,
     MP_CMOF_Element_Owned_Comment,
     726,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     97,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     726,
     MP_CMOF_Comment_Annotated_Element,
     97,
     MP_CMOF_Annotated_Element_Comment);
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
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     732,
     MP_CMOF_Operation_Body_Condition,
     734,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     732,
     MP_CMOF_Element_Owned_Comment,
     733,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     732,
     MP_CMOF_Operation_Owned_Parameter,
     736,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     732,
     MP_CMOF_Operation_Owned_Parameter,
     737,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     732,
     MP_CMOF_Operation_Owned_Parameter,
     738,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     732,
     MP_CMOF_Namespace_Owned_Rule,
     734,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     733,
     MP_CMOF_Comment_Annotated_Element,
     732,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     734,
     MP_CMOF_Constraint_Constrained_Element,
     732,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     734,
     MP_CMOF_Constraint_Specification,
     735,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     736,
     MP_CMOF_Typed_Element_Type,
     209,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     737,
     MP_CMOF_Typed_Element_Type,
     16,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     738,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     739,
     MP_CMOF_Operation_Body_Condition,
     741,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     739,
     MP_CMOF_Element_Owned_Comment,
     740,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     739,
     MP_CMOF_Operation_Owned_Parameter,
     743,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     739,
     MP_CMOF_Namespace_Owned_Rule,
     741,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     740,
     MP_CMOF_Comment_Annotated_Element,
     739,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     741,
     MP_CMOF_Constraint_Constrained_Element,
     739,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     741,
     MP_CMOF_Constraint_Specification,
     742,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     743,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     744,
     MP_CMOF_Operation_Body_Condition,
     746,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     744,
     MP_CMOF_Element_Owned_Comment,
     745,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     744,
     MP_CMOF_Operation_Owned_Parameter,
     748,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     744,
     MP_CMOF_Namespace_Owned_Rule,
     746,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     745,
     MP_CMOF_Comment_Annotated_Element,
     744,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     746,
     MP_CMOF_Constraint_Constrained_Element,
     744,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     746,
     MP_CMOF_Constraint_Specification,
     747,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     748,
     MP_CMOF_Typed_Element_Type,
     211,
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
     749,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     13,
     MP_CMOF_Class_Super_Class,
     33,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     749,
     MP_CMOF_Comment_Annotated_Element,
     13,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     56,
     MP_CMOF_Element_Owned_Comment,
     750,
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
     750,
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
     751,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Super_Class_Class,
     5,
     MP_CMOF_Class_Super_Class,
     9,
     MP_CMOF_Super_Class_Class);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     751,
     MP_CMOF_Comment_Annotated_Element,
     5,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     82,
     MP_CMOF_Element_Owned_Comment,
     752,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     82,
     MP_CMOF_Typed_Element_Type,
     211,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     752,
     MP_CMOF_Comment_Annotated_Element,
     82,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     47,
     MP_CMOF_Element_Owned_Comment,
     753,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     47,
     MP_CMOF_Typed_Element_Type,
     9,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     753,
     MP_CMOF_Comment_Annotated_Element,
     47,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     754,
     MP_CMOF_Element_Owned_Comment,
     755,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     754,
     MP_CMOF_Enumeration_Owned_Literal,
     756,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     754,
     MP_CMOF_Enumeration_Owned_Literal,
     758,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     754,
     MP_CMOF_Enumeration_Owned_Literal,
     760,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     754,
     MP_CMOF_Enumeration_Owned_Literal,
     762,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     755,
     MP_CMOF_Comment_Annotated_Element,
     754,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     756,
     MP_CMOF_Element_Owned_Comment,
     757,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     757,
     MP_CMOF_Comment_Annotated_Element,
     756,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     758,
     MP_CMOF_Element_Owned_Comment,
     759,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     759,
     MP_CMOF_Comment_Annotated_Element,
     758,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     760,
     MP_CMOF_Element_Owned_Comment,
     761,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     761,
     MP_CMOF_Comment_Annotated_Element,
     760,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     762,
     MP_CMOF_Element_Owned_Comment,
     763,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     763,
     MP_CMOF_Comment_Annotated_Element,
     762,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     764,
     MP_CMOF_Element_Owned_Comment,
     765,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     764,
     MP_CMOF_Enumeration_Owned_Literal,
     772,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     764,
     MP_CMOF_Enumeration_Owned_Literal,
     774,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     764,
     MP_CMOF_Enumeration_Owned_Literal,
     776,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Literal_Enumeration,
     764,
     MP_CMOF_Enumeration_Owned_Literal,
     778,
     MP_CMOF_Enumeration_Literal_Enumeration);
   Internal_Create_Link
    (MA_CMOF_Owned_Operation_Datatype,
     764,
     MP_CMOF_Data_Type_Owned_Operation,
     766,
     MP_CMOF_Operation_Datatype);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     765,
     MP_CMOF_Comment_Annotated_Element,
     764,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Body_Condition_Body_Context,
     766,
     MP_CMOF_Operation_Body_Condition,
     768,
     MP_CMOF_Body_Condition_Body_Context);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     766,
     MP_CMOF_Element_Owned_Comment,
     767,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     766,
     MP_CMOF_Operation_Owned_Parameter,
     770,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Parameter_Operation,
     766,
     MP_CMOF_Operation_Owned_Parameter,
     771,
     MP_CMOF_Parameter_Operation);
   Internal_Create_Link
    (MA_CMOF_Owned_Rule_Context,
     766,
     MP_CMOF_Namespace_Owned_Rule,
     768,
     MP_CMOF_Constraint_Context);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     767,
     MP_CMOF_Comment_Annotated_Element,
     766,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Constrained_Element_Constraint,
     768,
     MP_CMOF_Constraint_Constrained_Element,
     766,
     MP_CMOF_Constrained_Element_Constraint);
   Internal_Create_Link
    (MA_CMOF_Specification_Owning_Constraint,
     768,
     MP_CMOF_Constraint_Specification,
     769,
     MP_CMOF_Specification_Owning_Constraint);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     770,
     MP_CMOF_Typed_Element_Type,
     764,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     771,
     MP_CMOF_Typed_Element_Type,
     764,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     772,
     MP_CMOF_Element_Owned_Comment,
     773,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     773,
     MP_CMOF_Comment_Annotated_Element,
     772,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     774,
     MP_CMOF_Element_Owned_Comment,
     775,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     775,
     MP_CMOF_Comment_Annotated_Element,
     774,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     776,
     MP_CMOF_Element_Owned_Comment,
     777,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     777,
     MP_CMOF_Comment_Annotated_Element,
     776,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Owned_Comment_Owning_Element,
     778,
     MP_CMOF_Element_Owned_Comment,
     779,
     MP_CMOF_Owned_Comment_Owning_Element);
   Internal_Create_Link
    (MA_CMOF_Annotated_Element_Comment,
     779,
     MP_CMOF_Comment_Annotated_Element,
     778,
     MP_CMOF_Annotated_Element_Comment);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     145,
     MP_CMOF_Association_Member_End,
     134,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     145,
     MP_CMOF_Association_Member_End,
     780,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     145,
     MP_CMOF_Association_Owned_End,
     780,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     780,
     MP_CMOF_Typed_Element_Type,
     32,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     147,
     MP_CMOF_Association_Member_End,
     40,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     147,
     MP_CMOF_Association_Member_End,
     121,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     149,
     MP_CMOF_Association_Member_End,
     41,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     149,
     MP_CMOF_Association_Member_End,
     102,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     150,
     MP_CMOF_Association_Member_End,
     37,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     150,
     MP_CMOF_Association_Member_End,
     129,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     152,
     MP_CMOF_Association_Member_End,
     43,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     152,
     MP_CMOF_Association_Member_End,
     781,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     152,
     MP_CMOF_Association_Owned_End,
     781,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     781,
     MP_CMOF_Property_Subsetted_Property,
     76,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     781,
     MP_CMOF_Typed_Element_Type,
     4,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     154,
     MP_CMOF_Association_Member_End,
     73,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     154,
     MP_CMOF_Association_Member_End,
     782,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     154,
     MP_CMOF_Association_Owned_End,
     782,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     782,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     156,
     MP_CMOF_Association_Member_End,
     74,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     156,
     MP_CMOF_Association_Member_End,
     783,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     156,
     MP_CMOF_Association_Owned_End,
     783,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     783,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     158,
     MP_CMOF_Association_Member_End,
     128,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     158,
     MP_CMOF_Association_Member_End,
     784,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     158,
     MP_CMOF_Association_Owned_End,
     784,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     784,
     MP_CMOF_Typed_Element_Type,
     26,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     160,
     MP_CMOF_Association_Member_End,
     42,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     160,
     MP_CMOF_Association_Member_End,
     785,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     160,
     MP_CMOF_Association_Owned_End,
     785,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     785,
     MP_CMOF_Typed_Element_Type,
     3,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     163,
     MP_CMOF_Association_Member_End,
     34,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     163,
     MP_CMOF_Association_Member_End,
     786,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     163,
     MP_CMOF_Association_Owned_End,
     786,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     786,
     MP_CMOF_Typed_Element_Type,
     1,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     165,
     MP_CMOF_Association_Member_End,
     55,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     165,
     MP_CMOF_Association_Member_End,
     90,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     166,
     MP_CMOF_Association_Member_End,
     49,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     166,
     MP_CMOF_Association_Member_End,
     122,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     168,
     MP_CMOF_Association_Member_End,
     50,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     168,
     MP_CMOF_Association_Member_End,
     103,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     169,
     MP_CMOF_Association_Member_End,
     67,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     169,
     MP_CMOF_Association_Member_End,
     787,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     169,
     MP_CMOF_Association_Owned_End,
     787,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     787,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     172,
     MP_CMOF_Association_Member_End,
     68,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     172,
     MP_CMOF_Association_Member_End,
     788,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     172,
     MP_CMOF_Association_Owned_End,
     788,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     788,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     174,
     MP_CMOF_Association_Member_End,
     38,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     174,
     MP_CMOF_Association_Member_End,
     789,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     174,
     MP_CMOF_Association_Owned_End,
     789,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     789,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     789,
     MP_CMOF_Typed_Element_Type,
     2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     176,
     MP_CMOF_Association_Member_End,
     39,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     176,
     MP_CMOF_Association_Member_End,
     790,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     176,
     MP_CMOF_Association_Owned_End,
     790,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     790,
     MP_CMOF_Typed_Element_Type,
     2,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     178,
     MP_CMOF_Association_Member_End,
     59,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     178,
     MP_CMOF_Association_Member_End,
     791,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     178,
     MP_CMOF_Association_Owned_End,
     791,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     791,
     MP_CMOF_Typed_Element_Type,
     17,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     180,
     MP_CMOF_Association_Member_End,
     112,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     180,
     MP_CMOF_Association_Member_End,
     792,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     180,
     MP_CMOF_Association_Owned_End,
     792,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     792,
     MP_CMOF_Typed_Element_Type,
     21,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     182,
     MP_CMOF_Association_Member_End,
     87,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     182,
     MP_CMOF_Association_Member_End,
     793,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     182,
     MP_CMOF_Association_Owned_End,
     793,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     793,
     MP_CMOF_Typed_Element_Type,
     10,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     183,
     MP_CMOF_Association_Member_End,
     58,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     183,
     MP_CMOF_Association_Member_End,
     88,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     184,
     MP_CMOF_Association_Member_End,
     63,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     184,
     MP_CMOF_Association_Member_End,
     113,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     185,
     MP_CMOF_Association_Member_End,
     72,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     185,
     MP_CMOF_Association_Member_End,
     794,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     185,
     MP_CMOF_Association_Owned_End,
     794,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Subsetted_Property_Property,
     794,
     MP_CMOF_Property_Subsetted_Property,
     96,
     MP_CMOF_Subsetted_Property_Property);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     794,
     MP_CMOF_Typed_Element_Type,
     20,
     MP_CMOF_Type_Typed_Element);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     135,
     MP_CMOF_Association_Member_End,
     70,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     135,
     MP_CMOF_Association_Member_End,
     133,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     136,
     MP_CMOF_Association_Member_End,
     35,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     136,
     MP_CMOF_Association_Member_End,
     120,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     137,
     MP_CMOF_Association_Member_End,
     69,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     137,
     MP_CMOF_Association_Member_End,
     110,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     138,
     MP_CMOF_Association_Member_End,
     108,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Member_End_Association,
     138,
     MP_CMOF_Association_Member_End,
     795,
     MP_CMOF_Property_Association);
   Internal_Create_Link
    (MA_CMOF_Owned_End_Owning_Association,
     138,
     MP_CMOF_Association_Owned_End,
     795,
     MP_CMOF_Property_Owning_Association);
   Internal_Create_Link
    (MA_CMOF_Type_Typed_Element,
     795,
     MP_CMOF_Typed_Element_Type,
     19,
     MP_CMOF_Type_Typed_Element);

end CMOF.Internals.Setup;
