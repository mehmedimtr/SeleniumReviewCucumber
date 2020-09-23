Feature: Amazon Urun Arama
  @amazonurunarama
  Scenario Outline: TC06_kullanici amazonda urun aramasi yapar
    Given kullanici "https://amazon.com" sayfaya gider
    And kullanici arama kutusuna "<kelime>" yazar
    Then kullanici sonucsayisini ekrana yazdirir

    Examples:
      |kelime    |
      |headphones|
      |tv        |
      |sponge      |