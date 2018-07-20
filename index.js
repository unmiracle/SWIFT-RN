import React from 'react';
import { AppRegistry,  StyleSheet, Text, View, NativeModules } from 'react-native';

class RNHighScores extends React.Component {

  state = {
    key: null
  }

  componentDidMount() {
    this.getItem()
  }

  async getItem() {
    try {
      let value = await NativeModules.RNCallSwift.getKey("segueForRN")
      this.setState({
        key: value
      })
    } catch (e) {
      console.log('error', e)
    }
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>React-Native</Text>
        <Text style={styles.highScoresTitle}>Key is: {this.state.key ? this.state.key : 'Not Found'}</Text>
      </View>
    );
  }
}
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#fff',
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent('RNHighScores', () => RNHighScores);