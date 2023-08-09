import React from 'react';
import { SafeAreaView } from 'react-native';
import ARView from './components/ARView/ARView';

function App(): JSX.Element {
  return (
    <SafeAreaView style={{ flex: 1 }}>
      <ARView style={{ flex: 1 }} />
    </SafeAreaView>
  );
};

export default App;
