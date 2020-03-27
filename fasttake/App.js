import React from 'react';
import { StyleSheet, Text, SafeAreaView } from 'react-native';
import Header from './src/header';

export default function App() {
  return (
    <SafeAreaView style={styles.container}>
      <Header/>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
});