---
title: "[Github Blog] 인용문(blockquote) customize하기 / 예쁘게 꾸미기"
excerpt: " "

categories: 
  - blog
tags: 
  - jekyll


---

> 깃헙 블로그 꾸미기에 맛들려서 이것 저것 수정을 하던 중 `velog.io` 블로그처럼 예쁘게 인용문을 만들고 싶어서 인용문 코드를 조금 수정하였다 😎

  
  
기존의 minimal mistake의 인용문은 이렇게 생겼었다.

나쁘지는 않지만 약간 심심한 것도 같고, `italic`체가 약간 마음에 안들어서 바꾸기로 결정 !

<p align="center"><img src="https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/blog/block_quote1.png?raw=1" width = "700" ></p>

<p align="center"><img src="https://github.com/happy-jihye/happy-jihye.github.io/blob/master/_posts/images/blog/block_quote1.png?raw=1" width = "700" ></p>

- minimal mistake blockquote code

```css
blockquote {
  margin: 2em 1em 2em 0;
  padding-left: 1em;
  padding-right: 1em;
  font-style: italic;
  border-left: 0.25em solid $primary-color;

  cite {
    font-style: italic;

    &:before {
      content: "\2014";
      padding-right: 5px;
    }
  }
}
```

아래와 같이 수정하였다.
`italic`을 빼고 배경색을 넣어 약간 강조되도록 만들었다 :)

> 또, 위/아래로 여백을 살짝 넣고 싶어서 padding도 추가했다 !!


```css
/* blockquotes */

blockquote {
  margin: 2em 1em 2em 0;
  padding-left: 1em;
  padding-right: 1em;
  padding-top: 1em;
  padding-bottom: 0.7em;

  border-left: 0.3em solid $primary-color;
  background-color: #F6F8FA;
  cite {

    &:before {
      content: "\2014";
      padding-right: 5px;
    }
  }
}
```