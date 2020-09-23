Feature: Paremetreli Arama
  @webdriverArama
  Scenario: TC03_kulanici googleda arama yapar
    Given kullanici google sayfasina gider
    And kullnici "webdriver" kelimesi arar
    Then kullanici sayfa basliginde "webdriver" kelimesini kontrol eder