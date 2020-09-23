@fhctrip
  Feature: FhcTrip Kayit
    Scenario Outline: fhctrip websitesine kayit
      Given kullanici fhctrip kayit sayfasina gider
      And kullanici username "<username>" girer
      And kullanici email "<email>" girer
      And kullanici fullname "<fullname>" girer

      Examples: Test Verileri
      |username|email            |fullname          |
      |mehmety |mehmet@gmail.com |mehmet yildirim   |
      |osman   |osman@mail.com   |osaman aga        |
      |murtaza |murtaza@gmail.com|murtaza usta      |
      |buda    |buda@gmail.com   |buda seni budasin |