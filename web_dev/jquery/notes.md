## jQuery 

#### Make a plan

1. I went through the CodeAcademy course on jQuery about a year ago and I rememeber it being EXTREMELY helpful. It really pointed out how simple jQuery can be. It's straightforward and does not require hardcore programming understanding. 
2. The plan is to spend maybe an hour going through the material. I won't get through all of it, but it will jumpstart my learning so I can look up materials at jQuery. I want to look through the documentation/library and familiarize myself with all that I could do.
3. Luckily, CodeAcademy has small projects and exercises for me to do throughout the course. I would be able to do many little things to try out my skills.
4. I do think that little breaks here and there are important. I plan to take a stroll around the house two or three times during this study session.



#### jQuery Notes

- jQuery is a library to JavaScript that manipulates the HTML on a page
- Link the jQuery page to the HTML page by putting a `<script type="text/javascript" src="thejquerypage.js"></script>` in the head tag
- `$(document).ready();` notifies that I want to apply certain actions to the HTML document that it's connected to. The action in the `ready();` function are called *events* and  will occur when the document is ready to be manipulated.
- *Events* are used to register behavoiors to take effect when the user interacts with the browser, and to further manipulate those registered behaviors. For example, `.hover()` or `.mouseenter()` trigger a specific behavior as soon as the mouse hovers over an element
- In jQuery, you can give functions almost anything as input, even another function.
- `this` specifies the element that will receive the action. For example, I want a `div`s to fade away when I click on it. Unless I specify which `div` will fade, all of the `div`s will fade. By using `this`, I can narrow down the fade action to the `div` that I am actually doing something with.
- You can creat/insert HTML elements
``` 
    $(document).ready(function() {
		$("body").append("<p>I'm a paragraph!</p>");
	});
```
- I just spent some time reading up on `effect()`. There are so many cool things that it can. `effect()` has about a dozen arguments that can be passed into it in order to create a neat effect. It reminds me of PowerPoint transitions.


#### Post Study Session

I got lost in jQuery pretty quickly. It's hard to think of a good way to show off my newfound skills. I think it's a pretty simple library. It has material that is easy to understand, so I want to get started on trying it out. It's something that I will need to practice.
