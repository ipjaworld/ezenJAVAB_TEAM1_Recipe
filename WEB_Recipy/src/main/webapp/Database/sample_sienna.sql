create sequence recipe_seq increment by 1 start with 1;


alter table recipe add thumbnail varchar2(100) not null;


select * from processImg;
select * from recipe;


-- 기본 틀
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '제목', '내용', 소요시간, 종류(번호), '썸네일 경로');
insert into processImg values( rnum, '경로', '요리 과정 묘사', 1);
insert into ingredient(rnum, iname, quantity) values(레시피 번호, '재료 이름', 재료 양);

-- 1번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '복숭아 코블러', '지금 한창 제철인 천도복숭아를 활용하여 만드는 상큼한 디저트 메뉴!', 60, 6 , '/imageThumb/peachThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/peach1.jpg', '복숭아는 씨를 제거하고 적당한 크기로 썬다.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/peach2.jpg', '볼에 복숭아, 설탕, 계피 가루를 넣고 섞어 절인다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/peach3.jpg', '다른 볼에 중력분, 설탕, 베이킹파우더, 소금, 우유를 넣고 섞는다.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/peach4.jpg', '오븐 용기에 버터를 넣고 전자레인지에 돌려 녹인다.', 4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/peach5.jpg', '에어프라이어에 넣고 160℃에서 30분 굽는다.', 5);
-- 재료 : 천도복숭아 2개, 설탕 3숟가락, 계피가루 1/3숟가락, 중력분 80g, 설탕 70g, 베이킹파우더 약간, 소금 약간, 우유 2/3종이컵, 버터 40g

-- 2번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '앙쿠르트 스프', '스프를 컵에 담고 그위에 페이스트리 반죽을 덮어서 오븐에 바삭하게 구운 음식', 60, 4 , '/imageThumb/piesoupThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/piesoup1.jpg', '양파는 채썰고 감자는 슬라이스한다. 냄비에 버터를 녹이고 양파를 충분히 볶는다', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/piesoup2.jpg', '감자를 넣고 함께 볶다가 물, 치킨스톡을 넣고 끓인다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/piesoup3.jpg', '감자가 익으면 핸드블렌더로 갈아준다.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/piesoup4.jpg', '생크림을 넣고 약불에서 끓여 농도를 맞춘다. 소금, 후추로 간 한다.오븐 용기에 담고 페이스트리 생지로 용기를 덮는다', 4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/piesoup5.jpg', '오븐에 넣고 170℃에서 15분 굽는다.', 5);
-- 재료 : 감자 2개, 양파 1/2개, 버터 1조각, 물 2종이컵,  생크림 1/2종이컵, 치킨스톡 큐브 1개, 소금 약간, 후추 약간, 페이스트리생지 1장, 달걀 1개

-- 3번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '미역된장국', '집에 국 없을 때 미역, 두부 넣어 간단하게 만드는 국, 미역된장국 만드는 법', 30, 2 , '/imageThumb/swsoupThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/swsoup1.jpg', '미역은 물에 불리고 두부는 한입 크기로 썬다. 냄비에 불린 미역, 참기름, 국간장을 넣고 약한 불로 볶는다.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/swsoup2.jpg', '다시물을 붓고 된장을 풀어주면서 끓인다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/swsoup3.jpg', '한소끔 끓인 국에 다진마늘과 두부를 넣고 한번 더 끓인다.', 3);
-- 재료 : 자른미역 10g, 두부 1/2모, 다시물 1L, 된장 1숟가락, 참기름 1숟가락, 국간장 1숟가락, 다진마늘 1/2숟가락

-- 4번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '알배기배추무침', '반찬 없을때 간단히 만드는 알배기배추 요리', 15, 3 , '/imageThumb/cabbageThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage1.jpg', '끓는 물에 소금을 넣고 배추를 데친다', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage2.jpg', '찬물에 헹군 후 물기를 짜고 먹기 좋은 크기로 썬다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage3.jpg', '쪽파는 3~4cm 길이로 썬다.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage4.jpg', '볼에 양념재료를 모두 넣고 섞는다.', 4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage5.jpg', '알배추, 쪽파에 양념을 넣고 무친 후 통깨를 뿌려 완성한다.', 5);
-- 재료 : 알배추 300g, 소금 1/2숟가락, 쪽파 2줄, 통깨 약간, 된장 1+1/2숟가락, 고춧가루 1/2숟가락, 매실액 1/3숟가락, 다진마늘 1/2숟가락, 참기름 1숟가락

-- 5번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '바지락야채죽', '봄 제철 식재료로 만드는 요리!바지락야채죽', 30, 1 , '/imageThumb/clamThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/clam1.jpg', '끓는 물에 소금을 넣고 배추를 데친다', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/clam2.jpg', '찬물에 헹군 후 물기를 짜고 먹기 좋은 크기로 썬다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/clam3.jpg', '쪽파는 3~4cm 길이로 썬다.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/clam4.jpg', '볼에 양념재료를 모두 넣고 섞는다.', 4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/clam5.jpg', '알배추, 쪽파에 양념을 넣고 무친 후 통깨를 뿌려 완성한다.', 5);
-- 재료 : 쌀 1종이컵, 바지락살 1종이컵, 부추 30g, 양파 1/3개, 당근 1/4개, 소금 약간, 참기름 1숟가락, 물 4종이컵

