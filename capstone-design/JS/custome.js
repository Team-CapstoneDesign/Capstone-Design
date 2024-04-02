
const $startScreen = document.querySelector('#start-screen');
const $startBtn = document.querySelector('#startBtn');
const $selectCoffee = document.querySelector('#select-coffee');
const $selectBlend = document.querySelector('#select-blend');
const $blendPrev = document.querySelector('#blend-prev');
const $blendNext = document.querySelector('#blend-next');
const $selectRoasting = document.querySelector('#select-roasting');
const $selectMachine = document.querySelector('#select-machine');
const $selectResult = document.querySelector('#select-result');
const $coffeeCheckbox = document.querySelector('#coffee-checkbox');
const $blendCheckbox = document.querySelector('#blend-checkbox');
const $blendNull = document.querySelector('#blend_null');
const $selectCoffeeExplain = document.querySelector('#select-coffee-explain')
const $coffeeNext = document.querySelector('#coffee-next');
const $rangeValue = document.querySelector('#rangeValue');
const $roastingStep = document.querySelector('.roasting-step');
const $roastingPost = document.querySelector('.roastingPost');
const $roastingPrev = document.querySelector('#roasting-prev');
const $roastingNext = document.querySelector('#roasting-next');
const $machinePrev = document.querySelector('#machine-prev');
const $machineNext = document.querySelector('#machine-next');
const $selectCoffeeWrap = document.querySelector('#select-coffee-wrap');

const $custome_base = document.getElementById('custome_base');
const $custome_blend = document.getElementById('custome_blend');
const $custome_roasting = document.getElementById('custome_roasting');
const $custome_machin = document.getElementById('custome_machin');
const $custome_price = document.getElementById('custome_price');

