#Function of this script is to find extents for a sprite folder (when set to 'RECTANGLE') based on all images inside.
#This is the replacement for the 'automatic' function in GameMaker.

import xml.etree.ElementTree as ET
from bs4 import BeautifulSoup
import inflection

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

def generate_extents(list_of_points):
    raw_list = list_of_points
    length = len(raw_list)
    #print(raw_list)

    left = 100000
    right = 0
    top = 100000
    bottom = 0

    for number in range(0, length):
        left_point = int(raw_list[number][0][0])
        right_point = int(raw_list[number][0][0]) + int(raw_list[number][1][0]) - 1
        top_point = int(raw_list[number][0][1])
        bottom_point = int(raw_list[number][0][1]) + int(raw_list[number][1][1]) - 1

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
    
    return(left, right, top, bottom)

snake_example = [((3, 4), (5, 11)), ((2, 5), (1, 4)), ((8, 5), (1, 10)), ((1, 6), (1, 2)), ((9, 6), (1, 10)), ((2, 11), (1, 3)), ((10, 11), (1, 5)), ((11, 12), (1, 4)), ((12, 13), (3, 2)), ((4, 15), (4, 1)), ((12, 15), (2, 1))]

stand_left_example = [[((2, 4), (5, 11)), ((1, 5), (1, 4)), ((7, 5), (1, 10)), ((0, 6), (1, 2)), ((8, 6), (1, 9)), ((1, 11), (1, 3)), ((9, 11), (1, 5)), ((10, 12), (2, 4)), ((14, 12), (2, 2)), ((12, 13), (2, 3)), ((14, 14), (1, 1)), ((3, 15), (4, 1))], [((3, 4), (5, 11)), ((2, 5), (1, 4)), ((8, 5), (1, 10)), ((1, 6), (1, 2)), ((9, 6), (1, 10)), ((2, 11), (1, 3)), ((10, 11), (1, 5)), ((11, 12), (1, 4)), ((12, 13), (3, 2)), ((4, 15), (4, 1)), ((12, 15), (2, 1))], [((5, 3), (5, 12)), ((4, 4), (1, 11)), ((10, 4), (1, 5)), ((3, 5), (1, 2)), ((11, 5), (1, 3)), ((3, 9), (1, 5)), ((2, 10), (1, 3)), ((10, 10), (1, 6)), ((11, 11), (1, 5)), ((12, 13), (2, 2)), ((5, 15), (3, 1)), ((9, 15), (1, 1)), ((12, 15), (1, 1))], [((4, 3), (5, 12)), ((3, 4), (1, 10)), ((9, 4), (1, 12)), ((2, 5), (1, 2)), ((10, 5), (1, 3)), ((2, 10), (1, 3)), ((10, 10), (1, 6)), ((11, 11), (1, 5)), ((12, 13), (2, 2)), ((5, 15), (3, 1)), ((12, 15), (1, 1))]]

#print(snake_example[2][0])

