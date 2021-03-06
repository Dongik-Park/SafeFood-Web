use safefood;

-- drop table food;
CREATE TABLE IF NOT EXISTS food (
	CODE VARCHAR(50) PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL,
	MAKER VARCHAR(100) NOT NULL,
	MATERIAL VARCHAR(500) NOT NULL,
	IMAGE VARCHAR(300) NOT NULL,
    SUPPORTPEREAT DOUBLE,
    CALORY DOUBLE,
    CARBO DOUBLE,
    PROTEIN DOUBLE,
    FAT DOUBLE,
    SUGAR DOUBLE,
    NATRIUM DOUBLE,
    CHOLE DOUBLE,
    FATTYACID DOUBLE,
    TRANSFAT DOUBLE);

-- drop table food_hits
create table IF NOT EXISTS food_hits(
	code varchar(50) primary key,
    hits int
);

-- DROP TABLE MEMBER;

CREATE TABLE IF NOT EXISTS MEMBER(
	ID VARCHAR(20) PRIMARY KEY,
	NAME VARCHAR(20) NOT NULL,
	ADDRESS VARCHAR(20) NOT NULL,
	TEL VARCHAR(40) NOT NULL,
	PASSWORD VARCHAR(100) NOT NULL,
    RDATE datetime DEFAULT NOW()
    );
    
    
-- DROP TABLE ALLERGY
CREATE TABLE IF NOT EXISTS ALLERGY(
	ACODE varchar(20) primary KEY,
    NAME VARCHAR(50) NOT NULL
);


-- DROP TABLE MEMBER_ALLERGIES;
CREATE TABLE IF NOT EXISTS MEMBER_ALLERGIES(
	ID VARCHAR(20) ,
	ACODE VARCHAR(50),
    DATE datetime DEFAULT NOW()
);

-- DROP TABLE MEMBER_FOODS;
CREATE TABLE IF NOT EXISTS MEMBER_FOODS(
	ID VARCHAR(20) ,
	CODE VARCHAR(50),
    DATE datetime DEFAULT NOW()
);


-- 회원 정보 추가

insert into member values('ssafy','samsung','Seoul','02-11-11','1234','2018.10.10');
insert into member values('yoo','seungah','Incheon','032-22-22','1234','2019.1.05');
insert into member values('park','dongik','Yongin','031-33-33','1234','2017.07.04');
insert into member values('kim','geuntae','Busan','02-44-44','1234','2019.04.05');

-- 알레르기 정보 추가

insert into allergy values('001','대두');
insert into allergy values('002','땅콩');
insert into allergy values('003','우유');
insert into allergy values('004','게');
insert into allergy values('005','새우');
insert into allergy values('006','참치');
insert into allergy values('007','연어');
insert into allergy values('008','쑥');
insert into allergy values('009','소고기');
insert into allergy values('010','닭고기');
insert into allergy values('011','돼지고기');
insert into allergy values('012','복숭아');
insert into allergy values('013','민들레');
insert into allergy values('014','계란흰자');

-- 사용자 알레르기 추가

insert into member_allergies values('ssafy','001',sysdate());
insert into member_allergies values('ssafy','002',sysdate());
insert into member_allergies values('park','014',sysdate());
insert into member_allergies values('park','005',sysdate());
insert into member_allergies values('park','003',sysdate());
insert into member_allergies values('park','005',sysdate());
insert into member_allergies values('park','007',sysdate());
insert into member_allergies values('kim','003',sysdate());
insert into member_allergies values('kim','006',sysdate());

-- 사용자 섭취 음식 추가

insert into member_foods values('ssafy','1','2018-10-12');
insert into member_foods values('ssafy','2','2018-10-12');
insert into member_foods values('ssafy','3','2018-10-12');

insert into member_foods values('park','5','2019-01-14');
insert into member_foods values('park','9','2019-01-14');
insert into member_foods values('park','10','2019-01-13');

insert into member_foods values('yoo','20','2019-02-12');
insert into member_foods values('yoo','15','2018-03-12');
insert into member_foods values('yoo','15','2018-04-12');

insert into member_foods values('kim','8','2018-01-12');
insert into member_foods values('kim','9','2018-01-12');
insert into member_foods values('kim','8','2018-02-12');
insert into member_foods values('kim','9','2018-02-12');
insert into member_foods values('kim','10','2018-03-12');

-- 음식 목록 추가

