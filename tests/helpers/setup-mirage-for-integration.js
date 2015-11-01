// tests/helpers/setup-mirage-for-integration.js
import mirageInitializer from '../../initializers/ember-cli-mirage';

export default function setupMirage(container) {
  mirageInitializer.initialize(container);
}


//To start mirage

//http://www.ember-cli-mirage.com/docs/v0.1.x/manually-starting-mirage/

// tests/integration/components/your-test.js
//import startMirage from '../../../helpers/setup-mirage-for-integration';
//
//moduleForComponent('your-component', 'Integration | Component | your component', {
//  integration: true,
//  setup: function() {
//    startMirage(this.container);
//  }
//});