rectangle_sprites = ['sMetalBlock.xml', 'sMetalDoor.xml', 'sAlienFloor.xml', 'sAlienFront.xml', 'sAlienFront2.xml', 'sAlienFront3.xml', 'sAlienTop.xml', 'sAltarLeft.xml', 'sAltarRight.xml', 'sSacAltar.xml', 'sSacAltarLeft.xml', 'sSacAltarRight.xml', 'sSkullBlock.xml', 'sDark.xml', 'sDarkDown.xml', 'sDarkGold.xml', 'sDarkGoldBig.xml', 'sDarkPlat.xml', 'sDarkSmooth.xml', 'sDarkUp.xml', 'sDarkUp2.xml', 'sIce.xml', 'sIceBlock.xml', 'sIceBottom.xml', 'sIceBottom2.xml', 'sIceCaveman.xml', 'sIceDL.xml', 'sIceDLR.xml', 'sIceDown.xml', 'sIceDR.xml', 'sIceLeft.xml', 'sIceLR.xml', 'sIceRight.xml', 'sIceUDL.xml', 'sIceUDR.xml', 'sIceUL.xml', 'sIceULR.xml', 'sIceUp.xml', 'sIceUp2.xml', 'sIceUR.xml', 'sMoai.xml', 'sMoai2.xml', 'sMoai3.xml', 'sMoaiInside.xml', 'sThinIce1.xml', 'sThinIce2.xml', 'sThinIce3.xml', 'sThinIce4.xml', 'sThinIce5.xml', 'sThinIce6.xml', 'sGold.xml', 'sGoldBig.xml', 'sGoldBlock.xml', 'sLadyXoc.xml', 'sGrave.xml', 'sGrave2.xml', 'sGrave3.xml', 'sGrave4.xml', 'sGrave5.xml', 'sGrave6.xml', 'sGraveAsh.xml', 'sLadder.xml', 'sLadderTop.xml', 'sVine.xml', 'sVineBottom.xml', 'sVineSource.xml', 'sVineTop.xml', 'sLush.xml', 'sLushBottom.xml', 'sLushBottom2.xml', 'sLushDown.xml', 'sLushGold.xml', 'sLushGoldBig.xml', 'sLushLeft.xml', 'sLushRight.xml', 'sLushSmooth.xml', 'sLushTop.xml', 'sLushTop2.xml', 'sLushUp.xml', 'sLushUp2.xml', 'sLushUp3.xml', 'sTikiTorch.xml', 'sTreeBranchDeadL.xml', 'sTreeBranchDeadR.xml', 'sTreeBranchLeft.xml', 'sTreeBranchRight.xml', 'sTreeTrunk.xml', 'sBlock.xml', 'sBrick.xml', 'sBrick2.xml', 'sBrickDown.xml', 'sBrickGold.xml', 'sBrickGoldBig.xml', 'sCaveBottom.xml', 'sCaveBottomL.xml', 'sCaveBottomR.xml', 'sCaveLeft.xml', 'sCaveRight.xml', 'sCaveSmooth.xml', 'sCaveTop.xml', 'sCaveTop2.xml', 'sCaveUp.xml', 'sCaveUp2.xml', 'sLamp.xml', 'sLampRed.xml', 'sSign.xml', 'sSignBomb.xml', 'sSignClothing.xml', 'sSignCraps.xml', 'sSignGeneral.xml', 'sSignKissing.xml', 'sSignRare.xml', 'sSignWeapon.xml', 'sButton.xml', 'sButtonPushed.xml', 'sGTemple.xml', 'sGTempleDown.xml', 'sGTempleUp.xml', 'sGTempleUp2.xml', 'sGTempleUp3.xml', 'sGTempleUp4.xml', 'sGTempleUp5.xml', 'sGTempleUp6.xml', 'sGTempleUp7.xml', 'sGTempleUp8.xml', 'sTemple.xml', 'sTempleBottom.xml', 'sTempleDown.xml', 'sTempleGold.xml', 'sTempleGoldBig.xml', 'sTempleLeft.xml', 'sTempleRight.xml', 'sTempleTop.xml', 'sTempleTop2.xml', 'sTempleUp.xml', 'sTempleUp2.xml', 'sTempleUp3.xml', 'sTempleUp4.xml', 'sTempleUp5.xml', 'sTempleUp6.xml', 'sTempleUp7.xml', 'sTempleUp8.xml', 'sLava.xml', 'sLavaTop.xml', 'sWater.xml', 'sWaterBottom.xml', 'sWaterBottom2.xml', 'sWaterBottom3.xml', 'sWaterBottom4.xml', 'sWaterBottomTall1.xml', 'sWaterBottomTall2.xml', 'sWaterTop.xml', 'sTunnelManLeft.xml', 'sTunnelManRight.xml', 'sDamselAttackL.xml', 'sDamselBounceL.xml', 'sDamselClimb.xml', 'sDamselClimb2.xml', 'sDamselClimb3.xml', 'sDamselCrawlL.xml', 'sDamselDieL.xml', 'sDamselDieLL.xml', 'sDamselDieLR.xml', 'sDamselDtHL.xml', 'sDamselDuckL.xml', 'sDamselExit.xml', 'sDamselExit2.xml', 'sDamselFallL.xml', 'sDamselHangL.xml', 'sDamselHoldL.xml', 'sDamselKissL.xml', 'sDamselKissR.xml', 'sDamselLeft.xml', 'sDamselLeftIco.xml', 'sDamselLookL.xml', 'sDamselPushL.xml', 'sDamselRunL.xml', 'sDamselStunL.xml', 'sDamselWhoaL.xml', 'sDamselYellL.xml', 'sDamselYellR.xml', 'sWalDamsel.xml', 'sAttackLeft.xml', 'sClimbUp.xml', 'sClimbUp2.xml', 'sClimbUp3.xml', 'sCrawlLeft.xml', 'sDieL.xml', 'sDieLBounce.xml', 'sDieLFall.xml', 'sDieLL.xml', 'sDieLR.xml', 'sDuckLeft.xml', 'sDuckToHangL.xml', 'sFallLeft.xml', 'sHangLeft.xml', 'sJumpLeft.xml', 'sLookLeft.xml', 'sLookRunL.xml', 'sPExit.xml', 'sPKissL.xml', 'sPKissR.xml', 'sPushLeft.xml', 'sRunLeft.xml', 'sStandLeft.xml', 'sStandLeftIco.xml', 'sStunL.xml', 'sThrowLeft.xml', 'sWhoaLeft.xml', 'sYellLeft.xml', 'sYellRight.xml', 'sTunnelClimb.xml', 'sTunnelClimb2.xml', 'sTunnelClimb3.xml', 'sTunnelCrawlL.xml', 'sTunnelDieL.xml', 'sTunnelDieLL.xml', 'sTunnelDieLR.xml', 'sTunnelDtHL.xml', 'sTunnelExit.xml', 'sTunnelFallL.xml', 'sTunnelHangL.xml', 'sTunnelJumpL.xml', 'sTunnelLBounce.xml', 'sTunnelLeft.xml', 'sTunnelLFall.xml', 'sTunnelLookL.xml', 'sTunnelLookRunL.xml', 'sTunnelPushL.xml', 'sTunnelRunL.xml', 'sTunnelStunL.xml', 'sTunnelWhoaL.xml', 'sDrip.xml', 'sSplash.xml', 'sAlien.xml', 'sAlienBoss.xml', 'sAlienBossDisp.xml', 'sAlienBossHurt.xml', 'sAlienBossTile.xml', 'sAlienDeploy.xml', 'sAlienEject.xml', 'sAlienParachute.xml', 'sBatHang.xml', 'sBatLeft.xml', 'sBatRight.xml', 'sDeadFishLeft.xml', 'sDeadFishLeftIco.xml', 'sDeadFishRight.xml', 'sFireFrogArmedL.xml', 'sFireFrogJumpL.xml', 'sFireFrogLeft.xml', 'sFrogJumpL.xml', 'sFrogLeft.xml', 'sOlmecSlam.xml', 'sPiranhaLeft.xml', 'sPiranhaLeftIco.xml', 'sPiranhaRight.xml', 'sprite624.xml', 'sprite625.xml', 'sSight.xml', 'sSnakeLeft.xml', 'sSnakeWalkL.xml', 'sSpider.xml', 'sSpiderDrown.xml', 'sSpiderDrowning.xml', 'sSpiderFlip.xml', 'sSpiderHang.xml', 'sUFO.xml', 'sUFOBlast.xml', 'sUFOCrash.xml', 'sZombieJumpL.xml', 'sZombieLeft.xml', 'sCavemanBounceL.xml', 'sCavemanDeadL.xml', 'sCavemanDHeldL.xml', 'sCavemanDieLL.xml', 'sCavemanDieLR.xml', 'sCavemanFallL.xml', 'sCavemanHeldL.xml', 'sCavemanLeft.xml', 'sCavemanRunLeft.xml', 'sCavemanStunL.xml', 'sFrozenCaveman.xml', 'sGiantSpider.xml', 'sGiantSpiderCrawl.xml', 'sGiantSpiderFlip.xml', 'sGiantSpiderHang.xml', 'sGiantSpiderJump.xml', 'sGiantSpiderSquirt.xml', 'sHawkBounceL.xml', 'sHawkDeadL.xml', 'sHawkDHeldL.xml', 'sHawkDieLL.xml', 'sHawkDieLR.xml', 'sHawkFallL.xml', 'sHawkHeldL.xml', 'sHawkLeft.xml', 'sHawkRunLeft.xml', 'sHawkStunL.xml', 'sHawkThrowL.xml', 'sMagmaManDie.xml', 'sMagmaManLeft.xml', 'sMagmaManWalkL.xml', 'sManTrapEatCavemanL.xml', 'sManTrapEatDamselL.xml', 'sManTrapEatL.xml', 'sManTrapLeft.xml', 'sManTrapSleepL.xml', 'sManTrapStunL.xml', 'sShopBounceL.xml', 'sShopDHeldL.xml', 'sShopDieL.xml', 'sShopDieLL.xml', 'sShopDieLR.xml', 'sShopFallL.xml', 'sShopHeldL.xml', 'sShopLeft.xml', 'sShopLeftIco.xml', 'sShopRunLeft.xml', 'sShopStunL.xml', 'sSkeletonCreateL.xml', 'sSkeletonCreateR.xml', 'sSkeletonLeft.xml', 'sSkeletonWalkLeft.xml', 'sVampireBatHang.xml', 'sVampireBatLeft.xml', 'sVampireBatRight.xml', 'sVampireBounceL.xml', 'sVampireDeadL.xml', 'sVampireDHeldL.xml', 'sVampireDieLL.xml', 'sVampireDieLR.xml', 'sVampireFallL.xml', 'sVampireHeldL.xml', 'sVampireJumpL.xml', 'sVampireLeft.xml', 'sVampireRunL.xml', 'sVampireStunL.xml', 'sYetiBounceL.xml', 'sYetiDeadL.xml', 'sYetiDHeldL.xml', 'sYetiDieLL.xml', 'sYetiDieLR.xml', 'sYetiFallL.xml', 'sYetiHeldL.xml', 'sYetiLeft.xml', 'sYetiRunLeft.xml', 'sYetiStunL.xml', 'sYetiThrowL.xml', 'sYetiKingDisp.xml', 'sYetiKingLeft.xml', 'sYetiKingRight.xml', 'sYetiKingTurnL.xml', 'sYetiKingTurnR.xml', 'sYetiKingWalkL.xml', 'sYetiKingWalkR.xml', 'sYetiKingYellL.xml', 'sYetiKingYellR.xml', 'sBonesLeft.xml', 'sJetpackBack.xml', 'sJetpackLeft.xml', 'sJetpackRight.xml', 'sBell.xml', 'sCrystalSkull.xml', 'sCrystalSkullIco.xml', 'sDiamond.xml', 'sEmerald.xml', 'sEmeraldBig.xml', 'sGoldBar.xml', 'sGoldBarDraw.xml', 'sGoldBars.xml', 'sGoldBarsDraw.xml', 'sGoldChunk.xml', 'sGoldEgg.xml', 'sGoldIdol.xml', 'sGoldIdolIco.xml', 'sGoldNugget.xml', 'sLampItem.xml', 'sLampRedItem.xml', 'sRuby.xml', 'sRubyBig.xml', 'sSapphire.xml', 'sSapphireBig.xml', 'sScarab.xml', 'sScarabDisp.xml', 'sJar.xml', 'sRope.xml', 'sCrystalSkullTile.xml', 'sDiamondTile.xml', 'sEmeraldBigTile.xml', 'sGoldBarsTile.xml', 'sGoldBarTile.xml', 'sGoldIdolTile.xml', 'sJarTile.xml', 'sJetpackTile.xml', 'sPiranhaTile.xml', 'sRubyBigTile.xml', 'sSapphireBigTile.xml', 'sBox.xml', 'sBoxChecked.xml', 'sBoxMarked.xml', 'sEndPlat.xml', 'sRim.xml', 'sSlider.xml', 'sSliderBG.xml', 'sCopy.xml', 'sQuitSign.xml', 'sResetSign.xml', 'sTutorialSign.xml', 's_0.xml', 's_1.xml', 'sArrowTrapLeft.xml', 'sArrowTrapLeftLit.xml', 'sArrowTrapRight.xml', 'sArrowTrapRightLit.xml', 'sBoulder.xml', 'sCeilingTrap.xml', 'sCeilingTrapS.xml', 'sDoor.xml', 'sSmashTrap.xml', 'sSmashTrapLit.xml', 'sSpearsLeft.xml', 'sSpearsRight.xml', 'sSpearTrap1.xml', 'sSpearTrap2.xml', 'sSpearTrapLit.xml', 'sSpikes.xml', 'sSpikesBlood.xml', 'sSpringTrap.xml', 'sSpringTrapSprung.xml', 'sThwompTrap.xml']

pixel_collision_info_path = r"C:\Users\Jesse\Desktop\H&C2\programming\Spelunky Godot Porting Scripts\PixelPerfectRectsOutput.txt"
pixel_collision_info_file = open(pixel_collision_info_path, 'r')
pixel_collision_info_text = pixel_collision_info_file.read()

soup = BeautifulSoup(pixel_collision_info_text, 'xml')

for sprite in rectangle_sprites:
    formatted_sprite = handle_word(sprite, 's')
    result = soup.find(formatted_sprite)

    all_points = []

    if result != None:
        children = result.findChildren()
        for child in children:
            #child.text comes out as a string, so it must be converted to an actual list
            test = eval(child.text)
            all_points.append(test)
    
    print(sprite)
    if all_points!= []:
        print(find_extents_of_multiple_entries(all_points))