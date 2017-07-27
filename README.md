AMAnimatedNumber
==================

<p align="left">

<!-- <a href="https://travis-ci.org/MellongLau/AMAnimatedNumber"><img src="https://travis-ci.org/MellongLau/AMAnimatedNumber.svg" alt="Build Status" /></a> -->
<img src="https://img.shields.io/badge/platform-iOS%207%2B-blue.svg?style=flat" alt="Platform: iOS 7+"/>
<img src="http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat" alt="License: MIT" />
    
</p>

AMAnimatedNumber is simple number animation component.

## Preview

![screenshot.gif](https://raw.github.com/MellongLau/AMAnimatedNumber/master/Screenshots/screenshot.gif)

##Installation

### CocoaPods

[CocoaPods](http://www.cocoapods.org) is the recommended way to add AMAnimatedNumber to your project.

1. Add additional entry to your Podfile.

  ```ruby
  pod "AMAnimatedNumber", "~> 0.0.2"
  ```

2. Install  Pod(s) running `pod install` command.
3. Include AMAnimatedNumber using `#import <AMAnimatedNumber.h>`.

## Usage

- Init:

```objc
AMAnimatedNumber *animateNumber = [[AMAnimatedNumber alloc] initWithFrame:CGRectMake(0, 0, 300, 35)];
[self.view addSubview:animateNumber];
```

- Set number

```objc
[animateNumber setTextFont:[UIFont boldSystemFontOfSize:28]];
[animateNumber setTextColor:[UIColor brownColor]];
[animateNumber setAlignment:AMAnimateNumberAlignCenter];

[animateNumber setNumbers:@"$ 89,572,234.32"
                  animated:YES];


```

## More
Learn more? Follow my `WeChat` public account `mellong`:

![WeChat QRcode](http://blog.devlong.com/blogImages/qrcode_for_mellong.jpg)

## License

MIT License

	Copyright (c) 2015 Mellong Lau

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
