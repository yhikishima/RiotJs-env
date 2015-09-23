<riot-tabs>
  <h2>Tabs</h2>
  <ul>
    <li each={ tab, i in tabs } class="tabItem { is-active: parent.isActiveTab(tab.ref) }" onclick={ parent.toggleTab }>{tab.title}</li>
  </ul>
  <div class="tabContent">
    <div each={ tab, i in tabs } class="tabContent__item { is-active: parent.isActiveTab(tab.ref) }">{tab.content}</div>
  </div>

  this.tabs = [
    { title: 'Tab 1', ref: 'tab1', content: "(1) Change tab content No.1" },
    { title: 'Tab 2', ref: 'tab2', content: "(2) Change tab content No.2" },
    { title: 'Tab 3', ref: 'tab3', content: "(3) Change tab content No.3" }
  ]

  this.activeTab = 'tab1'

  isActiveTab(tab) {
    return this.activeTab === tab
  }

  toggleTab(e) {
    this.activeTab = e.item.tab.ref
    return true
  }
</riot-tabs>