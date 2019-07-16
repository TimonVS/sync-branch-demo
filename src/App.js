import React, { Suspense } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Home from './pages/Home';
import Navigation from './Navigation';
const Shop = React.lazy(() => import('./pages/Shop'));

function App() {
  return (
    <Suspense fallback={<div>Loading...</div>}>
      <Router>
        {process.env.REACT_APP_SHOPIFY_INTEGRATION_ENABLED === 'true' && (
          <Navigation />
        )}
        <Switch>
          <Route exact path="/" component={Home} />
          {process.env.REACT_APP_SHOPIFY_INTEGRATION_ENABLED === 'true' && (
            <Route path="/shop" component={Shop} />
          )}
        </Switch>
      </Router>
    </Suspense>
  );
}

export default App;
