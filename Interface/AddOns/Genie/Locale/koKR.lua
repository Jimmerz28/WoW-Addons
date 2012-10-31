--[[///////////////////////////////////////////////////////////////////////////////////////
    GENIE 5.0.4

    Author: adjo
    Website: http://wow.curseforge.com/projects/genie
    Feedback: http://wow.curseforge.com/projects/genie/tickets/
    Localization: http://wow.curseforge.com/addons/genie/localization/
    
	adjo 2010-10-06T21:23:24Z   
    
	This document may be redistributed as a whole, 
    provided it is unaltered and this copyright notice is not removed.    
    
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
    A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
    CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
    EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
    PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
    LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  
    
--///////////////////////////////////////////////////////////////////////////////////////]]

local L = LibStub("AceLocale-3.0"):NewLocale("Genie", "koKR")
if not L then return end
--[[///////////////////////////////////////////////////////////////////////////////////////
    Automatic translation injection

	NOTE: Do NOT translate strings here!
	If you want to translate, do so at
	http://wow.curseforge.com/addons/genie/localization/
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Add"] = "추가"
L["Add a class/family to the ranking"] = "정렬 순위에 항목 추가"
L["Add an element to this X"] = "이 X 에 항목을 추가"
L["AddonNotes"] = "지니는 당신의 가방, 은행, 길드은행을 정리해줍니다."
L["All items are beeing ignored"] = "모든 아이템이 무시 되었습니다."
L["Alt"] = "알트키"
L["Always"] = "항상"
L["And"] = "AND"
L["As you wish master"] = "주인님의 뜻대로..."
L["AttachTo"] = "결합" -- Needs review
L["Automatic"] = "자동화"
L["Automatic events"] = "자동화 이벤트" -- Needs review
L["Automatic mode"] = "자동화 모드"
L["Bag"] = "가방"
L["bag/ bank or guildbank"] = "가방, 은행, 길드은행"
L["Bags"] = "가방들"
L["BagWork"] = "가방 정리"
L["Bank"] = "은행"
L["BANKFRAME_CLOSED"] = "은행을 확인"
L["BANKFRAME_OPENED"] = "은행을 염" -- Needs review
L["BankWork"] = "은행 정리"
L["Bool"] = "BOOL"
L["Classranking"] = "정렬순위"
L["Colors"] = "색상"
L["Combine"] = "조합"
L["Combined"] = "조합됨"
L["Combine one or more ranks"] = "하나 이상의 다른 항목과 조합"
L["Configmode"] = "설정 모드"
L["Contains"] = "포함된 항목" -- Needs review
L["Count"] = "수량"
L["Create"] = "생성"
L["Created"] = "생성됨"
L["Criteria"] = "기준"
L["Current content of X"] = "X의 현재 컨텐츠"
L["Custom family"] = "커스텀 패밀리"
L["Custom family:short"] = "패밀리"
L["Delete"] = "삭제"
L["Delete a combined rank"] = "조합된 항목을 삭제"
L["Deleted"] = "삭제됨"
L["Disable"] = "비활성화"
L["Disable a class"] = "항목을 비활성화"
L["Disabled"] = "비활성화됨"
L["Disabled:short"] = "D" -- Needs review
L["Display detailed infos about a rank"] = "항목에 대한 자세한 정보를 표시"
L["Enable"] = "활성화"
L["Enable a class"] = "항목을 활성화"
L["Enabled"] = "활성화됨"
L["EquipLoc"] = "착용 부위"
L["Equipment sets"] = "저장된 장비 셋"
L["EQUIPMENT_SWAP_FINISHED"] = "장비셋 이 변경됨" -- Needs review
L["Events"] = "이벤트들"
L["Family"] = "패밀리" -- Needs review
L["Fast"] = "빠르게"
L["Filter"] = "필터"
L["Finished"] = "종료됨"
L["Genie"] = "지니"
L["GUI"] = "GUI"
L["Guildbank"] = "길드 은행"
L["Guildbank delay"] = "Delay" -- Requires localization
L["Guildbank delay:desc"] = "Genie will delay each item-swap by this value (plus some additional lag adjustment)" -- Requires localization
L["GUILDBANKFRAME_CLOSED"] = "길드 은행을 확인"
L["Guildbank-Tab 'X' unlocked. You're welcome."] = "길드은행 탭 'X' 의 잠금이 풀렸습니다." -- Needs review
L["GuildbankWork"] = "길드은행 정리"
L["Highlight"] = "하이라이트"
L["Ignore"] = "무시"
L["Ignore all elements of this X"] = "이 X 의 모든 항목을 무시"
L["Ignore all elements of X"] = "X 의 모든 항목을 무시"
L["iLvl"] = "아이템 레벨"
L["I'm locking Guildbank-Tab 'X'. Step back!"] = "길드은행 탭의 'X ' 잠겨있습니다." -- Needs review
L["I need to know on which tabs i'm allowed to work"] = "제가 일할수 있는 탭이 어느 것인지 알 필요가 있습니다." -- Needs review
L["Inspect"] = "살펴보기"
L["Inventory"] = "인벤토리"
L["Invert"] = "뒤집기"
L["Invert a class"] = "항목을 뒤집습니다."
L["Inverted:short"] = "I" -- Needs review
L["Invert the sorting order"] = "정렬 순서 뒤집기"
L["ItemID"] = "아이템 ID"
L["I've done what you requested in X seconds"] = "당신의 요청을 처리하는데 X 초가 소요되었습니다."
L["I will try to read your mind master"] = "당신 뜻대로 정리하기 위해 노력하겠습니다."
L["Keyring"] = "열쇠고리"
L["LeftClick"] = "좌측 클릭"
L["Lock the Guildbank"] = "길드은행을 잠금"
L["Lock the Guildbank:desc"] = "지니가 작업 중인 길드은행 탭을 잠급니다."
L["LOOT_CLOSED"] = "루팅함" -- Needs review
L["MAIL_CLOSED"] = "우편함을 확인함"
L["Master i apologize, there where some errors. I had to stop"] = "주인님 죄송합니다만, 무언가 오류가 있어 작업을 멈춥니다."
L["Master, i can't work with an empty container"] = "주인님, 저는 비어있는 것을 정리할 수는 없습니다."
L["Master, that's one thing i'm not allowed to do"] = "주인님, 그것은 제가 하게끔 허락되지 않은 일입니다."
L["Master, there's nothing (more) to do"] = "주인님, 더이상 작업할 것이 없습니다."
L["MERCHANT_CLOSED"] = "상인을 방문함"
L["Minimap"] = "미니맵"
L["MinLevel"] = "최소 요구 레벨"
L["Mode"] = "모드"
L["Move all items"] = "모든 아이템들을 옮김"
L["Moving"] = "옮기기"
L["Name"] = "이름"
L["New"] = "신규"
L["No X defined"] = "X 가 정의되지 않음"
L["Number"] = "숫자"
L["Open the options menu"] = "설정창을 열 때"
L["Open the ranking editor"] = "정렬순위 관리창을 열 때"
L["Or"] = "OR"
L["Price"] = "판매가격"
L["Questitem"] = "퀘스트 아이템"
L["Rarity"] = "등급"
L["Remove"] = "제거"
L["Remove an element from this X"] = "이 X 에서 모든 항목을 제거"
L["Rename"] = "이름 변경"
L["Reset the classranking"] = "정렬순위를 초기화"
L["Reverse"] = "뒤집기" -- Needs review
L["Reverse the order in which your bags and/or bagslots will be accsessed"] = "가방들이나 슬롯들 단위로 정렬 순서를 뒤집음" -- Needs review
L["RightClick"] = "우측클릭"
L["Shift"] = "쉬프트키"
L["Show"] = "보임" -- Needs review
L["Show current X"] = "현재 X 를 보임"
L["Silent"] = "소리없이 작업" -- Needs review
L["SlotCooldown"] = "슬롯 쿨다운"
L["SlotCooldown:desc"] = "각 슬롯들을 지니가 다시 사용하기 전 조금 기다립니다. 딜레이를 원치 않으시면 0으로 설정하세요."
L["Slots"] = "슬롯들"
L["Sort all items"] = "모든 아이템 정렬"
L["sort_heap"] = "힙소트"
L["Sorting"] = "정렬"
L["Sorting algorithm"] = "정렬 알고리즘"
L["sort_insert"] = "인설션소트"
L["sort_quick3"] = "퀵소트"
L["sort_select"] = "셀렉션소트"
L["Soulbound"] = "귀속 여부"
L["Sound"] = "소리"
L["Stack all items"] = "모든 아이템 합치기"
L["StackCount"] = "겹쳐지는 갯수" -- Needs review
L["Stacking"] = "합치기"
L["Stack, move and sort your X"] = "X 을(를) 합치기, 옮기기, 정렬하기"
L["Stop"] = "중지"
L["Strg"] = "컨트롤키"
L["String"] = "문자"
L["SubType"] = "소분류"
L["SwapsPerCycle"] = "주기당 교환량" -- Needs review
L["SwapsPerCycle:desc"] = "각 주기에 옮길수 있는 아이템의 최대 수량을 정합니다. 0으로 설정하시면 한번에 모두 옮깁니다." -- Needs review
L["Sync"] = "동기화" -- Needs review
L["Text"] = "문자"
L["Texture"] = "텍스처"
L["Toggle config mode"] = "설정 모드를 토글"
L["ToggleWithRankingEditor"] = "정렬순위 관리창을 토글"
L["ToggleWithRankingEditorDesc"] = "정렬순위 관리창을 여닫을때 설정 모드를 활성화/비활성화"
L["Tooltip"] = "툴팁"
L["TRADE_CLOSED"] = "다른 사람과 거래함"
L["TStID"] = "경매장 분류"
L["Type"] = "분류"
L["Unique"] = "유니크"
L["Unknown"] = "알수없음"
L["Update"] = "업데이트"
L["Update a class"] = "항목을 업데이트"
L["Updated"] = "업데이트됨"
L["UseProfile"] = "프로필 사용"
L["Verbosity"] = "어떤 방식으로 지니가 출력할지 관리" -- Needs review
L["Version"] = "버전"
L["waitAfter"] = "전투 후 대기" -- Needs review
L["When"] = "언제"
L["Work"] = "작업"
L["X added to Y"] = "X 이(가) Y 에 추가됨"
L["X has been updated"] = "X 이(가) 업데이트 되었습니다."
L["X is empty"] = "X 가 빔" -- Needs review
L["X removed from Y"] = "X 이(가) Y 에서 제거됨"
L["X renamed to Y"] = "X 이(가) Y 로 변경됨"


--[[///////////////////////////////////////////////////////////////////////////////////////
	translated auctionitemclasses

    Usage: L[L['Weapon']()] to get the translated type
    Note: Update if auctionitemclasses are added/removed
--///////////////////////////////////////////////////////////////////////////////////////]]
L["Weapon"] = function() return "aic01" end
L["Armor"] = function() return "aic02" end
L["Container"] = function() return "aic03" end
L["Consumable"] = function() return "aic04" end
L["Glyph"] = function() return "aic05" end
L["Trade Goods"] = function() return "aic06" end
L["Projectile"] = function() return "aic07" end
L["Quiver"] = function() return "aic08" end
L["Recipe"] = function() return "aic09" end
L["Gem"] = function() return "aic10" end
L["Miscellaneous"] = function() return "aic11" end
L["Quest"] = function() return "aic12" end

local itemClasses = { GetAuctionItemClasses() }
if #itemClasses > 0 then
	for i, itemClass in pairs(itemClasses) do
        local icString = "aic".. string.format('%.2d',i)
    
		L[icString] = itemClass
		local itemSubClasses = { GetAuctionItemSubClasses(i) }
		if #itemSubClasses > 0 then
			for j, itemSubClass in pairs(itemSubClasses) do
				L[icString..string.format('%.2d',j)] = itemClass .. '>' .. itemSubClass
			end
		else
			L[icString.. "00"] = itemClass
		end
	end
end
