from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome(executable_path=r'./chromedriver.exe')
driver.get('https://www.pucrs.br/')

## Testando barra de pesquisa
search_box = driver.find_element_by_css_selector("#s")
search_box.send_keys("universidade")
search_box.send_keys(Keys.RETURN)
time.sleep(5)

## Logando
driver.get('https://moodle.pucrs.br/')
time.sleep(2)
driver.find_element_by_xpath('//*[@id="login_username"]').send_keys("00000000")
driver.find_element_by_xpath('//*[@id="login_password"]').send_keys("00000000")
time.sleep(0.9)
driver.find_element_by_xpath('/html/body/div[1]/header/div[2]/div[1]/form/div[3]/input').click()
time.sleep(5)

## Testando click em "Biblioteca"
driver.get('https://www.pucrs.br/')
time.sleep(2)
driver.find_element_by_css_selector("#menu-item-303").click()
time.sleep(3)