const $bodyProgress = document.getElementById('body_progress');
const $smellProgress = document.getElementById('smell_progress');
const $taste1Progress = document.getElementById('taste1_progress');
const $taste2Progress = document.getElementById('taste2_progress');
const $taste3Progress = document.getElementById('taste3_progress');
class Game {
  constructor() {
    //name:원두이름, feature:특징, compatible:어울리는 원두 종류, price:가격(추가예정)
    this.coffeeList = [
      { id: 1, name: '브라질 산토스', feature: '향이 뛰어나고 신맛의 여운에 풍미가 있는 쓴맛을 남기면서도 단맛과 신맛 등의 향미가 고르게 조화를 이루는 커피', coffeeBody: '20', coffeeSmell: '80', coffeeTaste1: '60', coffeeTaste2: '30', coffeeTaste3: '20' },
      { id: 2, name: '콜롬비아 수프리모', feature: '신맛과 단맛, 바디감으로 표현되는 쓴맛이 적절하게 조화를 이룬 복합적이면서도 깔끔한 맛의 커피', coffeeBody: '30', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'  },
      { id: 3, name: '자메이카 블루마운틴', feature: '세계 3대 커피, 옅은 신맛과 부드러운 쓴맛, 그리고 고소한 단맛, 쌉쌀한 초콜릿의 맛, 스모크향 등 커피가 낼 수 있는 거의 모든 맛을 갖투고 있어서 최고의 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'  },
      { id: 4, name: '에티오피아 예가체프', feature: '과일향과 신 맛이 매우 강한 상큼한 커피', coffeeBody: '70', coffeeSmell: '90', coffeeTaste1: '70', coffeeTaste2: '30', coffeeTaste3: '50'},
      { id: 5, name: '코스타리카 따라주', feature: '입안을 가득 메꾸는 듯한 사탕수수의 단맛과 고소한 견과류의 향미가 특징인 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 6, name: '탄자니아 AA', feature: '산미와 단맛의 밸런스가 좋고 농도가 짙어 아이스가 어울리는 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 7, name: '예멘 모카 마타리', feature: '다크 초콜릿의 풍미와 예멘커피 특유의 독특한 꽃향, 새콤한 과일향, 묵직한 바디감이 조화를 이루는 커피', },
      { id: 8, name: '하와이 코나', feature: '과일처럼 신맛, 옅은 단맛, 산뜻한 향이 풍부하고 강렬한 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 9, name: '과테 말라 안티구아', feature: '다크초코의 쌉싸름함과 진한 스모키향으로 뛰어난 감칠맛과 단맛의 풍미가 뛰어난 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 10, name: '파나마 게이샤', feature: '풍부하고 화사한 꽃향기, 새콤달콤한 감귤의 과일향, 달콤하고 긴 여운의 뒷맛이 특징인 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 11, name: '엘살바도르', feature: '엷은 신맛과 쓴맛이 조화를 이루는, 부드러우면서 달콤한 초콜릿 향과 맛을 가진 커피', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
      { id: 12, name: '케냐AA', feature: '와인 향과 과일 향이 풍부하고 중후하면서도 깊은 맛이 매력적인 커피. 뒷맛이 매끄럽고 은근한 초콜릿 향이 느껴집니다.', coffeeBody: '0', coffeeSmell: '50', coffeeTaste1: '50', coffeeTaste2: '50', coffeeTaste3: '50'},
    ]
    this.start();
  }

  start() {
    this.changeScreen('select-coffee');
    this.selectCoffee();
    this.blendCheckbox();

    $coffeeNext.addEventListener('click', (event) => {
      event.preventDefault();
      this.moveToNextScreen('select-coffee', 'select-blend');
      $selectBlend.style.animation = "fadeIn 1s";
    });

    $blendNext.addEventListener('click', (event) => {
      event.preventDefault();
      this.moveToNextScreen('select-blend', 'select-roasting');
      $selectRoasting.style.animation = "fadeIn 1s";
    });

    $roastingNext.addEventListener('click', (event) => {
      event.preventDefault();
      this.moveToNextScreen('select-roasting', 'select-machine');
      $selectMachine.style.animation = "fadeIn 1s";
    });

    $roastingNext.addEventListener('click', (event) => {
      event.preventDefault();
      this.moveToNextScreen('select-roasting', 'select-machine');
      $selectResult.style.animation = "fadeIn 1s";
    });

    $machineNext.addEventListener('click', (event) => {
      event.preventDefault();
      this.moveToNextScreen('select-machine', 'select-result');
    });



    $blendPrev.addEventListener('click', (event) => {
      event.preventDefault();
      this.goBackToScreen('select-blend');
    });

    $roastingPrev.addEventListener('click', (event) => {
      event.preventDefault();
      this.goBackToScreen('select-roasting');
    });

    $machinePrev.addEventListener('click', (event) => {
      event.preventDefault();
      this.goBackToScreen('select-machine');
    });



  }

  changeScreen(screen) {
    const screens = ['start-screen', 'select-coffee', 'select-blend', 'select-roasting', 'select-machine', 'select-result'];
    screens.forEach(s => {
      const $screen = document.querySelector(`#${s}`);
      $screen.style.display = (s === screen) ? 'block' : 'none';
    });
  }
  goBackToScreen(currentScreen) {
    const screens = ['start-screen', 'select-coffee', 'select-blend', 'select-roasting', 'select-machine', 'select-result'];
    const currentIndex = screens.indexOf(currentScreen);

    if (currentIndex > 0) {
      const previousScreen = screens[currentIndex - 1];
      this.changeScreen(previousScreen);
    }
  }
  moveToNextScreen(currentScreen, nextScreen) {
    const screens = ['start-screen', 'select-coffee', 'select-blend', 'select-roasting', 'select-machine', 'select-result'];
    const currentIndex = screens.indexOf(currentScreen);

    if (currentIndex < screens.length - 1) {
      const nextScreen = screens[currentIndex + 1];
      if (currentScreen === 'select-coffee') {
        // #select-coffee에서 라디오 버튼 체크 여부 확인
        const selectedCoffee = document.querySelector('input[name="baseCoffee"]:checked');
        if (!selectedCoffee) {
          alert("베이스 원두를 선택해주세요.");
          return;
        }
      }
      this.changeScreen(nextScreen);
    }
  }

  selectCoffee() {
    this.coffeeList.forEach(coffee => {
      const { name, feature, coffeeBody, coffeeSmell, coffeeTaste1, coffeeTaste2, coffeeTaste3 } = coffee;

      // 라디오 버튼 생성
      const checkboxList = document.createElement("input");
      checkboxList.type = "radio";
      checkboxList.id = name;
      checkboxList.name = "baseCoffee";
      checkboxList.value = name;

      // 라벨 생성 (name + feature)
      const checkboxLabel = document.createElement("label");
      checkboxLabel.htmlFor = name;

      checkboxList.addEventListener('click', () => this.showCoffeeFeature(name, feature, coffeeBody, coffeeSmell, coffeeTaste1, coffeeTaste2, coffeeTaste3));
      // 커피 체크박스 영역에 추가
      $coffeeCheckbox.appendChild(checkboxList);
      $coffeeCheckbox.appendChild(checkboxLabel);
    });
  }

  showCoffeeFeature(name, feature, coffeeBody, coffeeSmell, coffeeTaste1, coffeeTaste2, coffeeTaste3) {
    /*selectCoffeeExplain*/
    this.clearFeature();
    const coffeeName = document.createElement("div");
    const coffeeFeature = document.createElement("div");
    coffeeName.htmlFor = name;
    coffeeFeature.htmlFor = feature;
    coffeeName.appendChild(document.createTextNode(name));
    coffeeFeature.appendChild(document.createTextNode(feature));

    $selectCoffeeExplain.appendChild(coffeeName);
    $selectCoffeeExplain.appendChild(coffeeFeature);

    $bodyProgress.style.width = coffeeBody + "%";
    $smellProgress.style.width = coffeeSmell + "%";
    $taste1Progress.style.width = coffeeTaste1 + "%";
    $taste2Progress.style.width = coffeeTaste2 + "%";
    $taste3Progress.style.width = coffeeTaste3 + "%";

  }

  clearFeature() {
    $selectCoffeeExplain.innerHTML = ''
  }

  blendCheckbox() {
    this.coffeeList.forEach(coffee => {
      const { name, feature } = coffee;


      // $blendCheckbox.appendChild(checkboxLabel);
    });
    this.checkboxLimit();

    $blendNull.addEventListener('change', () => {
      // #blend_null 체크박스가 선택되었을 때
      if ($blendNull.checked) {
        // 나머지 체크박스 비활성화
        this.disableOtherBlendCheckboxes();
      } else {
        // #blend_null 체크박스가 해제되었을 때
        // 모든 체크박스 활성화
        this.enableAllBlendCheckboxes();
      }
    });

    const blendCheckboxes = document.querySelectorAll('input[name="blendCoffee"]:not(#blend_null)');
    blendCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
        // 다른 blend 체크박스 중 하나라도 선택되었을 때
        if (this.isAnyOtherBlendCheckboxChecked()) {
          // #blend_null 체크박스 비활성화
          $blendNull.disabled = true;
        } else {
          // 모든 다른 blend 체크박스가 해제되었을 때
          // #blend_null 체크박스 활성화
          $blendNull.disabled = false;
        }
      });
    });


  }
  
  isAnyOtherBlendCheckboxChecked() {
    const blendCheckboxes = document.querySelectorAll('input[name="blendCoffee"]:not(#blend_null)');
    return Array.from(blendCheckboxes).some(checkbox => checkbox.checked);
  }
  disableOtherBlendCheckboxes() {
    const blendCheckboxes = document.querySelectorAll('input[name="blendCoffee"]:not(#blend_null)');
    blendCheckboxes.forEach(checkbox => {
      checkbox.disabled = true;
    });
  }

  enableAllBlendCheckboxes() {
    const blendCheckboxes = document.querySelectorAll('input[name="blendCoffee"]');
    blendCheckboxes.forEach(checkbox => {
      checkbox.disabled = false;
    });
  }

 

  checkboxLimit() {
    const checkboxes = document.querySelectorAll('input[name="blendCoffee"]');
    const limit = 3; // 최대 선택 가능한 개수

    checkboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
        const checkedCheckboxes = document.querySelectorAll('input[name="blendCoffee"]:checked');
        if (checkedCheckboxes.length >= limit) {
          checkboxes.forEach(otherCheckbox => {
            if (!otherCheckbox.checked) {
              otherCheckbox.disabled = true;
            }
          });
        } else {
          checkboxes.forEach(otherCheckbox => {
            otherCheckbox.disabled = false;
          });
        }
      });
    });

  }

}

