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

    class Game {
      constructor() {
        //name:�����̸�, feature:Ư¡, compatible:��︮�� ���� ����, price:����(�߰�����)
        this.coffeeList = [
          { id: 1, name: '����� ���佺', feature: '���� �پ�� �Ÿ��� ��� ǳ�̰� �ִ� ������ ����鼭�� �ܸ��� �Ÿ� ���� ��̰� ������ ��ȭ�� �̷�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 2, name: '�ݷҺ�� ��������', feature: '�Ÿ��� �ܸ�, �ٵ����� ǥ���Ǵ� ������ �����ϰ� ��ȭ�� �̷� �������̸鼭�� ����� ���� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 3, name: '�ڸ���ī ���縶��ƾ', feature: '���� 3�� Ŀ��, ���� �Ÿ��� �ε巯�� ����, �׸��� ������ �ܸ�, �Խ��� ���ݸ��� ��, ����ũ�� �� Ŀ�ǰ� �� �� �ִ� ���� ��� ���� ������ �־ �ְ��� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 4, name: '��Ƽ���Ǿ� ����ü��', feature: '������� �� ���� �ſ� ���� ��ŭ�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 5, name: '�ڽ�Ÿ��ī ������', feature: '�Ծ��� ���� �޲ٴ� ���� ���������� �ܸ��� ������ �߰����� ��̰� Ư¡�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 6, name: 'ź�ڴϾ� AA', feature: '��̿� �ܸ��� �뷱���� ���� �󵵰� £�� ���̽��� ��︮�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 7, name: '���� ��ī ��Ÿ��', feature: '��ũ ���ݸ��� ǳ�̿� ����Ŀ�� Ư���� ��Ư�� ����, ������ ������, ������ �ٵ��� ��ȭ�� �̷�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 8, name: '�Ͽ��� �ڳ�', feature: '����ó�� �Ÿ�, ���� �ܸ�, ����� ���� ǳ���ϰ� ������ Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 9, name: '���� ���� ��Ƽ����', feature: '��ũ������ �Խθ��԰� ���� ����Ű������ �پ ��ĥ���� �ܸ��� ǳ�̰� �پ Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 10, name: '�ĳ��� ���̻�', feature: 'ǳ���ϰ� ȭ���� �����, ���޴����� ������ ������, �����ϰ� �� ������ �޸��� Ư¡�� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 11, name: '����ٵ���', feature: '���� �Ÿ��� ������ ��ȭ�� �̷��, �ε巯��鼭 ������ ���ݸ� ��� ���� ���� Ŀ��', compatible: '����1 ����2 ����3' },
          { id: 12, name: '�ɳ�AA', feature: '���� ��� ���� ���� ǳ���ϰ� �����ϸ鼭�� ���� ���� �ŷ����� Ŀ��. �޸��� �Ų����� ������ ���ݸ� ���� �������ϴ�.', compatible: '����1 ����2 ����3' },
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
        });

        $blendNext.addEventListener('click', (event) => {
          event.preventDefault();
          this.moveToNextScreen('select-blend', 'select-roasting');
        });

        $roastingNext.addEventListener('click', (event) => {
          event.preventDefault();
          this.moveToNextScreen('select-roasting', 'select-machine');
        });

        $roastingNext.addEventListener('click', (event) => {
          event.preventDefault();
          this.moveToNextScreen('select-roasting', 'select-machine');
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
            // #select-coffee���� ���� ��ư üũ ���� Ȯ��
            const selectedCoffee = document.querySelector('input[name="baseCoffee"]:checked');
            if (!selectedCoffee) {
              alert("���̽� ���θ� �������ּ���.");
              return;
            }
          }
          this.changeScreen(nextScreen);
        }
      }

      selectCoffee() {
        this.coffeeList.forEach(coffee => {
          const { name, feature } = coffee;

          // ���� ��ư ����
          const checkboxList = document.createElement("input");
          checkboxList.type = "radio";
          checkboxList.id = name;
          checkboxList.name = "baseCoffee";
          checkboxList.value = name;

          // �� ���� (name + feature)
          const checkboxLabel = document.createElement("label");
          checkboxLabel.htmlFor = name;
          checkboxLabel.appendChild(document.createTextNode(name));

          checkboxList.addEventListener('click', () => this.showCoffeeFeature(name, feature));
          // Ŀ�� üũ�ڽ� ������ �߰�
          $coffeeCheckbox.appendChild(checkboxList);
          $coffeeCheckbox.appendChild(checkboxLabel);
        });
      }

      showCoffeeFeature(name, feature) {
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
      }

      clearFeature() {
        $selectCoffeeExplain.innerHTML = ''
      }

      blendCheckbox() {
        this.coffeeList.forEach(coffee => {
          const { name, feature } = coffee;

          // ���� ��ư ����
          const blendList = document.createElement("input");
          blendList.type = "checkbox";
          blendList.id = name + "blend";
          blendList.name = "blendCoffee";
          blendList.value = name;

          // �� ���� (name + feature)
          const blendLabel = document.createElement("label");
          blendLabel.htmlFor = name + "blend";
          blendLabel.appendChild(document.createTextNode(name));

          // Ŀ�� üũ�ڽ� ������ �߰�
          $blendCheckbox.appendChild(blendList);
          $blendCheckbox.appendChild(blendLabel);
          // $blendCheckbox.appendChild(checkboxLabel);
        });
        this.checkboxLimit();
        this.blendNullDisableCheckbox();

        $blendNull.addEventListener('change', () => {
          // #blend_null üũ�ڽ��� ���õǾ��� ��
          if ($blendNull.checked) {
            // ������ üũ�ڽ� ��Ȱ��ȭ
            this.disableOtherBlendCheckboxes();
          } else {
            // #blend_null üũ�ڽ��� �����Ǿ��� ��
            // ��� üũ�ڽ� Ȱ��ȭ
            this.enableAllBlendCheckboxes();
          }
        });

        const blendCheckboxes = document.querySelectorAll('input[name="blendCoffee"]:not(#blend_null)');
        blendCheckboxes.forEach(checkbox => {
          checkbox.addEventListener('change', () => {
            // �ٸ� blend üũ�ڽ� �� �ϳ��� ���õǾ��� ��
            if (this.isAnyOtherBlendCheckboxChecked()) {
              // #blend_null üũ�ڽ� ��Ȱ��ȭ
              $blendNull.disabled = true;
            } else {
              // ��� �ٸ� blend üũ�ڽ��� �����Ǿ��� ��
              // #blend_null üũ�ڽ� Ȱ��ȭ
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

      blendNullDisableCheckbox() {
        if ($blendNull.checked) {
          console.log('1234');
        }
      }

      checkboxLimit() {
        const checkboxes = document.querySelectorAll('input[name="blendCoffee"]');
        const limit = 3; // �ִ� ���� ������ ����

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

    $startBtn.addEventListener('click', (event) => {
      event.preventDefault();
      game = new Game();
    });

    const roastingStages = [
      { step: 1, name: 'Raw/Green', description: 'ó���� ���ΰ� ������ ���·� ���� �ν��õ��� ���� ����' },
      { step: 2, name: 'Drying', description: '���� ������ ���⸦ �����Ͽ� �ν��� ���μ����� ����' },
      { step: 3, name: 'First Crack', description: '���� ������ ���а� ��ü�� ���������鼭 ù��° ũ���� �߻�' },
      { step: 4, name: 'Cinnamon Roast', description: '������ �ν��õ� ���·� �ܳ��ʺ��� ���� �� ���� ����' },
      { step: 5, name: 'City Roast', description: '�ν����� ����Ǹ鼭 �ܸ��� �����ǰ� ������ ��̰� ��Ÿ��' },
      { step: 6, name: 'Full City Roast', description: '���� ���� ����, ������ ���� ������ �����ϸ� �ν��� Ư���� ǳ�̰� ������' },
      { step: 7, name: 'Second Crack', description: '�ι�° ũ���� �߻��ϸ� �ν����� �������� ������ �� ������ �ܰ�' },
      { step: 8, name: 'Dark Roast', description: '�ν����� �ſ� ���� �̷���� ������ ���� ������ ������ ǳ���� Ư���� ���� ��Ÿ��' }
    ];

    const roastingRange = document.getElementById('roasting-range');
    const roastingNum = document.getElementById('roastingNum');
    const roastingName = document.getElementById('roastingName');
    const roastingEx = document.getElementById('roastingEx');
    function showRoastingInfo(step) {
      const selectedRoastingStage = roastingStages.find(stage => stage.step == step);
      roastingNum.textContent = `${selectedRoastingStage.step} �ܰ�`;
      roastingName.textContent = `${selectedRoastingStage.name}`;
      roastingEx.textContent = `${selectedRoastingStage.description}`;

    }

    showRoastingInfo(roastingRange.value);

    roastingRange.addEventListener('input', (event) => {
      showRoastingInfo(event.target.value);
    });

    /*���ǥ��*/
    function customeResult() {
      const baseCoffeeChecked = document.querySelector('input[name="baseCoffee"]:checked');
      const blendCoffeeChecked = document.querySelectorAll('input[name="blendCoffee"]:checked');
      const roastingValue = document.getElementById('roasting-range').value;
      const machineChecked = document.querySelector('input[name="machine"]:checked');

      let baseResult = "";
      baseResult += baseCoffeeChecked ? baseCoffeeChecked.value : '���� ����';

      let blendResult = "";
      if (blendCoffeeChecked.length > 0) {
        blendCoffeeChecked.forEach(checkbox => {
          blendResult += checkbox.value + '  ';
        });
      } else {
        blendResult += '���� ����';
      }

      let roastingResult = roastingValue;

      let machineResult = "";
      machineResult += machineChecked ? machineChecked.value : '���þ���';

      let price = 0;
      let price_comma = "";
      if(baseResult === "�ڸ���ī ���縶��ƾ" || baseResult === "�Ͽ��̾� �ڳ�" || baseResult === "���� ��ī ��Ÿ��"){
        price = 15900;
        price_comma = "15,900";
        $custome_price.innerHTML = price_comma;
        
      } else{
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
      // ������ input�� div�� �߰�
    }

        function hiddenInput(name, value){
            var hiddenInput = document.createElement("input");

            hiddenInput.setAttribute("type", "hidden");
            hiddenInput.setAttribute("name", name);
            hiddenInput.setAttribute("value", value);

            document.getElementById("hiddenInputRadio").appendChild(hiddenInput);
          }

    function checkCustomeValue(){
      result.submit();
    }