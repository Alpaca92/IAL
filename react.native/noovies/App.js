import React, { useCallback, useEffect, useState } from 'react';
import * as SplashScreen from 'expo-splash-screen';
import * as Font from 'expo-font';
import { Ionicons } from '@expo/vector-icons';
import { Asset } from 'expo-asset';
import { Text, View } from 'react-native';

SplashScreen.preventAutoHideAsync();

export default function App() {
  const [ready, setReady] = useState(false);

  useEffect(() => {
    (async () => {
      try {
        await Font.loadAsync(Ionicons.font);
        await Asset.loadAsync(require('./assets/snack-icon.png'));
      } catch (e) {
        console.warn(e);
      } finally {
        setReady(true);
      }
    })();
  }, []);

  const onLayoutRootView = useCallback(async () => {
    if (ready) {
      await SplashScreen.hideAsync();
    }
  }, [ready]);

  return ready ? (
    <View onLayout={onLayoutRootView}>
      <Text>we are down loading !</Text>
    </View>
  ) : null;
}
