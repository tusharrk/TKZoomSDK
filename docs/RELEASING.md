### Releasing TKZoomSDK

#### 1. Setup GitHub Repo & Upload Release Asset
1. Push this repository to GitHub: `https://github.com/tusharrk/TKZoomSDK`
2. Create a GitHub release tagged `v7.1.5.37603`.
3. Upload `zoom-sdk-ios-7.1.5.37603.zip` as a Release Asset.

#### 2. Update Podspec
`TKZoomSDK.podspec` is configured with:
- Homepage: `https://github.com/tusharrk/TKZoomSDK`
- Source: `https://github.com/tusharrk/TKZoomSDK/releases/download/v7.1.5.37603/zoom-sdk-ios-7.1.5.37603.zip`

#### 3. Lint
Check for any errors:
```bash
pod spec lint TKZoomSDK.podspec --allow-warnings
```

#### 4. Register Trunk & Publish
Register CocoaPods Trunk (first time only):
```bash
pod trunk register tushar.kalsara.ext@nmims.edu 'Tushar Kalsara'
```
Confirm the email verification link, then publish:
```bash
pod trunk push TKZoomSDK.podspec --allow-warnings
```