const $startBackground = document.querySelector('#startBackground');
const $content1 = document.querySelector('#content1');
const $content2 = document.querySelector('#content2');
const $content3 = document.querySelector('#content3');
const $content4 = document.querySelector('#content4');
const $content5 = document.querySelector('#content5');
const $content6 = document.querySelector('#content6');
const $content7 = document.querySelector('#content7');
const $slider_right = document.querySelector('#slider_right');
const $slider_left = document.querySelector('#slider_left');
$startBtn.addEventListener('click', (event) => {
  event.preventDefault();
  const rotationSpeed = 2; // in seconds
  $content5.style.animationDuration = rotationSpeed + 's';

  $content1.style.top = 60 + "px";
  $content1.style.width = 2200 + "px";
  $content2.style.top = 100 + "px";
  $content2.style.width = 2300 + "px";
  $content3.style.right = 200 + "px";
  $content3.style.top = 20 + "px";
  $content4.style.left = 300 + "px";
  $content4.style.top = 30 + "px";
  $content5.style.top = 80 + "px";
  $content6.style.top = 160 + "px";
  $content7.style.top = 100 + "px";
  $slider_right.style.right = -35 + "px";
  $slider_left.style.left = -35 + "px";
  setTimeout(() => {
    $slider_right.style.right = -1300 + "px";
    $slider_left.style.left = -1300 + "px";
    $startBackground.style.animation = "fadeOut 1s";
  }, 1500)
  setTimeout(() => {
    $selectCoffee.style.animation = "fadeIn 1s";
    game = new Game();
  }, 2000)
});