-- 6번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'somi', '믹스베리레몬에이드', '더위를 잊게 해줄 상큼한 음료 한 잔~ 과일티백으로 만드는 믹스베리레몬에이드 레시피를 소개해드릴게요.', 20, 5 , '/imageThumb/lemonadeThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/lemonade1.jpg', '믹스베리 티백을 따뜻한 물에 진하게 우린다.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/lemonade2.jpg', '레몬은 즙을 짜서 믹스베리 티 우린 것과 섞는다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/lemonade3.jpg', '컵에 코코넛 젤리>얼음>사이다를 넣고 2를 넣는다.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/lemonade4.jpg', '동결건조베리를 토핑으로 올려 완성한다.', 4);
-- 재료 : 레몬 2개, 사이다 300ml, 믹스베리 티 2개, 따뜻한물 50ml, 코코넛 젤리 1숟가락, 동결건조베리 적당량

-- 7번 레시피 
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'somi', '마제소바', '다진 고기를 볶아서 비벼먹는 일본식 비빔면!', 30, 4 , '/imageThumb/majesobaThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/majesoba1.png', '[맛간장] 냄비에 맛간장 재료를 넣고 한소끔 끓인 다음 불을 끄고 가쓰오부시를 넣어요.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/majesoba2.png', '부추와 쪽파는 쫑쫑 썰어 담고 팬에 고추기름, 다진마늘, 돼지고기 다짐육을 넣고 볶다가 양념을 넣고 자작하게 볶아요.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/majesoba3.png', '끓는 물에 면을 삶고 찬물에 헹궈요.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/majesoba4.png', '면에 맛간장 3숟가락, 고추기름 2숟가락을 넣고 비벼준 다음 그릇에 담아요.', 4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/majesoba5.png', '부추, 파, 김, 다진마늘, 산초가루, 볶아둔 고기를 담고 달걀노른자를 올려 마무리해요.', 5);
-- 재료 : 돼지고기다짐육 2종이컵, 부추 1줌, 쪽파 1줌, 다진마늘 1숟가락, 우동면 2인분, 김가루 약간, 산초가루 약간, 달걀노른자 2개 [맛간장] 간장 1/2종이컵, 맛술 1/2종이컵, 다시마 2조각, 설탕 2숟가락, 가쓰오부시 1/2종이컵 [고기양념] 고추기름 1숟가락, 다진마늘 1숟가락, 굴소스 2숟가락, 맛간장 2숟가락, 두반장 1+1/2숟가락, 설탕 1숟가락, 맛술 2숟가락, 후추 약간 [다시마식초] 다시마 1조각, 식초 1/2종이컵, 설탕 1숟가락

-- 8번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'somi', '오이고추 된장무침', '불 없이 간단하게 만들어 여름에 시원하고 아삭하게  즐길 수 있는 국민 밥반찬 메뉴!', 5, 3 , '/imageThumb/cucumberThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cucumber1.png', '오이고추를 먹기 좋은 크기로 자른다.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cucumber2.png', '양념 재료를 섞는다.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cucumber3.png', '오이고추와 양념을 버무린다.', 3);
-- 재료 : 오이고추 100g [양념재료] 된장 1숟가락, 고추장 1/3숟가락, 마늘 1/2숟가락, 올리고당 1/2숟가락, 마요네즈 1숟가락, 깨소금 1/3숟가락

-- 9번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'somi', '레몬블루베리팬케이크', '브런치 메뉴 추천 촉촉하고 새콤달콤한 레몬 블루베리 팬케이크', 30, 6 , '/imageThumb/pancakeThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/pancake1.png', '냄비에 레몬 블루베리 콩포트 재료를 모두 넣고 저어가며 졸여요. 우유에 레몬즙을 넣어서 버터 밀크를 만들어요.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/pancake2.png', '부추와 쪽파는 쫑쫑 썰어 담고 팬에 고추기름, 다진마늘, 돼지고기 다짐육을 넣고 볶다가 양념을 넣고 자작하게 볶아요.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/pancake3.png', '볼에 가루 재료를 모두 넣고 섞은 다음 달걀, 버터 밀크, 녹인 버터를 넣고 섞어요.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/pancake4.png', '블루베리를 넣고 가볍게 섞은 다음 팬에 오일을 두르고 반죽을 올려 앞뒤로 노릇하게 구워요.', 4);
-- 재료 : 밀가루중력분 2종이컵, 설탕 2+1/2숟가락, 베이킹파우더 2/3숟가락, 베이킹소다 1/4숟가락, 소금 1/3숟가락, 달걀 2개, 우유 180ml, 레몬즙 1숟가락, 녹인 무염버터 3숟가락, 블루베리 1종이컵, 오일 적당량 [레몬 블루베리 콩포트]​ 냉동 블루베리 2종이컵, 설탕 2/3종이컵, 레몬제스트 1숟가락, 레몬즙 3숟가락

-- 10번 레시피
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'somi', '들깨떡만두국', '저는 버섯 잔뜩 넣은 들깨수제비를 정말 좋아해요! 먹으면서 떡사리와 만두를 넣으면더 든든하고 맛있겠다! 싶어서 만들어 본 레시피!', 20, 2 , '/imageThumb/sesameThumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/sesame1.jpg', '건표고버섯은 물에 불린 다음 얇게 썰고 대파는 어슷 썰어요.', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/sesame2.jpg', '냄비에 건표고버섯 불린 물 500ml, 생수 500ml, 만개한알을 넣고 끓여요.', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/sesame3.jpg', '떡국떡, 만두, 건표고버섯을 넣고 끓인 다음 국간장, 다진마늘을 넣고 끓여요.', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/sesame4.jpg', '대파, 후추를 넣고 끓여요. 들깨가루, 들기름을 넣은 다음 그릇에 담고 실고추를 올려 완성해요.', 4);
-- 재료 : 만두 6개, 떡국떡 2종이컵, 건표고버섯 4개, 대파 1/3대, 만개한알 2개, 국간장 1숟가락, 다진마늘 1/3숟가락, 후추 약간, 들깨가루 4숟가락, 들기름 1숟가락, 실고추 약간


