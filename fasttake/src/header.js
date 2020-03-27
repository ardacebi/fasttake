import React from 'react';
import { Text, View } from 'react-native';

const Header = () => {
  const { textStyle, viewStyle } = styles;
  return (
    <View style={viewStyle}>
      <Text style={textStyle}>fasttake</Text>
    </View>
  );
};

const styles = {
  textStyle: {
    fontSize: 40,
    fontWeight: '200',
    color: "black"
  },
  viewStyle: {
    marginTop: 0,
    marginBottom: 10,
    justifyContent: 'flex-start',
    alignItems: 'center',
  }
}




export default Header;
