#Function of this script is to find extents for a sprite folder (when set to 'RECTANGLE') based on all images inside.
#This is the replacement for the 'automatic' function in GameMaker.
#Rewriting this because the original is trash.

import xml.etree.ElementTree as ET
from bs4 import BeautifulSoup
import inflection
import pyperclip
import pprint
import re

def camel_case_to_snake_case(string):
    snake_case = inflection.underscore(string)
    return snake_case

def trim_leading_letter(word, letter):
    word = word.removeprefix(letter)
    return(word)

def delete_xml_suffix(word):
    word = word.removesuffix(".xml")
    return word

def handle_word(word, letter):
    word = delete_xml_suffix(word)
    word = trim_leading_letter(word, letter)
    word = camel_case_to_snake_case(word)
    return word

def clean_up_string(string):
    new_string = string.replace("'", "")
    #new_string = new_string.replace("[", "")
    #new_string = new_string.replace("]", "")
    new_string = new_string.replace("Vector2", "")
    new_string = new_string.replace("[[", "[[")
    new_string = new_string.replace("]]", "]]")
    new_string = new_string.replace("([", "[")

    return new_string

def final_data_cleanup(string):
    string = str(string)
    string = string.replace("((", "[Vector2(")
    string = string.replace(", (", ", Vector2(")
    string = string.replace("))", ")]")
    return string

def generate_extents(list_of_points):
    raw_list = list_of_points
    length = len(raw_list)

    left = 100000
    right = 0
    top = 100000
    bottom = 0

    for num in range(0, length):
        left_point = int(raw_list[num][0][0])
        right_point = int(raw_list[num][0][0]) + int(raw_list[num][1][0]) - 1
        top_point = int(raw_list[num][0][1])
        bottom_point = int(raw_list[num][0][1]) + int(raw_list[num][1][1]) - 1

        if left_point < left:
            left = left_point
        if right_point > right:
            right = right_point
        if top_point < top:
            top = top_point
        if bottom_point > bottom:
            bottom = bottom_point

    return left, right, top, bottom

def find_extents_of_multiple_entries(list):
    left = 100000
    right = 0
    top = 100000
    bottom = 0

    for entry in list:
        left_return, right_return, top_return, bottom_return = generate_extents(entry)

        if left_return < left:
            left = left_return
        if right_return > right:
            right = right_return
        if top_return < top:
            top = top_return
        if bottom_return > bottom:
            bottom = bottom_return
    
    point = (left, top)
    size = (right - left + 1, bottom - top + 1)

    #return(left, right, top, bottom)
    return point, size

