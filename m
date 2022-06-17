From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Sat, 18 Jun 2022 00:48:21 +0300
Subject: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could
	be
In-Reply-To: <87sfo3nh3t.fsf@meer.lwn.net>
References: <87sfo3nh3t.fsf@meer.lwn.net>
Message-ID: <Yqz2pVwvyo4MFJYO@pendragon.ideasonboard.com>
Message-ID: <20220617214821.p27Doc_vOhZGTH8XFll1EpqSGKAfPdQysaVh8Z5HCyk@z>

Hi Jon,

On Fri, Jun 17, 2022 at 02:57:10PM -0600, Jonathan Corbet wrote:
> The development community has put a lot of work into the kernel's
> documentation directory in recent years, with visible results. But the
> kernel's documentation still falls far short of the standard set by many
> other projects, and there is a great deal of "tribal knowledge" in our
> community that is not set down. I'd like to look at the successes and
> failures of the work so far, but intent to focus on a discussion of what
> our documentation should be and what we can do to get it there.
> 
> Questions to discuss include:
> 
>  - Bringing an coherent overall structure to Documentation/
> 
>  - Making it easier for developers to improve the documentation.

I've been wondering recently if it would help to have a place where we
can record documentation wishes.

It has happened quite a few times that my searches for particular pieces
of documentation in the kernel were unfruitful, or that the related
documentation left me none the wiser (one example, which is just an
example and not finger-pointing, is the runtime PM documentation in
Documentation/power/runtime_pm.rst that feels like reading a
calculus-related PHD thesis when all you want is to understand how to
add two numbers). I rarely had time to write documentation patches as a
result, and my pains were thus left unnoticed by maintainers and
developers, who may be willing to improve the documentation if they knew
that users were struggling.

>  - What we would like from Sphinx and what we can do to make it happen
> 
>  - Making the docs build system less ugly and more maintainable
> 
>  - Integrating rustdoc documentation

-- 
Regards,

Laurent Pinchart
