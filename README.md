# Практическая работа №4

### Тема: Создать проект с использованием Cubit.
### Цель работы: Создать проект с использованием Cubit. Реализовать кликер если светлая тема за клик прибавляет +1 если темная тема прибавляется +2. Реализовать список нажатий и при какой теме это было реализовано.
###
### Ход работы:
### Для начала работы необходимо скачать следующую библиотеку
![image](https://user-images.githubusercontent.com/99389490/205529705-859a6671-c4b1-40ee-b0c3-74b8b45b03e0.png)
###
### После необходимо скачать расширение bloc
![image](https://user-images.githubusercontent.com/99389490/205529301-b9ae07d7-f712-42bc-9f77-84163087cb51.png)
###
### Для того, чтобы создать новые файлы cubit, необходимо нажать по папке и выбрать "Cubit: new Cubit"
![image](https://user-images.githubusercontent.com/99389490/205529433-9b34369f-a28d-40a3-8e01-5a4cc18b66a9.png)
###
### По такому принципу создаются все cubit-файлы в проекте. bright_theme_cubit - смена темы в приложении. click_cubit - счетчик в приложении. res_cubit - результат, выводимый в list
![image](https://user-images.githubusercontent.com/99389490/205529623-2084a309-9118-4f87-8e90-096baa130b5d.png)
###
### Ниже представлен пример cubit-файла в проекте. В данном файле реализован кликер, если светлая тема за клик прибавляет +1, а если темная тема прибавляется +2
![image](https://user-images.githubusercontent.com/99389490/205529886-c5273fa4-8b2e-4660-a5d0-3a8e02a05853.png)
###
### Ниже представлен файл click-state
![image](https://user-images.githubusercontent.com/99389490/205530087-f80a48ae-c211-45cd-b7cc-d4221ac5f9c4.png)
###
### После необходимо перейти в main, где добавляется MultiBlocProvider, который показывает созданные cubit, а также здесь создается BlocBuilder, который меняет тему приложения
![image](https://user-images.githubusercontent.com/99389490/205530317-4493dd09-50b7-4a07-8240-271de5b3c452.png)
###
### Далее создается BlocBuilder для счетчика
![image](https://user-images.githubusercontent.com/99389490/205530449-1f671138-3878-4f54-8263-53c69182201d.png)
###
### После создаются три кнопки, которые будут помогать в сложении, вычитании и смене темы приложения
![image](https://user-images.githubusercontent.com/99389490/205530561-39b8f603-099a-4dac-a8e6-15f37a100254.png)
###
### Также создается BlocBuilder для вывода листа значений счетчика и с текущей темой приложения
![image](https://user-images.githubusercontent.com/99389490/205530749-6230c31e-4af3-4ba8-9c90-49a3d80dabf5.png)
###
### В итоге создается кнопка, которая будет очищать лист с результатами
![image](https://user-images.githubusercontent.com/99389490/205530849-a3d2d3e2-af83-402d-a114-aa40aa3a2eb9.png)
###
### Ниже представлены результаты приложения
![image](https://user-images.githubusercontent.com/99389490/205643355-3300d29b-b60f-4c3b-90e9-20cf62bb9845.png)
![image](https://user-images.githubusercontent.com/99389490/205643480-99564cfd-59be-4626-aa3b-2881f7144db4.png)
![image](https://user-images.githubusercontent.com/99389490/205643525-42d43ab2-e0af-4afa-8d77-8771effe1680.png)
![image](https://user-images.githubusercontent.com/99389490/205643576-89dce47d-dfb2-4f90-94e8-0a369c5b47ac.png)
![image](https://user-images.githubusercontent.com/99389490/205643617-f3ab395b-d954-4fe5-bc1c-5218ae19a49e.png)
### Вывод: В данной практической работе был создан проект с использованием Cubit, а также был реализован в нем кликер с темной и светлой темой