def main_loop():

    rectangle_sprites = ['sMetalBlock.xml', 'sMetalDoor.xml', 'sAlienFloor.xml', 'sAlienFront.xml', 'sAlienFront2.xml', 'sAlienFront3.xml', 'sAlienTop.xml', 'sAltarLeft.xml', 'sAltarRight.xml', 'sSacAltar.xml', 'sSacAltarLeft.xml', 'sSacAltarRight.xml', 'sSkullBlock.xml', 'sDark.xml', 'sDarkDown.xml', 'sDarkGold.xml', 'sDarkGoldBig.xml', 'sDarkPlat.xml', 'sDarkSmooth.xml', 'sDarkUp.xml', 'sDarkUp2.xml', 'sIce.xml', 'sIceBlock.xml', 'sIceBottom.xml', 'sIceBottom2.xml', 'sIceCaveman.xml', 'sIceDL.xml', 'sIceDLR.xml', 'sIceDown.xml', 'sIceDR.xml', 'sIceLeft.xml', 'sIceLR.xml', 'sIceRight.xml', 'sIceUDL.xml', 'sIceUDR.xml', 'sIceUL.xml', 'sIceULR.xml', 'sIceUp.xml', 'sIceUp2.xml', 'sIceUR.xml', 'sMoai.xml', 'sMoai2.xml', 'sMoai3.xml', 'sMoaiInside.xml', 'sThinIce1.xml', 'sThinIce2.xml', 'sThinIce3.xml', 'sThinIce4.xml', 'sThinIce5.xml', 'sThinIce6.xml', 'sGold.xml', 'sGoldBig.xml', 'sGoldBlock.xml', 'sLadyXoc.xml', 'sGrave.xml', 'sGrave2.xml', 'sGrave3.xml', 'sGrave4.xml', 'sGrave5.xml', 'sGrave6.xml', 'sGraveAsh.xml', 'sLadder.xml', 'sLadderTop.xml', 'sVine.xml', 'sVineBottom.xml', 'sVineSource.xml', 'sVineTop.xml', 'sLush.xml', 'sLushBottom.xml', 'sLushBottom2.xml', 'sLushDown.xml', 'sLushGold.xml', 'sLushGoldBig.xml', 'sLushLeft.xml', 'sLushRight.xml', 'sLushSmooth.xml', 'sLushTop.xml', 'sLushTop2.xml', 'sLushUp.xml', 'sLushUp2.xml', 'sLushUp3.xml', 'sTikiTorch.xml', 'sTreeBranchDeadL.xml', 'sTreeBranchDeadR.xml', 'sTreeBranchLeft.xml', 'sTreeBranchRight.xml', 'sTreeTrunk.xml', 'sBlock.xml', 'sBrick.xml', 'sBrick2.xml', 'sBrickDown.xml', 'sBrickGold.xml', 'sBrickGoldBig.xml', 'sCaveBottom.xml', 'sCaveBottomL.xml', 'sCaveBottomR.xml', 'sCaveLeft.xml', 'sCaveRight.xml', 'sCaveSmooth.xml', 'sCaveTop.xml', 'sCaveTop2.xml', 'sCaveUp.xml', 'sCaveUp2.xml', 'sLamp.xml', 'sLampRed.xml', 'sSign.xml', 'sSignBomb.xml', 'sSignClothing.xml', 'sSignCraps.xml', 'sSignGeneral.xml', 'sSignKissing.xml', 'sSignRare.xml', 'sSignWeapon.xml', 'sButton.xml', 'sButtonPushed.xml', 'sGTemple.xml', 'sGTempleDown.xml', 'sGTempleUp.xml', 'sGTempleUp2.xml', 'sGTempleUp3.xml', 'sGTempleUp4.xml', 'sGTempleUp5.xml', 'sGTempleUp6.xml', 'sGTempleUp7.xml', 'sGTempleUp8.xml', 'sTemple.xml', 'sTempleBottom.xml', 'sTempleDown.xml', 'sTempleGold.xml', 'sTempleGoldBig.xml', 'sTempleLeft.xml', 'sTempleRight.xml', 'sTempleTop.xml', 'sTempleTop2.xml', 'sTempleUp.xml', 'sTempleUp2.xml', 'sTempleUp3.xml', 'sTempleUp4.xml', 'sTempleUp5.xml', 'sTempleUp6.xml', 'sTempleUp7.xml', 'sTempleUp8.xml', 'sLava.xml', 'sLavaTop.xml', 'sWater.xml', 'sWaterBottom.xml', 'sWaterBottom2.xml', 'sWaterBottom3.xml', 'sWaterBottom4.xml', 'sWaterBottomTall1.xml', 'sWaterBottomTall2.xml', 'sWaterTop.xml', 'sTunnelManLeft.xml', 'sTunnelManRight.xml', 'sDamselAttackL.xml', 'sDamselBounceL.xml', 'sDamselClimb.xml', 'sDamselClimb2.xml', 'sDamselClimb3.xml', 'sDamselCrawlL.xml', 'sDamselDieL.xml', 'sDamselDieLL.xml', 'sDamselDieLR.xml', 'sDamselDtHL.xml', 'sDamselDuckL.xml', 'sDamselExit.xml', 'sDamselExit2.xml', 'sDamselFallL.xml', 'sDamselHangL.xml', 'sDamselHoldL.xml', 'sDamselKissL.xml', 'sDamselKissR.xml', 'sDamselLeft.xml', 'sDamselLeftIco.xml', 'sDamselLookL.xml', 'sDamselPushL.xml', 'sDamselRunL.xml', 'sDamselStunL.xml', 'sDamselWhoaL.xml', 'sDamselYellL.xml', 'sDamselYellR.xml', 'sWalDamsel.xml', 'sAttackLeft.xml', 'sClimbUp.xml', 'sClimbUp2.xml', 'sClimbUp3.xml', 'sCrawlLeft.xml', 'sDieL.xml', 'sDieLBounce.xml', 'sDieLFall.xml', 'sDieLL.xml', 'sDieLR.xml', 'sDuckLeft.xml', 'sDuckToHangL.xml', 'sFallLeft.xml', 'sHangLeft.xml', 'sJumpLeft.xml', 'sLookLeft.xml', 'sLookRunL.xml', 'sPExit.xml', 'sPKissL.xml', 'sPKissR.xml', 'sPushLeft.xml', 'sRunLeft.xml', 'sStandLeft.xml', 'sStandLeftIco.xml', 'sStunL.xml', 'sThrowLeft.xml', 'sWhoaLeft.xml', 'sYellLeft.xml', 'sYellRight.xml', 'sTunnelClimb.xml', 'sTunnelClimb2.xml', 'sTunnelClimb3.xml', 'sTunnelCrawlL.xml', 'sTunnelDieL.xml', 'sTunnelDieLL.xml', 'sTunnelDieLR.xml', 'sTunnelDtHL.xml', 'sTunnelExit.xml', 'sTunnelFallL.xml', 'sTunnelHangL.xml', 'sTunnelJumpL.xml', 'sTunnelLBounce.xml', 'sTunnelLeft.xml', 'sTunnelLFall.xml', 'sTunnelLookL.xml', 'sTunnelLookRunL.xml', 'sTunnelPushL.xml', 'sTunnelRunL.xml', 'sTunnelStunL.xml', 'sTunnelWhoaL.xml', 'sDrip.xml', 'sSplash.xml', 'sAlien.xml', 'sAlienBoss.xml', 'sAlienBossDisp.xml', 'sAlienBossHurt.xml', 'sAlienBossTile.xml', 'sAlienDeploy.xml', 'sAlienEject.xml', 'sAlienParachute.xml', 'sBatHang.xml', 'sBatLeft.xml', 'sBatRight.xml', 'sDeadFishLeft.xml', 'sDeadFishLeftIco.xml', 'sDeadFishRight.xml', 'sFireFrogArmedL.xml', 'sFireFrogJumpL.xml', 'sFireFrogLeft.xml', 'sFrogJumpL.xml', 'sFrogLeft.xml', 'sOlmecSlam.xml', 'sPiranhaLeft.xml', 'sPiranhaLeftIco.xml', 'sPiranhaRight.xml', 'sprite624.xml', 'sprite625.xml', 'sSight.xml', 'sSnakeLeft.xml', 'sSnakeWalkL.xml', 'sSpider.xml', 'sSpiderDrown.xml', 'sSpiderDrowning.xml', 'sSpiderFlip.xml', 'sSpiderHang.xml', 'sUFO.xml', 'sUFOBlast.xml', 'sUFOCrash.xml', 'sZombieJumpL.xml', 'sZombieLeft.xml', 'sCavemanBounceL.xml', 'sCavemanDeadL.xml', 'sCavemanDHeldL.xml', 'sCavemanDieLL.xml', 'sCavemanDieLR.xml', 'sCavemanFallL.xml', 'sCavemanHeldL.xml', 'sCavemanLeft.xml', 'sCavemanRunLeft.xml', 'sCavemanStunL.xml', 'sFrozenCaveman.xml', 'sGiantSpider.xml', 'sGiantSpiderCrawl.xml', 'sGiantSpiderFlip.xml', 'sGiantSpiderHang.xml', 'sGiantSpiderJump.xml', 'sGiantSpiderSquirt.xml', 'sHawkBounceL.xml', 'sHawkDeadL.xml', 'sHawkDHeldL.xml', 'sHawkDieLL.xml', 'sHawkDieLR.xml', 'sHawkFallL.xml', 'sHawkHeldL.xml', 'sHawkLeft.xml', 'sHawkRunLeft.xml', 'sHawkStunL.xml', 'sHawkThrowL.xml', 'sMagmaManDie.xml', 'sMagmaManLeft.xml', 'sMagmaManWalkL.xml', 'sManTrapEatCavemanL.xml', 'sManTrapEatDamselL.xml', 'sManTrapEatL.xml', 'sManTrapLeft.xml', 'sManTrapSleepL.xml', 'sManTrapStunL.xml', 'sShopBounceL.xml', 'sShopDHeldL.xml', 'sShopDieL.xml', 'sShopDieLL.xml', 'sShopDieLR.xml', 'sShopFallL.xml', 'sShopHeldL.xml', 'sShopLeft.xml', 'sShopLeftIco.xml', 'sShopRunLeft.xml', 'sShopStunL.xml', 'sSkeletonCreateL.xml', 'sSkeletonCreateR.xml', 'sSkeletonLeft.xml', 'sSkeletonWalkLeft.xml', 'sVampireBatHang.xml', 'sVampireBatLeft.xml', 'sVampireBatRight.xml', 'sVampireBounceL.xml', 'sVampireDeadL.xml', 'sVampireDHeldL.xml', 'sVampireDieLL.xml', 'sVampireDieLR.xml', 'sVampireFallL.xml', 'sVampireHeldL.xml', 'sVampireJumpL.xml', 'sVampireLeft.xml', 'sVampireRunL.xml', 'sVampireStunL.xml', 'sYetiBounceL.xml', 'sYetiDeadL.xml', 'sYetiDHeldL.xml', 'sYetiDieLL.xml', 'sYetiDieLR.xml', 'sYetiFallL.xml', 'sYetiHeldL.xml', 'sYetiLeft.xml', 'sYetiRunLeft.xml', 'sYetiStunL.xml', 'sYetiThrowL.xml', 'sYetiKingDisp.xml', 'sYetiKingLeft.xml', 'sYetiKingRight.xml', 'sYetiKingTurnL.xml', 'sYetiKingTurnR.xml', 'sYetiKingWalkL.xml', 'sYetiKingWalkR.xml', 'sYetiKingYellL.xml', 'sYetiKingYellR.xml', 'sBonesLeft.xml', 'sJetpackBack.xml', 'sJetpackLeft.xml', 'sJetpackRight.xml', 'sBell.xml', 'sCrystalSkull.xml', 'sCrystalSkullIco.xml', 'sDiamond.xml', 'sEmerald.xml', 'sEmeraldBig.xml', 'sGoldBar.xml', 'sGoldBarDraw.xml', 'sGoldBars.xml', 'sGoldBarsDraw.xml', 'sGoldChunk.xml', 'sGoldEgg.xml', 'sGoldIdol.xml', 'sGoldIdolIco.xml', 'sGoldNugget.xml', 'sLampItem.xml', 'sLampRedItem.xml', 'sRuby.xml', 'sRubyBig.xml', 'sSapphire.xml', 'sSapphireBig.xml', 'sScarab.xml', 'sScarabDisp.xml', 'sJar.xml', 'sRope.xml', 'sCrystalSkullTile.xml', 'sDiamondTile.xml', 'sEmeraldBigTile.xml', 'sGoldBarsTile.xml', 'sGoldBarTile.xml', 'sGoldIdolTile.xml', 'sJarTile.xml', 'sJetpackTile.xml', 'sPiranhaTile.xml', 'sRubyBigTile.xml', 'sSapphireBigTile.xml', 'sBox.xml', 'sBoxChecked.xml', 'sBoxMarked.xml', 'sEndPlat.xml', 'sRim.xml', 'sSlider.xml', 'sSliderBG.xml', 'sCopy.xml', 'sQuitSign.xml', 'sResetSign.xml', 'sTutorialSign.xml', 's_0.xml', 's_1.xml', 'sArrowTrapLeft.xml', 'sArrowTrapLeftLit.xml', 'sArrowTrapRight.xml', 'sArrowTrapRightLit.xml', 'sBoulder.xml', 'sCeilingTrap.xml', 'sCeilingTrapS.xml', 'sDoor.xml', 'sSmashTrap.xml', 'sSmashTrapLit.xml', 'sSpearsLeft.xml', 'sSpearsRight.xml', 'sSpearTrap1.xml', 'sSpearTrap2.xml', 'sSpearTrapLit.xml', 'sSpikes.xml', 'sSpikesBlood.xml', 'sSpringTrap.xml', 'sSpringTrapSprung.xml', 'sThwompTrap.xml']

    pixel_collision_info_path = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\PixelPerfectRectsOutput.txt"
    pixel_collision_info_file = open(pixel_collision_info_path, 'r')
    pixel_collision_info_text = pixel_collision_info_file.read()

    soup = BeautifulSoup(pixel_collision_info_text, 'xml')


    all_rectangle_sprites_info = ""
    for sprite in rectangle_sprites:
        formatted_sprite = handle_word(sprite, 's')
        if formatted_sprite == "_0":
            formatted_sprite = "s_0"
        elif formatted_sprite == "_1":
            formatted_sprite = "s_1"

        result = soup.find(formatted_sprite)

        dict = {}
        all_points = []

        if result != None:
            children = result.findChildren()
            x = -1
            for child in children:
                x+=1
                #child.text comes out as a string, so it must be converted to an actual list
                test = clean_up_string(child.text)
                test = eval(test)
                all_points.append(test)
            multiple_entries = find_extents_of_multiple_entries(all_points)

        
        all_rectangle_sprites_info += "\"" + handle_word(sprite, 's') + "\"" + " : " + "'" + str(final_data_cleanup(multiple_entries)) + "'" + ",\n"
    return all_rectangle_sprites_info

