import React from 'react';
import { StyleSheet, Text, SafeAreaView } from 'react-native';
import Header from './src/header';

export default function App() {
  return (
    <SafeAreaView style={styles.container}>
      <Header/>
      <Text>Open up App.js to start working on your app!</Text>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
});