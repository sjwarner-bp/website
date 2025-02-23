require "test_helper"

module ChangelogEntries
  class EntryTest < ActionView::TestCase
    test "does not render link when no info url is given" do
      entry = build(:changelog_entry, info_url: nil)

      render "changelog_entries/entry", entry: entry

      assert_select "a", text: "View", count: 0, exact: true
    end
  end
end