#pyperclip.copy(main_loop())

def test():
    test_points = str(['[Vector2(2, 4), Vector2(5, 11)]', '[Vector2(1, 5), Vector2(1, 4)]', '[Vector2(7, 5), Vector2(1, 10)]', '[Vector2(0, 6), Vector2(1, 2)]', '[Vector2(8, 6), Vector2(1, 9)]', '[Vector2(1, 11), Vector2(1, 3)]', '[Vector2(9, 11), Vector2(1, 5)]', '[Vector2(10, 12), Vector2(2, 4)]', '[Vector2(14, 12), Vector2(2, 2)]', '[Vector2(12, 13), Vector2(2, 3)]', '[Vector2(14, 14), Vector2(1, 1)]', '[Vector2(3, 15), Vector2(4, 1)]'])
    test_points_2 = str(['[Vector2(3, 4), Vector2(5, 11)]', '[Vector2(2, 5), Vector2(1, 4)]', '[Vector2(8, 5), Vector2(1, 10)]', '[Vector2(1, 6), Vector2(1, 2)]', '[Vector2(9, 6), Vector2(1, 10)]', '[Vector2(2, 11), Vector2(1, 3)]', '[Vector2(10, 11), Vector2(1, 5)]', '[Vector2(11, 12), Vector2(1, 4)]', '[Vector2(12, 13), Vector2(3, 2)]', '[Vector2(4, 15), Vector2(4, 1)]', '[Vector2(12, 15), Vector2(2, 1)]'])
    test_points_3 = str(['[Vector2(5, 3), Vector2(5, 12)]', '[Vector2(4, 4), Vector2(1, 11)]', '[Vector2(10, 4), Vector2(1, 5)]', '[Vector2(3, 5), Vector2(1, 2)]', '[Vector2(11, 5), Vector2(1, 3)]', '[Vector2(3, 9), Vector2(1, 5)]', '[Vector2(2, 10), Vector2(1, 3)]', '[Vector2(10, 10), Vector2(1, 6)]', '[Vector2(11, 11), Vector2(1, 5)]', '[Vector2(12, 13), Vector2(2, 2)]', '[Vector2(5, 15), Vector2(3, 1)]', '[Vector2(9, 15), Vector2(1, 1)]', '[Vector2(12, 15), Vector2(1, 1)]'])
    test_points_4 = str(['[Vector2(4, 3), Vector2(5, 12)]', '[Vector2(3, 4), Vector2(1, 10)]', '[Vector2(9, 4), Vector2(1, 12)]', '[Vector2(2, 5), Vector2(1, 2)]', '[Vector2(10, 5), Vector2(1, 3)]', '[Vector2(2, 10), Vector2(1, 3)]', '[Vector2(10, 10), Vector2(1, 6)]', '[Vector2(11, 11), Vector2(1, 5)]', '[Vector2(12, 13), Vector2(2, 2)]', '[Vector2(5, 15), Vector2(3, 1)]', '[Vector2(12, 15), Vector2(1, 1)]'])

    test_points = clean_up_string(test_points)
    test_points = eval(test_points)

    test_points_2 = clean_up_string(test_points_2)
    test_points_2 = eval(test_points_2)

    test_points_3 = clean_up_string(test_points_3)
    test_points_3 = eval(test_points_3)

    test_points_4 = clean_up_string(test_points_4)
    test_points_4 = eval(test_points_4)

    list_of_lists = []
    list_of_lists.append(test_points)
    list_of_lists.append(test_points_2)
    list_of_lists.append(test_points_3)
    list_of_lists.append(test_points_4)

    print(find_extents_of_multiple_entries(list_of_lists))

print(main_loop())
pyperclip.copy(main_loop())