INSERT INTO food VALUES('1','신라면큰사발','농심','육수맛조미베이스,소맥분(호주산,미국산),버섯풍미분말,감자전분(독일산),정백당,팜유(말레이시아산),변성전분,복합조미간장분말,난각칼슘,매운탕분말,정제염,정제염,비프조미페이스트,사골된장분말,비프조미분,이스트조미액,포도당,면류첨가알칼리제 ( 산도조절제 ),생고추조미분말,혼합제제 ( 산도조절제 ),칠리맛조미분,올리고녹차풍미액,양념구이조미분,비타민B₂,볶음양념분,수육조미분,호화감자전분,조미양념분,마늘추출물분말,후추가루,분말된장,5-리보뉴클레오티드이나트륨,양파풍미분,사골추출물분말,육수조미분말,양파조미베이스,호박산이나트륨,장국양념분말,다시마정미추출분말,매운맛조미분,고춧가루,분말카라멜 ( 카라멜색소 , 물엿분말 ),생강추출물분말,건표고버섯,건파,건청경채,조미건조홍고추','img/신라면큰사발.jpg',80,347.37,54.74,5.61,11.93,2.81,1087.72,0,5.61,0);
INSERT INTO food VALUES('2','진라면컵매운맛','오뚜기','참맛매운육수분말,소맥분(미국산,호주산),변성전분,포도당,발효복합분,팜유(말레이시아산),진한감칠맛분,글루텐,숙성마늘맛분,정제소금,마늘양념분말,유화유지,난각분말,볶음마늘분,치킨추출농축액,백설탕,마늘시즈닝,간장분말,야채추출물,식용유지가공품,면류첨가알칼리제 ( 산도조절제 ),정제소금,비타민 B₂,효모조미분,칠리맛분말,녹차풍미유,전분,쇠고기간장분말,쇠고기향미분말,후추분말,고춧가루,구아검,조미아미노산분말,향미증진제,칠리추출물,고추농축소스,산도조절제,건파,조미쇠고기맛후레이크,건당근,건표고버섯,건조채심,건고추입자,[ 소맥분 ( 밀 ), 탈지대두 ( 대두 ), 유당 ( 우유 ), 난각분말 ( 계란 ), 땅콩단백 ( 땅콩 ), 돈골 ( 돼지고기 )]','img/진라면컵매운맛.jpg',80,275.2,42.24,5.76,8.96,3.2,1139.2,0,3.2,0);
INSERT INTO food VALUES('3','큰컵삼양라면','삼양식품','볶음면조미분말,소맥분(미국산,호주산),부대찌개베이스,전분(태국산),팜유,설탕,정제염,정제염,맛베이스에스,미감에스유,식물성간장분말,면류첨가알칼리제 ( 산도조절제 ),감자전분,양파엑기스,양념간장분,구아검,지미맛분말,비타민B₂,구연산,햄풍미분말,육수맛분말,녹차풍미유,김치조미분말,돈육풍미분말,볶음양념분말,혼합양념분말,진사골추출물분말,전지분유,팜유,부대찌개분말,쇠고기양념분말,저염풍미분에스,후추분,향미증진제,매운조미고추맛분,김치찌개풍미분말,베이컨향분말,햄베이스시즈닝,파프리카추출색소,마늘맛오일,조미콩단백,실당근,건청파,청경채,고단백건조유부,{ 소맥분 ( 밀 ), 탈지대두 ( 대두 ), 돼지고기 , 전지분유 ( 우유 ), 계란 , 땅콩 }','img/큰컵삼양라면.jpg',80,272.7,42.88,4.99,8.9,2.24,940.54,0,4.48,0);
INSERT INTO food VALUES('4','새우탕큰사발','농심','소맥분(호주산,미국산),감자전분(독일산),팜유,변성전분,식물성풍미유,난각칼슘,정제염,야채조미추출물,면류첨가알칼리제 ( 산도조절제 ),혼합제제 ( 산도조절제 ),올리고녹차풍미액,비타민B₂,새우베이스분말,정제염,정백당,육수베이스분말,매운맛분말,조미양념분,매운탕조미분말,호화옥수수분,육수맛조미베이스,오징어조미분말,오징어풍미분말,양념구이조미분,5-리보뉴클레오티드이나트륨,분말고추장,이스트풍미분,호박산이나트륨,복합조미간장분말,분말카라멜 ( 카라멜색소 , 물엿분말 ),다시마정미추출분말,혼합해물베이스분말,멸치조미분,향신조미분,후추가루,다시마표고조미분,수화검 ( 구아검 , 산탄검 ),후추추출물분말,어포,새우맛볼,건미역,건당근,건새우,새우 ( 중국산 58.1% , 캐나다산 41.0% , 국내산 0.9% )','img/새우탕큰사발.jpg',80,372,48.16,7.68,15.76,-1,1876,-1,-1,-1);
INSERT INTO food VALUES('5','육개장큰사발면','농심','육개장조미료,소맥분(호주산,미국산),팜유(말레이시아산),정제염,양념간장베이스,감자전분,변성전분,조미아미노산간장분말,정백당,식물성풍미유,물엿분말,난각칼슘,양념풍미분,정제염,볶음양념분,면류첨가알칼리제 ( 산도조절제 ),육수조미분말,비프양념분말,혼합제제 ( 산도조절제 ),간장조미액,마늘추출물분말,복합양념분말,구아검,올리고녹차풍미액,팜유조미분말,이스트풍미분,비타민B₂,후추가루,매운맛조미분,5-리보뉴클레오티드이나트륨,분말고추장,양파풍미분,수육조미분,호박산이나트륨,칠리풍미분말,복합조미간장분말,건파,계란스크램블,건조맛살어묵,소용돌이맛살','img/육개장큰사발면.jpg',80,273.45,42.47,5.24,9.31,1.75,936.73,0,4.65,0);
INSERT INTO food VALUES('6','메로나','빙그레','정제수,백설탕,데어리스프레드 (외국산:뉴질랜드,독일,호주),프락토올리고당,물엿,혼합탈지분유 ( 외국산 :네덜란드,아일랜드,독일),말티톨시럽,메론시럽 0.15% ( 메론 70% : 국산 ),정제염,로커스트콩검,셀룰로오스검,혼합제제 ( 구아검 , 로커스트콩검 , 카라기난 , 셀룰로오스검 , 유화제 ),치자청색소,심황색소,합성착향료 ( 메론향 )','img/메로나.jpg',100,156.25,25,1.25,6.25,20,68.75,18.75,4.75,0.63);
INSERT INTO food VALUES('7','누크바','롯데제과','정제수,기타코코아가공품[야자유(수입산),백설탕,채종유(호주산),땅콩버터,혼합분유,코코아매스],백설탕,혼합분유(수입산;탈지분유,유청분말),기타올리고당 ( 물엿 , 이소말토올리고당 , 액상과당 ),땅콩(중국산),가공버터 ( 유크림 , 야자유 ),아이스혼합유 ( 야자유 80% , 팜유 20% ),혼합제제Ⅰ ( 구아검 , 로커스트콩검 , 카라기난 , 타마린드검 ),천연착향료 ( 바닐라향 ),유화제,합성착향료 ( 바닐라향 ),혼합제제Ⅱ ( 치자황색소 , 덱스트린 , 비트레드 )','img/N45누크바.jpg',100,274,25,3,18.3,17.33,65,-1,-1,-1);
INSERT INTO food VALUES('8','비비빅','빙그레','정제수,당통팥22%(중국산: 백설탕 , 팥 ),백설탕,물엿,팥분말(중국산),혼합탈지분유,데어리스프레드,액상과당,찰옥수수알파전분,유청분말,정제염,구아검,락색소,카라멜색소,합성착향료 ( 팥향 ),치자청색소','img/비비빅.jpg',100,186.67,40,3.33,1.6,21.25,106.67,6.67,1.07,0);
INSERT INTO food VALUES('9','수박바','롯데제과','정제수,백설탕,프락토올리고당,초코땅콩 ( 땅콩 ),폴리덱스트로스,말티톨시럽,아이스혼합유,유화제,혼합제제 ( 구아검 ( 대두 ), 카라기난 , 산도조절제 , 로커스트콩검 , 타마린드검 ),수박농축액 0.1% ( 고형분 65% ),합성착향료 ( 딸기향 , 멜론향 ),정제소금,혼합제제II ( 비트레드 , 덱스트린 , 치자황색소 ),비타민C,구연산,혼합제제III ( 치자청색소 , 치자황색소 , 덱스트린 )','img/수박바.jpg',100,110.93,24.67,0.33,2.24,18.67,25.83,0.09,1.11,0.17);
INSERT INTO food VALUES('10','죠스바','롯데제과','정제수,프락토올리고당,백설탕,기타올리고당 ( 물엿 , 이소말토올리고당 , 액상과당 ),딸기쨈3%(딸기;국산),구연산,오렌지농축액0.14%(고형분65%),합성착향료 ( 딸기향 , 오렌지향 ),혼합제제Ⅰ ( 카라기난 , 구아검 ( 대두 ), 산도조절제 , 로커스트콩검 , 타마린드검 ),혼합제제Ⅱ ( 구아검 , 카라기난 , 산도조절제 , 로커스트콩검 , 타마린드검 ),혼합제제Ⅲ ( 유화제 , 탄산칼슘 , 규소수지 ),비타민C,혼합제제Ⅳ ( 덱스트린 , 치자청색소 , 홍국적색소 , 치자황색소 ),혼합제제Ⅴ ( 비트레드 , 덱스트린 , 치자황색소 )','img/죠스바.jpg',100,113.33,28.4,0.04,0.09,20,0.68,0,0,0.17);
INSERT INTO food VALUES('11','서울우유바나나','서울우유','원유 60.12%(국산),정제수,액상과당,정백당,유크림 2.93%(국산),탈지분유 2.143%,바나나농축과즙(바나나과즙 1%,이스라엘산),올리고당,합성착향료 ( 바나나향 )','img/서울우유바나나.jpg',200,340,44,10,14,40.44,170,40,8,0);
INSERT INTO food VALUES('12','맛있는우유GT','남양유업','1A등급 원유 ( 국산 ) 100% ( 세균수기준 )','img/맛있는우유GT.jpg',200,280,20,12,16,18,200,60,9.6,0);
INSERT INTO food VALUES('13','칠성사이다','롯데칠성음료','정제수,액상과당,백설탕,탄산가스,구연산,레몬라임향','img/칠성사이다.jpg',200,168.42,42.11,0,0,33.6,10.53,0,0,0);

