"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[988],{40708:function(e,t,i){i.r(t),i.d(t,{frontMatter:function(){return r},contentTitle:function(){return l},metadata:function(){return d},toc:function(){return u},default:function(){return c}});var n=i(87462),o=i(63366),a=(i(67294),i(3905)),s=["components"],r={sidebar_position:4},l="Optimization",d={unversionedId:"Optimization",id:"Optimization",isDocsHomePage:!1,title:"Optimization",description:"You want your instance pooling to be fast. That was the point of implementing it after all, right? So, let's make it fast(er)!",source:"@site/docs/Optimization.md",sourceDirName:".",slug:"/Optimization",permalink:"/docs/Optimization",editUrl:"https://github.com/LewisTehMinerz/Pooler/edit/master/docs/Optimization.md",tags:[],version:"current",sidebarPosition:4,frontMatter:{sidebar_position:4},sidebar:"defaultSidebar",previous:{title:"Usage",permalink:"/docs/Usage"}},u=[{value:"Scaling up the pool",id:"scaling-up-the-pool",children:[{value:"Dynamic scaling",id:"dynamic-scaling",children:[],level:3}],level:2},{value:"Using a different return method",id:"using-a-different-return-method",children:[],level:2},{value:"Disabling safety",id:"disabling-safety",children:[],level:2}],p={toc:u};function c(e){var t=e.components,i=(0,o.Z)(e,s);return(0,a.kt)("wrapper",(0,n.Z)({},p,i,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"optimization"},"Optimization"),(0,a.kt)("p",null,"You want your instance pooling to be fast. That was the point of implementing it after all, right? So, let's make it fast(er)!"),(0,a.kt)("h2",{id:"scaling-up-the-pool"},"Scaling up the pool"),(0,a.kt)("p",null,"The default size of the pool is 100. Depending on your use case, this will be way too little instances. Pass ",(0,a.kt)("inlineCode",{parentName:"p"},"size = <n>")," to increase the\ndefault pool size."),(0,a.kt)("h3",{id:"dynamic-scaling"},"Dynamic scaling"),(0,a.kt)("p",null,"Pooler supports a form of dynamic scaling by using ",(0,a.kt)("inlineCode",{parentName:"p"},"pool:Resize(newSize)"),". This will automatically add or remove instances depending on\non the new size. You can also get the current size by using ",(0,a.kt)("inlineCode",{parentName:"p"},"pool:Size()")," to introduce some automatic scaling based on pool usage."),(0,a.kt)("h2",{id:"using-a-different-return-method"},"Using a different return method"),(0,a.kt)("p",null,"If you're using ",(0,a.kt)("inlineCode",{parentName:"p"},"BasePart"),"s or ",(0,a.kt)("inlineCode",{parentName:"p"},"Model"),"s with PrimaryPart set, then you should be using the ",(0,a.kt)("inlineCode",{parentName:"p"},"cframe")," return method instead of the default\n",(0,a.kt)("inlineCode",{parentName:"p"},"nilParent")," return method. This will cause the parts or models to be CFramed away outside of the map rather than modifying the parent,\nwhich is a much more costly operation."),(0,a.kt)("h2",{id:"disabling-safety"},"Disabling safety"),(0,a.kt)("p",null,"The largest amount of time is dedicated to safety. If you ",(0,a.kt)("em",{parentName:"p"},"know")," that your calls to Pooler are correct, you don't need to bother.\nWhen creating your pool, pass ",(0,a.kt)("inlineCode",{parentName:"p"},"unsafe = true")," as an option to disable safety. This will speed up your pool drastically at the cost\nof being able to create some weird bugs if you don't check your code properly."))}c.isMDXComponent=!0}}]);