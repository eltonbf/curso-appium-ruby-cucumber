Dado('que acesso a tela Avengers') do
  @nav.tap_hamburger
  @nav.tap_by_text("AVENGERS")
  @nav.tap_by_text("LISTA")
end

Quando('e apago o Capitão América') do
    find_element(id: "io.qaninja.android.twp:id/rvList")
    coord = {start_x: 1000, start_y: 300, end_x: 600, end_y: 300, duration: 2000}
    Appium::TouchAction.new.swipe(coord).perform
    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Então('devo ver a seguinte mensagem: {string}') do |string|
    bar = find_element(:id, "io.qaninja.android.twp:id/snackbar_text")
    expect(bar.text).to eql string 
end