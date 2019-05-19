'use strict';
// 1
import React from 'react';
import ReactNative, {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
  NativeModules,
} from 'react-native';

// 2
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'green',
  },
  welcome: {
    fontSize: 20,
    color: 'black',
    paddingTop: 50,
    paddingBottom: 50
  },
  nav_button: {
    fontSize: 20,
    color: 'white',
    padding: 20
  },
});

// 3
export class RNSampleView extends React.Component {

  constructor(props) {
    super(props)
    this.done = false;
  }

  componentDidMount() {

  }

  _changeView() {
    this.done = true;
    this.render();
    NativeModules.ChangeViewBridge.changeToRootRNView();
  }

  _changeView1() {
    this.done = true;
    this.render();
    NativeModules.ChangeViewBridge.changeToNativeView1();
  }

  _changeView2() {
    this.done = true;
    this.render();
    NativeModules.ChangeViewBridge.changeToNativeView2();
  }

  render() {
    return (
      <View style={styles.container}>
         <TouchableOpacity onPress={() => this._changeView1()}>
          <Text style={styles.nav_button}>Go Back to Native View</Text>
        </TouchableOpacity>
        <Text style={styles.welcome}>We're live from React Native!!!</Text>
        <TouchableOpacity onPress={() => this._changeView2()}>
          <Text style={styles.nav_button}>Go to Next Native View</Text>
        </TouchableOpacity>
        <TouchableOpacity onPress={() => this._changeView()}>
          <Text style={styles.nav_button}>Go Back to Root RN View</Text>
        </TouchableOpacity>
      </View>
    );
  }
}