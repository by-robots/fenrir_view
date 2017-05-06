require 'test_helper'

class FenrirView::ComponentHelperTest < ActionView::TestCase
  test "renders the proper component" do
    rendered = render_component("header", id: 1, title: "Pepe")

    expected = /Pepe/

    assert_match expected, rendered
    assert_match %r(href=\"\/products\/1\"), rendered
  end
end