INSERT INTO food VALUES('14','비타500칼슘','광동제약','정제수,액상과당,농축사과과즙 ( 당도 72Brix이상 , 뉴질랜드산 ),비타민C 0.5% ( 900% ),퓨라칼 (칼슘12%이상)0.05%,합성착향료 ( 드링크향 ),구연산,케이디비타 2800,구연산삼나트륨,펙틴,타우린,DL-사과산,오렌지추출물','img/비타500칼슘.jpg',200,172.9,43,0.09,0.06,44,143.84,0,0,0);
INSERT INTO food VALUES('15','비타파워','롯데제과','정제수,액상과당,비타민C,구연산,합성착향료 ( 드링크향 , 혼합과일향 ),구연산삼나트륨,효소처리스테비아,타우린,수크랄로스 ( 합성감미료 ),비타민B2인산에스테르나트륨','img/비타파워.jpg',200,100,24,0,0,12.55,60,0,0,0);
INSERT INTO food VALUES('16','칸타타아메리카노','롯데제과','칸타타원두커피추출액30%(에티오피아50%,콜롬비아30%,브라질20%),정제수,백설탕,합성착향료 ( 커피향 ),탄산수소나트륨,L-아스코르빈산나트륨','img/칸타타아메리카노.jpg',200,80,18.29,0,0,13.72,125.71,0,0,0);
INSERT INTO food VALUES('17','칸타타프리미엄라떼','롯데제과','칸타타원두커피추출액42%(에티오피아50%,콜롬비아30%,브라질20%),정제수,우유15%(국내산),백설탕,혼합분유 ( 탈지분유 , 유청분말 ),탄산수소나트륨,합성착향료 ( 커피향 , 우유향 ),유화제,L-아스코르빈산나트륨','img/칸타타프리미엄라떼.jpg',200,182.86,36.57,4.57,2.06,36.56,228.57,11.43,1.37,0);
INSERT INTO food VALUES('18','맥심티오피스위트아메리카노','동서식품','맥심 에스프레소 커피추출액 ( 고형분 5.0%이상 ,커피원두:콜롬비아산60%,브라질산21%)12.6%,정제수,백설탕,탄산칼륨,합성착향료 ( 커피향 ),비타민C,자당지방산에스테르','img/맥심티오피스위트아메리카노.jpg',200,70.4,17.6,0,0,16,52,0,0,0);
INSERT INTO food VALUES('19','맥심티오피마스터라떼','동서식품','정제수,우유 (국내산)15%,맥심 에스프레소 커피추출액 ( 고형분 5.0%이상 ,커피원두:콜롬비아산60%,브라질산21%)12.6%,백설탕,유크림,탈지분유,탄산칼륨,자당지방산에스테르,비타민C','img/맥심티오피마스터라떼.jpg',200,156.4,26,3.2,4.4,26.2,72.73,16,3.2,0);
INSERT INTO food VALUES('20','아카페라아메리카노','빙그레','정제수,콜드브루커피추출액7%(고형분3%이상/커피원두:에티오피아40%,콜롬비아30%,브라질30%),백설탕,에스프레소커피추출액 1.54% ( 고형분 34%이상 /커피원두:브라질),탄산수소나트륨,아스코르빈산나트륨,천연커피향','img/아카페라아메리카노.jpg',200,58.33,13.33,0.83,0,11.68,91.67,0,0,0);