const roastingStages = [
  { step: 1, name: 'Raw/Green', description: '처음에 원두가 들어오는 상태로 아직 로스팅되지 않은 상태' },
  { step: 2, name: 'Drying', description: '원두 내부의 물기를 제거하여 로스팅 프로세스를 시작' },
  { step: 3, name: 'First Crack', description: '원두 내부의 수분과 기체가 빠져나가면서 첫번째 크랙이 발생' },
  { step: 4, name: 'Cinnamon Roast', description: '가볍게 로스팅된 상태로 콘내초보다 조금 더 진한 갈색' },
  { step: 5, name: 'City Roast', description: '로스팅이 진행되면서 단맛이 강조되고 은은한 산미가 나타남' },
  { step: 6, name: 'Full City Roast', description: '더욱 진한 갈색, 오일이 조금 나오기 시작하며 로스팅 특유의 풍미가 강해짐' },
  { step: 7, name: 'Second Crack', description: '두번째 크랙이 발생하며 로스팅이 깊어지고 오일이 더 나오는 단계' },
  { step: 8, name: 'Dark Roast', description: '로스팅이 매우 깊게 이루어져 오일이 많이 나오며 쓴맛과 풍부한 특유의 향이 나타남' }
];

const roastingRange = document.getElementById('roasting-range');
const roastingNum = document.getElementById('roastingNum');
const roastingName = document.getElementById('roastingName');
const roastingEx = document.getElementById('roastingEx');
function showRoastingInfo(step) {
  const selectedRoastingStage = roastingStages.find(stage => stage.step == step);
  roastingNum.textContent = `${selectedRoastingStage.step}`;
  roastingName.textContent = `${selectedRoastingStage.name}`;
  roastingEx.textContent = `${selectedRoastingStage.description}`;

}

showRoastingInfo(roastingRange.value);

roastingRange.addEventListener('input', (event) => {
  showRoastingInfo(event.target.value);
});

/*결과표시*/
function customeResult() {
  const baseCoffeeChecked = document.querySelector('input[name="baseCoffee"]:checked');
  const blendCoffeeChecked = document.querySelectorAll('input[name="blendCoffee"]:checked');
  const roastingValue = document.getElementById('roasting-range').value;
  const machineChecked = document.querySelector('input[name="machine"]:checked');

  let baseResult = "";
  baseResult += baseCoffeeChecked ? baseCoffeeChecked.value : '선택 없음';

  let blendResult = "";
  if (blendCoffeeChecked.length > 0) {
    blendCoffeeChecked.forEach(checkbox => {
      blendResult += checkbox.value + '  ';
    });
  } else {
    blendResult += '선택 없음';
  }

  let roastingResult = roastingValue;

  let machineResult = "";
  machineResult += machineChecked ? machineChecked.value : '선택없음';

  let price = 0;
  let price_comma = "";
  if (baseResult === "자메이카 블루마운틴" || baseResult === "하와이안 코나" || baseResult === "예멘 모카 마타리") {
    price = 15900;
    price_comma = "15,900";
    $custome_price.innerHTML = price_comma;

  } else {
    price = 13900;
    price_comma = "13,900";
    $custome_price.innerHTML = price_comma;
  }


  $custome_base.innerHTML = `${baseResult}`;
  $custome_blend.innerHTML = `${blendResult}`;
  $custome_roasting.innerHTML = `${roastingResult}`;
  $custome_machin.innerHTML = `${machineResult}`;

  hiddenInput('baseName', baseResult);
  hiddenInput('blendName', blendResult);
  hiddenInput('roastingName', roastingResult);
  hiddenInput('machineName', machineResult);
  hiddenInput('price', price);
  hiddenInput('price_comma', price_comma);
  // 생성한 input을 div에 추가
}

function hiddenInput(name, value) {
  var hiddenInput = document.createElement("input");

  hiddenInput.setAttribute("type", "hidden");
  hiddenInput.setAttribute("name", name);
  hiddenInput.setAttribute("value", value);

  document.getElementById("hiddenInputRadio").appendChild(hiddenInput);
}

function checkCustomeValue() {
  result.submit();
}

function updateSelectedOptions(checkboxId) {
  console.log(checkboxId);
  var selectedOptions = [];
  var checkboxes = document.querySelectorAll('input[type="checkbox"][name="blendCoffee"]:checked');
  checkboxes.forEach(function(checkbox) {
    selectedOptions.push(checkbox.value); // value 속성을 사용하여 옵션 값을 가져옵니다.
  });

  // Output selected options to respective divs
  for (var i = 0; i < 3; i++) {
    var selectOptionDiv = document.querySelector('.selectOption' + (i + 1));
    if (selectOptionDiv && selectedOptions[i]) {
      selectOptionDiv.textContent = selectedOptions[i];
    } else if (selectOptionDiv) {
      selectOptionDiv.textContent = '';
    }
  }
}